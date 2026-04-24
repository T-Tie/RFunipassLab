#!/usr/bin/env python3
from __future__ import annotations

import argparse
import csv
import json
import math
import statistics
import sys
import time
from datetime import datetime
from pathlib import Path
from typing import Any, Iterable, Sequence

from external_validation.core import build_external_ir, run_external_validation, sync_external_sources
from external_validation.paths import REPORTS_DIR, ensure_layout
from external_validation.registry import VALID_SUITES


DEFAULT_BATCH_CSV = Path(
    "results/reports/20260423_181846_348878_feature_lite_multiseed_instrcount_lite_wrap_10seeds.csv"
)


def _timestamp() -> str:
    return datetime.now().strftime("%Y%m%d_%H%M%S")


def _safe_tag(text: str) -> str:
    cleaned = "".join(ch if ch.isalnum() or ch in "._-" else "_" for ch in text.strip())
    return cleaned.strip("._-") or "external_multiseed"


def _read_batch_rows(path: Path) -> list[dict[str, str]]:
    if not path.is_file():
        raise FileNotFoundError(f"batch CSV not found: {path}")
    with path.open(newline="", encoding="utf-8") as csv_file:
        rows = list(csv.DictReader(csv_file))
    if not rows:
        raise ValueError(f"batch CSV has no rows: {path}")
    return rows


def _parse_seed_filter(values: Sequence[int] | None) -> set[int] | None:
    if not values:
        return None
    return {int(value) for value in values}


def _resolve_result_json(row: dict[str, str]) -> Path:
    direct = row.get("result_json_path") or row.get("result_json")
    if direct:
        path = Path(direct)
        if path.is_file():
            return path
    manifest_value = row.get("manifest_path")
    if manifest_value:
        manifest_path = Path(manifest_value)
        if manifest_path.is_file():
            manifest = json.loads(manifest_path.read_text(encoding="utf-8"))
            result_value = manifest.get("result_json_path")
            if result_value:
                path = Path(result_value)
                if path.is_file():
                    return path
    run_id = row.get("run_id")
    raise FileNotFoundError(f"cannot resolve result_json_path for run_id={run_id!r}")


def _load_source_payload(result_json_path: Path) -> dict[str, Any]:
    payload = json.loads(result_json_path.read_text(encoding="utf-8"))
    best = payload.get("best_result") if isinstance(payload.get("best_result"), dict) else {}
    final_sequence = best.get("final_sequence") or payload.get("final_sequence") or []
    return {
        "objective_kind": payload.get("objective_kind"),
        "objective_baseline": payload.get("objective_baseline"),
        "loop_nesting_policy": payload.get("loop_nesting_policy"),
        "backend_opt_level": payload.get("backend_opt_level"),
        "feature_mode": payload.get("feature_mode"),
        "experiment_seed": payload.get("experiment_seed"),
        "split_seed": payload.get("split_seed"),
        "selection_split": best.get("selection_split"),
        "selection_objective": best.get("selection_objective"),
        "final_sequence_length": len(final_sequence),
        "final_pipeline_effective": best.get("final_pipeline_effective") or payload.get("final_pipeline_effective"),
    }


def _finite(value: Any) -> float | None:
    try:
        number = float(value)
    except (TypeError, ValueError):
        return None
    if not math.isfinite(number):
        return None
    return number


def _metric_block(report: dict[str, Any], suite: str | None) -> dict[str, Any]:
    if suite is None:
        metrics = report.get("combined", {}).get("primary_metrics", {})
        count = report.get("combined", {}).get("count")
        failures: list[Any] = []
        if isinstance(report.get("suite_results"), dict):
            for suite_payload in report["suite_results"].values():
                failures.extend(suite_payload.get("failures") or [])
    else:
        suite_payload = report.get("suite_results", {}).get(suite, {})
        metrics = suite_payload.get("primary_metrics", {})
        count = suite_payload.get("count")
        failures = suite_payload.get("failures") or []
    invalid = metrics.get("invalid")
    timeout_count = sum(1 for failure in failures if "timed out" in str(failure.get("error", "")).lower())
    valid_count = None
    if count is not None and invalid is not None:
        valid_count = max(0, int(count) - int(invalid))
    mean_norm = _finite(metrics.get("mean_norm"))
    median_norm = _finite(metrics.get("median_norm"))
    return {
        "program_count": count,
        "valid_count": valid_count,
        "mean_norm": mean_norm,
        "median_norm": median_norm,
        "objective": _finite(metrics.get("objective")),
        "improved": metrics.get("improved"),
        "tied": metrics.get("tied"),
        "worsened": metrics.get("worsened"),
        "invalid": invalid,
        "timeout": timeout_count,
        "improved_rate": _finite(metrics.get("improved_rate")),
        "tie_rate": _finite(metrics.get("tie_rate")),
        "worsen_rate": _finite(metrics.get("worsen_rate")),
        "improve_vs_baseline": None if mean_norm is None else 1.0 - mean_norm,
    }


