#!/usr/bin/env python3
"""Run RFunipass on the mixed CompilerGym-style seven-suite dataset.

This entrypoint is intentionally kept outside ``boca_exp.runner`` so the
original POJ-driven experiment path stays unchanged.  It adapts an external
manifest into the existing ``runner.main(programs, seed_sequences, test=...)``
API, records the exact split, and writes paper-facing reports.
"""

from __future__ import annotations

import argparse
import ast
import csv
import hashlib
import json
import os
import random
import subprocess
import sys
import time
from collections import Counter, defaultdict
from contextlib import redirect_stderr, redirect_stdout
from dataclasses import dataclass
from datetime import datetime
from pathlib import Path
from typing import Any, Iterable, Sequence


DEFAULT_MANIFEST = (
    "/root/exp/PerProgramAutoTune/datasets/compiler_gym_llvm21/"
    "manifests/compilergym_baseline_ir_manifest.json"
)
DEFAULT_LLVM_TOOLS = "/root/llvm/llvm-project-21/build/bin"
DEFAULT_SYNERGY_CSV = "data/Step3_EnumeratedPairs.csv"
DEFAULT_SUITES = (
    "cbench",
    "blas",
    "opencv",
    "mibench",
    "chstone",
    "tensorflow",
    "npb",
)


class Tee:
    """Mirror redirected stdout/stderr to both terminal and a log file."""

    def __init__(self, *streams):
        self._streams = streams

    def write(self, text: str) -> int:
        for stream in self._streams:
            stream.write(text)
            stream.flush()
        return len(text)

    def flush(self) -> None:
        for stream in self._streams:
            stream.flush()


@dataclass(frozen=True)
class ProgramRecord:
    suite: str
    name: str
    ll_path: str
    compiler_gym_suite: str = ""
    origin: str = ""

    @property
    def program_id(self) -> str:
        return f"{self.suite}/{self.name}"


def _jsonable(obj: Any) -> Any:
    if isinstance(obj, dict):
        return {str(key): _jsonable(value) for key, value in obj.items()}
    if isinstance(obj, (list, tuple)):
        return [_jsonable(value) for value in obj]
    if hasattr(obj, "item"):
        try:
            return obj.item()
        except Exception:
            pass
    return obj


def _stable_signature(items: Iterable[str]) -> str:
    payload = "\n".join(str(item) for item in items).encode("utf-8", errors="ignore")
    return hashlib.sha1(payload).hexdigest()


def _load_manifest_records(manifest_path: Path, suites: Sequence[str]) -> dict[str, list[ProgramRecord]]:
    payload = json.loads(manifest_path.read_text(encoding="utf-8"))
    raw_records = payload.get("records", payload)
    by_suite: dict[str, list[dict[str, Any]]] = {}

    if isinstance(raw_records, dict):
        for suite, records in raw_records.items():
            if isinstance(records, list):
                by_suite[str(suite)] = records
    elif isinstance(raw_records, list):
        grouped: dict[str, list[dict[str, Any]]] = defaultdict(list)
        for record in raw_records:
            if isinstance(record, dict):
                grouped[str(record.get("suite") or record.get("dataset") or "")].append(record)
        by_suite = dict(grouped)
    else:
        raise ValueError(f"Unsupported manifest records layout in {manifest_path}")

    wanted = list(suites)
    missing_suites = [suite for suite in wanted if suite not in by_suite]
    if missing_suites:
        raise ValueError(f"Manifest lacks required suites: {missing_suites}")

    result: dict[str, list[ProgramRecord]] = {}
    missing_files: list[str] = []
    for suite in wanted:
        records: list[ProgramRecord] = []
        for item in by_suite[suite]:
            ll_path = str(item.get("ll_path") or item.get("filename") or "").strip()
            name = str(item.get("name") or Path(ll_path).stem).strip()
            if not ll_path:
                continue
            if not Path(ll_path).is_file():
                missing_files.append(ll_path)
                continue
            records.append(
                ProgramRecord(
                    suite=suite,
                    name=name,
                    ll_path=ll_path,
                    compiler_gym_suite=str(item.get("compiler_gym_suite") or ""),
                    origin=str(item.get("origin") or ""),
                )
            )
        if not records:
            raise ValueError(f"No usable records for suite={suite!r}")
        result[suite] = sorted(records, key=lambda rec: (rec.name, rec.ll_path))

    if missing_files:
        preview = ", ".join(missing_files[:5])
        raise FileNotFoundError(
            f"{len(missing_files)} ll files listed in manifest are missing; examples: {preview}"
        )
    return result


