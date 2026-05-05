"""Post-hoc RF surrogate interpretability reports.

This module is deliberately kept outside the BO loop.  It explains the
surrogate after a run has finished and must not change search decisions or core
tuning-cost accounting.
"""

from __future__ import annotations

import csv
import json
import math
import os
from contextlib import contextmanager
from pathlib import Path
from typing import Any, Iterable, Sequence

import numpy as np

from .core_tuning_cost import get_active_core_tuning_cost, set_active_core_tuning_cost
from .features import extract_features_batch, get_feature_mode, get_feature_specs
from .objective import evaluate_sequence_metrics
from .paths import INTERPRETABILITY_RESULTS_DIR
from .settings import (
    EXPERIMENT_SEED,
    FEATURE_MODE,
    LOOP_NESTING_POLICY,
    MAX_SEQ_LEN,
    OBJECTIVE_BASELINE,
    OBJECTIVE_KIND,
    RF_EXPLAIN_COUNTERFACTUAL_ENABLE,
    RF_EXPLAIN_COUNTERFACTUAL_MAX_EVALS,
    RF_EXPLAIN_COUNTERFACTUAL_SPLIT,
    RF_EXPLAIN_COUNTERFACTUAL_TOPK,
    RF_EXPLAIN_ENABLE,
    RF_EXPLAIN_HOLDOUT_RATIO,
    RF_EXPLAIN_MIN_SAMPLES,
    RF_EXPLAIN_MODE,
    RF_EXPLAIN_PERM_REPEATS,
    RF_EXPLAIN_TOPK,
    SPLIT_SEED,
    llvm_tools_path,
)
from .surrogate import build_rf_regressor


def _jsonable(obj: Any) -> Any:
    if isinstance(obj, dict):
        return {key: _jsonable(value) for key, value in obj.items()}
    if isinstance(obj, (list, tuple)):
        return [_jsonable(value) for value in obj]
    if isinstance(obj, np.generic):
        return obj.item()
    if isinstance(obj, np.ndarray):
        return obj.tolist()
    if isinstance(obj, float) and not math.isfinite(obj):
        return str(obj)
    return obj


def _write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(
        json.dumps(_jsonable(payload), indent=2, ensure_ascii=False) + "\n",
        encoding="utf-8",
    )


def _write_csv(path: Path, rows: Sequence[dict[str, Any]]) -> None:
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


@contextmanager
def _suppress_core_tuning_cost():
    """Ensure post-hoc analysis never increments core tuning-cost counters."""
    previous_recorder = get_active_core_tuning_cost()
    if previous_recorder is not None:
        set_active_core_tuning_cost(None)
    try:
        yield
    finally:
        if previous_recorder is not None:
            set_active_core_tuning_cost(previous_recorder)


def _safe_float(value: Any) -> float | None:
    try:
        number = float(value)
    except (TypeError, ValueError):
        return None
    return number if math.isfinite(number) else None


def _mean(values: Iterable[Any]) -> float | None:
    numbers = [number for number in (_safe_float(value) for value in values) if number is not None]
    return float(np.mean(numbers)) if numbers else None


def _rank_desc(rows: list[dict[str, Any]], value_key: str, rank_key: str) -> None:
    ordered = sorted(
        range(len(rows)),
        key=lambda idx: (
            -float(rows[idx].get(value_key) or 0.0),
            str(rows[idx].get("feature_name") or ""),
        ),
    )
    for rank, idx in enumerate(ordered, start=1):
        rows[idx][rank_key] = rank


def _pearson_corr(y_true: np.ndarray, y_pred: np.ndarray) -> float | None:
    if len(y_true) < 2:
        return None
    true_centered = y_true - np.mean(y_true)
    pred_centered = y_pred - np.mean(y_pred)
    denominator = float(np.linalg.norm(true_centered) * np.linalg.norm(pred_centered))
    if denominator <= 0.0:
        return None
    return float(np.dot(true_centered, pred_centered) / denominator)