def _format_float(value: Any, digits: int = 4, percent: bool = False) -> str:
    number = _finite(value)
    if number is None:
        return "NA"
    if percent:
        return f"{number * 100:.2f}%"
    return f"{number:.{digits}f}"


def _mean_std(values: Iterable[Any]) -> tuple[float | None, float | None]:
    numbers = [_finite(value) for value in values]
    finite_numbers = [value for value in numbers if value is not None]
    if not finite_numbers:
        return None, None
    if len(finite_numbers) == 1:
        return finite_numbers[0], 0.0
    return statistics.mean(finite_numbers), statistics.stdev(finite_numbers)


def _mean_std_text(values: Iterable[Any], *, digits: int = 4, percent: bool = False) -> str:
    mean, std = _mean_std(values)
    if mean is None:
        return "NA"
    if percent:
        return f"{mean * 100:.2f}% ± {std * 100:.2f}%"
    return f"{mean:.{digits}f} ± {std:.{digits}f}"


def _write_csv(path: Path, rows: list[dict[str, Any]]) -> None:
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


def _select_rows(batch_rows: list[dict[str, str]], seeds: set[int] | None) -> list[dict[str, str]]:
    selected = []
    for row in batch_rows:
        seed_text = row.get("experiment_seed") or row.get("seed")
        if not seed_text:
            continue
        seed = int(seed_text)
        if seeds is not None and seed not in seeds:
            continue
        selected.append(row)
    if not selected:
        raise ValueError("no batch rows selected")
    selected.sort(key=lambda item: int(item.get("experiment_seed") or item.get("seed") or 0))
    return selected


def _build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(
        description="Evaluate every RFunipass sequence from a multi-seed batch on external datasets."
    )
    parser.add_argument("--batch-csv", type=Path, default=DEFAULT_BATCH_CSV)
    parser.add_argument("--tag", default="external_instrcount_lite_wrap_10seeds")
    parser.add_argument("--seed", action="append", type=int, help="Restrict to selected experiment seeds.")
    parser.add_argument("--mode", choices=("instrcount", "binarysize", "runtime"), default="instrcount")
    parser.add_argument("--suite", action="append", choices=VALID_SUITES, help="External suite; defaults to all.")
    parser.add_argument("--exclude-suite", action="append", choices=VALID_SUITES)
    parser.add_argument("--benchmark", action="append")
    parser.add_argument("--objective-baseline", choices=("oz", "o3"), default="oz")
    parser.add_argument("--frontend-mode", choices=("canonical", "raw"), default="canonical")
    parser.add_argument("--dataset-id", type=int, default=1)
    parser.add_argument("--instrcount-timeout", type=float, default=60.0)
    parser.add_argument("--instrcount-workers", type=int, default=4)
    parser.add_argument("--binarysize-timeout", type=float, default=60.0)
    parser.add_argument("--binarysize-workers", type=int, default=4)
    parser.add_argument(
        "--binarysize-metric",
        choices=("file_bytes", "stripped_file_bytes", "text_bytes", "data_bytes", "bss_bytes", "dec_bytes"),
        default="stripped_file_bytes",
    )
    parser.add_argument("--repeat", type=int, default=1)
    parser.add_argument("--timeout", type=float, default=300.0)
    parser.add_argument("--force-sync", action="store_true")
    parser.add_argument("--force-ir", action="store_true")
    parser.add_argument("--skip-sync", action="store_true")
    parser.add_argument("--skip-build-ir", action="store_true")
    parser.add_argument(
        "--reuse-existing",
        action="store_true",
        help="Reuse existing per-seed external report JSON files for this tag instead of rerunning evaluation.",
    )
    parser.add_argument("--continue-on-error", action="store_true")
    return parser


def _suite_names_from_report(report: dict[str, Any]) -> list[str]:
    suites = report.get("suites")
    if isinstance(suites, list):
        return [str(suite) for suite in suites]
    suite_results = report.get("suite_results")
    if isinstance(suite_results, dict):
        return list(suite_results.keys())
    return []


