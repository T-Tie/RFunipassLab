#!/usr/bin/env python3
"""Aggregate RF interpretability importance reports across multi-seed runs."""

from __future__ import annotations

import argparse
import csv
import json
import math
from dataclasses import dataclass
from pathlib import Path
from statistics import mean, stdev
from typing import Iterable


T_CRITICAL_95 = {
    1: 12.7062047364,
    2: 4.3026527297,
    3: 3.1824463053,
    4: 2.7764451052,
    5: 2.5705818366,
    6: 2.4469118511,
    7: 2.3646242510,
    8: 2.3060041352,
    9: 2.2621571627,
    10: 2.2281388519,
    11: 2.2009851601,
    12: 2.1788128297,
    13: 2.1603686565,
    14: 2.1447866879,
    15: 2.1314495456,
    16: 2.1199052992,
    17: 2.1098155778,
    18: 2.1009220402,
    19: 2.0930240544,
    20: 2.0859634473,
    21: 2.0796138447,
    22: 2.0738730679,
    23: 2.0686576104,
    24: 2.0638985616,
    25: 2.0595385528,
    26: 2.0555294386,
    27: 2.0518305165,
    28: 2.0484071418,
    29: 2.0452296421,
    30: 2.0422724563,
}


@dataclass(frozen=True)
class InputFiles:
    seed: int
    feature_csv: Path
    group_csv: Path | None


def _float(value: object, default: float = 0.0) -> float:
    try:
        number = float(value)
    except (TypeError, ValueError):
        return default
    return number if math.isfinite(number) else default


def _ci95(values: Iterable[float]) -> tuple[float, float, float, float]:
    numbers = [float(value) for value in values]
    if not numbers:
        return 0.0, 0.0, 0.0, 0.0

    center = mean(numbers)
    if len(numbers) == 1:
        return center, 0.0, center, center

    df = len(numbers) - 1
    tcrit = T_CRITICAL_95.get(df, 1.9599639845)
    half_width = tcrit * stdev(numbers) / math.sqrt(len(numbers))
    return center, half_width, center - half_width, center + half_width


def _read_json(path: Path) -> dict:
    return json.loads(path.read_text(encoding="utf-8"))


def _resolve_inputs(batch_manifest_path: Path) -> list[InputFiles]:
    batch = _read_json(batch_manifest_path)
    inputs: list[InputFiles] = []

    for member in batch.get("members", []):
        if int(member.get("exit_code") or 0) != 0:
            continue

        result_json = member.get("result_json_path")
        if not result_json:
            continue

        result_path = Path(result_json)
        if not result_path.exists():
            continue

        result = _read_json(result_path)
        interp = result.get("best_rf_interpretability") or {}
        feature_csv = interp.get("feature_importance_csv_path")
        if not feature_csv:
            continue

        feature_path = Path(feature_csv)
        if not feature_path.exists():
            continue

        group_csv = interp.get("group_importance_csv_path")
        group_path = Path(group_csv) if group_csv else None
        if group_path is not None and not group_path.exists():
            group_path = None

        inputs.append(
            InputFiles(
                seed=int(member.get("experiment_seed") or -1),
                feature_csv=feature_path,
                group_csv=group_path,
            )
        )

    return inputs


def _read_csv_rows(path: Path) -> list[dict[str, str]]:
    with path.open(newline="", encoding="utf-8") as csv_file:
        return list(csv.DictReader(csv_file))


def _write_csv(path: Path, rows: list[dict[str, object]]) -> None:
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


def _aggregate_features(inputs: list[InputFiles]) -> list[dict[str, object]]:
    grouped: dict[tuple[str, str, str, str], list[dict[str, str]]] = {}
    for item in inputs:
        for row in _read_csv_rows(item.feature_csv):
            key = (
                row.get("feature_name", ""),
                row.get("feature_group", ""),
                row.get("pass_name", ""),
                row.get("scope", ""),
            )
            grouped.setdefault(key, []).append(row)

    output: list[dict[str, object]] = []
    for (feature_name, feature_group, pass_name, scope), rows in grouped.items():
        mdi_values = [_float(row.get("mdi_importance")) for row in rows]
        permutation_values = [_float(row.get("permutation_mean")) for row in rows]
        permutation_std_values = [_float(row.get("permutation_std")) for row in rows]
        mdi_mean, mdi_half, mdi_low, mdi_high = _ci95(mdi_values)
        perm_mean, perm_half, perm_low, perm_high = _ci95(permutation_values)
        output.append(
            {
                "feature_name": feature_name,
                "feature_group": feature_group,
                "pass_name": pass_name,
                "scope": scope,
                "seed_count": len(rows),
                "mdi_mean": mdi_mean,
                "mdi_ci95_half_width": mdi_half,
                "mdi_ci95_low": mdi_low,
                "mdi_ci95_high": mdi_high,
                "permutation_mean": perm_mean,
                "permutation_ci95_half_width": perm_half,
                "permutation_ci95_low": perm_low,
                "permutation_ci95_high": perm_high,
                "permutation_std_mean": mean(permutation_std_values) if permutation_std_values else 0.0,
            }
        )

    output.sort(key=lambda row: (-_float(row["permutation_mean"]), -_float(row["mdi_mean"]), str(row["feature_name"])))
    for rank, row in enumerate(output, start=1):
        row["permutation_rank_mean"] = rank
    return output