def _r2_score(y_true: np.ndarray, y_pred: np.ndarray) -> float | None:
    if len(y_true) < 2:
        return None
    ss_res = float(np.sum(np.square(y_true - y_pred)))
    ss_tot = float(np.sum(np.square(y_true - np.mean(y_true))))
    if ss_tot <= 0.0:
        return None
    return 1.0 - ss_res / ss_tot


def _model_quality(model, x_train, y_train, x_holdout, y_holdout) -> dict[str, Any]:
    train_pred = model.predict(x_train)
    holdout_pred = model.predict(x_holdout) if len(x_holdout) else np.array([])

    def block(y_true: np.ndarray, y_pred: np.ndarray) -> dict[str, Any]:
        if len(y_true) == 0:
            return {
                "count": 0,
                "rmse": None,
                "mae": None,
                "r2": None,
                "pearson": None,
            }
        errors = y_true - y_pred
        return {
            "count": int(len(y_true)),
            "rmse": float(math.sqrt(float(np.mean(np.square(errors))))),
            "mae": float(np.mean(np.abs(errors))),
            "r2": _r2_score(y_true, y_pred),
            "pearson": _pearson_corr(y_true, y_pred),
        }

    return {
        "train": block(y_train, train_pred),
        "holdout": block(y_holdout, holdout_pred),
    }


def _split_train_holdout(
    x_matrix: np.ndarray,
    y_values: np.ndarray,
    holdout_ratio: float,
) -> tuple[np.ndarray, np.ndarray, np.ndarray, np.ndarray, list[int], list[int]]:
    sample_count = len(y_values)
    rng = np.random.default_rng(EXPERIMENT_SEED)
    indices = np.arange(sample_count)
    rng.shuffle(indices)

    if sample_count <= 1 or holdout_ratio <= 0.0:
        train_idx = indices
        holdout_idx = np.array([], dtype=int)
    else:
        holdout_count = int(round(sample_count * holdout_ratio))
        holdout_count = min(max(1, holdout_count), sample_count - 1)
        holdout_idx = indices[:holdout_count]
        train_idx = indices[holdout_count:]

    return (
        x_matrix[train_idx],
        y_values[train_idx],
        x_matrix[holdout_idx],
        y_values[holdout_idx],
        [int(idx) for idx in train_idx],
        [int(idx) for idx in holdout_idx],
    )


def _compute_permutation_importance(model, x_holdout, y_holdout) -> tuple[np.ndarray, np.ndarray]:
    if len(x_holdout) == 0:
        return np.zeros(model.n_features_in_, dtype=float), np.zeros(model.n_features_in_, dtype=float)

    from sklearn.inspection import permutation_importance

    result = permutation_importance(
        model,
        x_holdout,
        y_holdout,
        n_repeats=RF_EXPLAIN_PERM_REPEATS,
        random_state=EXPERIMENT_SEED,
        scoring="neg_mean_squared_error",
    )
    return np.asarray(result.importances_mean, dtype=float), np.asarray(result.importances_std, dtype=float)


def _importance_rows(model, permutation_mean, permutation_std) -> list[dict[str, Any]]:
    specs = get_feature_specs()
    mdi_values = np.asarray(model.feature_importances_, dtype=float)
    rows: list[dict[str, Any]] = []

    for spec in specs:
        rows.append(
            {
                "feature_index": spec.index,
                "feature_name": spec.name,
                "feature_group": spec.group,
                "feature_mode": spec.feature_mode,
                "pass_name": spec.pass_name,
                "scope": spec.scope,
                "edge_source": spec.edge_source,
                "edge_target": spec.edge_target,
                "mdi_importance": float(mdi_values[spec.index]),
                "permutation_mean": float(permutation_mean[spec.index]),
                "permutation_std": float(permutation_std[spec.index]),
            }
        )

    _rank_desc(rows, "mdi_importance", "mdi_rank")
    _rank_desc(rows, "permutation_mean", "permutation_rank")
    rows.sort(key=lambda row: (int(row["permutation_rank"]), int(row["mdi_rank"])))
    return rows


