#!/usr/bin/env python3
"""Summarize RFunipass vs per-program instruction-count evaluation costs."""

from __future__ import annotations

import argparse
import csv
import json
import math
from collections import defaultdict
from pathlib import Path
from statistics import mean, median, stdev
from typing import Any, Iterable


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
}


def _read_json(path: Path) -> dict[str, Any]:
    return json.loads(path.read_text(encoding="utf-8"))


def _read_csv(path: Path) -> list[dict[str, str]]:
    with path.open(newline="", encoding="utf-8") as csv_file:
        return list(csv.DictReader(csv_file))


def _write_csv(path: Path, rows: list[dict[str, Any]]) -> None:
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


def _write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")


def _float(value: object, default: float | None = None) -> float | None:
    try:
        number = float(value)
    except (TypeError, ValueError):
        return default
    return number if math.isfinite(number) else default


def _finite(values: Iterable[object]) -> list[float]:
    numbers: list[float] = []
    for value in values:
        number = _float(value)
        if number is not None:
            numbers.append(number)
    return numbers


def _ci95(values: Iterable[object]) -> dict[str, float | int | None]:
    numbers = _finite(values)
    if not numbers:
        return {"count": 0, "mean": None, "median": None, "low": None, "high": None, "min": None, "max": None}
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
        "low": center - half_width,
        "high": center + half_width,
        "min": min(numbers),
        "max": max(numbers),
    }


def _format_float(value: object, digits: int = 4) -> str:
    number = _float(value)
    if number is None:
        return "NA"
    return f"{number:.{digits}f}"


def _format_ci(summary: dict[str, Any], key_prefix: str, digits: int = 4) -> str:
    return (
        f"{_format_float(summary.get(key_prefix + '_mean'), digits)} "
        f"[{_format_float(summary.get(key_prefix + '_ci95_low'), digits)}, "
        f"{_format_float(summary.get(key_prefix + '_ci95_high'), digits)}]"
    )


def _load_rfunipass_targets(target_manifest_path: Path) -> dict[int, dict[str, Any]]:
    manifest = _read_json(target_manifest_path)
    targets: dict[int, dict[str, Any]] = {}
    for item in manifest.get("targets", []):
        target_json = Path(str(item["target_json_path"]))
        payload = _read_json(target_json)
        targets[int(payload["seed"])] = payload
    return targets


def _core_rows_by_method(path: Path) -> dict[str, dict[str, Any]]:
    if not path.exists():
        return {}
    payload = _read_json(path)
    return {str(row.get("method")): row for row in payload.get("rows", [])}