def _aggregate_groups(inputs: list[InputFiles]) -> list[dict[str, object]]:
    grouped: dict[str, list[dict[str, str]]] = {}
    for item in inputs:
        if item.group_csv is None:
            continue
        for row in _read_csv_rows(item.group_csv):
            grouped.setdefault(row.get("feature_group", ""), []).append(row)

    output: list[dict[str, object]] = []
    for group_name, rows in grouped.items():
        mdi_values = [_float(row.get("mdi_sum")) for row in rows]
        permutation_values = [_float(row.get("permutation_sum")) for row in rows]
        mdi_mean, mdi_half, mdi_low, mdi_high = _ci95(mdi_values)
        perm_mean, perm_half, perm_low, perm_high = _ci95(permutation_values)
        feature_counts = [_float(row.get("feature_count")) for row in rows]
        output.append(
            {
                "feature_group": group_name,
                "seed_count": len(rows),
                "feature_count_mean": mean(feature_counts) if feature_counts else 0.0,
                "mdi_sum_mean": mdi_mean,
                "mdi_sum_ci95_half_width": mdi_half,
                "mdi_sum_ci95_low": mdi_low,
                "mdi_sum_ci95_high": mdi_high,
                "permutation_sum_mean": perm_mean,
                "permutation_sum_ci95_half_width": perm_half,
                "permutation_sum_ci95_low": perm_low,
                "permutation_sum_ci95_high": perm_high,
            }
        )

    output.sort(key=lambda row: (-_float(row["permutation_sum_mean"]), -_float(row["mdi_sum_mean"]), str(row["feature_group"])))
    for rank, row in enumerate(output, start=1):
        row["permutation_rank_mean"] = rank
    return output


def _write_markdown(
    path: Path,
    *,
    title: str,
    batch_manifest_path: Path,
    feature_rows: list[dict[str, object]],
    group_rows: list[dict[str, object]],
    topk: int,
) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    with path.open("w", encoding="utf-8") as md:
        md.write(f"# {title}\n\n")
        md.write(f"- Batch manifest: `{batch_manifest_path}`\n")
        md.write(f"- Aggregated features: `{len(feature_rows)}`\n")
        md.write(f"- CI: two-sided 95% confidence interval over successful seeds\n\n")

        md.write("## Feature Importance\n\n")
        md.write("| Rank | Feature | Group | Perm Mean | Perm 95% CI | MDI Mean | MDI 95% CI | Seeds |\n")
        md.write("| ---: | --- | --- | ---: | ---: | ---: | ---: | ---: |\n")
        for rank, row in enumerate(feature_rows[:topk], start=1):
            md.write(
                f"| {rank} | `{row['feature_name']}` | {row['feature_group']} | "
                f"{_float(row['permutation_mean']):.6g} | "
                f"[{_float(row['permutation_ci95_low']):.6g}, {_float(row['permutation_ci95_high']):.6g}] | "
                f"{_float(row['mdi_mean']):.6g} | "
                f"[{_float(row['mdi_ci95_low']):.6g}, {_float(row['mdi_ci95_high']):.6g}] | "
                f"{row['seed_count']} |\n"
            )

        if group_rows:
            md.write("\n## Group Importance\n\n")
            md.write("| Rank | Group | Perm Sum Mean | Perm Sum 95% CI | MDI Sum Mean | MDI Sum 95% CI | Seeds |\n")
            md.write("| ---: | --- | ---: | ---: | ---: | ---: | ---: |\n")
            for rank, row in enumerate(group_rows, start=1):
                md.write(
                    f"| {rank} | `{row['feature_group']}` | "
                    f"{_float(row['permutation_sum_mean']):.6g} | "
                    f"[{_float(row['permutation_sum_ci95_low']):.6g}, {_float(row['permutation_sum_ci95_high']):.6g}] | "
                    f"{_float(row['mdi_sum_mean']):.6g} | "
                    f"[{_float(row['mdi_sum_ci95_low']):.6g}, {_float(row['mdi_sum_ci95_high']):.6g}] | "
                    f"{row['seed_count']} |\n"
                )


def _build_arg_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--batch-manifest", required=True, type=Path)
    parser.add_argument("--output-prefix", type=Path, help="Output path prefix without suffix.")
    parser.add_argument("--topk", type=int, default=20)
    return parser


def main() -> int:
    args = _build_arg_parser().parse_args()
    batch_manifest_path = args.batch_manifest.resolve()
    if not batch_manifest_path.exists():
        raise FileNotFoundError(batch_manifest_path)

    batch = _read_json(batch_manifest_path)
    batch_id = batch.get("batch_id") or batch_manifest_path.stem
    output_prefix = args.output_prefix or Path("results/reports") / f"{batch_id}_rf_importance_ci"

    inputs = _resolve_inputs(batch_manifest_path)
    if not inputs:
        raise RuntimeError(f"No successful RF interpretability inputs found in {batch_manifest_path}")

    feature_rows = _aggregate_features(inputs)
    group_rows = _aggregate_groups(inputs)

    feature_csv = output_prefix.with_name(output_prefix.name + "_features.csv")
    group_csv = output_prefix.with_name(output_prefix.name + "_groups.csv")
    report_md = output_prefix.with_name(output_prefix.name + "_top.md")

    _write_csv(feature_csv, feature_rows)
    _write_csv(group_csv, group_rows)
    _write_markdown(
        report_md,
        title=f"RF Feature Importance CI: {batch_id}",
        batch_manifest_path=batch_manifest_path,
        feature_rows=feature_rows,
        group_rows=group_rows,
        topk=max(1, args.topk),
    )

    print(f"inputs={len(inputs)}")
    print(f"features_csv={feature_csv}")
    print(f"groups_csv={group_csv}")
    print(f"report_md={report_md}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
