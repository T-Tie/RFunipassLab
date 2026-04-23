"""旁路 binary size 评估工具。"""

from __future__ import annotations

import math
import shutil
import statistics
import subprocess
from pathlib import Path
from typing import Any, Dict, Sequence

from .objective_common import compose_metrics
from .objective_time import CompileCache
from .paths import BINARY_SIZE_CACHE_DIR
from .settings import (
    BINARY_SIZE_METRIC,
    MAX_SEQ_LEN,
    OBJECTIVE_BASELINE,
    OBJ_WORSEN_WEIGHT,
    llvm_tools_path,
    normalize_binary_size_metric,
    normalize_objective_baseline,
    objective_baseline_pipeline,
)

FIXED_BASELINE_ORDER = ("none", "oz", "o3")
FIXED_BASELINE_PIPELINES = {
    "none": [],
    "oz": "-Oz",
    "o3": "-O3",
}
FIXED_BASELINE_LABELS = {
    "none": "[]",
    "oz": "-Oz",
    "o3": "-O3",
}
SIZE_METRIC_LABELS = {
    "file_bytes": "可执行文件大小",
    "stripped_file_bytes": "strip 后可执行文件大小",
    "text_bytes": ".text 段大小",
    "data_bytes": ".data 段大小",
    "bss_bytes": ".bss 段大小",
    "dec_bytes": "llvm-size dec 总大小",
}


def merge_binary_size_metric_names(
    primary_metric_name: str,
    metric_names: Sequence[str] | None = None,
) -> list[str]:
    """按顺序合并 primary 与附加 binary size 指标，并做规范化去重。"""
    ordered_names: list[str] = []
    seen = set()
    for raw_name in (primary_metric_name, *(metric_names or ())):
        normalized_name = normalize_binary_size_metric(raw_name)
        if normalized_name in seen:
            continue
        seen.add(normalized_name)
        ordered_names.append(normalized_name)
    return ordered_names


def _tool_bin(tool: str, llvm_tools_path_value: str) -> str:
    candidate = Path(llvm_tools_path_value) / tool
    return str(candidate) if candidate.is_file() else tool


def _parse_llvm_size_output(stdout_text: str) -> dict[str, int]:
    lines = [line.strip() for line in stdout_text.splitlines() if line.strip()]
    if len(lines) < 2:
        raise RuntimeError(f"unexpected llvm-size output: {stdout_text!r}")

    fields = lines[-1].split()
    if len(fields) < 5:
        raise RuntimeError(f"failed to parse llvm-size fields from: {lines[-1]!r}")

    return {
        "text_bytes": int(fields[0]),
        "data_bytes": int(fields[1]),
        "bss_bytes": int(fields[2]),
        "dec_bytes": int(fields[3]),
    }