def _load_perprogram_rows(
    sweep_manifest_path: Path,
    rfunipass_targets: dict[int, dict[str, Any]],
    *,
    epsilon: float,
    worsen_slack: float,
) -> list[dict[str, Any]]:
    sweep = _read_json(sweep_manifest_path)
    rows_out: list[dict[str, Any]] = []

    for record in sweep.get("run_records", []):
        if int(record.get("exit_code") or 0) != 0:
            continue
        seed = int(record["seed"])
        rfun = rfunipass_targets.get(seed)
        if not rfun:
            continue
        run_dir = Path(str(record.get("run_dir") or ""))
        summary_csv = run_dir / "summary.csv"
        core_json = run_dir / "core_tuning_cost.json"
        if not summary_csv.exists():
            continue

        core_by_method = _core_rows_by_method(core_json)
        rfun_obj = _float(rfun.get("rfunipass_final_test_objective"))
        rfun_mean = _float(rfun.get("rfunipass_final_test_mean_norm"))
        rfun_worse = _float(rfun.get("rfunipass_final_test_worsen_rate"), 0.0)
        rfun_eval = _float(rfun.get("rfunipass_core_eval_count"))
        rfun_target_feedback = _float(rfun.get("rfunipass_target_feedback_eval_count"), 0.0)

        for summary in _read_csv(summary_csv):
            strategy = str(summary.get("strategy"))
            mean_norm = _float(summary.get("mean_norm"))
            worsen_rate = _float(summary.get("worsen_rate"), 1.0)
            objective = None
            if mean_norm is not None and worsen_rate is not None:
                objective = mean_norm + 0.15 * worsen_rate
            core = core_by_method.get(strategy, {})
            per_eval = _float(core.get("objective_eval_count"))
            target_n = int(_float(core.get("program_count"), rfun.get("target_program_count")) or 0)
            rows_out.append(
                {
                    "seed": seed,
                    "strategy": strategy,
                    "budget": int(record["budget"]),
                    "target_program_count": target_n,
                    "perprogram_mean_norm": mean_norm,
                    "perprogram_worsen_rate": worsen_rate,
                    "perprogram_objective": objective,
                    "perprogram_eval_count": per_eval,
                    "perprogram_candidate_sequence_count": _float(core.get("candidate_sequence_count")),
                    "perprogram_target_feedback_eval_count": _float(core.get("target_feedback_eval_count")),
                    "rfunipass_mean_norm": rfun_mean,
                    "rfunipass_worsen_rate": rfun_worse,
                    "rfunipass_objective": rfun_obj,
                    "rfunipass_eval_count": rfun_eval,
                    "rfunipass_target_feedback_eval_count": rfun_target_feedback,
                    "matched_by_mean": bool(mean_norm is not None and rfun_mean is not None and mean_norm <= rfun_mean + epsilon),
                    "matched_by_objective": bool(objective is not None and rfun_obj is not None and objective <= rfun_obj + epsilon),
                    "matched_by_objective_and_worsen": bool(
                        objective is not None
                        and rfun_obj is not None
                        and objective <= rfun_obj + epsilon
                        and worsen_rate is not None
                        and rfun_worse is not None
                        and worsen_rate <= rfun_worse + worsen_slack
                    ),
                    "eval_ratio_vs_rfunipass": None
                    if per_eval is None or rfun_eval in (None, 0)
                    else per_eval / rfun_eval,
                    "run_dir": str(run_dir),
                    "metrics_scope": rfun.get("metrics_scope"),
                    "sweep_manifest_path": str(sweep_manifest_path),
                }
            )
    rows_out.sort(key=lambda row: (int(row["seed"]), str(row["strategy"]), int(row["budget"])))
    return rows_out


def _dedupe_curve_rows(rows: list[dict[str, Any]]) -> list[dict[str, Any]]:
    """Keep the latest row for each seed/strategy/budget triple."""
    by_key: dict[tuple[int, str, int], dict[str, Any]] = {}
    for row in rows:
        key = (int(row["seed"]), str(row["strategy"]), int(row["budget"]))
        by_key[key] = row
    return sorted(by_key.values(), key=lambda row: (int(row["seed"]), str(row["strategy"]), int(row["budget"])))


def _equivalent_budget_rows(curve_rows: list[dict[str, Any]], match_field: str) -> list[dict[str, Any]]:
    grouped: dict[tuple[str, int], list[dict[str, Any]]] = defaultdict(list)
    for row in curve_rows:
        grouped[(str(row["strategy"]), int(row["seed"]))].append(row)

    rows_out: list[dict[str, Any]] = []
    for (strategy, seed), rows in sorted(grouped.items()):
        rows = sorted(rows, key=lambda row: int(row["budget"]))
        matched = [row for row in rows if row.get(match_field)]
        chosen = matched[0] if matched else rows[-1]
        rows_out.append(
            {
                "strategy": strategy,
                "seed": seed,
                "matched": bool(matched),
                "match_field": match_field,
                "equivalent_budget": int(chosen["budget"]) if matched else f">{int(chosen['budget'])}",
                "target_program_count": chosen.get("target_program_count"),
                "perprogram_eval_count_to_match": chosen.get("perprogram_eval_count"),
                "rfunipass_eval_count": chosen.get("rfunipass_eval_count"),
                "eval_ratio_vs_rfunipass": chosen.get("eval_ratio_vs_rfunipass"),
                "perprogram_objective": chosen.get("perprogram_objective"),
                "rfunipass_objective": chosen.get("rfunipass_objective"),
                "perprogram_mean_norm": chosen.get("perprogram_mean_norm"),
                "rfunipass_mean_norm": chosen.get("rfunipass_mean_norm"),
                "perprogram_worsen_rate": chosen.get("perprogram_worsen_rate"),
                "rfunipass_worsen_rate": chosen.get("rfunipass_worsen_rate"),
            }
        )
    return rows_out


