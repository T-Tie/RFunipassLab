"""运行时间目标后端。"""

from __future__ import annotations

import hashlib
import json
import math
import os
import statistics
import subprocess
import time
from dataclasses import asdict, dataclass
from pathlib import Path
from typing import Dict, Optional, Sequence

from .objective_common import compose_metrics
from .runtime import detect_target_triple, transform_ir_strict
from .settings import (
    BACKEND_OPT_LEVEL,
    MAX_SEQ_LEN,
    OBJ_WORSEN_WEIGHT,
    RUNTIME_EVAL_MAX_VARIANCE_PCT,
    RUNTIME_MAX_INNER_REPEATS,
    RUNTIME_MAX_VARIANCE_PCT,
    RUNTIME_SAMPLES,
    RUNTIME_TARGET_SAMPLE_MS,
    RUNTIME_TIMEOUT_SEC,
    llvm_tools_path,
)

DEFAULT_LM_FLAGS = ['-lm']
INPUT_HINT_TOKENS = (
    'scanf',
    'fscanf',
    'sscanf',
    'getc',
    'getchar',
    'fgets',
    'istream',
    'cin',
)
DEFAULT_INPUT_TEMPLATES = {
    'small_ints': '8\n' + ' '.join(str((i % 9) + 1) for i in range(128)) + '\n',
    'medium_ints': '32\n' + ' '.join(str((i % 17) + 1) for i in range(512)) + '\n',
    'large_ints': '64\n' + ' '.join(str((i % 17) + 1) for i in range(2048)) + '\n',
    'mixed_tokens': (
        '16\n'
        + ' '.join(str((i % 7) + 1) for i in range(128))
        + '\n'
        + ' '.join(chr(97 + (i % 26)) for i in range(96))
        + '\n'
    ),
}


class ObjectiveError(RuntimeError):
    """运行时目标评估侧的统一异常基类。"""


class TransformError(ObjectiveError):
    """`opt` 在应用 pass 序列时失败。"""


class CompileError(ObjectiveError):
    """`clang++` 无法把 IR 编译成可执行文件。"""


class RunError(ObjectiveError):
    """可执行文件运行失败、超时或输出不稳定。"""


@dataclass
class ProgramRuntimeHarness:
    """单个程序的运行时间校准记录。"""

    filename: str
    reference_sequence: list[str]
    input_name: str
    input_data: str
    has_input_hint: bool
    inner_repeats: int
    baseline_time_ns: float
    baseline_variance_pct: float
    baseline_output_sha1: str
    baseline_stdout_size: int
    calibration_sequence_ok: bool

    def to_json(self) -> Dict[str, object]:
        return asdict(self)


@dataclass
class ProgramEvalResult:
    """单程序运行时间评估结果。"""

    ratio: float
    raw_value: float
    status: str
    variance_pct: float = 0.0
    output_sha1: str = ''



def _sha1_data(data: str | bytes) -> str:
    if isinstance(data, str):
        payload = data.encode('utf-8', errors='ignore')
    else:
        payload = bytes(data)
    return hashlib.sha1(payload).hexdigest()



def _sha1_jsonable(obj: object) -> str:
    return _sha1_data(json.dumps(obj, sort_keys=True, ensure_ascii=True))



def _max_deviation_pct(values: Sequence[float], center: float) -> float:
    if not values or center <= 0:
        return 0.0
    deviations = [abs(value - center) / center * 100.0 for value in values]
    return float(max(deviations, default=0.0))



def _clang_bin(llvm_tools_path_value: str) -> str:
    return os.path.join(llvm_tools_path_value, 'clang++') if llvm_tools_path_value else 'clang++'


