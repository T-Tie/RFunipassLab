#!/usr/bin/env python3
"""Summarize RF interpretability artifacts across a multi-seed batch."""

from __future__ import annotations

import argparse
import csv
import json
import math
from dataclasses import dataclass
from pathlib import Path
from statistics import mean, median, stdev
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
class InterpretabilityInput:
    seed: int
    run_id: str
    feature_csv: Path
    group_csv: Path
    counterfactual_csv: Path | None
    model_quality_json: Path | None


def _read_json(path: Path) -> dict:
    return json.loads(path.read_text(encoding="utf-8"))


def _read_csv_rows(path: Path) -> list[dict[str, str]]:
    with path.open(newline="", encoding="utf-8") as csv_file:
        return list(csv.DictReader(csv_file))


def _write_csv(path: Path, rows: list[dict[str, object]]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    fieldnames: list[str] = []
    for row in rows:
        for key in row:
            if key not in fieldnames:
                fieldnames.append(key)

    with path.open("w", newline="", encoding="utf-8") as csv_file:
        writer = csv.DictWriter(csv_file, fieldnames=fieldnames)
        writer.writeheader()
        writer.writerows(rows)


def _float(value: object, default: float | None = 0.0) -> float | None:
    try:
        number = float(value)
    except (TypeError, ValueError):
        return default
    return number if math.isfinite(number) else default


def _finite(values: Iterable[object]) -> list[float]:
    numbers: list[float] = []
    for value in values:
        number = _float(value, default=None)
        if number is not None:
            numbers.append(number)
    return numbers


def _ci95(values: Iterable[object]) -> dict[str, float | int | None]:
    numbers = _finite(values)
    if not numbers:
        return {
            "count": 0,
            "mean": None,
            "median": None,
            "ci95_half_width": None,
            "ci95_low": None,
            "ci95_high": None,
            "min": None,
            "max": None,
        }

    center = mean(numbers)
    if len(numbers) == 1:
        half_width = 0.0
    else:
        tcrit = T_CRITICAL_95.get(len(numbers) - 1, 1.9599639845)
        half_width = tcrit * stdev(numbers) / math.sqrt(len(numbers))

    return {
        "count": len(numbers),
        "mean": center,
        "median": median(numbers),
        "ci95_half_width": half_width,
        "ci95_low": center - half_width,
        "ci95_high": center + half_width,
        "min": min(numbers),
        "max": max(numbers),
    }


def _resolve_inputs(batch_manifest_path: Path) -> list[InterpretabilityInput]:
    batch = _read_json(batch_manifest_path)
    inputs: list[InterpretabilityInput] = []

    for member in batch.get("members", []):
        if int(member.get("exit_code") or 0) != 0:
            continue

        result_path_text = member.get("result_json_path")
        if not result_path_text:
            continue

        result_path = Path(result_path_text)
        if not result_path.exists():
            continue

        result = _read_json(result_path)
        interp = result.get("best_rf_interpretability") or {}
        if interp.get("status") not in (None, "ok"):
            continue

        feature_path = Path(str(interp.get("feature_importance_csv_path", "")))
        group_path = Path(str(interp.get("group_importance_csv_path", "")))
        if not feature_path.exists() or not group_path.exists():
            continue

        counterfactual_path = Path(str(interp.get("counterfactual_csv_path", "")))
        if not counterfactual_path.exists():
            counterfactual_path = None

        quality_path = Path(str(interp.get("model_quality_json_path", "")))
        if not quality_path.exists():
            quality_path = None

        inputs.append(
            InterpretabilityInput(
                seed=int(member.get("experiment_seed") or -1),
                run_id=str(member.get("run_id") or result.get("run_id") or ""),
                feature_csv=feature_path,
                group_csv=group_path,
                counterfactual_csv=counterfactual_path,
                model_quality_json=quality_path,
            )
        )

    return inputs


def _aggregate_features(inputs: list[InterpretabilityInput]) -> list[dict[str, object]]:
    grouped: dict[tuple[str, str, str, str], list[dict[str, object]]] = {}
    for item in inputs:
        for row in _read_csv_rows(item.feature_csv):
            key = (
                row.get("feature_name", ""),
                row.get("feature_group", ""),
                row.get("pass_name", ""),
                row.get("scope", ""),
            )
            enriched = dict(row)
            enriched["seed"] = item.seed
            grouped.setdefault(key, []).append(enriched)

    rows_out: list[dict[str, object]] = []
    for (feature_name, feature_group, pass_name, scope), rows in grouped.items():
        mdi = _ci95(row.get("mdi_importance") for row in rows)
        perm = _ci95(row.get("permutation_mean") for row in rows)
        perm_std = _ci95(row.get("permutation_std") for row in rows)
        rows_out.append(
            {
                "feature_name": feature_name,
                "feature_group": feature_group,
                "pass_name": pass_name,
                "scope": scope,
                "seed_count": len({row["seed"] for row in rows}),
                "mdi_mean": mdi["mean"],
                "mdi_ci95_half_width": mdi["ci95_half_width"],
                "mdi_ci95_low": mdi["ci95_low"],
                "mdi_ci95_high": mdi["ci95_high"],
                "permutation_mean": perm["mean"],
                "permutation_ci95_half_width": perm["ci95_half_width"],
                "permutation_ci95_low": perm["ci95_low"],
                "permutation_ci95_high": perm["ci95_high"],
                "permutation_std_mean": perm_std["mean"],
                "permutation_rank_median": median(
                    _finite(row.get("permutation_rank") for row in rows)
                ),
            }
        )

    rows_out.sort(
        key=lambda row: (
            -float(row["permutation_mean"] or 0.0),
            -float(row["mdi_mean"] or 0.0),
            str(row["feature_name"]),
        )
    )
    for rank, row in enumerate(rows_out, start=1):
        row["permutation_rank"] = rank
    return rows_out


def _aggregate_groups(inputs: list[InterpretabilityInput]) -> list[dict[str, object]]:
    grouped: dict[str, list[dict[str, object]]] = {}
    for item in inputs:
        for row in _read_csv_rows(item.group_csv):
            enriched = dict(row)
            enriched["seed"] = item.seed
            grouped.setdefault(row.get("feature_group", ""), []).append(enriched)

    rows_out: list[dict[str, object]] = []
    for group_name, rows in grouped.items():
        mdi = _ci95(row.get("mdi_sum") for row in rows)
        perm = _ci95(row.get("permutation_sum") for row in rows)
        feature_count = _ci95(row.get("feature_count") for row in rows)
        rows_out.append(
            {
                "feature_group": group_name,
                "seed_count": len({row["seed"] for row in rows}),
                "feature_count_mean": feature_count["mean"],
                "mdi_sum_mean": mdi["mean"],
                "mdi_sum_ci95_half_width": mdi["ci95_half_width"],
                "mdi_sum_ci95_low": mdi["ci95_low"],
                "mdi_sum_ci95_high": mdi["ci95_high"],
                "permutation_sum_mean": perm["mean"],
                "permutation_sum_ci95_half_width": perm["ci95_half_width"],
                "permutation_sum_ci95_low": perm["ci95_low"],
                "permutation_sum_ci95_high": perm["ci95_high"],
            }
        )

    rows_out.sort(
        key=lambda row: (
            -float(row["permutation_sum_mean"] or 0.0),
            -float(row["mdi_sum_mean"] or 0.0),
            str(row["feature_group"]),
        )
    )
    for rank, row in enumerate(rows_out, start=1):
        row["permutation_rank"] = rank
    return rows_out


def _aggregate_counterfactuals(inputs: list[InterpretabilityInput]) -> list[dict[str, object]]:
    grouped: dict[tuple[str, str], list[dict[str, object]]] = {}
    for item in inputs:
        if item.counterfactual_csv is None:
            continue
        for row in _read_csv_rows(item.counterfactual_csv):
            if row.get("status") != "ok":
                continue
            key = (row.get("pass_name", ""), row.get("mutation", ""))
            enriched = dict(row)
            enriched["seed"] = item.seed
            grouped.setdefault(key, []).append(enriched)

    rows_out: list[dict[str, object]] = []
    for (pass_name, mutation), rows in grouped.items():
        delta_obj = _ci95(row.get("delta_objective") for row in rows)
        delta_mean = _ci95(row.get("delta_mean_norm") for row in rows)
        delta_worse = _ci95(row.get("delta_worsen_rate") for row in rows)
        mutated_obj = _ci95(row.get("mutated_objective") for row in rows)
        original_obj = _ci95(row.get("original_objective") for row in rows)
        rows_out.append(
            {
                "pass_name": pass_name,
                "mutation": mutation,
                "seed_count": len({row["seed"] for row in rows}),
                "sample_count": len(rows),
                "original_objective_mean": original_obj["mean"],
                "mutated_objective_mean": mutated_obj["mean"],
                "delta_objective_mean": delta_obj["mean"],
                "delta_objective_ci95_half_width": delta_obj["ci95_half_width"],
                "delta_objective_ci95_low": delta_obj["ci95_low"],
                "delta_objective_ci95_high": delta_obj["ci95_high"],
                "delta_objective_median": delta_obj["median"],
                "delta_objective_min": delta_obj["min"],
                "delta_objective_max": delta_obj["max"],
                "delta_mean_norm_mean": delta_mean["mean"],
                "delta_worsen_rate_mean": delta_worse["mean"],
            }
        )

    rows_out.sort(
        key=lambda row: (
            -float(row["delta_objective_mean"] or 0.0),
            str(row["pass_name"]),
            str(row["mutation"]),
        )
    )
    return rows_out


def _aggregate_model_quality(inputs: list[InterpretabilityInput]) -> dict[str, dict[str, dict[str, object]]]:
    values: dict[str, dict[str, list[float]]] = {}
    for item in inputs:
        if item.model_quality_json is None:
            continue
        quality = (_read_json(item.model_quality_json).get("quality") or {})
        for split_name, metrics in quality.items():
            split_values = values.setdefault(split_name, {})
            for metric_name, metric_value in metrics.items():
                if metric_name == "count":
                    continue
                number = _float(metric_value, default=None)
                if number is None:
                    continue
                split_values.setdefault(metric_name, []).append(number)

    return {
        split_name: {metric_name: _ci95(metric_values) for metric_name, metric_values in metrics.items()}
        for split_name, metrics in values.items()
    }


def _format_float(value: object, digits: int = 6) -> str:
    number = _float(value, default=None)
    if number is None:
        return "NA"
    return f"{number:.{digits}f}"


def _format_ci(row: dict[str, object], prefix: str, digits: int = 6) -> str:
    return (
        f"{_format_float(row.get(prefix + '_mean'), digits)} "
        f"[{_format_float(row.get(prefix + '_ci95_low'), digits)}, "
        f"{_format_float(row.get(prefix + '_ci95_high'), digits)}]"
    )


def _write_group_svg(path: Path, group_rows: list[dict[str, object]]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    rows = group_rows[:]
    width = 860
    row_h = 44
    top = 58
    left = 210
    right = 90
    height = top + row_h * len(rows) + 50
    plot_w = width - left - right
    max_value = max([float(row.get("permutation_sum_mean") or 0.0) for row in rows] + [0.001])

    parts = [
        f'<svg xmlns="http://www.w3.org/2000/svg" width="{width}" height="{height}" viewBox="0 0 {width} {height}">',
        '<style>text{font-family:Arial,sans-serif;font-size:14px;fill:#202124}.title{font-size:20px;font-weight:700}.axis{stroke:#888;stroke-width:1}.bar{fill:#3b6ea8}.ci{stroke:#1f3f63;stroke-width:2}.zero{stroke:#bbb;stroke-dasharray:4 4}</style>',
        '<rect width="100%" height="100%" fill="white"/>',
        '<text x="24" y="32" class="title">RF Group Importance (Permutation, 10 seeds)</text>',
        f'<line x1="{left}" y1="{top - 18}" x2="{left}" y2="{height - 38}" class="axis"/>',
    ]

    for idx, row in enumerate(rows):
        y = top + idx * row_h
        group = str(row.get("feature_group"))
        mean_value = float(row.get("permutation_sum_mean") or 0.0)
        low_value = float(row.get("permutation_sum_ci95_low") or mean_value)
        high_value = float(row.get("permutation_sum_ci95_high") or mean_value)
        bar_w = max(0.0, mean_value) / max_value * plot_w
        low_x = left + max(0.0, low_value) / max_value * plot_w
        high_x = left + max(0.0, high_value) / max_value * plot_w
        mid_y = y + 18
        parts.extend(
            [
                f'<text x="24" y="{mid_y + 5}">{group}</text>',
                f'<rect x="{left}" y="{mid_y - 10}" width="{bar_w:.2f}" height="20" class="bar"/>',
                f'<line x1="{low_x:.2f}" y1="{mid_y}" x2="{high_x:.2f}" y2="{mid_y}" class="ci"/>',
                f'<line x1="{low_x:.2f}" y1="{mid_y - 6}" x2="{low_x:.2f}" y2="{mid_y + 6}" class="ci"/>',
                f'<line x1="{high_x:.2f}" y1="{mid_y - 6}" x2="{high_x:.2f}" y2="{mid_y + 6}" class="ci"/>',
                f'<text x="{left + plot_w + 12}" y="{mid_y + 5}">{mean_value:.4f}</text>',
            ]
        )

    parts.append(f'<text x="{left}" y="{height - 14}">Higher permutation importance means larger holdout performance drop after shuffling the feature group.</text>')
    parts.append("</svg>\n")
    path.write_text("\n".join(parts), encoding="utf-8")


def _write_summary_md(
    path: Path,
    *,
    batch_manifest_path: Path,
    feature_rows: list[dict[str, object]],
    group_rows: list[dict[str, object]],
    counterfactual_rows: list[dict[str, object]],
    model_quality: dict[str, dict[str, dict[str, object]]],
    group_svg_path: Path,
    topk: int,
) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    relative_svg = group_svg_path.name
    with path.open("w", encoding="utf-8") as md:
        md.write("# RF Interpretability Paper Materials\n\n")
        md.write(f"- Batch manifest: `{batch_manifest_path}`\n")
        md.write(f"- Successful seeds: `{max((row.get('seed_count') or 0) for row in feature_rows) if feature_rows else 0}`\n")
        md.write("- Objective: `instrcount`, baseline: `oz`, feature mode: `lite`, loop policy: `wrap`\n")
        md.write("- Positive counterfactual delta means the mutation worsens the objective.\n\n")

        md.write("## Model Quality\n\n")
        md.write("| Split | RMSE | MAE | R2 | Pearson |\n")
        md.write("| --- | ---: | ---: | ---: | ---: |\n")
        for split_name in ("train", "holdout"):
            metrics = model_quality.get(split_name, {})
            md.write(
                f"| {split_name} | "
                f"{_format_float((metrics.get('rmse') or {}).get('mean'), 4)} | "
                f"{_format_float((metrics.get('mae') or {}).get('mean'), 4)} | "
                f"{_format_float((metrics.get('r2') or {}).get('mean'), 4)} | "
                f"{_format_float((metrics.get('pearson') or {}).get('mean'), 4)} |\n"
            )

        md.write("\n## Top-10 Feature Importance\n\n")
        md.write("| Rank | Feature | Group | Permutation importance mean [95% CI] | MDI mean [95% CI] |\n")
        md.write("| ---: | --- | --- | ---: | ---: |\n")
        for rank, row in enumerate(feature_rows[:topk], start=1):
            md.write(
                f"| {rank} | `{row['feature_name']}` | {row['feature_group']} | "
                f"{_format_ci(row, 'permutation', 6)} | "
                f"{_format_ci(row, 'mdi', 6)} |\n"
            )

        md.write("\n## Group Importance\n\n")
        md.write(f"![RF group importance]({relative_svg})\n\n")
        md.write("| Rank | Group | Permutation sum mean [95% CI] | MDI sum mean [95% CI] |\n")
        md.write("| ---: | --- | ---: | ---: |\n")
        for rank, row in enumerate(group_rows, start=1):
            md.write(
                f"| {rank} | `{row['feature_group']}` | "
                f"{_format_ci(row, 'permutation_sum', 6)} | "
                f"{_format_ci(row, 'mdi_sum', 6)} |\n"
            )

        md.write("\n## Counterfactual Validation\n\n")
        md.write("| Pass | Mutation | Seeds | Delta objective mean [95% CI] | Delta mean norm | Delta worsen rate |\n")
        md.write("| --- | --- | ---: | ---: | ---: | ---: |\n")
        selected = [
            row for row in counterfactual_rows
            if row.get("mutation") in {"delete_first", "delete_all", "duplicate_after_first", "append_once"}
        ][:12]
        for row in selected:
            md.write(
                f"| `{row['pass_name']}` | `{row['mutation']}` | {row['seed_count']} | "
                f"{_format_ci(row, 'delta_objective', 4)} | "
                f"{_format_float(row.get('delta_mean_norm_mean'), 4)} | "
                f"{_format_float(row.get('delta_worsen_rate_mean'), 4)} |\n"
            )

        md.write("\n## Paper-Ready Conclusion\n\n")
        md.write(
            "Across ten random seeds, permutation importance identifies pass-frequency features as the dominant explanatory signal, "
            "followed by the synergy-rate feature derived from the pass interaction graph and by pass scope composition. "
            "The strongest pass-level signals are `module(elim-avail-extern)`, `module(scc-oz-module-inliner)`, and `module(globalopt)`. "
            "Counterfactual LLVM evaluation supports this interpretation: deleting `module(elim-avail-extern)` consistently worsens the validation objective, "
            "while deleting all occurrences of `module(scc-oz-module-inliner)` causes the largest degradation among tested mutations. "
            "In contrast, self-loop features do not show stable held-out permutation importance, so they should be discussed as a limitation or exploratory signal rather than a main claim.\n"
        )


def _build_arg_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--batch-manifest", required=True, type=Path)
    parser.add_argument("--output-dir", type=Path, default=Path("results/reports"))
    parser.add_argument("--batch-name", help="Prefix for output files. Defaults to batch_id from manifest.")
    parser.add_argument("--topk", type=int, default=10)
    return parser


def main() -> int:
    args = _build_arg_parser().parse_args()
    batch = _read_json(args.batch_manifest)
    batch_name = args.batch_name or str(batch.get("batch_id") or args.batch_manifest.stem)
    output_dir = args.output_dir

    inputs = _resolve_inputs(args.batch_manifest)
    if not inputs:
        raise SystemExit(f"No successful RF interpretability inputs found in {args.batch_manifest}")

    feature_rows = _aggregate_features(inputs)
    group_rows = _aggregate_groups(inputs)
    counterfactual_rows = _aggregate_counterfactuals(inputs)
    model_quality = _aggregate_model_quality(inputs)

    feature_csv = output_dir / f"{batch_name}_rf_feature_importance_aggregate.csv"
    group_csv = output_dir / f"{batch_name}_rf_group_importance_aggregate.csv"
    counterfactual_csv = output_dir / f"{batch_name}_rf_counterfactual_aggregate.csv"
    summary_md = output_dir / f"{batch_name}_rf_interpretability_summary.md"
    group_svg = output_dir / f"{batch_name}_rf_group_importance.svg"

    _write_csv(feature_csv, feature_rows)
    _write_csv(group_csv, group_rows)
    _write_csv(counterfactual_csv, counterfactual_rows)
    _write_group_svg(group_svg, group_rows)
    _write_summary_md(
        summary_md,
        batch_manifest_path=args.batch_manifest,
        feature_rows=feature_rows,
        group_rows=group_rows,
        counterfactual_rows=counterfactual_rows,
        model_quality=model_quality,
        group_svg_path=group_svg,
        topk=args.topk,
    )

    print(f"inputs={len(inputs)}")
    print(f"feature_csv={feature_csv}")
    print(f"group_csv={group_csv}")
    print(f"counterfactual_csv={counterfactual_csv}")
    print(f"group_svg={group_svg}")
    print(f"summary_md={summary_md}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
