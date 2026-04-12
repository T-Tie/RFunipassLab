"""指令数量目标后端。"""

from __future__ import annotations

import math
import threading
from concurrent.futures import ThreadPoolExecutor
from pathlib import Path

from .objective_common import compose_metrics
from .runtime import get_instrcount
from .settings import MAX_SEQ_LEN, OBJ_WORSEN_WEIGHT, llvm_tools_path


class InstructionCountBackend:
    """使用 LLVM IR 指令数作为优化目标。"""

    objective_kind = 'instrcount'
    baseline_display_name = '-Oz 基准指令数'
    metric_display_name = '归一化指令数'

    def __init__(
        self,
        *,
        llvm_tools_path_value: str = llvm_tools_path,
        max_seq_len: int = MAX_SEQ_LEN,
        worsen_weight: float = OBJ_WORSEN_WEIGHT,
    ) -> None:
        self.llvm_tools_path = llvm_tools_path_value
        self.max_seq_len = max_seq_len
        self.worsen_weight = worsen_weight
        self._program_text_cache: dict[str, str] = {}
        self._baseline_cache: dict[str, int] = {}
        self._value_cache: dict[tuple[str, tuple[str, ...]], int] = {}
        self._cache_lock = threading.Lock()

    def prepare(self, programs) -> None:
        """预热 `-Oz` 基线缓存。"""
        for program in programs:
            _ = self._baseline(program)

    def compute_baseline_values(self, programs):
        """返回程序集合对应的 `-Oz` 指令数。"""
        return [float(self._baseline(program)) for program in programs]

    def evaluate_sequence_metrics(self, programs, baseline_values, pass_sequence):
        """评估一条 pass 序列在多个程序上的归一化指令数。"""
        if not programs:
            return compose_metrics(
                [], pass_sequence, [], 0, 0, 0, {}, 0,
                max_seq_len=self.max_seq_len,
                worsen_weight=self.worsen_weight,
            )

        def eval_one(args):
            program, baseline = args
            try:
                value = self._count_program(program, pass_sequence)
                ratio = value / baseline if baseline > 0 else float(value)
                return program, baseline, value, ratio, 'ok'
            except Exception as exc:
                return program, baseline, None, float('inf'), str(exc)

        ratios = []
        improved = 0
        tied = 0
        worsened = 0
        invalid = 0
        per_program = {}

        with ThreadPoolExecutor() as executor:
            results = list(executor.map(eval_one, zip(programs, baseline_values)))

        for program, baseline, value, ratio, status in results:
            if value is None or not math.isfinite(ratio):
                invalid += 1
                worsened += 1
                per_program[program] = {
                    'ratio': float('inf'),
                    'raw_value': float('inf'),
                    'status': status,
                    'variance_pct': 0.0,
                }
                continue

            ratios.append(float(ratio))
            if value < baseline:
                improved += 1
            elif value == baseline:
                tied += 1
            else:
                worsened += 1

            per_program[program] = {
                'ratio': float(ratio),
                'raw_value': float(value),
                'status': status,
                'variance_pct': 0.0,
            }

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

    def _baseline(self, program: str) -> int:
        with self._cache_lock:
            cached = self._baseline_cache.get(program)
        if cached is not None:
            return cached

        value = self._count_program(program, ['-Oz'])
        with self._cache_lock:
            self._baseline_cache[program] = value
        return value

    def _count_program(self, program: str, pass_sequence) -> int:
        key = (program, tuple(pass_sequence))
        with self._cache_lock:
            cached = self._value_cache.get(key)
        if cached is not None:
            return cached

        ir_text = self._load_program_text(program)
        value = int(get_instrcount(ir_text, list(pass_sequence), self.llvm_tools_path))
        with self._cache_lock:
            self._value_cache[key] = value
        return value

    def _load_program_text(self, program: str) -> str:
        with self._cache_lock:
            cached = self._program_text_cache.get(program)
        if cached is not None:
            return cached

        text = Path(program).read_text(encoding='utf-8', errors='ignore')
        with self._cache_lock:
            self._program_text_cache[program] = text
        return text