def _aggregate_equivalent_rows(rows: list[dict[str, Any]]) -> list[dict[str, Any]]:
    grouped: dict[str, list[dict[str, Any]]] = defaultdict(list)
    for row in rows:
        grouped[str(row["strategy"])].append(row)

    output: list[dict[str, Any]] = []
    for strategy, items in sorted(grouped.items()):
        matched_items = [row for row in items if row.get("matched")]
        budget_values = [row.get("equivalent_budget") for row in matched_items]
        per_eval = _ci95(row.get("perprogram_eval_count_to_match") for row in items)
        rfun_eval = _ci95(row.get("rfunipass_eval_count") for row in items)
        ratio = _ci95(row.get("eval_ratio_vs_rfunipass") for row in items)
        objective = _ci95(row.get("perprogram_objective") for row in items)
        output.append(
            {
                "strategy": strategy,
                "seed_count": len(items),
                "matched_seed_count": len(matched_items),
                "equivalent_budget_median": median(budget_values) if budget_values else None,
                "perprogram_eval_count_mean": per_eval["mean"],
                "perprogram_eval_count_ci95_low": per_eval["low"],
                "perprogram_eval_count_ci95_high": per_eval["high"],
                "rfunipass_eval_count_mean": rfun_eval["mean"],
                "eval_ratio_mean": ratio["mean"],
                "eval_ratio_ci95_low": ratio["low"],
                "eval_ratio_ci95_high": ratio["high"],
                "perprogram_objective_mean": objective["mean"],
            }
        )
    return output