class BinarySizeEvaluator:
    """对最终通用序列做 binary-size 旁路评估，不改变主搜索目标。"""

    objective_kind = "binarysize_sidecar"

    def __init__(
        self,
        *,
        cache_dir: str | None = None,
        llvm_tools_path_value: str = llvm_tools_path,
        max_seq_len: int = MAX_SEQ_LEN,
        worsen_weight: float = OBJ_WORSEN_WEIGHT,
        objective_baseline: str = OBJECTIVE_BASELINE,
        metric_name: str = BINARY_SIZE_METRIC,
    ) -> None:
        self.metric_name = normalize_binary_size_metric(metric_name)
        self.metric_display_name = SIZE_METRIC_LABELS[self.metric_name]
        self.max_seq_len = max_seq_len
        self.worsen_weight = worsen_weight
        self.baseline_name = normalize_objective_baseline(objective_baseline)
        self.baseline_pipeline = objective_baseline_pipeline(self.baseline_name)
        self.baseline_display_name = f"{self.baseline_pipeline} 基准{self.metric_display_name}"
        self.llvm_tools_path = llvm_tools_path_value
        self.compile_cache = CompileCache(
            cache_dir=str(Path(cache_dir) if cache_dir else BINARY_SIZE_CACHE_DIR / self.metric_name),
            llvm_tools_path_value=llvm_tools_path_value,
        )
        self._measure_cache: dict[tuple[str, tuple[str, ...]], dict[str, Any]] = {}

    def compute_baseline_values(
        self,
        programs: Sequence[str],
        *,
        metric_name: str | None = None,
    ) -> list[float]:
        resolved_metric_name = self._resolved_metric_name(metric_name)
        baseline_results = self._measure_programs(programs, [self.baseline_pipeline])
        return [
            self._selected_metric_value(result, metric_name=resolved_metric_name)
            for result in baseline_results
        ]

    def evaluate_sequence_metrics(
        self,
        programs,
        baseline_values,
        pass_sequence,
        *,
        metric_name: str | None = None,
    ):
        resolved_metric_name = self._resolved_metric_name(metric_name)
        sequence_results = self._measure_programs(programs, pass_sequence)
        fixed_baseline_results = self._measure_fixed_baselines(programs)
        return self._compose_metrics_for_metric(
            programs,
            baseline_values,
            pass_sequence,
            metric_name=resolved_metric_name,
            sequence_results=sequence_results,
            fixed_baseline_results=fixed_baseline_results,
        )

    def evaluate_metric_suite(
        self,
        programs: Sequence[str],
        pass_sequence,
        metric_names: Sequence[str] | None = None,
    ) -> Dict[str, Dict[str, Any]]:
        """一次共享测量中产出多个 binary size 指标的汇总。"""
        resolved_metric_names = merge_binary_size_metric_names(self.metric_name, metric_names)
        sequence_results = self._measure_programs(programs, pass_sequence)
        fixed_baseline_results = self._measure_fixed_baselines(programs)
        baseline_results = self._measure_programs(programs, [self.baseline_pipeline])

        metrics_by_name: Dict[str, Dict[str, Any]] = {}
        for metric_name in resolved_metric_names:
            baseline_values = [
                self._selected_metric_value(result, metric_name=metric_name)
                for result in baseline_results
            ]
            metrics_by_name[metric_name] = self._compose_metrics_for_metric(
                programs,
                baseline_values,
                pass_sequence,
                metric_name=metric_name,
                sequence_results=sequence_results,
                fixed_baseline_results=fixed_baseline_results,
            )
        return metrics_by_name

    def _measure_program(self, program: str, pass_sequence: Sequence[str] | str) -> dict[str, Any]:
        if isinstance(pass_sequence, str):
            sequence_key = (pass_sequence,)
        else:
            sequence_key = tuple(str(item) for item in pass_sequence)

        key = (program, sequence_key)
        cached = self._measure_cache.get(key)
        if cached is not None:
            return cached

        try:
            exe_path = Path(self.compile_cache.compile_binary(program, pass_sequence)).resolve()
            size_record = self._measure_binary(exe_path)
            result = {
                "status": "ok",
                **size_record,
            }
        except Exception as exc:
            result = {
                "status": str(exc),
                "file_bytes": float("inf"),
                "stripped_file_bytes": float("inf"),
                "text_bytes": float("inf"),
                "data_bytes": float("inf"),
                "bss_bytes": float("inf"),
                "dec_bytes": float("inf"),
            }

        self._measure_cache[key] = result
        return result

    def _measure_binary(self, exe_path: Path) -> dict[str, Any]:
        llvm_size_bin = _tool_bin("llvm-size", self.llvm_tools_path)
        llvm_strip_bin = _tool_bin("llvm-strip", self.llvm_tools_path)

        file_bytes = int(exe_path.stat().st_size)

        stripped_path = exe_path.with_name(f"{exe_path.name}.stripped")
        shutil.copy2(exe_path, stripped_path)
        try:
            strip_proc = subprocess.run(
                [llvm_strip_bin, str(stripped_path)],
                stdout=subprocess.PIPE,
                stderr=subprocess.PIPE,
                text=True,
                check=False,
            )
            if strip_proc.returncode != 0:
                raise RuntimeError(strip_proc.stderr.strip() or "llvm-strip failed")
            stripped_file_bytes = int(stripped_path.stat().st_size)
        finally:
            stripped_path.unlink(missing_ok=True)

        size_proc = subprocess.run(
            [llvm_size_bin, "-d", str(exe_path)],
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            text=True,
            check=False,
        )
        if size_proc.returncode != 0:
            raise RuntimeError(size_proc.stderr.strip() or "llvm-size failed")
        section_sizes = _parse_llvm_size_output(size_proc.stdout)

        return {
            "file_bytes": file_bytes,
            "stripped_file_bytes": stripped_file_bytes,
            **section_sizes,
        }

    def _resolved_metric_name(self, metric_name: str | None = None) -> str:
        return normalize_binary_size_metric(self.metric_name if metric_name is None else metric_name)

    def _selected_metric_value(
        self,
        size_record: dict[str, Any],
        *,
        metric_name: str | None = None,
    ) -> float:
        resolved_metric_name = self._resolved_metric_name(metric_name)
        value = size_record.get(resolved_metric_name, float("inf"))
        return float(value) if value is not None else float("inf")

    def _measure_programs(self, programs: Sequence[str], pass_sequence) -> list[dict[str, Any]]:
        return [self._measure_program(program, pass_sequence) for program in programs]

    def _init_comparison_buckets(self) -> Dict[str, Dict[str, object]]:
        return {
            name: {
                "ratios": [],
                "count": 0,
                "improved": 0,
                "tied": 0,
                "worsened": 0,
                "invalid": 0,
            }
            for name in FIXED_BASELINE_ORDER
        }

    def _measure_fixed_baselines(self, programs: Sequence[str]) -> Dict[str, list[dict[str, Any]]]:
        return {
            name: self._measure_programs(programs, FIXED_BASELINE_PIPELINES[name])
            for name in FIXED_BASELINE_ORDER
        }

    def _compose_metrics_for_metric(
        self,
        programs,
        baseline_values,
        pass_sequence,
        *,
        metric_name: str,
        sequence_results: Sequence[dict[str, Any]],
        fixed_baseline_results: Dict[str, Sequence[dict[str, Any]]],
    ) -> Dict[str, Any]:
        if not programs:
            metrics = compose_metrics(
                [], pass_sequence, [], 0, 0, 0, {}, 0,
                high_variance=0,
                max_seq_len=self.max_seq_len,
                worsen_weight=self.worsen_weight,
            )
            metrics["comparisons"] = {}
            metrics["metric_name"] = metric_name
            metrics["metric_display_name"] = SIZE_METRIC_LABELS[metric_name]
            metrics["baseline_name"] = self.baseline_name
            metrics["baseline_pipeline"] = self.baseline_pipeline
            return metrics

        ratios: list[float] = []
        improved = tied = worsened = invalid = 0
        per_program: dict[str, Any] = {}
        comparison_buckets = self._init_comparison_buckets()

        for index, (program, baseline_value, result) in enumerate(zip(programs, baseline_values, sequence_results)):
            raw_value = self._selected_metric_value(result, metric_name=metric_name)
            status = result["status"]

            per_program[program] = {
                "ratio": float("inf") if not math.isfinite(raw_value) or baseline_value <= 0 else float(raw_value / baseline_value),
                "raw_value": raw_value,
                "status": status,
                "variance_pct": 0.0,
                "metric_name": metric_name,
                "file_bytes": result.get("file_bytes"),
                "stripped_file_bytes": result.get("stripped_file_bytes"),
                "text_bytes": result.get("text_bytes"),
                "data_bytes": result.get("data_bytes"),
                "bss_bytes": result.get("bss_bytes"),
                "dec_bytes": result.get("dec_bytes"),
            }

            self._update_comparison_buckets(
                comparison_buckets,
                sequence_result=result,
                fixed_baseline_results=fixed_baseline_results,
                program_index=index,
                metric_name=metric_name,
            )

            if status != "ok" or not math.isfinite(raw_value) or not math.isfinite(float(baseline_value)) or baseline_value <= 0:
                invalid += 1
                worsened += 1
                continue

            ratio = float(raw_value) / float(baseline_value)
            ratios.append(float(ratio))
            if raw_value < baseline_value:
                improved += 1
            elif raw_value == baseline_value:
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
            high_variance=0,
            max_seq_len=self.max_seq_len,
            worsen_weight=self.worsen_weight,
        )
        metrics["comparisons"] = self._finalize_comparison_buckets(comparison_buckets)
        metrics["metric_name"] = metric_name
        metrics["metric_display_name"] = SIZE_METRIC_LABELS[metric_name]
        metrics["baseline_name"] = self.baseline_name
        metrics["baseline_pipeline"] = self.baseline_pipeline
        return metrics

    def _update_comparison_buckets(
        self,
        comparison_buckets: Dict[str, Dict[str, object]],
        *,
        sequence_result: dict[str, Any],
        fixed_baseline_results: Dict[str, Sequence[dict[str, Any]]],
        program_index: int,
        metric_name: str,
    ) -> None:
        sequence_value = self._selected_metric_value(sequence_result, metric_name=metric_name)
        for name in FIXED_BASELINE_ORDER:
            baseline_result = fixed_baseline_results[name][program_index]
            baseline_value = self._selected_metric_value(baseline_result, metric_name=metric_name)
            bucket = comparison_buckets[name]
            bucket["count"] += 1

            if (
                sequence_result["status"] != "ok"
                or baseline_result["status"] != "ok"
                or not math.isfinite(sequence_value)
                or not math.isfinite(baseline_value)
                or baseline_value <= 0
            ):
                bucket["worsened"] += 1
                bucket["invalid"] += 1
                continue

            ratio = float(sequence_value / baseline_value)
            bucket["ratios"].append(ratio)
            if sequence_value < baseline_value:
                bucket["improved"] += 1
            elif sequence_value == baseline_value:
                bucket["tied"] += 1
            else:
                bucket["worsened"] += 1

    def _finalize_comparison_buckets(
        self,
        comparison_buckets: Dict[str, Dict[str, object]],
    ) -> Dict[str, Dict[str, object]]:
        comparisons: Dict[str, Dict[str, object]] = {}
        for name, bucket in comparison_buckets.items():
            total = int(bucket["count"])
            if total <= 0:
                continue

            ratios = list(bucket["ratios"])
            mean_norm = float(statistics.fmean(ratios)) if ratios else float("inf")
            median_norm = float(statistics.median(ratios)) if ratios else float("inf")
            comparisons[name] = {
                "label": FIXED_BASELINE_LABELS[name],
                "count": total,
                "mean_norm": mean_norm,
                "median_norm": median_norm,
                "improved": int(bucket["improved"]),
                "tied": int(bucket["tied"]),
                "worsened": int(bucket["worsened"]),
                "invalid": int(bucket["invalid"]),
                "improved_rate": bucket["improved"] / total,
                "tie_rate": bucket["tied"] / total,
                "worsen_rate": bucket["worsened"] / total,
                "improvement_pct": ((1.0 - mean_norm) * 100.0) if math.isfinite(mean_norm) else None,
            }
        return comparisons
