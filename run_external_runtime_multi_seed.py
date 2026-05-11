#!/usr/bin/env python3
from __future__ import annotations

import argparse
import csv
import hashlib
import json
import math
import os
import platform
import re
import shutil
import statistics
import subprocess
import sys
import time
from datetime import datetime
from pathlib import Path
from typing import Any, Iterable, Sequence

from boca_exp.settings import llvm_tools_path
from external_validation.core import build_external_ir
from external_validation.paths import BUILD_DIR, IR_DIR, REPORTS_DIR, SOURCES_DIR, ensure_layout
from external_validation.registry import POLYBENCH_FULL_SOURCES, POLYBENCH_SOURCES


DEFAULT_BATCH_CSV = Path(
    "results/reports/20260423_181846_348878_feature_lite_multiseed_instrcount_lite_wrap_10seeds.csv"
)
SUPPORTED_SUITES = ("polybench", "polybench_full")
BACKEND_FLAGS = {"oz": "-Oz", "o3": "-O3"}
BASELINE_PIPELINES = {"none": "", "oz": "-Oz", "o3": "-O3"}
RAW_FIELDNAMES = [
    "tag",
    "backend_profile",
    "matched_baseline",
    "suite",
    "benchmark",
    "seed",
    "run_id",
    "pipeline_label",
    "pipeline_kind",
    "repeat_index",
    "status",
    "polybench_seconds",
    "wall_seconds",
    "timeout_used",
    "censored",
    "binary_path",
    "optimized_ir_path",
    "stdout_path",
    "stderr_path",
    "error",
]
FLOAT_PATTERN = re.compile(r"[-+]?(?:\d+(?:\.\d*)?|\.\d+)(?:[eE][-+]?\d+)?")


def _timestamp() -> str:
    return datetime.now().strftime("%Y%m%d_%H%M%S")


def _safe_tag(value: str) -> str:
    cleaned = "".join(ch if ch.isalnum() or ch in "._-" else "_" for ch in value.strip())
    return cleaned.strip("._-") or f"external_runtime_{_timestamp()}"


def _tool_bin(tool: str) -> str:
    candidate = Path(llvm_tools_path) / tool
    if candidate.is_file():
        return str(candidate)
    return tool


def _run_command(
    command: Sequence[str],
    *,
    cwd: Path | None = None,
    timeout: float | None = None,
) -> subprocess.CompletedProcess[str]:
    try:
        completed = subprocess.run(
            list(command),
            cwd=str(cwd) if cwd else None,
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            text=True,
            check=False,
            timeout=timeout,
        )
    except subprocess.TimeoutExpired as exc:
        raise TimeoutError(f"command timed out after {timeout}s: {' '.join(command)}") from exc
    if completed.returncode != 0:
        detail = (completed.stderr or "").strip() or (completed.stdout or "").strip() or "<no output>"
        raise RuntimeError(
            "command failed\n"
            f"cwd: {cwd or Path.cwd()}\n"
            f"returncode: {completed.returncode}\n"
            f"cmd: {' '.join(command)}\n"
            f"{detail}"
        )
    return completed


def _read_batch_rows(path: Path) -> list[dict[str, str]]:
    if not path.is_file():
        raise FileNotFoundError(f"batch CSV not found: {path}")
    with path.open(newline="", encoding="utf-8") as csv_file:
        rows = list(csv.DictReader(csv_file))
    if not rows:
        raise ValueError(f"batch CSV has no rows: {path}")
    return rows


def _selected_rows(rows: list[dict[str, str]], seeds: Sequence[int] | None) -> list[dict[str, str]]:
    seed_filter = {int(seed) for seed in seeds} if seeds else None
    selected: list[dict[str, str]] = []
    for row in rows:
        seed_text = row.get("experiment_seed") or row.get("seed")
        if not seed_text:
            continue
        seed = int(seed_text)
        if seed_filter is not None and seed not in seed_filter:
            continue
        pipeline = (row.get("final_pipeline_effective") or "").strip()
        if not pipeline:
            raise ValueError(f"missing final_pipeline_effective for seed={seed}")
        selected.append(row)
    selected.sort(key=lambda item: int(item.get("experiment_seed") or item.get("seed") or 0))
    if not selected:
        raise ValueError("no selected seed rows")
    return selected


def _suite_benchmarks(suite: str, selected_names: Sequence[str] | None) -> list[str]:
    if suite == "polybench":
        names = list(POLYBENCH_SOURCES)
    elif suite == "polybench_full":
        names = list(POLYBENCH_FULL_SOURCES)
    else:
        raise ValueError(f"unsupported suite for matched-backend runtime: {suite}")
    if not selected_names:
        return names
    requested = set(selected_names)
    unknown = sorted(requested - set(names))
    if unknown:
        raise ValueError(f"unknown {suite} benchmark(s): {', '.join(unknown)}")
    return [name for name in names if name in requested]


def _ensure_ir_files(
    *,
    suite: str,
    benchmarks: Sequence[str],
    frontend_mode: str,
    skip_build_ir: bool,
) -> None:
    missing = [name for name in benchmarks if not (IR_DIR / suite / f"{name}.ll").is_file()]
    if missing and skip_build_ir:
        raise FileNotFoundError(f"missing linked IR for {suite}: {', '.join(missing)}")
    if missing:
        build_external_ir(
            selected_suites=[suite],
            benchmarks=list(benchmarks),
            force_rebuild=False,
            frontend_mode=frontend_mode,
        )