def _make_markdown(
    *,
    tag: str,
    args: argparse.Namespace,
    selected_rows: list[dict[str, str]],
    per_seed_rows: list[dict[str, Any]],
    by_suite_rows: list[dict[str, Any]],
    manifest_path: Path,
    per_seed_csv_path: Path,
    by_suite_csv_path: Path,
) -> str:
    source_batch = args.batch_csv
    seeds = [int(row["experiment_seed"]) for row in selected_rows]
    lines = [
        f"# Formal External Table: {args.mode}, LOOP_NESTING_POLICY=wrap, {len(seeds)} seeds",
        "",
        f"- Generated at: `{datetime.now().isoformat(timespec='seconds')}`",
        f"- Tag: `{tag}`",
        f"- Source batch CSV: `{source_batch}`",
        f"- Manifest: `{manifest_path}`",
        f"- Per-seed CSV: `{per_seed_csv_path}`",
        f"- By-suite CSV: `{by_suite_csv_path}`",
        f"- Mode: `{args.mode}`, baseline: `{args.objective_baseline}`, frontend mode: `{args.frontend_mode}`",
        f"- Seeds: `{seeds}`",
        "",
        "## External Generalization By Suite",
        "",
        "| Suite | Programs | Valid | Seeds | Mean Norm ↓ | Improve vs Baseline ↑ | Worsen Rate ↓ | Invalid | Timeout |",
        "| --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: |",
    ]
    suite_order = [row["suite"] for row in by_suite_rows if row["suite"] != "all_external"] + ["all_external"]
    seen = set()
    for suite in suite_order:
        if suite in seen:
            continue
        seen.add(suite)
        row = next((item for item in by_suite_rows if item["suite"] == suite), None)
        if not row:
            continue
        lines.append(
            "| "
            + " | ".join(
                [
                    str(row["suite"]),
                    str(row.get("program_count", "NA")),
                    str(row.get("valid_count_mean_std", "NA")),
                    str(row.get("seed_count", "NA")),
                    str(row.get("mean_norm_mean_std", "NA")),
                    str(row.get("improve_vs_baseline_mean_std", "NA")),
                    str(row.get("worsen_rate_mean_std", "NA")),
                    str(row.get("invalid_mean_std", "NA")),
                    str(row.get("timeout_mean_std", "NA")),
                ]
            )
            + " |"
        )

    best_row = min(
        per_seed_rows,
        key=lambda row: row.get("source_validation_obj")
        if _finite(row.get("source_validation_obj")) is not None
        else float("inf"),
    )
    lines.extend(
        [
            "",
            "## Best-By-Validation Seed",
            "",
            f"- Seed: `{best_row['experiment_seed']}` / run `{best_row['run_id']}`",
            f"- Source validation objective: `{_format_float(best_row.get('source_validation_obj'))}`",
            f"- External all mean_norm: `{_format_float(best_row.get('all_external_mean_norm'))}`",
            f"- External all improve vs baseline: `{_format_float(best_row.get('all_external_improve_vs_baseline'), percent=True)}`",
            f"- External all worsen rate: `{_format_float(best_row.get('all_external_worsen_rate'), percent=True)}`",
            f"- External report JSON: `{best_row['external_report_json']}`",
            "",
            "## Per-Seed External Summary",
            "",
            "| Seed | Val Rank | Val Obj ↓ | External Mean ↓ | Improve ↑ | Worsen ↓ | Invalid | Timeout | Report |",
            "| ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: | --- |",
        ]
    )
    ranked = sorted(
        per_seed_rows,
        key=lambda row: row.get("source_validation_obj")
        if _finite(row.get("source_validation_obj")) is not None
        else float("inf"),
    )
    for rank, row in enumerate(ranked, start=1):
        lines.append(
            "| "
            + " | ".join(
                [
                    str(row["experiment_seed"]),
                    str(rank),
                    _format_float(row.get("source_validation_obj")),
                    _format_float(row.get("all_external_mean_norm")),
                    _format_float(row.get("all_external_improve_vs_baseline"), percent=True),
                    _format_float(row.get("all_external_worsen_rate"), percent=True),
                    str(row.get("all_external_invalid", "NA")),
                    str(row.get("all_external_timeout", "NA")),
                    str(row.get("external_report_json", "NA")),
                ]
            )
            + " |"
        )
    lines.extend(
        [
            "",
            "## Notes",
            "",
            "- External datasets are evaluation-only; no external result is used for tuning or seed selection.",
            "- `Mean Norm` is normalized against the selected baseline. Lower is better.",
            "- `Improve vs Baseline = 1 - Mean Norm`. Higher is better.",
            "- Invalid and timeout cases are reported explicitly and are not silently dropped.",
        ]
    )
    return "\n".join(lines) + "\n"