class CompileCache:
    """缓存编译后的可执行文件，避免 BO 过程中重复构建。"""

    def __init__(self, cache_dir: str, llvm_tools_path_value: str = llvm_tools_path) -> None:
        self.cache_dir = Path(cache_dir)
        self.build_dir = self.cache_dir / 'builds'
        self.build_dir.mkdir(parents=True, exist_ok=True)
        self.llvm_tools_path = llvm_tools_path_value
        self._program_text_cache: Dict[str, str] = {}

    def load_program_text(self, program_path: str) -> str:
        cached = self._program_text_cache.get(program_path)
        if cached is not None:
            return cached
        text = Path(program_path).read_text(encoding='utf-8', errors='ignore')
        self._program_text_cache[program_path] = text
        return text

    def compile_binary(self, program_path: str, pass_sequence: Sequence[str] | str) -> str:
        seq_tag = list(pass_sequence) if isinstance(pass_sequence, (list, tuple)) else pass_sequence
        ir_text = self.load_program_text(program_path)
        cache_key = _sha1_jsonable({
            'program': program_path,
            'sequence': seq_tag,
            'backend_opt_level': BACKEND_OPT_LEVEL,
            'target_triple': detect_target_triple(ir_text),
            'llvm_tools_path': self.llvm_tools_path,
        })
        build_dir = self.build_dir / cache_key
        exe_path = build_dir / 'a.out'
        if exe_path.exists():
            return str(exe_path)

        build_dir.mkdir(parents=True, exist_ok=True)
        try:
            optimized_ir = transform_ir_strict(ir_text, pass_sequence, self.llvm_tools_path)
        except Exception as exc:
            raise TransformError(str(exc)) from exc

        ll_path = build_dir / 'optimized.ll'
        ll_path.write_text(optimized_ir, encoding='utf-8')

        cmd = [_clang_bin(self.llvm_tools_path)]
        if BACKEND_OPT_LEVEL:
            cmd.append(BACKEND_OPT_LEVEL)
        cmd.extend(['-x', 'ir', str(ll_path), *DEFAULT_LM_FLAGS, '-o', str(exe_path)])
        proc = subprocess.run(cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
        if proc.returncode != 0:
            raise CompileError(proc.stderr.strip() or 'clang++ failed')
        return str(exe_path)


class RuntimeHarnessBuilder:
    """从 tuning rows 中筛出可稳定测时的程序并构建 harness。"""

    def __init__(
        self,
        cache_dir: str,
        llvm_tools_path_value: str = llvm_tools_path,
        timeout_sec: float = RUNTIME_TIMEOUT_SEC,
        samples: int = RUNTIME_SAMPLES,
        target_sample_ms: float = RUNTIME_TARGET_SAMPLE_MS,
        max_variance_pct: float = RUNTIME_MAX_VARIANCE_PCT,
        max_inner_repeats: int = RUNTIME_MAX_INNER_REPEATS,
        input_templates: Optional[Dict[str, str]] = None,
    ) -> None:
        self.timeout_sec = timeout_sec
        self.samples = samples
        self.target_sample_ns = target_sample_ms * 1e6
        self.max_variance_pct = max_variance_pct
        self.max_inner_repeats = max_inner_repeats
        self.input_templates = dict(input_templates or DEFAULT_INPUT_TEMPLATES)
        self.compile_cache = CompileCache(cache_dir, llvm_tools_path_value=llvm_tools_path_value)

    def calibrate_program(self, program_path: str, reference_sequence: Sequence[str]) -> ProgramRuntimeHarness:
        ir_text = self.compile_cache.load_program_text(program_path)
        has_input_hint = any(token in ir_text for token in INPUT_HINT_TOKENS)
        template_items = list(self.input_templates.items())
        if not has_input_hint:
            template_items = [('empty', '')] + template_items

        baseline_exe = self.compile_cache.compile_binary(program_path, '-Oz')
        reference_exe = self.compile_cache.compile_binary(program_path, list(reference_sequence))

        best_choice: Optional[ProgramRuntimeHarness] = None
        for input_name, input_data in template_items:
            try:
                baseline_stats = self._benchmark_binary(baseline_exe, input_data)
                reference_run = self._run_once(reference_exe, input_data)
            except ObjectiveError:
                continue

            if reference_run['stdout_sha1'] != baseline_stats['stdout_sha1']:
                continue
            if baseline_stats['variance_pct'] > self.max_variance_pct:
                continue

            candidate = ProgramRuntimeHarness(
                filename=program_path,
                reference_sequence=list(reference_sequence),
                input_name=input_name,
                input_data=input_data,
                has_input_hint=has_input_hint,
                inner_repeats=baseline_stats['inner_repeats'],
                baseline_time_ns=baseline_stats['median_ns'],
                baseline_variance_pct=baseline_stats['variance_pct'],
                baseline_output_sha1=baseline_stats['stdout_sha1'],
                baseline_stdout_size=baseline_stats['stdout_size'],
                calibration_sequence_ok=True,
            )
            if best_choice is None or candidate.baseline_time_ns > best_choice.baseline_time_ns:
                best_choice = candidate

        if best_choice is None:
            raise RunError(f'failed to calibrate runtime harness for {program_path}')
        return best_choice

    def _run_once(self, binary_path: str, input_data: str) -> Dict[str, object]:
        try:
            begin = time.perf_counter_ns()
            proc = subprocess.run(
                [binary_path],
                input=input_data.encode('utf-8'),
                text=False,
                stdout=subprocess.PIPE,
                stderr=subprocess.PIPE,
                timeout=self.timeout_sec,
            )
            elapsed_ns = time.perf_counter_ns() - begin
        except subprocess.TimeoutExpired as exc:
            raise RunError(f'timeout: {binary_path}') from exc

        if proc.returncode != 0:
            stderr_text = proc.stderr.decode('utf-8', errors='replace').strip() if proc.stderr else ''
            raise RunError(stderr_text or f'non-zero return code: {proc.returncode}')

        stdout_bytes = proc.stdout or b''
        return {
            'elapsed_ns': float(elapsed_ns),
            'stdout_sha1': _sha1_data(stdout_bytes),
            'stdout_size': len(stdout_bytes),
        }

    def _benchmark_binary(self, binary_path: str, input_data: str) -> Dict[str, object]:
        warmup = self._run_once(binary_path, input_data)
        inner_repeats = int(math.ceil(self.target_sample_ns / max(warmup['elapsed_ns'], 1.0)))
        inner_repeats = max(1, min(self.max_inner_repeats, inner_repeats))

        samples_ns: list[float] = []
        observed_hashes: list[str] = []
        stdout_size = 0
        for _ in range(self.samples):
            total_ns = 0.0
            sample_hash = None
            for run_idx in range(inner_repeats):
                run_stats = self._run_once(binary_path, input_data)
                total_ns += run_stats['elapsed_ns']
                stdout_size = int(run_stats['stdout_size'])
                if run_idx == 0:
                    sample_hash = str(run_stats['stdout_sha1'])
            if sample_hash is None:
                raise RunError('empty sample')
            observed_hashes.append(sample_hash)
            samples_ns.append(total_ns / inner_repeats)

        if len(set(observed_hashes)) != 1:
            raise RunError('unstable stdout across repeated runs')

        median_ns = float(statistics.median(samples_ns))
        variance_pct = _max_deviation_pct(samples_ns, median_ns)
        return {
            'median_ns': median_ns,
            'variance_pct': variance_pct,
            'stdout_sha1': observed_hashes[0],
            'stdout_size': stdout_size,
            'inner_repeats': inner_repeats,
        }


class RuntimeObjectiveBackend:
    """实际运行时间目标后端。"""

    objective_kind = 'runtime'
    baseline_display_name = '-Oz 基准运行时间'
    metric_display_name = '归一化运行时间'

    def __init__(
        self,
        harnesses: Sequence[ProgramRuntimeHarness],
        *,
        cache_dir: str,
        llvm_tools_path_value: str = llvm_tools_path,
        timeout_sec: float = RUNTIME_TIMEOUT_SEC,
        samples: int = RUNTIME_SAMPLES,
        max_variance_pct: float = RUNTIME_EVAL_MAX_VARIANCE_PCT,
        max_seq_len: int = MAX_SEQ_LEN,
        worsen_weight: float = OBJ_WORSEN_WEIGHT,
    ) -> None:
        self.harnesses = {item.filename: item for item in harnesses}
        self.timeout_sec = timeout_sec
        self.samples = samples
        self.max_variance_pct = max_variance_pct
        self.max_seq_len = max_seq_len
        self.worsen_weight = worsen_weight
        self.compile_cache = CompileCache(cache_dir, llvm_tools_path_value=llvm_tools_path_value)
        self._eval_cache: Dict[tuple[str, tuple[str, ...]], ProgramEvalResult] = {}

    def prepare(self, programs) -> None:
        missing = [program for program in programs if program not in self.harnesses]
        if missing:
            raise ObjectiveError(f'missing runtime harnesses for {len(missing)} programs')
        for program in programs:
            self.compile_cache.compile_binary(program, '-Oz')

    def compute_baseline_values(self, programs):
        return [float(self.harnesses[program].baseline_time_ns) for program in programs]

    def evaluate_sequence_metrics(self, programs, baseline_values, pass_sequence):
        if not programs:
            return compose_metrics(
                [], pass_sequence, [], 0, 0, 0, {}, 0,
                max_seq_len=self.max_seq_len,
                worsen_weight=self.worsen_weight,
            )

        ratios = []
        improved = 0
        tied = 0
        worsened = 0
        invalid = 0
        per_program = {}

        for program, baseline in zip(programs, baseline_values):
            result = self.evaluate_program(program, pass_sequence)
            per_program[program] = {
                'ratio': result.ratio,
                'raw_value': result.raw_value,
                'status': result.status,
                'variance_pct': result.variance_pct,
            }
            if not math.isfinite(result.ratio):
                worsened += 1
                invalid += 1
                continue

            ratios.append(result.ratio)
            if result.raw_value < baseline * 0.999:
                improved += 1
            elif result.raw_value <= baseline * 1.001:
                tied += 1
            else:
                worsened += 1

        return compose_metrics(
            programs,
            pass_sequence,
            ratios,
            improved,
            tied,
            worsened,
            per_program,
            invalid,
            max_seq_len=self.max_seq_len,
            worsen_weight=self.worsen_weight,
        )

    def evaluate_program(self, program: str, pass_sequence: Sequence[str]) -> ProgramEvalResult:
        key = (program, tuple(pass_sequence))
        cached = self._eval_cache.get(key)
        if cached is not None:
            return cached

        harness = self.harnesses[program]
        try:
            binary_path = self.compile_cache.compile_binary(program, pass_sequence)
            bench = self._benchmark_binary(binary_path, harness)
        except ObjectiveError as exc:
            result = ProgramEvalResult(
                ratio=float('inf'),
                raw_value=float('inf'),
                status=str(exc),
            )
            self._eval_cache[key] = result
            return result

        result = ProgramEvalResult(
            ratio=bench['median_ns'] / harness.baseline_time_ns,
            raw_value=bench['median_ns'],
            status='ok' if bench['variance_pct'] <= self.max_variance_pct else 'high_variance',
            variance_pct=bench['variance_pct'],
            output_sha1=bench['stdout_sha1'],
        )
        self._eval_cache[key] = result
        return result

    def _benchmark_binary(self, binary_path: str, harness: ProgramRuntimeHarness) -> Dict[str, object]:
        samples_ns: list[float] = []
        sample_hashes: list[str] = []
        for _ in range(self.samples):
            total_ns = 0.0
            sample_hash = None
            for run_idx in range(harness.inner_repeats):
                run_stats = self._run_once(binary_path, harness.input_data)
                total_ns += run_stats['elapsed_ns']
                if run_stats['stdout_sha1'] != harness.baseline_output_sha1:
                    raise RunError('stdout mismatch against -Oz baseline')
                if run_idx == 0:
                    sample_hash = str(run_stats['stdout_sha1'])
            if sample_hash is None:
                raise RunError('empty runtime sample')
            sample_hashes.append(sample_hash)
            samples_ns.append(total_ns / harness.inner_repeats)

        if len(set(sample_hashes)) != 1:
            raise RunError('stdout mismatch across runtime samples')
        median_ns = float(statistics.median(samples_ns))
        variance_pct = _max_deviation_pct(samples_ns, median_ns)
        return {
            'median_ns': median_ns,
            'variance_pct': variance_pct,
            'stdout_sha1': sample_hashes[0],
        }

    def _run_once(self, binary_path: str, input_data: str) -> Dict[str, object]:
        try:
            begin = time.perf_counter_ns()
            proc = subprocess.run(
                [binary_path],
                input=input_data.encode('utf-8'),
                text=False,
                stdout=subprocess.PIPE,
                stderr=subprocess.PIPE,
                timeout=self.timeout_sec,
            )
            elapsed_ns = time.perf_counter_ns() - begin
        except subprocess.TimeoutExpired as exc:
            raise RunError(f'timeout: {binary_path}') from exc

        if proc.returncode != 0:
            stderr_text = proc.stderr.decode('utf-8', errors='replace').strip() if proc.stderr else ''
            raise RunError(stderr_text or f'non-zero return code: {proc.returncode}')

        stdout_bytes = proc.stdout or b''
        return {
            'elapsed_ns': float(elapsed_ns),
            'stdout_sha1': _sha1_data(stdout_bytes),
        }