def _sha1_text(text: str) -> str:
    return hashlib.sha1(text.encode("utf-8")).hexdigest()


def _write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")


def _read_csv_rows(path: Path) -> list[dict[str, str]]:
    if not path.is_file():
        return []
    with path.open(newline="", encoding="utf-8") as csv_file:
        return list(csv.DictReader(csv_file))


def _append_csv_row(path: Path, row: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    exists = path.is_file() and path.stat().st_size > 0
    with path.open("a", newline="", encoding="utf-8") as csv_file:
        writer = csv.DictWriter(csv_file, fieldnames=RAW_FIELDNAMES, extrasaction="ignore")
        if not exists:
            writer.writeheader()
        writer.writerow({key: row.get(key, "") for key in RAW_FIELDNAMES})


def _write_csv(path: Path, rows: list[dict[str, Any]]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    if not rows:
        path.write_text("", encoding="utf-8")
        return
    fieldnames: list[str] = []
    for row in rows:
        for key in row:
            if key not in fieldnames:
                fieldnames.append(key)
    with path.open("w", newline="", encoding="utf-8") as csv_file:
        writer = csv.DictWriter(csv_file, fieldnames=fieldnames)
        writer.writeheader()
        writer.writerows(rows)


def _materialize_optimized_ir(
    *,
    input_ll: Path,
    output_ll: Path,
    pipeline_label: str,
    pass_pipeline: str,
    opt_timeout: float,
    force_rebuild: bool,
) -> None:
    if output_ll.is_file() and not force_rebuild:
        return
    output_ll.parent.mkdir(parents=True, exist_ok=True)
    if pipeline_label == "none" or not pass_pipeline:
        shutil.copy2(input_ll, output_ll)
        return
    opt_bin = _tool_bin("opt")
    if pipeline_label in {"oz", "o3"}:
        command = [opt_bin, "-S", BASELINE_PIPELINES[pipeline_label], str(input_ll), "-o", str(output_ll)]
    else:
        command = [opt_bin, "-S", f"-passes={pass_pipeline}", str(input_ll), "-o", str(output_ll)]
    _run_command(command, cwd=output_ll.parent, timeout=opt_timeout)


def _compile_backend(
    *,
    optimized_ll: Path,
    binary_path: Path,
    backend_profile: str,
    compile_timeout: float,
    force_rebuild: bool,
) -> None:
    if binary_path.is_file() and not force_rebuild:
        return
    binary_path.parent.mkdir(parents=True, exist_ok=True)
    clang_bin = _tool_bin("clang")
    backend_flag = BACKEND_FLAGS[backend_profile]
    command = [
        clang_bin,
        "-x",
        "ir",
        backend_flag,
        "-Xclang",
        "-disable-llvm-passes",
        str(optimized_ll),
        "-lm",
        "-o",
        str(binary_path),
    ]
    _run_command(command, cwd=binary_path.parent, timeout=compile_timeout)


def _parse_polybench_seconds(stdout_text: str) -> float:
    values = [float(match.group(0)) for match in FLOAT_PATTERN.finditer(stdout_text)]
    if not values:
        raise ValueError("cannot parse PolyBench timing from stdout")
    return float(values[-1])


def _run_binary_once(
    *,
    binary_path: Path,
    run_dir: Path,
    timeout: float,
) -> dict[str, Any]:
    if run_dir.exists():
        shutil.rmtree(run_dir)
    run_dir.mkdir(parents=True, exist_ok=True)
    stdout_path = run_dir / "stdout.txt"
    stderr_path = run_dir / "stderr.txt"
    started = time.perf_counter()
    try:
        completed = subprocess.run(
            [str(binary_path)],
            cwd=str(run_dir),
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            text=True,
            check=False,
            timeout=timeout,
        )
        wall_seconds = time.perf_counter() - started
    except subprocess.TimeoutExpired as exc:
        wall_seconds = time.perf_counter() - started
        stdout_text = exc.stdout if isinstance(exc.stdout, str) else ""
        stderr_text = exc.stderr if isinstance(exc.stderr, str) else ""
        stdout_path.write_text(stdout_text or "", encoding="utf-8", errors="replace")
        stderr_path.write_text(stderr_text or "", encoding="utf-8", errors="replace")
        raise TimeoutError(f"runtime timeout after {timeout}s") from exc

    stdout_path.write_text(completed.stdout or "", encoding="utf-8", errors="replace")
    stderr_path.write_text(completed.stderr or "", encoding="utf-8", errors="replace")
    if completed.returncode != 0:
        raise RuntimeError(f"binary exited with returncode={completed.returncode}")
    polybench_seconds = _parse_polybench_seconds(completed.stdout or "")
    return {
        "polybench_seconds": polybench_seconds,
        "wall_seconds": wall_seconds,
        "timeout_used": timeout,
        "censored": False,
        "stdout_path": str(stdout_path),
        "stderr_path": str(stderr_path),
    }


def _median_metric_from_raw(
    rows: Iterable[dict[str, str]],
    *,
    suite: str,
    benchmark: str,
    seed: str,
    pipeline_label: str,
    metric: str,
) -> float | None:
    values: list[float] = []
    for row in rows:
        if row.get("status") != "ok":
            continue
        if row.get("suite") != suite or row.get("benchmark") != benchmark:
            continue
        if row.get("seed", "") != seed or row.get("pipeline_label") != pipeline_label:
            continue
        value = _finite_float(row.get(metric))
        if value is not None:
            values.append(value)
    return _median(values)


def _runtime_timeout_for_pipeline(
    *,
    raw_path: Path,
    suite: str,
    benchmark: str,
    pipeline_label: str,
    matched_baseline: str,
    metric: str,
    default_timeout: float,
    adaptive_factor: float,
    min_timeout: float,
) -> float:
    if pipeline_label != "universal" or adaptive_factor <= 0:
        return default_timeout
    baseline_median = _median_metric_from_raw(
        _read_csv_rows(raw_path),
        suite=suite,
        benchmark=benchmark,
        seed="",
        pipeline_label=matched_baseline,
        metric=metric,
    )
    if baseline_median is None or baseline_median <= 0:
        return default_timeout
    adaptive_timeout = max(min_timeout, baseline_median * adaptive_factor)
    return min(default_timeout, adaptive_timeout)


def _existing_run_keys(rows: Iterable[dict[str, str]]) -> set[tuple[str, str, str, str, str, str]]:
    keys = set()
    for row in rows:
        keys.add(
            (
                row.get("backend_profile", ""),
                row.get("suite", ""),
                row.get("benchmark", ""),
                row.get("seed", ""),
                row.get("pipeline_label", ""),
                row.get("repeat_index", ""),
            )
        )
    return keys


def _finite_float(value: Any) -> float | None:
    try:
        number = float(value)
    except (TypeError, ValueError):
        return None
    if not math.isfinite(number):
        return None
    return number


def _mean(values: Sequence[float]) -> float | None:
    return float(statistics.fmean(values)) if values else None


def _std(values: Sequence[float]) -> float | None:
    if len(values) <= 1:
        return 0.0 if values else None
    return float(statistics.stdev(values))


def _median(values: Sequence[float]) -> float | None:
    return float(statistics.median(values)) if values else None


def _geomean(values: Sequence[float]) -> float | None:
    positive = [value for value in values if value > 0 and math.isfinite(value)]
    if len(positive) != len(values) or not positive:
        return None
    return float(math.exp(statistics.fmean(math.log(value) for value in positive)))


def _t_critical_95(n: int) -> float:
    table = {
        1: float("inf"),
        2: 12.706,
        3: 4.303,
        4: 3.182,
        5: 2.776,
        6: 2.571,
        7: 2.447,
        8: 2.365,
        9: 2.306,
        10: 2.262,
        11: 2.228,
        12: 2.201,
        13: 2.179,
        14: 2.160,
        15: 2.145,
        16: 2.131,
        17: 2.120,
        18: 2.110,
        19: 2.101,
        20: 2.093,
        21: 2.086,
        22: 2.080,
        23: 2.074,
        24: 2.069,
        25: 2.064,
        26: 2.060,
        27: 2.056,
        28: 2.052,
        29: 2.048,
        30: 2.045,
    }
    if n <= 1:
        return float("inf")
    return table.get(n, 1.96)


def _ci95(values: Sequence[float]) -> float | None:
    if not values:
        return None
    if len(values) == 1:
        return 0.0
    return _t_critical_95(len(values)) * statistics.stdev(values) / math.sqrt(len(values))


def _format_ratio(value: Any) -> str:
    number = _finite_float(value)
    return "NA" if number is None else f"{number:.4f}"


def _format_pct(value: Any) -> str:
    number = _finite_float(value)
    return "NA" if number is None else f"{number * 100:.2f}%"


def _aggregate_results(
    *,
    raw_rows: list[dict[str, str]],
    metric: str,
    matched_baseline: str,
    tie_threshold: float,
) -> tuple[list[dict[str, Any]], list[dict[str, Any]], list[dict[str, Any]], list[dict[str, Any]]]:
    grouped_values: dict[tuple[str, str, str, str], list[float]] = {}
    grouped_wall: dict[tuple[str, str, str, str], list[float]] = {}
    for row in raw_rows:
        value = _finite_float(row.get(metric))
        wall = _finite_float(row.get("wall_seconds"))
        if row.get("status") != "ok":
            if row.get("pipeline_label") != "universal":
                continue
            if "timeout" not in (row.get("error") or "").lower():
                continue
            timeout_used = _finite_float(row.get("timeout_used"))
            value = timeout_used
            wall = timeout_used
            if value is None:
                continue
        if value is None:
            continue
        key = (
            row.get("seed", ""),
            row.get("suite", ""),
            row.get("benchmark", ""),
            row.get("pipeline_label", ""),
        )
        grouped_values.setdefault(key, []).append(value)
        if wall is not None:
            grouped_wall.setdefault(key, []).append(wall)

    per_pipeline_rows: list[dict[str, Any]] = []
    medians: dict[tuple[str, str, str, str], float] = {}
    for key, values in sorted(grouped_values.items()):
        seed, suite, benchmark, pipeline_label = key
        median_value = _median(values)
        if median_value is None:
            continue
        medians[key] = median_value
        wall_values = grouped_wall.get(key, [])
        per_pipeline_rows.append(
            {
                "seed": seed,
                "suite": suite,
                "benchmark": benchmark,
                "pipeline_label": pipeline_label,
                "repeat_count": len(values),
                f"{metric}_mean": _mean(values),
                f"{metric}_median": median_value,
                f"{metric}_std": _std(values),
                f"{metric}_ci95": _ci95(values),
                "wall_seconds_mean": _mean(wall_values),
                "wall_seconds_median": _median(wall_values),
            }
        )

    baseline_medians: dict[tuple[str, str, str], float] = {}
    none_medians: dict[tuple[str, str, str], float] = {}
    for (seed, suite, benchmark, pipeline_label), value in medians.items():
        if seed:
            continue
        if pipeline_label == matched_baseline:
            baseline_medians[(suite, benchmark, matched_baseline)] = value
        elif pipeline_label == "none":
            none_medians[(suite, benchmark, "none")] = value

    per_benchmark_seed_rows: list[dict[str, Any]] = []
    seen_universal_keys: set[tuple[str, str, str]] = set()
    for (seed, suite, benchmark, pipeline_label), universal_value in sorted(medians.items()):
        if pipeline_label != "universal" or not seed:
            continue
        seen_universal_keys.add((seed, suite, benchmark))
        baseline_value = baseline_medians.get((suite, benchmark, matched_baseline))
        none_value = none_medians.get((suite, benchmark, "none"))
        if baseline_value is None:
            continue
        ratio_vs_baseline = universal_value / baseline_value if baseline_value > 0 else float("inf")
        ratio_vs_none = universal_value / none_value if none_value and none_value > 0 else None
        timeout_rows = [
            row
            for row in raw_rows
            if row.get("seed") == seed
            and row.get("suite") == suite
            and row.get("benchmark") == benchmark
            and row.get("pipeline_label") == "universal"
            and row.get("status") != "ok"
            and "timeout" in (row.get("error") or "").lower()
        ]
        is_timeout = bool(timeout_rows)
        per_benchmark_seed_rows.append(
            {
                "seed": int(seed),
                "suite": suite,
                "benchmark": benchmark,
                "metric": metric,
                "matched_baseline": matched_baseline,
                "universal": universal_value,
                matched_baseline: baseline_value,
                "none": none_value,
                f"ratio_vs_{matched_baseline}": ratio_vs_baseline,
                "ratio_vs_none": ratio_vs_none,
                "censored": is_timeout,
                "timeout": is_timeout,
                "invalid": False,
                f"speedup_vs_{matched_baseline}": 1.0 / ratio_vs_baseline
                if ratio_vs_baseline > 0 and math.isfinite(ratio_vs_baseline)
                else None,
                "status_vs_baseline": "timeout"
                if is_timeout
                else "improved"
                if ratio_vs_baseline < 1.0 - tie_threshold
                else "worsened"
                if ratio_vs_baseline > 1.0 + tie_threshold
                else "tied",
            }
        )

    for row in raw_rows:
        if row.get("pipeline_label") != "universal" or row.get("status") == "ok":
            continue
        if "timeout" in (row.get("error") or "").lower():
            continue
        seed = row.get("seed", "")
        suite = row.get("suite", "")
        benchmark = row.get("benchmark", "")
        if not seed or (seed, suite, benchmark) in seen_universal_keys:
            continue
        baseline_value = baseline_medians.get((suite, benchmark, matched_baseline))
        none_value = none_medians.get((suite, benchmark, "none"))
        per_benchmark_seed_rows.append(
            {
                "seed": int(seed),
                "suite": suite,
                "benchmark": benchmark,
                "metric": metric,
                "matched_baseline": matched_baseline,
                "universal": None,
                matched_baseline: baseline_value,
                "none": none_value,
                f"ratio_vs_{matched_baseline}": None,
                "ratio_vs_none": None,
                "censored": False,
                "timeout": False,
                "invalid": True,
                f"speedup_vs_{matched_baseline}": None,
                "status_vs_baseline": "invalid",
                "error": row.get("error"),
            }
        )

    per_seed_rows: list[dict[str, Any]] = []
    seed_values: dict[int, list[float]] = {}
    seed_none_values: dict[int, list[float]] = {}
    for row in per_benchmark_seed_rows:
        seed = int(row["seed"])
        ratio = _finite_float(row.get(f"ratio_vs_{matched_baseline}"))
        ratio_none = _finite_float(row.get("ratio_vs_none"))
        if ratio is not None:
            seed_values.setdefault(seed, []).append(ratio)
        if ratio_none is not None:
            seed_none_values.setdefault(seed, []).append(ratio_none)

    all_seeds = sorted({int(row["seed"]) for row in per_benchmark_seed_rows})
    for seed in all_seeds:
        rows = [row for row in per_benchmark_seed_rows if int(row["seed"]) == seed]
        ratios = seed_values.get(seed, [])
        improved = sum(1 for row in rows if row["status_vs_baseline"] == "improved")
        tied = sum(1 for row in rows if row["status_vs_baseline"] == "tied")
        worsened = sum(1 for row in rows if row["status_vs_baseline"] in {"worsened", "timeout"})
        timeout_count = sum(1 for row in rows if row["status_vs_baseline"] == "timeout")
        invalid_count = sum(1 for row in rows if row["status_vs_baseline"] == "invalid")
        geomean_ratio = _geomean(ratios)
        none_geomean = _geomean(seed_none_values.get(seed, []))
        per_seed_rows.append(
            {
                "seed": seed,
                "program_count": len(rows),
                "finite_ratio_count": len(ratios),
                f"geomean_ratio_vs_{matched_baseline}": geomean_ratio,
                f"mean_ratio_vs_{matched_baseline}": _mean(ratios),
                f"median_ratio_vs_{matched_baseline}": _median(ratios),
                f"speedup_vs_{matched_baseline}": 1.0 / geomean_ratio
                if geomean_ratio and geomean_ratio > 0
                else None,
                "geomean_ratio_vs_none": none_geomean,
                "improved": improved,
                "tied": tied,
                "worsened": worsened,
                "timeout": timeout_count,
                "invalid": invalid_count,
                "worsen_rate": worsened / len(rows) if rows else None,
                "invalid_rate": invalid_count / len(rows) if rows else None,
                "worsen_or_invalid_rate": (worsened + invalid_count) / len(rows) if rows else None,
            }
        )

    aggregate_rows: list[dict[str, Any]] = []
    geomeans = [
        value
        for value in (_finite_float(row.get(f"geomean_ratio_vs_{matched_baseline}")) for row in per_seed_rows)
        if value is not None
    ]
    speedups = [
        value
        for value in (_finite_float(row.get(f"speedup_vs_{matched_baseline}")) for row in per_seed_rows)
        if value is not None
    ]
    worsen_rates = [
        value for value in (_finite_float(row.get("worsen_rate")) for row in per_seed_rows) if value is not None
    ]
    invalid_rates = [
        value for value in (_finite_float(row.get("invalid_rate")) for row in per_seed_rows) if value is not None
    ]
    worsen_or_invalid_rates = [
        value
        for value in (_finite_float(row.get("worsen_or_invalid_rate")) for row in per_seed_rows)
        if value is not None
    ]
    aggregate_rows.append(
        {
            "metric": metric,
            "matched_baseline": matched_baseline,
            "seed_count": len(per_seed_rows),
            "program_count_per_seed": max((int(row["program_count"]) for row in per_seed_rows), default=0),
            f"geomean_ratio_vs_{matched_baseline}_mean": _mean(geomeans),
            f"geomean_ratio_vs_{matched_baseline}_std": _std(geomeans),
            f"geomean_ratio_vs_{matched_baseline}_ci95": _ci95(geomeans),
            f"speedup_vs_{matched_baseline}_mean": _mean(speedups),
            f"speedup_vs_{matched_baseline}_std": _std(speedups),
            f"speedup_vs_{matched_baseline}_ci95": _ci95(speedups),
            "worsen_rate_mean": _mean(worsen_rates),
            "worsen_rate_std": _std(worsen_rates),
            "worsen_rate_ci95": _ci95(worsen_rates),
            "invalid_rate_mean": _mean(invalid_rates),
            "invalid_rate_std": _std(invalid_rates),
            "invalid_rate_ci95": _ci95(invalid_rates),
            "worsen_or_invalid_rate_mean": _mean(worsen_or_invalid_rates),
            "worsen_or_invalid_rate_std": _std(worsen_or_invalid_rates),
            "worsen_or_invalid_rate_ci95": _ci95(worsen_or_invalid_rates),
            "improved_total": sum(int(row.get("improved") or 0) for row in per_seed_rows),
            "tied_total": sum(int(row.get("tied") or 0) for row in per_seed_rows),
            "worsened_total": sum(int(row.get("worsened") or 0) for row in per_seed_rows),
            "timeout_total": sum(int(row.get("timeout") or 0) for row in per_seed_rows),
            "invalid_total": sum(int(row.get("invalid") or 0) for row in per_seed_rows),
        }
    )
    return per_pipeline_rows, per_benchmark_seed_rows, per_seed_rows, aggregate_rows


def _llvm_version(tool: str) -> str:
    try:
        completed = subprocess.run(
            [_tool_bin(tool), "--version"],
            stdout=subprocess.PIPE,
            stderr=subprocess.STDOUT,
            text=True,
            check=False,
            timeout=10,
        )
    except Exception as exc:  # pragma: no cover - diagnostic only.
        return f"<unavailable: {exc}>"
    return (completed.stdout or "").splitlines()[0] if completed.stdout else "<empty>"


def _host_snapshot() -> dict[str, Any]:
    def read_text(path: str) -> str | None:
        try:
            return Path(path).read_text(encoding="utf-8", errors="ignore").strip()
        except OSError:
            return None

    return {
        "platform": platform.platform(),
        "machine": platform.machine(),
        "processor": platform.processor(),
        "python": platform.python_version(),
        "cpu_model": next(
            (
                line.split(":", 1)[1].strip()
                for line in (read_text("/proc/cpuinfo") or "").splitlines()
                if line.startswith("model name")
            ),
            None,
        ),
        "meminfo_memtotal": next(
            (
                line.split(":", 1)[1].strip()
                for line in (read_text("/proc/meminfo") or "").splitlines()
                if line.startswith("MemTotal")
            ),
            None,
        ),
    }


def _make_summary_markdown(
    *,
    args: argparse.Namespace,
    tag: str,
    selected_rows: list[dict[str, str]],
    benchmarks: list[str],
    manifest_path: Path,
    raw_path: Path,
    per_seed_path: Path,
    aggregate_rows: list[dict[str, Any]],
    failures: list[dict[str, Any]],
) -> str:
    baseline = args.matched_baseline
    aggregate = aggregate_rows[0] if aggregate_rows else {}
    geomean_key = f"geomean_ratio_vs_{baseline}_mean"
    geomean_ci_key = f"geomean_ratio_vs_{baseline}_ci95"
    speedup_key = f"speedup_vs_{baseline}_mean"
    speedup_ci_key = f"speedup_vs_{baseline}_ci95"
    lines = [
        f"# PolyBench Matched-Backend Runtime Report: {tag}",
        "",
        f"- Generated at: `{datetime.now().isoformat(timespec='seconds')}`",
        f"- Suite: `{args.suite}`",
        f"- Benchmark count: `{len(benchmarks)}`",
        f"- Seeds: `{[int(row.get('experiment_seed') or row.get('seed')) for row in selected_rows]}`",
        f"- Backend profile: `{args.backend_profile}` / flag `{BACKEND_FLAGS[args.backend_profile]}`",
        f"- Matched baseline: `{baseline}`",
        f"- Repeat: `{args.repeat}`",
        f"- Warmup repeat: `{args.warmup_repeat}`",
        f"- Timeout: hard cap `{args.timeout}s`, adaptive factor `{args.adaptive_timeout_factor}`, min `{args.min_runtime_timeout}s`",
        f"- Metric: `{args.metric}`",
        f"- LLVM tools: `{llvm_tools_path}`",
        f"- Manifest: `{manifest_path}`",
        f"- Raw timings: `{raw_path}`",
        f"- Per-seed table: `{per_seed_path}`",
        "",
        "## Main Result",
        "",
        "| Metric | Value |",
        "| --- | ---: |",
        f"| Geomean runtime ratio vs {baseline} ↓ | {_format_ratio(aggregate.get(geomean_key))} ± {_format_ratio(aggregate.get(geomean_ci_key))} |",
        f"| Speedup vs {baseline} ↑ | {_format_ratio(aggregate.get(speedup_key))} ± {_format_ratio(aggregate.get(speedup_ci_key))} |",
        f"| Worsen rate ↓ | {_format_pct(aggregate.get('worsen_rate_mean'))} ± {_format_pct(aggregate.get('worsen_rate_ci95'))} |",
        f"| Invalid rate ↓ | {_format_pct(aggregate.get('invalid_rate_mean'))} ± {_format_pct(aggregate.get('invalid_rate_ci95'))} |",
        f"| Worsen-or-invalid rate ↓ | {_format_pct(aggregate.get('worsen_or_invalid_rate_mean'))} ± {_format_pct(aggregate.get('worsen_or_invalid_rate_ci95'))} |",
        f"| Improved / tied / worsened | {aggregate.get('improved_total', 0)} / {aggregate.get('tied_total', 0)} / {aggregate.get('worsened_total', 0)} |",
        f"| Timeout / invalid | {aggregate.get('timeout_total', 0)} / {aggregate.get('invalid_total', 0)} |",
        f"| New runner exceptions in this invocation | {len(failures)} |",
        "",
        "## Method",
        "",
        "- Each method first materializes an explicit middle-end IR with `opt`.",
        "- RFunipass uses the `final_pipeline_effective` field from the 10-seed batch CSV.",
        "- The baseline uses the matched LLVM pipeline, e.g. `opt -Oz` for the `oz` backend profile.",
        "- All binaries are compiled from the materialized IR with `clang -x ir <IR> <backend flag> -Xclang -disable-llvm-passes -lm`.",
        "- This keeps the backend optimization level aligned with the baseline while avoiding an extra clang middle-end optimization pass over already optimized IR.",
        "- Universal timeout rows are counted as worsened and aggregated as censored lower-bound ratios using the timeout cap divided by the matched baseline runtime.",
    ]
    if failures:
        lines.extend(["", "## Failures", ""])
        for failure in failures[:20]:
            lines.append(f"- `{failure}`")
    return "\n".join(lines) + "\n"


def _build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(
        description="Evaluate RFunipass multi-seed sequences on PolyBench runtime with matched LLVM backend profiles."
    )
    parser.add_argument("--batch-csv", type=Path, default=DEFAULT_BATCH_CSV)
    parser.add_argument("--suite", choices=SUPPORTED_SUITES, default="polybench_full")
    parser.add_argument("--benchmark", action="append")
    parser.add_argument("--seed", action="append", type=int)
    parser.add_argument("--backend-profile", choices=tuple(BACKEND_FLAGS), required=True)
    parser.add_argument("--matched-baseline", choices=("oz", "o3"))
    parser.add_argument("--repeat", type=int, default=30)
    parser.add_argument(
        "--warmup-repeat",
        type=int,
        default=0,
        help="Discarded warmup executions before pending measured repeats for each binary.",
    )
    parser.add_argument("--timeout", type=float, default=300.0)
    parser.add_argument(
        "--adaptive-timeout-factor",
        type=float,
        default=20.0,
        help="For universal runs, cap each run at max(min-timeout, matched_baseline_median * factor), bounded by --timeout. Set <=0 to disable.",
    )
    parser.add_argument(
        "--min-runtime-timeout",
        type=float,
        default=5.0,
        help="Minimum per-run timeout when adaptive timeout is enabled.",
    )
    parser.add_argument("--opt-timeout", type=float, default=180.0)
    parser.add_argument("--compile-timeout", type=float, default=180.0)
    parser.add_argument("--tie-threshold", type=float, default=0.01)
    parser.add_argument("--metric", choices=("polybench_seconds", "wall_seconds"), default="polybench_seconds")
    parser.add_argument("--frontend-mode", choices=("canonical", "raw"), default="canonical")
    parser.add_argument("--tag", default=None)
    parser.add_argument("--skip-build-ir", action="store_true")
    parser.add_argument("--force-rebuild", action="store_true")
    parser.add_argument("--resume", action="store_true")
    parser.add_argument("--continue-on-error", action="store_true")
    return parser


def main() -> int:
    args = _build_parser().parse_args()
    ensure_layout()
    matched_baseline = args.matched_baseline or args.backend_profile
    if matched_baseline != args.backend_profile:
        raise ValueError(
            "matched backend experiment requires --matched-baseline to equal --backend-profile; "
            f"got backend={args.backend_profile}, baseline={matched_baseline}"
        )
    args.matched_baseline = matched_baseline
    tag = _safe_tag(args.tag or f"external_runtime_{args.suite}_wrap_10seeds_backend_{args.backend_profile}_{_timestamp()}")
    report_prefix = REPORTS_DIR / tag
    raw_path = REPORTS_DIR / f"{tag}_raw_timings.csv"
    per_pipeline_path = REPORTS_DIR / f"{tag}_per_pipeline.csv"
    per_benchmark_seed_path = REPORTS_DIR / f"{tag}_per_benchmark_seed.csv"
    per_seed_path = REPORTS_DIR / f"{tag}_per_seed.csv"
    aggregate_path = REPORTS_DIR / f"{tag}_aggregate.csv"
    manifest_path = REPORTS_DIR / f"{tag}_manifest.json"
    summary_path = REPORTS_DIR / f"{tag}_summary.md"
    build_root = BUILD_DIR / "runtime_matched" / tag

    batch_rows = _read_batch_rows(args.batch_csv)
    selected_rows = _selected_rows(batch_rows, args.seed)
    benchmarks = _suite_benchmarks(args.suite, args.benchmark)
    _ensure_ir_files(
        suite=args.suite,
        benchmarks=benchmarks,
        frontend_mode=args.frontend_mode,
        skip_build_ir=args.skip_build_ir,
    )

    existing_rows = _read_csv_rows(raw_path) if args.resume else []
    completed_keys = _existing_run_keys(existing_rows)
    failures: list[dict[str, Any]] = []

    baseline_labels = ["none", matched_baseline]
    seed_plan: list[tuple[str, str, str, str, str]] = []
    for label in baseline_labels:
        seed_plan.append(("", "", label, "baseline", BASELINE_PIPELINES[label]))
    for row in selected_rows:
        seed = str(int(row.get("experiment_seed") or row.get("seed") or 0))
        run_id = row.get("run_id", "")
        pipeline = (row.get("final_pipeline_effective") or "").strip()
        seed_plan.append((seed, run_id, "universal", "rfunipass", pipeline))

    total_jobs = len(benchmarks) * len(seed_plan)
    job_index = 0
    started_at = datetime.now().isoformat(timespec="seconds")
    print(
        f"[runtime-matched] tag={tag} suite={args.suite} backend={args.backend_profile} "
        f"baseline={matched_baseline} benchmarks={len(benchmarks)} seeds={len(selected_rows)} repeat={args.repeat}",
        flush=True,
    )

    for benchmark in benchmarks:
        input_ll = (IR_DIR / args.suite / f"{benchmark}.ll").resolve()
        for seed, run_id, pipeline_label, pipeline_kind, pass_pipeline in seed_plan:
            job_index += 1
            display_seed = seed or "baseline"
            print(
                f"[{job_index}/{total_jobs}] benchmark={benchmark} seed={display_seed} pipeline={pipeline_label}",
                flush=True,
            )
            component = seed or "baseline"
            pipeline_hash = _sha1_text(pass_pipeline or pipeline_label)[:12]
            out_dir = build_root / args.backend_profile / args.suite / benchmark / component / pipeline_label
            optimized_ll = out_dir / f"{pipeline_label}_{pipeline_hash}.ll"
            binary_path = out_dir / "a.out"
            try:
                _materialize_optimized_ir(
                    input_ll=input_ll,
                    output_ll=optimized_ll,
                    pipeline_label=pipeline_label,
                    pass_pipeline=pass_pipeline,
                    opt_timeout=args.opt_timeout,
                    force_rebuild=args.force_rebuild,
                )
                _compile_backend(
                    optimized_ll=optimized_ll,
                    binary_path=binary_path,
                    backend_profile=args.backend_profile,
                    compile_timeout=args.compile_timeout,
                    force_rebuild=args.force_rebuild,
                )
                pending_repeat_indices: list[int] = []
                for repeat_index in range(1, args.repeat + 1):
                    key = (
                        args.backend_profile,
                        args.suite,
                        benchmark,
                        seed,
                        pipeline_label,
                        str(repeat_index),
                    )
                    if key in completed_keys:
                        continue
                    pending_repeat_indices.append(repeat_index)

                runtime_timeout = _runtime_timeout_for_pipeline(
                    raw_path=raw_path,
                    suite=args.suite,
                    benchmark=benchmark,
                    pipeline_label=pipeline_label,
                    matched_baseline=matched_baseline,
                    metric=args.metric,
                    default_timeout=args.timeout,
                    adaptive_factor=args.adaptive_timeout_factor,
                    min_timeout=args.min_runtime_timeout,
                )

                if pending_repeat_indices and args.warmup_repeat > 0:
                    for warmup_index in range(1, args.warmup_repeat + 1):
                        warmup_dir = out_dir / "warmups" / f"warmup_{warmup_index:03d}"
                        _run_binary_once(
                            binary_path=binary_path,
                            run_dir=warmup_dir,
                            timeout=runtime_timeout,
                        )

                for repeat_index in pending_repeat_indices:
                    run_dir = out_dir / "runs" / f"run_{repeat_index:03d}"
                    row_base = {
                        "tag": tag,
                        "backend_profile": args.backend_profile,
                        "matched_baseline": matched_baseline,
                        "suite": args.suite,
                        "benchmark": benchmark,
                        "seed": seed,
                        "run_id": run_id,
                        "pipeline_label": pipeline_label,
                        "pipeline_kind": pipeline_kind,
                        "repeat_index": repeat_index,
                        "binary_path": str(binary_path),
                        "optimized_ir_path": str(optimized_ll),
                    }
                    try:
                        run_result = _run_binary_once(
                            binary_path=binary_path,
                            run_dir=run_dir,
                            timeout=runtime_timeout,
                        )
                        raw_row = {**row_base, **run_result, "status": "ok", "error": ""}
                        _append_csv_row(raw_path, raw_row)
                        completed_keys.add(key)
                    except Exception as exc:
                        failure = {
                            "stage": "run",
                            "benchmark": benchmark,
                            "seed": seed,
                            "pipeline_label": pipeline_label,
                            "repeat_index": repeat_index,
                            "error": str(exc),
                        }
                        failures.append(failure)
                        raw_row = {
                            **row_base,
                            "status": "failed",
                            "timeout_used": runtime_timeout,
                            "censored": "timeout" in str(exc).lower(),
                            "stdout_path": str(run_dir / "stdout.txt"),
                            "stderr_path": str(run_dir / "stderr.txt"),
                            "error": str(exc),
                        }
                        _append_csv_row(raw_path, raw_row)
                        if not args.continue_on_error:
                            raise
            except Exception as exc:
                failure = {
                    "stage": "build",
                    "benchmark": benchmark,
                    "seed": seed,
                    "pipeline_label": pipeline_label,
                    "error": str(exc),
                }
                failures.append(failure)
                if not args.continue_on_error:
                    raise
                print(f"[warning] {failure}", file=sys.stderr, flush=True)

    raw_rows = _read_csv_rows(raw_path)
    per_pipeline_rows, per_benchmark_seed_rows, per_seed_rows, aggregate_rows = _aggregate_results(
        raw_rows=raw_rows,
        metric=args.metric,
        matched_baseline=matched_baseline,
        tie_threshold=args.tie_threshold,
    )
    _write_csv(per_pipeline_path, per_pipeline_rows)
    _write_csv(per_benchmark_seed_path, per_benchmark_seed_rows)
    _write_csv(per_seed_path, per_seed_rows)
    _write_csv(aggregate_path, aggregate_rows)

    finished_at = datetime.now().isoformat(timespec="seconds")
    manifest = {
        "generated_at": finished_at,
        "started_at": started_at,
        "finished_at": finished_at,
        "runner_kind": "external_runtime_multi_seed_matched_backend",
        "tag": tag,
        "source_batch_csv": str(args.batch_csv),
        "suite": args.suite,
        "benchmarks": benchmarks,
        "benchmark_count": len(benchmarks),
        "seeds": [int(row.get("experiment_seed") or row.get("seed")) for row in selected_rows],
        "backend_profile": args.backend_profile,
        "backend_flag": BACKEND_FLAGS[args.backend_profile],
        "matched_baseline": matched_baseline,
        "matched_baseline_pipeline": BASELINE_PIPELINES[matched_baseline],
        "compile_command_template": "clang -x ir <optimized.ll> <backend_flag> -Xclang -disable-llvm-passes -lm -o <binary>",
        "post_ir_llvm_passes_disabled": True,
        "repeat": args.repeat,
        "warmup_repeat": args.warmup_repeat,
        "timeout": args.timeout,
        "adaptive_timeout_factor": args.adaptive_timeout_factor,
        "min_runtime_timeout": args.min_runtime_timeout,
        "opt_timeout": args.opt_timeout,
        "compile_timeout": args.compile_timeout,
        "tie_threshold": args.tie_threshold,
        "metric": args.metric,
        "frontend_mode": args.frontend_mode,
        "llvm_tools_path": llvm_tools_path,
        "llvm_versions": {
            "clang": _llvm_version("clang"),
            "opt": _llvm_version("opt"),
        },
        "host": _host_snapshot(),
        "source_roots": {
            "external_sources": str(SOURCES_DIR),
            "external_ir": str(IR_DIR / args.suite),
            "build_root": str(build_root),
        },
        "outputs": {
            "raw_timings_csv": str(raw_path),
            "per_pipeline_csv": str(per_pipeline_path),
            "per_benchmark_seed_csv": str(per_benchmark_seed_path),
            "per_seed_csv": str(per_seed_path),
            "aggregate_csv": str(aggregate_path),
            "summary_md": str(summary_path),
        },
        "failures": failures,
    }
    _write_json(manifest_path, manifest)
    summary_path.write_text(
        _make_summary_markdown(
            args=args,
            tag=tag,
            selected_rows=selected_rows,
            benchmarks=benchmarks,
            manifest_path=manifest_path,
            raw_path=raw_path,
            per_seed_path=per_seed_path,
            aggregate_rows=aggregate_rows,
            failures=failures,
        ),
        encoding="utf-8",
    )
    print(f"[runtime-matched] manifest={manifest_path}")
    print(f"[runtime-matched] summary={summary_path}")
    print(f"[runtime-matched] aggregate={aggregate_path}")
    return 1 if failures else 0


if __name__ == "__main__":
    raise SystemExit(main())