def _group_rows(feature_rows: Sequence[dict[str, Any]]) -> list[dict[str, Any]]:
    grouped: dict[str, list[dict[str, Any]]] = {}
    for row in feature_rows:
        grouped.setdefault(str(row["feature_group"]), []).append(row)

    rows: list[dict[str, Any]] = []
    for group_name, items in sorted(grouped.items()):
        mdi_values = [float(item.get("mdi_importance") or 0.0) for item in items]
        permutation_values = [float(item.get("permutation_mean") or 0.0) for item in items]
        rows.append(
            {
                "feature_group": group_name,
                "feature_count": len(items),
                "mdi_sum": float(np.sum(mdi_values)),
                "mdi_mean": _mean(mdi_values),
                "permutation_sum": float(np.sum(permutation_values)),
                "permutation_mean": _mean(permutation_values),
            }
        )

    _rank_desc(rows, "mdi_sum", "mdi_rank")
    _rank_desc(rows, "permutation_sum", "permutation_rank")
    rows.sort(key=lambda row: (int(row["permutation_rank"]), int(row["mdi_rank"])))
    return rows


def _top_pass_names(feature_rows: Sequence[dict[str, Any]]) -> list[str]:
    names: list[str] = []
    for row in feature_rows:
        if row.get("feature_group") != "pass_freq":
            continue
        pass_name = row.get("pass_name")
        if not pass_name or pass_name in names:
            continue
        names.append(str(pass_name))
        if len(names) >= RF_EXPLAIN_COUNTERFACTUAL_TOPK:
            break
    return names


def _counterfactual_variants(
    base_sequence: Sequence[str],
    pass_name: str,
) -> list[tuple[str, list[str]]]:
    base = list(base_sequence)
    variants: list[tuple[str, list[str]]] = []

    if pass_name in base and len(base) > 1:
        first_idx = base.index(pass_name)
        variants.append(("delete_first", [item for idx, item in enumerate(base) if idx != first_idx]))

        delete_all = [item for item in base if item != pass_name]
        if delete_all:
            variants.append(("delete_all", delete_all))

        if len(base) < MAX_SEQ_LEN:
            duplicate = list(base)
            duplicate.insert(first_idx + 1, pass_name)
            variants.append(("duplicate_after_first", duplicate))

    if len(base) < MAX_SEQ_LEN:
        variants.append(("append_once", [*base, pass_name]))

    deduped: list[tuple[str, list[str]]] = []
    seen: set[tuple[str, ...]] = {tuple(base)}
    for mutation, sequence in variants:
        key = tuple(sequence)
        if not sequence or key in seen:
            continue
        seen.add(key)
        deduped.append((mutation, sequence))
    return deduped


def _counterfactual_rows(
    *,
    feature_rows: Sequence[dict[str, Any]],
    base_sequence: Sequence[str],
    base_metrics: dict[str, Any] | None,
    selection_split: str,
    selection_programs: Sequence[str],
    selection_baseline_values: Sequence[float],
) -> list[dict[str, Any]]:
    if (
        not RF_EXPLAIN_COUNTERFACTUAL_ENABLE
        or RF_EXPLAIN_COUNTERFACTUAL_TOPK <= 0
        or RF_EXPLAIN_COUNTERFACTUAL_MAX_EVALS <= 0
        or not selection_programs
        or not selection_baseline_values
    ):
        return []

    pass_names = _top_pass_names(feature_rows)
    rows: list[dict[str, Any]] = []
    eval_count = 0

    with _suppress_core_tuning_cost():
        for pass_name in pass_names:
            for mutation, sequence in _counterfactual_variants(base_sequence, pass_name):
                if eval_count >= RF_EXPLAIN_COUNTERFACTUAL_MAX_EVALS:
                    return rows
                eval_count += 1

                try:
                    metrics = evaluate_sequence_metrics(selection_programs, selection_baseline_values, sequence)
                    status = "ok"
                    error = None
                except Exception as exc:
                    metrics = {}
                    status = "failed"
                    error = str(exc)

                base_objective = (base_metrics or {}).get("objective")
                mutated_objective = metrics.get("objective")
                base_mean = (base_metrics or {}).get("mean_norm")
                mutated_mean = metrics.get("mean_norm")
                base_worsen = (base_metrics or {}).get("worsen_rate")
                mutated_worsen = metrics.get("worsen_rate")

                rows.append(
                    {
                        "selection_split": selection_split,
                        "counterfactual_split": RF_EXPLAIN_COUNTERFACTUAL_SPLIT,
                        "pass_name": pass_name,
                        "mutation": mutation,
                        "status": status,
                        "error": error,
                        "original_objective": base_objective,
                        "mutated_objective": mutated_objective,
                        "delta_objective": (
                            None
                            if _safe_float(base_objective) is None or _safe_float(mutated_objective) is None
                            else float(mutated_objective) - float(base_objective)
                        ),
                        "original_mean_norm": base_mean,
                        "mutated_mean_norm": mutated_mean,
                        "delta_mean_norm": (
                            None
                            if _safe_float(base_mean) is None or _safe_float(mutated_mean) is None
                            else float(mutated_mean) - float(base_mean)
                        ),
                        "original_worsen_rate": base_worsen,
                        "mutated_worsen_rate": mutated_worsen,
                        "delta_worsen_rate": (
                            None
                            if _safe_float(base_worsen) is None or _safe_float(mutated_worsen) is None
                            else float(mutated_worsen) - float(base_worsen)
                        ),
                        "mutated_sequence": list(sequence),
                    }
                )
    return rows


