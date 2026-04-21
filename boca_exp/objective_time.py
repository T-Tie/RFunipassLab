"""运行时间目标后端。"""

from __future__ import annotations

import hashlib
import json
import math
import os
import statistics
import subprocess
import time
from dataclasses import asdict, dataclass, field
from pathlib import Path
from typing import Dict, Optional, Sequence

from .objective_common import compose_metrics
from .runtime import detect_target_triple, transform_ir_strict
from .settings import (
    BACKEND_OPT_LEVEL,
    MAX_SEQ_LEN,
    OBJ_HIGHVAR_WEIGHT,
    OBJ_WORSEN_WEIGHT,
    OBJECTIVE_BASELINE,
    RUNTIME_EVAL_MAX_VARIANCE_PCT,
    RUNTIME_MAX_INNER_REPEATS,
    RUNTIME_MAX_VARIANCE_PCT,
    RUNTIME_SAMPLES,
    RUNTIME_TARGET_SAMPLE_MS,
    RUNTIME_TIMEOUT_SEC,
    llvm_tools_path,
    normalize_objective_baseline,
    objective_baseline_pipeline,
)

DEFAULT_LM_FLAGS = ['-lm']
FIXED_BASELINE_ORDER = ('none', 'oz', 'o3')
FIXED_BASELINE_PIPELINES = {
    'none': [],
    'oz': '-Oz',
    'o3': '-O3',
}
FIXED_BASELINE_LABELS = {
    'none': '[]',
    'oz': '-Oz',
    'o3': '-O3',
}
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
    fixed_baselines: Dict[str, Dict[str, object]] = field(default_factory=dict)

    def __post_init__(self) -> None:
        fixed_baselines = dict(self.fixed_baselines or {})
        if 'oz' not in fixed_baselines and self.baseline_time_ns > 0:
            fixed_baselines['oz'] = {
                'label': FIXED_BASELINE_LABELS['oz'],
                'pipeline': FIXED_BASELINE_PIPELINES['oz'],
                'time_ns': float(self.baseline_time_ns),
                'variance_pct': float(self.baseline_variance_pct),
                'stdout_sha1': self.baseline_output_sha1,
                'stdout_size': int(self.baseline_stdout_size),
                'inner_repeats': int(self.inner_repeats),
            }
        self.fixed_baselines = fixed_baselines

        oz_baseline = self.get_fixed_baseline('oz')
        if oz_baseline:
            self.baseline_time_ns = float(oz_baseline.get('time_ns', self.baseline_time_ns))
            self.baseline_variance_pct = float(
                oz_baseline.get('variance_pct', self.baseline_variance_pct)
            )
            self.baseline_output_sha1 = str(
                oz_baseline.get('stdout_sha1', self.baseline_output_sha1)
            )
            self.baseline_stdout_size = int(
                oz_baseline.get('stdout_size', self.baseline_stdout_size)
            )
            self.inner_repeats = int(oz_baseline.get('inner_repeats', self.inner_repeats))

    def get_fixed_baseline(self, baseline_name: str) -> Optional[Dict[str, object]]:
        baseline = self.fixed_baselines.get(baseline_name)
        return baseline if isinstance(baseline, dict) else None

    def available_fixed_baselines(self) -> list[str]:
        return [name for name in FIXED_BASELINE_ORDER if self.get_fixed_baseline(name)]

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