def _allocate_largest_remainder(counts: dict[str, int], total: int) -> dict[str, int]:
    available = sum(counts.values())
    if total <= 0 or available <= 0:
        return {suite: 0 for suite in counts}
    if total >= available:
        return dict(counts)

    exact = {suite: total * count / available for suite, count in counts.items()}
    quotas = {suite: min(counts[suite], int(exact[suite])) for suite in counts}
    remaining = total - sum(quotas.values())
    order = sorted(
        counts,
        key=lambda suite: (exact[suite] - int(exact[suite]), counts[suite], suite),
        reverse=True,
    )
    while remaining > 0:
        progressed = False
        for suite in order:
            if remaining <= 0:
                break
            if quotas[suite] >= counts[suite]:
                continue
            quotas[suite] += 1
            remaining -= 1
            progressed = True
        if not progressed:
            break
    return quotas


def _stratified_train_test_split(
    by_suite: dict[str, list[ProgramRecord]],
    train_pool_size: int,
    split_seed: int,
) -> tuple[list[ProgramRecord], list[ProgramRecord], dict[str, int]]:
    counts = {suite: len(records) for suite, records in by_suite.items()}
    quotas = _allocate_largest_remainder(counts, train_pool_size)
    rng = random.Random(split_seed)

    train_pool: list[ProgramRecord] = []
    test_pool: list[ProgramRecord] = []
    for suite, records in by_suite.items():
        suite_records = list(records)
        quota = quotas[suite]
        selected = set(rng.sample(range(len(suite_records)), quota)) if quota else set()
        for index, record in enumerate(suite_records):
            if index in selected:
                train_pool.append(record)
            else:
                test_pool.append(record)

    rng.shuffle(train_pool)
    test_pool = sorted(test_pool, key=lambda rec: (rec.suite, rec.name, rec.ll_path))
    return train_pool, test_pool, quotas


def _read_synergy_pairs(path: Path) -> tuple[list[tuple[str, str]], list[str]]:
    pairs: list[tuple[str, str]] = []
    seen_passes: dict[str, None] = {}
    with path.open("r", newline="", encoding="utf-8") as csv_file:
        reader = csv.DictReader(csv_file)
        for row in reader:
            raw_pair = row.get("synerpair") or ""
            try:
                pair = ast.literal_eval(raw_pair)
            except Exception:
                continue
            if not isinstance(pair, tuple) or len(pair) != 2:
                continue
            src, dst = str(pair[0]).strip(), str(pair[1]).strip()
            if not src or not dst:
                continue
            pairs.append((src, dst))
            seen_passes.setdefault(src, None)
            seen_passes.setdefault(dst, None)
    return pairs, list(seen_passes)


def _build_seed_sequences(
    synergy_csv: Path,
    mode: str,
    limit: int,
) -> list[list[str]]:
    pairs, passes = _read_synergy_pairs(synergy_csv)
    sequences: list[list[str]] = []

    if mode in {"singletons", "singletons+edges"}:
        sequences.extend([[pass_name] for pass_name in passes])
    if mode in {"edges", "singletons+edges"}:
        seen_edges: set[tuple[str, str]] = set()
        for src, dst in pairs:
            edge = (src, dst)
            if edge in seen_edges:
                continue
            seen_edges.add(edge)
            sequences.append([src, dst])

    if not sequences:
        raise ValueError(f"No seed sequences generated from {synergy_csv} with mode={mode!r}")
    return sequences[:limit] if limit > 0 else sequences


def _counter_by_suite(records: Sequence[ProgramRecord]) -> dict[str, int]:
    return dict(Counter(record.suite for record in records))


def _metrics_row(metrics: dict[str, Any] | None) -> dict[str, Any]:
    if not metrics:
        return {}
    return {
        "count": metrics.get("count"),
        "objective": metrics.get("objective"),
        "mean_norm": metrics.get("mean_norm"),
        "median_norm": metrics.get("median_norm"),
        "improved": metrics.get("improved"),
        "tied": metrics.get("tied"),
        "worsened": metrics.get("worsened"),
        "invalid": metrics.get("invalid"),
        "timeout": _timeout_count(metrics),
        "improved_rate": metrics.get("improved_rate"),
        "worsen_rate": metrics.get("worsen_rate"),
    }