def _make_report(
    *,
    manifest: dict[str, Any],
    quality: dict[str, Any],
    feature_rows: Sequence[dict[str, Any]],
    group_rows: Sequence[dict[str, Any]],
    counterfactual_rows: Sequence[dict[str, Any]],
    paths: dict[str, Path],
) -> str:
    top_rows = sorted(feature_rows, key=lambda row: int(row["permutation_rank"]))[:RF_EXPLAIN_TOPK]
    lines = [
        f"# RF Interpretability Report: {manifest['analysis_id']}",
        "",
        "## Scope",
        "",
        "This is a post-hoc RF surrogate analysis. It does not alter the BO search and is not included in core tuning-cost metrics.",
        "",
        "## Controlled Variables",
        "",
        f"- Objective: `{OBJECTIVE_KIND}` / baseline `{OBJECTIVE_BASELINE}`",
        f"- Feature mode: `{FEATURE_MODE}`",
        f"- Loop policy: `{LOOP_NESTING_POLICY}`",
        f"- LLVM tools: `{llvm_tools_path}`",
        f"- Experiment seed: `{EXPERIMENT_SEED}`",
        f"- Split seed: `{SPLIT_SEED}`",
        f"- Evaluated sequences: `{manifest['evaluated_sequence_count']}`",
        f"- Holdout ratio: `{RF_EXPLAIN_HOLDOUT_RATIO}`",
        f"- Permutation repeats: `{RF_EXPLAIN_PERM_REPEATS}`",
        "",
        "## Model Quality",
        "",
        "| Split | Count | RMSE | MAE | R2 | Pearson |",
        "| --- | ---: | ---: | ---: | ---: | ---: |",
    ]
    for split in ("train", "holdout"):
        item = quality.get(split) or {}
        lines.append(
            "| "
            + " | ".join(
                [
                    split,
                    str(item.get("count")),
                    _format_float(item.get("rmse")),
                    _format_float(item.get("mae")),
                    _format_float(item.get("r2")),
                    _format_float(item.get("pearson")),
                ]
            )
            + " |"
        )

    lines.extend(
        [
            "",
            "## Top Features",
            "",
            "| Rank | Feature | Group | Pass | MDI | Permutation Mean | Permutation Std |",
            "| ---: | --- | --- | --- | ---: | ---: | ---: |",
        ]
    )
    for row in top_rows:
        lines.append(
            "| "
            + " | ".join(
                [
                    str(row["permutation_rank"]),
                    str(row["feature_name"]),
                    str(row["feature_group"]),
                    str(row.get("pass_name") or ""),
                    _format_float(row.get("mdi_importance"), digits=6),
                    _format_float(row.get("permutation_mean"), digits=6),
                    _format_float(row.get("permutation_std"), digits=6),
                ]
            )
            + " |"
        )

    lines.extend(
        [
            "",
            "## Group Importance",
            "",
            "| Rank | Group | Features | MDI Sum | Permutation Sum |",
            "| ---: | --- | ---: | ---: | ---: |",
        ]
    )
    for row in group_rows:
        lines.append(
            "| "
            + " | ".join(
                [
                    str(row["permutation_rank"]),
                    str(row["feature_group"]),
                    str(row["feature_count"]),
                    _format_float(row.get("mdi_sum"), digits=6),
                    _format_float(row.get("permutation_sum"), digits=6),
                ]
            )
            + " |"
        )

    lines.extend(
        [
            "",
            "## Counterfactual Validation",
            "",
            f"- Rows: `{len(counterfactual_rows)}`",
            f"- CSV: `{paths['counterfactual_csv']}`",
            "",
            "## Files",
            "",
            f"- Manifest: `{paths['manifest_json']}`",
            f"- Model quality: `{paths['quality_json']}`",
            f"- Feature importance: `{paths['feature_csv']}`",
            f"- Group importance: `{paths['group_csv']}`",
            f"- Counterfactual: `{paths['counterfactual_csv']}`",
        ]
    )
    return "\n".join(lines) + "\n"