def _fixed_baseline_record(name: str, stats: Dict[str, object]) -> Dict[str, object]:
    return {
        'label': FIXED_BASELINE_LABELS[name],
        'pipeline': FIXED_BASELINE_PIPELINES[name],
        'time_ns': float(stats['median_ns']),
        'variance_pct': float(stats['variance_pct']),
        'stdout_sha1': str(stats['stdout_sha1']),
        'stdout_size': int(stats['stdout_size']),
        'inner_repeats': int(stats['inner_repeats']),
    }


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

        fixed_baseline_execs = {
            name: self.compile_cache.compile_binary(program_path, pipeline)
            for name, pipeline in FIXED_BASELINE_PIPELINES.items()
        }
        reference_exe = self.compile_cache.compile_binary(program_path, list(reference_sequence))

        best_choice: Optional[ProgramRuntimeHarness] = None
        for input_name, input_data in template_items:
            try:
                fixed_baselines = self._benchmark_fixed_baselines(fixed_baseline_execs, input_data)
                reference_run = self._run_once(reference_exe, input_data)
            except ObjectiveError:
                continue

            oz_baseline = fixed_baselines['oz']
            if reference_run['stdout_sha1'] != oz_baseline['stdout_sha1']:
                continue

            candidate = ProgramRuntimeHarness(
                filename=program_path,
                reference_sequence=list(reference_sequence),
                input_name=input_name,
                input_data=input_data,
                has_input_hint=has_input_hint,
                inner_repeats=int(oz_baseline['inner_repeats']),
                baseline_time_ns=float(oz_baseline['time_ns']),
                baseline_variance_pct=float(oz_baseline['variance_pct']),
                baseline_output_sha1=str(oz_baseline['stdout_sha1']),
                baseline_stdout_size=int(oz_baseline['stdout_size']),
                calibration_sequence_ok=True,
                fixed_baselines=fixed_baselines,
            )
            if best_choice is None or candidate.baseline_time_ns > best_choice.baseline_time_ns:
                best_choice = candidate

        if best_choice is None:
            raise RunError(f'failed to calibrate runtime harness for {program_path}')
        return best_choice

    def _benchmark_fixed_baselines(
        self,
        executables: Dict[str, str],
        input_data: str,
    ) -> Dict[str, Dict[str, object]]:
        records: Dict[str, Dict[str, object]] = {}
        expected_hash = None

        for name in FIXED_BASELINE_ORDER:
            bench = self._benchmark_binary(executables[name], input_data)
            if bench['variance_pct'] > self.max_variance_pct:
                raise RunError(
                    f'{name} baseline variance too high: {bench["variance_pct"]:.2f}%'
                )
            if expected_hash is None:
                expected_hash = bench['stdout_sha1']
            elif bench['stdout_sha1'] != expected_hash:
                raise RunError(f'{name} baseline stdout mismatch')
            records[name] = _fixed_baseline_record(name, bench)

        return records

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
        highvar_weight: float = OBJ_HIGHVAR_WEIGHT,
        objective_baseline: str = OBJECTIVE_BASELINE,
    ) -> None:
        self.harnesses = {item.filename: item for item in harnesses}
        self.timeout_sec = timeout_sec
        self.samples = samples
        self.max_variance_pct = max_variance_pct
        self.max_seq_len = max_seq_len
        self.worsen_weight = worsen_weight
        self.highvar_weight = highvar_weight
        self.baseline_name = normalize_objective_baseline(objective_baseline)
        self.baseline_pipeline = objective_baseline_pipeline(self.baseline_name)
        self.baseline_display_name = f'{self.baseline_pipeline} 基准运行时间'
        self.compile_cache = CompileCache(cache_dir, llvm_tools_path_value=llvm_tools_path_value)
        self._eval_cache: Dict[tuple[str, str, tuple[str, ...]], ProgramEvalResult] = {}

    def prepare(self, programs) -> None:
        missing = [program for program in programs if program not in self.harnesses]
        if missing:
            raise ObjectiveError(f'missing runtime harnesses for {len(missing)} programs')
        for program in programs:
            harness = self.harnesses[program]
            self._selected_baseline_record(harness)
            for baseline_name in harness.available_fixed_baselines():
                baseline = harness.get_fixed_baseline(baseline_name)
                if baseline is None:
                    continue
                self.compile_cache.compile_binary(program, baseline.get('pipeline', '-Oz'))

    def compute_baseline_values(self, programs):
        return [self._selected_baseline_time_ns(self.harnesses[program]) for program in programs]

    def _selected_baseline_record(self, harness: ProgramRuntimeHarness) -> Dict[str, object]:
        baseline = harness.get_fixed_baseline(self.baseline_name)
        if baseline is None:
            raise ObjectiveError(
                f'missing {self.baseline_pipeline} fixed runtime baseline for {harness.filename}'
            )
        return baseline

    def _selected_baseline_time_ns(self, harness: ProgramRuntimeHarness) -> float:
        baseline = self._selected_baseline_record(harness)
        baseline_time_ns = float(baseline.get('time_ns', float('inf')))
        if not math.isfinite(baseline_time_ns) or baseline_time_ns <= 0:
            raise ObjectiveError(
                f'invalid {self.baseline_pipeline} fixed runtime baseline for {harness.filename}'
            )
        return baseline_time_ns

    def evaluate_sequence_metrics(self, programs, baseline_values, pass_sequence):
        if not programs:
            metrics = compose_metrics(
                [], pass_sequence, [], 0, 0, 0, {}, 0,
                high_variance=0,
                max_seq_len=self.max_seq_len,
                worsen_weight=self.worsen_weight,
                highvar_weight=self.highvar_weight,
            )
            metrics['comparisons'] = {}
            return metrics

        ratios = []
        improved = 0
        tied = 0
        worsened = 0
        invalid = 0
        high_variance = 0
        per_program = {}
        comparison_buckets = self._init_comparison_buckets()

        for program, baseline in zip(programs, baseline_values):
            result = self.evaluate_program(program, pass_sequence)
            harness = self.harnesses[program]
            per_program[program] = {
                'ratio': result.ratio,
                'raw_value': result.raw_value,
                'status': result.status,
                'variance_pct': result.variance_pct,
            }
            self._update_comparison_buckets(comparison_buckets, harness, result)
            if result.status == 'high_variance':
                high_variance += 1
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

        metrics = compose_metrics(
            programs,
            pass_sequence,
            ratios,
            improved,
            tied,
            worsened,
            per_program,
            invalid,
            high_variance=high_variance,
            max_seq_len=self.max_seq_len,
            worsen_weight=self.worsen_weight,
            highvar_weight=self.highvar_weight,
        )
        metrics['comparisons'] = self._finalize_comparison_buckets(comparison_buckets)
        return metrics

    def summarize_fixed_baselines(self, programs, anchor: str = 'none') -> Dict[str, object]:
        anchor_label = FIXED_BASELINE_LABELS.get(anchor, anchor)
        baselines: Dict[str, Dict[str, object]] = {}

        for name in FIXED_BASELINE_ORDER:
            ratios: list[float] = []
            for program in programs:
                harness = self.harnesses.get(program)
                if harness is None:
                    continue
                anchor_baseline = harness.get_fixed_baseline(anchor)
                baseline = harness.get_fixed_baseline(name)
                if anchor_baseline is None or baseline is None:
                    continue

                anchor_time = float(anchor_baseline.get('time_ns', float('inf')))
                baseline_time = float(baseline.get('time_ns', float('inf')))
                if not math.isfinite(anchor_time) or anchor_time <= 0:
                    continue
                if not math.isfinite(baseline_time):
                    continue
                ratios.append(baseline_time / anchor_time)

            if not ratios:
                continue

            mean_norm = float(statistics.fmean(ratios))
            baselines[name] = {
                'label': FIXED_BASELINE_LABELS.get(name, name),
                'count': len(ratios),
                'mean_norm': mean_norm,
                'median_norm': float(statistics.median(ratios)),
                'improvement_pct': (1.0 - mean_norm) * 100.0,
            }

        return {
            'anchor': anchor,
            'anchor_label': anchor_label,
            'baselines': baselines,
        }

    def _init_comparison_buckets(self) -> Dict[str, Dict[str, object]]:
        return {
            name: {
                'ratios': [],
                'count': 0,
                'improved': 0,
                'tied': 0,
                'worsened': 0,
                'invalid': 0,
                'high_variance': 0,
            }
            for name in FIXED_BASELINE_ORDER
        }

    def _update_comparison_buckets(
        self,
        comparison_buckets: Dict[str, Dict[str, object]],
        harness: ProgramRuntimeHarness,
        result: ProgramEvalResult,
    ) -> None:
        for name in FIXED_BASELINE_ORDER:
            baseline = harness.get_fixed_baseline(name)
            if baseline is None:
                continue

            bucket = comparison_buckets[name]
            bucket['count'] += 1
            if result.status == 'high_variance':
                bucket['high_variance'] += 1

            baseline_time = float(baseline.get('time_ns', float('inf')))
            if not math.isfinite(result.raw_value) or not math.isfinite(baseline_time) or baseline_time <= 0:
                bucket['worsened'] += 1
                bucket['invalid'] += 1
                continue

            ratio = result.raw_value / baseline_time
            bucket['ratios'].append(float(ratio))
            if result.raw_value < baseline_time * 0.999:
                bucket['improved'] += 1
            elif result.raw_value <= baseline_time * 1.001:
                bucket['tied'] += 1
            else:
                bucket['worsened'] += 1

    def _finalize_comparison_buckets(
        self,
        comparison_buckets: Dict[str, Dict[str, object]],
    ) -> Dict[str, Dict[str, object]]:
        comparisons: Dict[str, Dict[str, object]] = {}

        for name, bucket in comparison_buckets.items():
            total = int(bucket['count'])
            if total <= 0:
                continue

            ratios = list(bucket['ratios'])
            mean_norm = float(statistics.fmean(ratios)) if ratios else float('inf')
            median_norm = float(statistics.median(ratios)) if ratios else float('inf')
            comparisons[name] = {
                'label': FIXED_BASELINE_LABELS.get(name, name),
                'count': total,
                'mean_norm': mean_norm,
                'median_norm': median_norm,
                'improved': int(bucket['improved']),
                'tied': int(bucket['tied']),
                'worsened': int(bucket['worsened']),
                'invalid': int(bucket['invalid']),
                'high_variance': int(bucket['high_variance']),
                'improved_rate': bucket['improved'] / total,
                'tie_rate': bucket['tied'] / total,
                'worsen_rate': bucket['worsened'] / total,
                'high_variance_rate': bucket['high_variance'] / total,
                'improvement_pct': ((1.0 - mean_norm) * 100.0) if math.isfinite(mean_norm) else None,
            }

        return comparisons

    def evaluate_program(self, program: str, pass_sequence: Sequence[str]) -> ProgramEvalResult:
        key = (program, self.baseline_name, tuple(pass_sequence))
        cached = self._eval_cache.get(key)
        if cached is not None:
            return cached

        harness = self.harnesses[program]
        try:
            baseline = self._selected_baseline_record(harness)
            baseline_time_ns = self._selected_baseline_time_ns(harness)
            expected_stdout_sha1 = str(baseline.get('stdout_sha1', harness.baseline_output_sha1))
            inner_repeats = max(1, int(baseline.get('inner_repeats', harness.inner_repeats)))
            binary_path = self.compile_cache.compile_binary(program, pass_sequence)
            bench = self._benchmark_binary(
                binary_path,
                harness,
                expected_stdout_sha1=expected_stdout_sha1,
                inner_repeats=inner_repeats,
            )
        except ObjectiveError as exc:
            result = ProgramEvalResult(
                ratio=float('inf'),
                raw_value=float('inf'),
                status=str(exc),
            )
            self._eval_cache[key] = result
            return result

        result = ProgramEvalResult(
            ratio=bench['median_ns'] / baseline_time_ns,
            raw_value=bench['median_ns'],
            status='ok' if bench['variance_pct'] <= self.max_variance_pct else 'high_variance',
            variance_pct=bench['variance_pct'],
            output_sha1=bench['stdout_sha1'],
        )
        self._eval_cache[key] = result
        return result

    def _benchmark_binary(
        self,
        binary_path: str,
        harness: ProgramRuntimeHarness,
        *,
        expected_stdout_sha1: str,
        inner_repeats: int,
    ) -> Dict[str, object]:
        samples_ns: list[float] = []
        sample_hashes: list[str] = []
        for _ in range(self.samples):
            total_ns = 0.0
            sample_hash = None
            for run_idx in range(inner_repeats):
                run_stats = self._run_once(binary_path, harness.input_data)
                total_ns += run_stats['elapsed_ns']
                if run_stats['stdout_sha1'] != expected_stdout_sha1:
                    raise RunError(f'stdout mismatch against {self.baseline_pipeline} baseline')
                if run_idx == 0:
                    sample_hash = str(run_stats['stdout_sha1'])
            if sample_hash is None:
                raise RunError('empty runtime sample')
            sample_hashes.append(sample_hash)
            samples_ns.append(total_ns / inner_repeats)

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