def _timeout_count(metrics: dict[str, Any] | None) -> int:
    if not metrics:
        return 0
    count = 0
    for item in (metrics.get("per_program") or {}).values():
        status = str(item.get("status") or "").lower()
        if "timed out" in status or "timeout" in status:
            count += 1
    return count


def _format_metric_line(metrics: dict[str, Any] | None) -> str:
    if not metrics:
        return "N/A"
    return (
        f"objective={metrics['objective']:.6f}, "
        f"mean_norm={metrics['mean_norm']:.6f}, "
        f"median_norm={metrics['median_norm']:.6f}, "
        f"improved={metrics['improved']}/{metrics['count']} "
        f"({metrics['improved_rate']:.2%}), "
        f"worsened={metrics['worsened']}/{metrics['count']} "
        f"({metrics['worsen_rate']:.2%}), "
        f"invalid={metrics.get('invalid', 0)}, "
        f"timeout={_timeout_count(metrics)}"
    )


class TimeoutInstructionCountBackendMixin:
    """Instruction-count backend mixin that bounds each LLVM opt subprocess."""

    opt_timeout_sec: float

    def _count_program(self, program: str, pass_sequence) -> int:
        key = (program, tuple(pass_sequence))
        with self._cache_lock:
            cached = self._value_cache.get(key)
        if cached is not None:
            return cached

        from boca_exp.runtime import (
            _build_opt_command,
            _format_opt_failure,
            detect_target_triple,
            get_inst_count,
            sequence_to_pipeline,
        )

        ir_text = self._load_program_text(program)
        pipeline = sequence_to_pipeline(pass_sequence)
        if not pipeline:
            value = int(get_inst_count(ir_text))
            with self._cache_lock:
                self._value_cache[key] = value
            return value

        opt_path = os.path.join(self.llvm_tools_path, "opt") if self.llvm_tools_path else "opt"
        resolved_target_triple = detect_target_triple(ir_text)
        command = _build_opt_command(opt_path, pipeline, resolved_target_triple)
        try:
            result = subprocess.run(
                command,
                input=ir_text,
                text=True,
                stdout=subprocess.PIPE,
                stderr=subprocess.PIPE,
                check=False,
                timeout=self.opt_timeout_sec,
            )
        except subprocess.TimeoutExpired as exc:
            raise TimeoutError(
                f"opt timed out after {self.opt_timeout_sec:.1f}s for "
                f"program={program}, pipeline={pipeline!r}"
            ) from exc

        if result.returncode != 0:
            raise RuntimeError(
                _format_opt_failure(
                    command,
                    pipeline,
                    resolved_target_triple,
                    result,
                )
            )

        value = int(get_inst_count(result.stdout))
        with self._cache_lock:
            self._value_cache[key] = value
        return value


def _write_split_csv(
    path: Path,
    records: Sequence[ProgramRecord],
    train_pool_paths: set[str],
    search_paths: set[str],
    validation_paths: set[str],
    test_paths: set[str],
) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    with path.open("w", newline="", encoding="utf-8") as csv_file:
        writer = csv.DictWriter(
            csv_file,
            fieldnames=[
                "suite",
                "name",
                "ll_path",
                "outer_split",
                "inner_split",
                "compiler_gym_suite",
                "origin",
            ],
        )
        writer.writeheader()
        for record in sorted(records, key=lambda rec: (rec.suite, rec.name, rec.ll_path)):
            if record.ll_path in test_paths:
                outer_split = "test"
                inner_split = "test"
            elif record.ll_path in train_pool_paths:
                outer_split = "train_pool"
                if record.ll_path in search_paths:
                    inner_split = "search_train"
                elif record.ll_path in validation_paths:
                    inner_split = "validation"
                else:
                    inner_split = "train_pool_unclassified"
            else:
                outer_split = "unused"
                inner_split = "unused"
            writer.writerow(
                {
                    "suite": record.suite,
                    "name": record.name,
                    "ll_path": record.ll_path,
                    "outer_split": outer_split,
                    "inner_split": inner_split,
                    "compiler_gym_suite": record.compiler_gym_suite,
                    "origin": record.origin,
                }
            )