def main() -> int:
    args = _build_parser().parse_args()
    ensure_layout()
    tag = _safe_tag(args.tag)
    batch_rows = _read_batch_rows(args.batch_csv)
    selected_rows = _select_rows(batch_rows, _parse_seed_filter(args.seed))

    if not args.skip_sync:
        sync_external_sources(
            selected_suites=args.suite,
            exclude_suites=args.exclude_suite,
            force=args.force_sync,
        )
    if args.mode in {"instrcount", "binarysize"} and not args.skip_build_ir:
        build_external_ir(
            selected_suites=args.suite,
            exclude_suites=args.exclude_suite,
            benchmarks=args.benchmark,
            dataset_id=args.dataset_id,
            force_sync=False,
            force_rebuild=args.force_ir,
            frontend_mode=args.frontend_mode,
        )

    batch_started_at = datetime.now().isoformat(timespec="seconds")
    per_seed_rows: list[dict[str, Any]] = []
    per_suite_seed_rows: list[dict[str, Any]] = []
    failures: list[dict[str, Any]] = []

    for index, row in enumerate(selected_rows, start=1):
        seed = int(row["experiment_seed"])
        run_id = row["run_id"]
        result_json_path = _resolve_result_json(row)
        source_payload = _load_source_payload(result_json_path)
        external_tag = f"{tag}_seed{seed}"
        print(f"[{index}/{len(selected_rows)}] external {args.mode}: seed={seed} run_id={run_id}", flush=True)
        try:
            existing_report_path = REPORTS_DIR / f"{external_tag}.json"
            if args.reuse_existing and existing_report_path.is_file():
                report = json.loads(existing_report_path.read_text(encoding="utf-8"))
                report.setdefault("json_path", str(existing_report_path))
                report.setdefault("markdown_path", str(existing_report_path.with_suffix(".md")))
            else:
                report = run_external_validation(
                    mode=args.mode,
                    result_json_path=result_json_path,
                    sequence_text=None,
                    selected_suites=args.suite,
                    exclude_suites=args.exclude_suite,
                    benchmarks=args.benchmark,
                    objective_baseline=args.objective_baseline,
                    repeat=args.repeat,
                    timeout=args.timeout,
                    dataset_id=args.dataset_id,
                    force_sync=False,
                    force_ir=False,
                    tag=external_tag,
                    frontend_mode=args.frontend_mode,
                    instrcount_timeout=args.instrcount_timeout,
                    instrcount_workers=args.instrcount_workers,
                    binarysize_timeout=args.binarysize_timeout,
                    binarysize_workers=args.binarysize_workers,
                    binarysize_metric=args.binarysize_metric,
                )
        except Exception as exc:
            failure = {"seed": seed, "run_id": run_id, "error": str(exc)}
            failures.append(failure)
            print(f"[error] seed={seed}: {exc}", file=sys.stderr, flush=True)
            if not args.continue_on_error:
                raise
            continue

        suites = _suite_names_from_report(report)
        combined = _metric_block(report, None)
        per_seed_row: dict[str, Any] = {
            "experiment_seed": seed,
            "split_seed": row.get("split_seed"),
            "run_id": run_id,
            "source_rank": row.get("rank") or row.get("batch_index"),
            "source_validation_obj": row.get("validation_obj"),
            "source_validation_mean": row.get("validation_mean"),
            "source_test_obj": row.get("test_obj"),
            "source_test_mean": row.get("test_mean"),
            "objective_kind": source_payload.get("objective_kind"),
            "objective_baseline": source_payload.get("objective_baseline"),
            "loop_nesting_policy": source_payload.get("loop_nesting_policy"),
            "backend_opt_level": source_payload.get("backend_opt_level"),
            "feature_mode": source_payload.get("feature_mode"),
            "final_sequence_length": source_payload.get("final_sequence_length"),
                "external_report_json": report.get("json_path"),
                "external_report_md": report.get("markdown_path"),
        }
        for key, value in combined.items():
            per_seed_row[f"all_external_{key}"] = value
        per_seed_rows.append(per_seed_row)

        for suite in suites:
            suite_metrics = _metric_block(report, suite)
            suite_row = {
                "experiment_seed": seed,
                "run_id": run_id,
                "suite": suite,
                **suite_metrics,
                "external_report_json": report.get("json_path"),
            }
            per_suite_seed_rows.append(suite_row)

    suite_names_seen = sorted({row["suite"] for row in per_suite_seed_rows})
    by_suite_rows: list[dict[str, Any]] = []
    for suite in [*suite_names_seen, "all_external"]:
        rows = (
            [row for row in per_suite_seed_rows if row["suite"] == suite]
            if suite != "all_external"
            else [{k.removeprefix("all_external_"): v for k, v in row.items() if k.startswith("all_external_")} for row in per_seed_rows]
        )
        if not rows:
            continue
        program_counts = [row.get("program_count") for row in rows if row.get("program_count") not in (None, "")]
        by_suite_rows.append(
            {
                "suite": suite,
                "program_count": int(max(program_counts)) if program_counts else None,
                "seed_count": len(rows),
                "valid_count_mean_std": _mean_std_text((row.get("valid_count") for row in rows), digits=2),
                "mean_norm_mean_std": _mean_std_text(row.get("mean_norm") for row in rows),
                "median_norm_mean_std": _mean_std_text(row.get("median_norm") for row in rows),
                "improve_vs_baseline_mean_std": _mean_std_text(
                    (row.get("improve_vs_baseline") for row in rows), percent=True
                ),
                "worsen_rate_mean_std": _mean_std_text((row.get("worsen_rate") for row in rows), percent=True),
                "invalid_mean_std": _mean_std_text((row.get("invalid") for row in rows), digits=2),
                "timeout_mean_std": _mean_std_text((row.get("timeout") for row in rows), digits=2),
            }
        )

    REPORTS_DIR.mkdir(parents=True, exist_ok=True)
    manifest_path = REPORTS_DIR / f"{tag}_manifest.json"
    per_seed_csv_path = REPORTS_DIR / f"{tag}_per_seed.csv"
    per_suite_seed_csv_path = REPORTS_DIR / f"{tag}_per_suite_seed.csv"
    by_suite_csv_path = REPORTS_DIR / f"{tag}_by_suite.csv"
    formal_md_path = REPORTS_DIR / f"{tag}_formal_external_table.md"

    _write_csv(per_seed_csv_path, per_seed_rows)
    _write_csv(per_suite_seed_csv_path, per_suite_seed_rows)
    _write_csv(by_suite_csv_path, by_suite_rows)

    batch_finished_at = datetime.now().isoformat(timespec="seconds")
    manifest = {
        "generated_at": batch_finished_at,
        "runner_kind": "external_multi_seed",
        "tag": tag,
        "mode": args.mode,
        "source_batch_csv": str(args.batch_csv),
        "batch_started_at": batch_started_at,
        "batch_finished_at": batch_finished_at,
        "seed_count": len(selected_rows),
        "seeds": [int(row["experiment_seed"]) for row in selected_rows],
        "suites": args.suite or VALID_SUITES,
        "objective_baseline": args.objective_baseline,
        "frontend_mode": args.frontend_mode,
        "instrcount_timeout": args.instrcount_timeout,
        "instrcount_workers": args.instrcount_workers,
        "binarysize_metric": args.binarysize_metric if args.mode == "binarysize" else None,
        "binarysize_timeout": args.binarysize_timeout if args.mode == "binarysize" else None,
        "binarysize_workers": args.binarysize_workers if args.mode == "binarysize" else None,
        "outputs": {
            "per_seed_csv": str(per_seed_csv_path),
            "per_suite_seed_csv": str(per_suite_seed_csv_path),
            "by_suite_csv": str(by_suite_csv_path),
            "formal_external_table_md": str(formal_md_path),
        },
        "failures": failures,
    }
    manifest_path.write_text(json.dumps(manifest, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")

    formal_md_path.write_text(
        _make_markdown(
            tag=tag,
            args=args,
            selected_rows=selected_rows,
            per_seed_rows=per_seed_rows,
            by_suite_rows=by_suite_rows,
            manifest_path=manifest_path,
            per_seed_csv_path=per_seed_csv_path,
            by_suite_csv_path=by_suite_csv_path,
        ),
        encoding="utf-8",
    )

    print(f"[external-multiseed] manifest={manifest_path}")
    print(f"[external-multiseed] per_seed_csv={per_seed_csv_path}")
    print(f"[external-multiseed] by_suite_csv={by_suite_csv_path}")
    print(f"[external-multiseed] formal_table={formal_md_path}")
    return 1 if failures else 0


if __name__ == "__main__":
    raise SystemExit(main())