def _format_float(value: Any, digits: int = 4) -> str:
    number = _safe_float(value)
    return "NA" if number is None else f"{number:.{digits}f}"


def _analysis_paths(run_id: str, run_index: int | None) -> tuple[str, Path, dict[str, Path]]:
    analysis_id = f"{run_id}_run{run_index}" if run_index is not None else run_id
    output_dir = INTERPRETABILITY_RESULTS_DIR / run_id
    if run_index is not None:
        output_dir = output_dir / f"run_{run_index}"
    paths = {
        "manifest_json": output_dir / "manifest.json",
        "quality_json": output_dir / "rf_model_quality.json",
        "feature_csv": output_dir / "rf_feature_importance.csv",
        "group_csv": output_dir / "rf_group_importance.csv",
        "counterfactual_csv": output_dir / "rf_counterfactual.csv",
        "report_md": output_dir / "REPORT.md",
    }
    return analysis_id, output_dir, paths


def run_rf_interpretability(
    *,
    run_id: str,
    run_index: int | None,
    evaluated_sequences: Sequence[Sequence[str]],
    evaluated_scores: Sequence[float],
    selection_split: str,
    base_sequence: Sequence[str],
    base_metrics: dict[str, Any] | None,
    selection_programs: Sequence[str],
    selection_baseline_values: Sequence[float],
) -> dict[str, Any]:
    """Run optional post-hoc RF interpretability analysis."""
    if not RF_EXPLAIN_ENABLE:
        return {"enabled": False}

    analysis_id, output_dir, paths = _analysis_paths(run_id, run_index)
    manifest = {
        "enabled": True,
        "status": "started",
        "analysis_id": analysis_id,
        "run_id": run_id,
        "run_index": run_index,
        "mode": RF_EXPLAIN_MODE,
        "feature_mode": get_feature_mode(),
        "objective_kind": OBJECTIVE_KIND,
        "objective_baseline": OBJECTIVE_BASELINE,
        "loop_nesting_policy": LOOP_NESTING_POLICY,
        "llvm_tools_path": llvm_tools_path,
        "experiment_seed": EXPERIMENT_SEED,
        "split_seed": SPLIT_SEED,
        "evaluated_sequence_count": len(evaluated_sequences),
        "feature_count": len(get_feature_specs()),
        "holdout_ratio": RF_EXPLAIN_HOLDOUT_RATIO,
        "permutation_repeats": RF_EXPLAIN_PERM_REPEATS,
        "counterfactual_enabled": RF_EXPLAIN_COUNTERFACTUAL_ENABLE,
        "counterfactual_topk": RF_EXPLAIN_COUNTERFACTUAL_TOPK,
        "counterfactual_max_evals": RF_EXPLAIN_COUNTERFACTUAL_MAX_EVALS,
        "output_dir": str(output_dir),
    }

    if RF_EXPLAIN_MODE != "final":
        manifest["status"] = f"skipped: unsupported RF_EXPLAIN_MODE={RF_EXPLAIN_MODE!r}"
        _write_json(paths["manifest_json"], manifest)
        return _summary(paths, manifest)

    if len(evaluated_sequences) < RF_EXPLAIN_MIN_SAMPLES:
        manifest["status"] = (
            f"skipped: evaluated_sequence_count={len(evaluated_sequences)} "
            f"< RF_EXPLAIN_MIN_SAMPLES={RF_EXPLAIN_MIN_SAMPLES}"
        )
        _write_json(paths["manifest_json"], manifest)
        return _summary(paths, manifest)

    try:
        x_matrix = extract_features_batch(evaluated_sequences)
        y_values = np.asarray(evaluated_scores, dtype=float)
        x_train, y_train, x_holdout, y_holdout, train_idx, holdout_idx = _split_train_holdout(
            x_matrix,
            y_values,
            RF_EXPLAIN_HOLDOUT_RATIO,
        )
        model = build_rf_regressor(random_state=42)
        model.fit(x_train, y_train)
        quality = _model_quality(model, x_train, y_train, x_holdout, y_holdout)
        permutation_mean, permutation_std = _compute_permutation_importance(model, x_holdout, y_holdout)
        feature_rows = _importance_rows(model, permutation_mean, permutation_std)
        group_rows = _group_rows(feature_rows)
        counterfactual_rows = _counterfactual_rows(
            feature_rows=feature_rows,
            base_sequence=base_sequence,
            base_metrics=base_metrics,
            selection_split=selection_split,
            selection_programs=selection_programs,
            selection_baseline_values=selection_baseline_values,
        )

        manifest.update(
            {
                "status": "ok",
                "train_indices": train_idx,
                "holdout_indices": holdout_idx,
                "model_quality_path": str(paths["quality_json"]),
                "feature_importance_csv_path": str(paths["feature_csv"]),
                "group_importance_csv_path": str(paths["group_csv"]),
                "counterfactual_csv_path": str(paths["counterfactual_csv"]),
                "report_md_path": str(paths["report_md"]),
            }
        )
        quality_payload = {
            "analysis_id": analysis_id,
            "quality": quality,
            "train_indices": train_idx,
            "holdout_indices": holdout_idx,
        }
        _write_json(paths["quality_json"], quality_payload)
        _write_csv(paths["feature_csv"], feature_rows)
        _write_csv(paths["group_csv"], group_rows)
        _write_csv(paths["counterfactual_csv"], counterfactual_rows)
        _write_json(paths["manifest_json"], manifest)
        paths["report_md"].write_text(
            _make_report(
                manifest=manifest,
                quality=quality,
                feature_rows=feature_rows,
                group_rows=group_rows,
                counterfactual_rows=counterfactual_rows,
                paths=paths,
            ),
            encoding="utf-8",
        )
    except Exception as exc:
        manifest["status"] = f"failed: {exc}"
        _write_json(paths["manifest_json"], manifest)

    return _summary(paths, manifest)


def _summary(paths: dict[str, Path], manifest: dict[str, Any]) -> dict[str, Any]:
    return {
        "enabled": True,
        "status": manifest.get("status"),
        "analysis_id": manifest.get("analysis_id"),
        "output_dir": manifest.get("output_dir"),
        "manifest_json_path": str(paths["manifest_json"]),
        "model_quality_json_path": str(paths["quality_json"]) if paths["quality_json"].exists() else None,
        "feature_importance_csv_path": str(paths["feature_csv"]) if paths["feature_csv"].exists() else None,
        "group_importance_csv_path": str(paths["group_csv"]) if paths["group_csv"].exists() else None,
        "counterfactual_csv_path": str(paths["counterfactual_csv"]) if paths["counterfactual_csv"].exists() else None,
        "report_md_path": str(paths["report_md"]) if paths["report_md"].exists() else None,
    }