def _write_report(
    path: Path,
    *,
    run_id: str,
    args: argparse.Namespace,
    env_overrides: dict[str, str],
    manifest: dict[str, Any],
    result: dict[str, Any],
    per_suite_test_metrics: dict[str, dict[str, Any]],
    paths: dict[str, str],
) -> None:
    final_raw = result.get("final_sequence_raw") or []
    final_effective = result.get("final_sequence") or []
    final_display = " -> ".join(final_effective) if final_effective else "(empty)"
    lines = [
        f"# RFunipassLab 7-Suite 主实验报告",
        "",
        f"- Run ID: `{run_id}`",
        f"- Manifest: `{args.manifest}`",
        f"- Objective: `{env_overrides['OBJECTIVE_KIND']}` / baseline `{env_overrides['OBJECTIVE_BASELINE']}`",
        f"- LLVM tools: `{env_overrides['LLVM_TOOLS_PATH']}`",
        f"- Loop nesting policy: `{env_overrides['LOOP_NESTING_POLICY']}`",
        f"- Feature mode: `{env_overrides['FEATURE_MODE']}`",
        f"- Experiment seed / split seed: `{args.seed}` / `{args.split_seed}`",
        f"- Train pool / validation ratio: `{args.train_pool}` / `{args.val_ratio}`",
        f"- BO iters / GA pop / GA gen: `{args.iters}` / `{args.ga_pop}` / `{args.ga_gen}`",
        f"- Instrcount opt timeout: `{args.instrcount_timeout}s`",
        "",
        "## 数据划分",
        "",
        "| suite | total | train_pool | test | search_train | validation |",
        "|---|---:|---:|---:|---:|---:|",
    ]
    suite_names = list(args.suite)
    counts = manifest["suite_counts"]
    train_counts = manifest["train_pool_counts_by_suite"]
    test_counts = manifest["test_counts_by_suite"]
    search_counts = manifest["search_train_counts_by_suite"]
    validation_counts = manifest["validation_counts_by_suite"]
    for suite in suite_names:
        lines.append(
            f"| {suite} | {counts.get(suite, 0)} | {train_counts.get(suite, 0)} | "
            f"{test_counts.get(suite, 0)} | {search_counts.get(suite, 0)} | "
            f"{validation_counts.get(suite, 0)} |"
        )
    lines.extend(
        [
            "",
            f"- train_pool signature: `{manifest['train_pool_signature']}`",
            f"- search_train signature: `{manifest['search_train_signature']}`",
            f"- validation signature: `{manifest['validation_signature']}`",
            f"- test signature: `{manifest['test_signature']}`",
            "",
            "## 最终序列",
            "",
            f"- Raw length: `{len(final_raw)}`",
            f"- Effective top-level length: `{len(final_effective)}`",
            f"- Effective sequence: `{final_display}`",
            "",
            "## 主要指标",
            "",
            f"- Search train: {_format_metric_line(result.get('final_train_metrics'))}",
            f"- Validation: {_format_metric_line(result.get('final_val_metrics'))}",
            f"- Test overall: {_format_metric_line(result.get('final_test_metrics'))}",
            "",
            "## 测试集按数据集分解",
            "",
            "| suite | count | objective | mean_norm | median_norm | improved_rate | worsen_rate | invalid | timeout |",
            "|---|---:|---:|---:|---:|---:|---:|---:|---:|",
        ]
    )
    for suite in suite_names:
        metrics = per_suite_test_metrics.get(suite, {})
        if not metrics:
            lines.append(f"| {suite} | 0 | N/A | N/A | N/A | N/A | N/A | N/A | N/A |")
            continue
        lines.append(
            f"| {suite} | {metrics['count']} | {metrics['objective']:.6f} | "
            f"{metrics['mean_norm']:.6f} | {metrics['median_norm']:.6f} | "
            f"{metrics['improved_rate']:.2%} | {metrics['worsen_rate']:.2%} | "
            f"{metrics.get('invalid', 0)} | {_timeout_count(metrics)} |"
        )

    cost = result.get("core_tuning_cost") or {}
    lines.extend(
        [
            "",
            "## 核心调优成本",
            "",
            f"- Runner wall time: `{manifest['runner_wall_time_s']:.3f}s`",
            f"- Core tuning time: `{cost.get('total_tuning_time_s', 'N/A')}s`",
            f"- ML time: `{cost.get('ml_time_s', 'N/A')}s`",
            f"- Candidate sequences counted: `{cost.get('candidate_sequence_count', 'N/A')}`",
            f"- Objective feedback evaluations: `{cost.get('objective_eval_count', 'N/A')}`",
            "",
            "## 输出文件",
            "",
            f"- Summary JSON: `{paths['summary_json']}`",
            f"- Manifest JSON: `{paths['manifest_json']}`",
            f"- Split CSV: `{paths['split_csv']}`",
            f"- Full log: `{paths['log']}`",
        ]
    )
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text("\n".join(lines) + "\n", encoding="utf-8")