def _write_curve_svg(path: Path, curve_rows: list[dict[str, Any]]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    strategy_rows: dict[str, list[dict[str, Any]]] = defaultdict(list)
    for row in curve_rows:
        strategy_rows[str(row["strategy"])].append(row)

    aggregate_points: dict[str, list[tuple[int, float]]] = {}
    for strategy, rows in strategy_rows.items():
        by_budget: dict[int, list[float]] = defaultdict(list)
        for row in rows:
            objective = _float(row.get("perprogram_objective"))
            if objective is not None:
                by_budget[int(row["budget"])].append(objective)
        aggregate_points[strategy] = [(budget, mean(values)) for budget, values in sorted(by_budget.items())]

    rfun_values = _finite(row.get("rfunipass_objective") for row in curve_rows)
    rfun_mean = mean(rfun_values) if rfun_values else 1.0
    budgets = sorted({int(row["budget"]) for row in curve_rows}) or [1]
    y_values = [value for points in aggregate_points.values() for _, value in points] + [rfun_mean]
    min_y = min(y_values) - 0.02
    max_y = max(y_values) + 0.02
    width, height = 900, 520
    left, right, top, bottom = 80, 30, 40, 70
    plot_w, plot_h = width - left - right, height - top - bottom

    def x_pos(budget: int) -> float:
        if len(budgets) == 1:
            return left + plot_w / 2
        return left + budgets.index(budget) / (len(budgets) - 1) * plot_w

    def y_pos(value: float) -> float:
        if max_y == min_y:
            return top + plot_h / 2
        return top + (max_y - value) / (max_y - min_y) * plot_h

    colors = ["#2f6f9f", "#b35c1e", "#4b8f29", "#8a4ea6", "#b03a48"]
    parts = [
        f'<svg xmlns="http://www.w3.org/2000/svg" width="{width}" height="{height}" viewBox="0 0 {width} {height}">',
        '<style>text{font-family:Arial,sans-serif;font-size:13px;fill:#222}.title{font-size:20px;font-weight:700}.axis{stroke:#444;stroke-width:1}.grid{stroke:#ddd;stroke-width:1}.line{fill:none;stroke-width:2.5}.rfun{stroke:#111;stroke-width:2;stroke-dasharray:6 4}</style>',
        '<rect width="100%" height="100%" fill="white"/>',
        '<text x="30" y="28" class="title">Cost-to-Match Budget Curve</text>',
        f'<line x1="{left}" y1="{top}" x2="{left}" y2="{top + plot_h}" class="axis"/>',
        f'<line x1="{left}" y1="{top + plot_h}" x2="{left + plot_w}" y2="{top + plot_h}" class="axis"/>',
    ]
    for budget in budgets:
        x = x_pos(budget)
        parts.extend([
            f'<line x1="{x:.2f}" y1="{top}" x2="{x:.2f}" y2="{top + plot_h}" class="grid"/>',
            f'<text x="{x - 8:.2f}" y="{top + plot_h + 24}">{budget}</text>',
        ])
    rfun_y = y_pos(rfun_mean)
    parts.extend([
        f'<line x1="{left}" y1="{rfun_y:.2f}" x2="{left + plot_w}" y2="{rfun_y:.2f}" class="rfun"/>',
        f'<text x="{left + plot_w - 160}" y="{rfun_y - 8:.2f}">RFunipass objective={rfun_mean:.3f}</text>',
    ])
    for idx, (strategy, points) in enumerate(sorted(aggregate_points.items())):
        color = colors[idx % len(colors)]
        coords = " ".join(f"{x_pos(b):.2f},{y_pos(v):.2f}" for b, v in points)
        parts.append(f'<polyline points="{coords}" class="line" stroke="{color}"/>')
        for budget, value in points:
            x, y = x_pos(budget), y_pos(value)
            parts.append(f'<circle cx="{x:.2f}" cy="{y:.2f}" r="4" fill="{color}"/>')
        parts.append(f'<text x="{left + 12}" y="{top + 22 + idx * 20}" fill="{color}">{strategy}</text>')
    parts.extend([
        f'<text x="{left + plot_w / 2 - 60:.2f}" y="{height - 20}">Per-program budget per target program</text>',
        '<text transform="translate(22,285) rotate(-90)">Target objective (lower is better)</text>',
        '</svg>\n',
    ])
    path.write_text("\n".join(parts), encoding="utf-8")


def _write_markdown(
    path: Path,
    *,
    curve_rows: list[dict[str, Any]],
    equivalent_rows: list[dict[str, Any]],
    aggregate_rows: list[dict[str, Any]],
    curve_svg: Path,
    epsilon: float,
    worsen_slack: float,
) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    rfun_eval = _ci95(row.get("rfunipass_eval_count") for row in curve_rows)
    rfun_obj = _ci95(row.get("rfunipass_objective") for row in curve_rows)
    target_n = _ci95(row.get("target_program_count") for row in curve_rows)
    with path.open("w", encoding="utf-8") as md:
        md.write("# RFunipass vs Per-Program Cost-Parity Summary\n\n")
        md.write(f"- Match rule: `perprogram_objective <= rfunipass_objective + {epsilon}`\n")
        md.write(f"- Safety rule: `perprogram_worsen_rate <= rfunipass_worsen_rate + {worsen_slack}`\n")
        md.write(f"- RFunipass mean objective: `{_format_float(rfun_obj['mean'])}`\n")
        md.write(f"- RFunipass mean core eval count: `{_format_float(rfun_eval['mean'], 1)}`\n")
        md.write(f"- Mean target programs per seed: `{_format_float(target_n['mean'], 1)}`\n\n")
        md.write(f"![Cost parity curve]({curve_svg.name})\n\n")
        md.write("## Equivalent Budget By Strategy\n\n")
        md.write("| Strategy | Seeds | Matched | Median B_eq | Per-program evals [95% CI] | RFunipass evals | Eval ratio [95% CI] |\n")
        md.write("| --- | ---: | ---: | ---: | ---: | ---: | ---: |\n")
        for row in aggregate_rows:
            md.write(
                f"| `{row['strategy']}` | {row['seed_count']} | {row['matched_seed_count']} | "
                f"{row['equivalent_budget_median']} | "
                f"{_format_float(row['perprogram_eval_count_mean'], 1)} "
                f"[{_format_float(row['perprogram_eval_count_ci95_low'], 1)}, {_format_float(row['perprogram_eval_count_ci95_high'], 1)}] | "
                f"{_format_float(row['rfunipass_eval_count_mean'], 1)} | "
                f"{_format_float(row['eval_ratio_mean'], 4)} "
                f"[{_format_float(row['eval_ratio_ci95_low'], 4)}, {_format_float(row['eval_ratio_ci95_high'], 4)}] |\n"
            )
        md.write("\n## Per-Seed Equivalent Budgets\n\n")
        md.write("| Strategy | Seed | Matched | B_eq | Per-program evals | RFunipass evals | Per-program objective | RFunipass objective |\n")
        md.write("| --- | ---: | --- | ---: | ---: | ---: | ---: | ---: |\n")
        for row in equivalent_rows:
            md.write(
                f"| `{row['strategy']}` | {row['seed']} | {row['matched']} | {row['equivalent_budget']} | "
                f"{_format_float(row['perprogram_eval_count_to_match'], 1)} | "
                f"{_format_float(row['rfunipass_eval_count'], 1)} | "
                f"{_format_float(row['perprogram_objective'])} | {_format_float(row['rfunipass_objective'])} |\n"
            )
        md.write("\n## Interpretation\n\n")
        md.write(
            "RFunipass pays a fixed offline cost to learn one universal sequence. "
            "Per-program tuning pays target feedback cost for every target program, so its evaluation count scales as budget times target set size. "
            "When a per-program method matches RFunipass at budget B_eq, the relevant comparison is B_eq * N target evaluations versus RFunipass's offline core evaluations and zero target-feedback evaluations after deployment.\n"
        )


def _build_arg_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--target-dir", required=True, type=Path)
    parser.add_argument(
        "--sweep-manifest",
        type=Path,
        action="append",
        dest="sweep_manifests",
        help=(
            "Optional sweep manifest. Repeat to merge separately executed "
            "sweeps, e.g. one manifest per strategy or budget block."
        ),
    )
    parser.add_argument("--output-prefix", type=Path)
    parser.add_argument("--epsilon", type=float, default=0.005)
    parser.add_argument("--worsen-slack", type=float, default=0.02)
    parser.add_argument(
        "--match-field",
        default="matched_by_objective",
        choices=("matched_by_mean", "matched_by_objective", "matched_by_objective_and_worsen"),
    )
    return parser


def main() -> int:
    args = _build_arg_parser().parse_args()
    target_manifest_path = args.target_dir / "rfunipass_targets_manifest.json"
    sweep_manifest_paths = args.sweep_manifests or [args.target_dir / "perprogram_budget_sweep_manifest.json"]
    if not target_manifest_path.exists():
        raise SystemExit(f"Missing target manifest: {target_manifest_path}")
    missing_sweeps = [path for path in sweep_manifest_paths if not path.exists()]
    if missing_sweeps:
        raise SystemExit(f"Missing sweep manifest(s): {', '.join(str(path) for path in missing_sweeps)}")

    output_prefix = args.output_prefix or args.target_dir / "cost_parity"
    rfun_targets = _load_rfunipass_targets(target_manifest_path)
    curve_rows = _dedupe_curve_rows(
        [
            row
            for sweep_manifest_path in sweep_manifest_paths
            for row in _load_perprogram_rows(
                sweep_manifest_path,
                rfun_targets,
                epsilon=args.epsilon,
                worsen_slack=args.worsen_slack,
            )
        ]
    )
    if not curve_rows:
        raise SystemExit("No per-program results found to summarize")

    equivalent_rows = _equivalent_budget_rows(curve_rows, args.match_field)
    aggregate_rows = _aggregate_equivalent_rows(equivalent_rows)

    curve_csv = output_prefix.with_name(output_prefix.name + "_curve.csv")
    equivalent_csv = output_prefix.with_name(output_prefix.name + "_equivalent_budget.csv")
    aggregate_csv = output_prefix.with_name(output_prefix.name + "_aggregate.csv")
    summary_json = output_prefix.with_name(output_prefix.name + "_summary.json")
    summary_md = output_prefix.with_name(output_prefix.name + "_summary.md")
    curve_svg = output_prefix.with_name(output_prefix.name + "_curve.svg")

    _write_csv(curve_csv, curve_rows)
    _write_csv(equivalent_csv, equivalent_rows)
    _write_csv(aggregate_csv, aggregate_rows)
    _write_curve_svg(curve_svg, curve_rows)
    _write_markdown(
        summary_md,
        curve_rows=curve_rows,
        equivalent_rows=equivalent_rows,
        aggregate_rows=aggregate_rows,
        curve_svg=curve_svg,
        epsilon=args.epsilon,
        worsen_slack=args.worsen_slack,
    )
    _write_json(
        summary_json,
        {
            "target_manifest_path": str(target_manifest_path),
            "sweep_manifest_paths": [str(path) for path in sweep_manifest_paths],
            "match_field": args.match_field,
            "epsilon": args.epsilon,
            "worsen_slack": args.worsen_slack,
            "curve_csv": str(curve_csv),
            "equivalent_budget_csv": str(equivalent_csv),
            "aggregate_csv": str(aggregate_csv),
            "summary_md": str(summary_md),
            "curve_svg": str(curve_svg),
        },
    )

    print(f"curve_csv={curve_csv}")
    print(f"equivalent_budget_csv={equivalent_csv}")
    print(f"aggregate_csv={aggregate_csv}")
    print(f"summary_md={summary_md}")
    print(f"curve_svg={curve_svg}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