def _parse_args(argv: Sequence[str] | None = None) -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        description="Run RFunipass mixed 7-suite instrcount tuning without changing the original CLI."
    )
    parser.add_argument("--manifest", default=DEFAULT_MANIFEST)
    parser.add_argument("--suite", action="append", choices=DEFAULT_SUITES)
    parser.add_argument("--train-pool", type=int, default=300)
    parser.add_argument("--val-ratio", type=float, default=1.0 / 3.0)
    parser.add_argument("--min-val-programs", type=int, default=5)
    parser.add_argument("--seed", type=int, default=456)
    parser.add_argument("--split-seed", type=int, default=456)
    parser.add_argument("--iters", type=int, default=100)
    parser.add_argument("--ga-pop", type=int, default=200)
    parser.add_argument("--ga-gen", type=int, default=5)
    parser.add_argument("--max-seq-len", type=int, default=120)
    parser.add_argument("--topn", type=int, default=5)
    parser.add_argument(
        "--seed-seq-mode",
        choices=("singletons", "edges", "singletons+edges"),
        default="singletons",
    )
    parser.add_argument(
        "--seed-seq-limit",
        type=int,
        default=0,
        help="0 means no explicit limit.",
    )
    parser.add_argument("--objective-baseline", choices=("oz", "o3"), default="oz")
    parser.add_argument(
        "--instrcount-timeout",
        type=float,
        default=60.0,
        help="Per-program LLVM opt timeout in seconds; <=0 disables the runner-level guard.",
    )
    parser.add_argument("--loop-policy", default="wrap")
    parser.add_argument("--feature-mode", default="lite")
    parser.add_argument("--llvm-tools", default=DEFAULT_LLVM_TOOLS)
    parser.add_argument("--synergy-csv", default=DEFAULT_SYNERGY_CSV)
    parser.add_argument("--tag", default="compilergym_mixed_main")
    parser.add_argument(
        "--results-root",
        default="results/compilergym_mixed",
        help="Output root relative to the current repository unless absolute.",
    )
    return parser.parse_args(argv)


def main(argv: Sequence[str] | None = None) -> int:
    args = _parse_args(argv)
    args.suite = args.suite or list(DEFAULT_SUITES)

    timestamp = datetime.now().strftime("%Y%m%d_%H%M%S_%f")
    run_id = f"{timestamp}_{args.tag}_seed{args.seed}_split{args.split_seed}"

    results_root = Path(args.results_root)
    if not results_root.is_absolute():
        results_root = Path.cwd() / results_root
    summary_json = results_root / "summaries" / f"{run_id}.json"
    manifest_json = results_root / "manifests" / f"{run_id}_manifest.json"
    split_csv = results_root / "splits" / f"{run_id}_split.csv"
    report_md = results_root / "reports" / f"{run_id}_report.md"
    log_path = results_root / "logs" / f"{run_id}.log"
    for path in (summary_json, manifest_json, split_csv, report_md, log_path):
        path.parent.mkdir(parents=True, exist_ok=True)

    env_overrides = {
        "EXPERIMENT_SEED": str(args.seed),
        "SPLIT_SEED": str(args.split_seed),
        "OBJECTIVE_KIND": "instrcount",
        "OBJECTIVE_BASELINE": args.objective_baseline,
        "LOOP_NESTING_POLICY": args.loop_policy,
        "FEATURE_MODE": args.feature_mode,
        "VAL_RATIO": str(args.val_ratio),
        "MIN_VAL_PROGRAMS": str(args.min_val_programs),
        "ITERS": str(args.iters),
        "GA_POP": str(args.ga_pop),
        "GA_GEN": str(args.ga_gen),
        "MAX_SEQ_LEN": str(args.max_seq_len),
        "RUNS": "1",
        "SEED_TOPK": "0",
        "LLVM_TOOLS_PATH": args.llvm_tools,
        "RF_EXPLAIN_ENABLE": os.environ.get("RF_EXPLAIN_ENABLE", "0"),
        "RUN_ID": run_id,
    }
    os.environ.update(env_overrides)

    manifest_path = Path(args.manifest)
    synergy_csv = Path(args.synergy_csv)
    if not manifest_path.is_file():
        raise FileNotFoundError(f"Manifest not found: {manifest_path}")
    if not synergy_csv.is_file():
        raise FileNotFoundError(f"Synergy CSV not found: {synergy_csv}")

    by_suite = _load_manifest_records(manifest_path, args.suite)
    train_records, test_records, quotas = _stratified_train_test_split(
        by_suite,
        args.train_pool,
        args.split_seed,
    )
    if not train_records:
        raise RuntimeError("No train records selected.")
    if not test_records:
        raise RuntimeError("No test records left after train-pool split.")

    seed_sequences = _build_seed_sequences(synergy_csv, args.seed_seq_mode, args.seed_seq_limit)
    train_programs = [record.ll_path for record in train_records]
    test_programs = [record.ll_path for record in test_records]
    all_records = [record for records in by_suite.values() for record in records]

    started = time.perf_counter()
    with log_path.open("w", encoding="utf-8") as log_file:
        tee_out = Tee(sys.stdout, log_file)
        tee_err = Tee(sys.stderr, log_file)
        with redirect_stdout(tee_out), redirect_stderr(tee_err):
            print(f"Run ID: {run_id}")
            print(f"Suites: {', '.join(args.suite)}")
            print(f"Manifest: {manifest_path}")
            print(f"Train pool: {len(train_records)}, test: {len(test_records)}")
            print(f"Train quotas: {quotas}")
            print(f"Seed sequences: {len(seed_sequences)} ({args.seed_seq_mode})")

            from boca_exp.core_tuning_cost import CoreTuningCostRecorder
            from boca_exp.data import init_global_state
            from boca_exp.objective import (
                configure_objective_backend,
                create_objective_backend,
                get_objective_backend,
                prepare_objective_backend,
                reset_objective_backend,
            )
            from boca_exp.objective_instr import InstructionCountBackend
            from boca_exp.runner import main as rfunipass_main

            init_global_state(seed_sequences, str(synergy_csv))
            reset_objective_backend()
            if args.instrcount_timeout and args.instrcount_timeout > 0:
                class TimeoutInstructionCountBackend(
                    TimeoutInstructionCountBackendMixin,
                    InstructionCountBackend,
                ):
                    def __init__(self, *, opt_timeout_sec: float) -> None:
                        super().__init__()
                        self.opt_timeout_sec = float(opt_timeout_sec)

                backend = TimeoutInstructionCountBackend(
                    opt_timeout_sec=args.instrcount_timeout,
                )
                print(
                    f"Using timeout-aware instruction backend: "
                    f"{args.instrcount_timeout:.1f}s per opt subprocess"
                )
            else:
                backend = create_objective_backend("instrcount")
            configure_objective_backend(backend)
            unique_programs = list(dict.fromkeys([*train_programs, *test_programs]))
            print(f"Preparing objective backend for {len(unique_programs)} unique programs...")
            prepare_objective_backend(unique_programs)

            cost_recorder = CoreTuningCostRecorder(
                method="rfunipass",
                tuning_type="universal_offline_external_mixed",
                program_count=len(train_programs),
                target_program_count=len(test_programs),
                metadata={
                    "run_id": run_id,
                    "dataset": "compiler_gym_llvm21_mixed_7suite",
                    "split_seed": args.split_seed,
                    "experiment_seed": args.seed,
                    "train_pool_count": len(train_programs),
                    "test_count": len(test_programs),
                    "seed_sequence_mode": args.seed_seq_mode,
                    "seed_sequence_count": len(seed_sequences),
                },
            )
            result = rfunipass_main(
                train_programs,
                seed_sequences,
                test_programs=test_programs,
                topn=args.topn,
                core_cost_recorder=cost_recorder,
            )

            backend = get_objective_backend()
            final_raw_sequence = result.get("final_sequence_raw") or result.get("final_sequence") or []
            per_suite_test_metrics: dict[str, dict[str, Any]] = {}
            print("\n[Post] Computing per-suite test metrics for final sequence...")
            for suite in args.suite:
                suite_programs = [record.ll_path for record in test_records if record.suite == suite]
                if not suite_programs:
                    continue
                suite_baselines = backend.compute_baseline_values(suite_programs)
                suite_metrics = backend.evaluate_sequence_metrics(
                    suite_programs,
                    suite_baselines,
                    final_raw_sequence,
                )
                per_suite_test_metrics[suite] = suite_metrics
                print(f"  {suite}: {_format_metric_line(suite_metrics)}")

    runner_wall_time_s = time.perf_counter() - started

    search_paths = set(result.get("search_programs") or [])
    validation_paths = set(result.get("validation_programs") or [])
    train_pool_paths = set(train_programs)
    test_paths = set(test_programs)
    _write_split_csv(
        split_csv,
        all_records,
        train_pool_paths,
        search_paths,
        validation_paths,
        test_paths,
    )

    manifest = {
        "run_id": run_id,
        "created_at": datetime.now().isoformat(timespec="seconds"),
        "command": " ".join([sys.executable, *sys.argv]),
        "manifest_path": str(manifest_path),
        "synergy_csv": str(synergy_csv),
        "suite_order": list(args.suite),
        "suite_counts": {suite: len(records) for suite, records in by_suite.items()},
        "train_pool_target": args.train_pool,
        "train_pool_quotas": quotas,
        "train_pool_counts_by_suite": _counter_by_suite(train_records),
        "test_counts_by_suite": _counter_by_suite(test_records),
        "search_train_counts_by_suite": _counter_by_suite(
            [record for record in train_records if record.ll_path in search_paths]
        ),
        "validation_counts_by_suite": _counter_by_suite(
            [record for record in train_records if record.ll_path in validation_paths]
        ),
        "train_pool_signature": _stable_signature(train_programs),
        "search_train_signature": _stable_signature(result.get("search_programs") or []),
        "validation_signature": _stable_signature(result.get("validation_programs") or []),
        "test_signature": _stable_signature(test_programs),
        "env": env_overrides,
        "instrcount_timeout": args.instrcount_timeout,
        "seed_sequence_mode": args.seed_seq_mode,
        "seed_sequence_count": len(seed_sequences),
        "seed_sequences_preview": seed_sequences[:10],
        "runner_wall_time_s": runner_wall_time_s,
        "outputs": {
            "summary_json": str(summary_json),
            "manifest_json": str(manifest_json),
            "split_csv": str(split_csv),
            "report_md": str(report_md),
            "log": str(log_path),
        },
    }

    summary_payload = {
        "manifest": manifest,
        "result": result,
        "per_suite_test_metrics": per_suite_test_metrics,
        "per_suite_test_metrics_compact": {
            suite: _metrics_row(metrics) for suite, metrics in per_suite_test_metrics.items()
        },
    }
    manifest_json.write_text(
        json.dumps(_jsonable(manifest), indent=2, ensure_ascii=False) + "\n",
        encoding="utf-8",
    )
    summary_json.write_text(
        json.dumps(_jsonable(summary_payload), indent=2, ensure_ascii=False) + "\n",
        encoding="utf-8",
    )
    _write_report(
        report_md,
        run_id=run_id,
        args=args,
        env_overrides=env_overrides,
        manifest=manifest,
        result=result,
        per_suite_test_metrics=per_suite_test_metrics,
        paths={
            "summary_json": str(summary_json),
            "manifest_json": str(manifest_json),
            "split_csv": str(split_csv),
            "log": str(log_path),
        },
    )

    print(f"\nReport written: {report_md}")
    print(f"Summary JSON:   {summary_json}")
    print(f"Manifest JSON:  {manifest_json}")
    print(f"Split CSV:      {split_csv}")
    print(f"Full log:       {log_path}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
