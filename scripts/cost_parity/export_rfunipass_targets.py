#!/usr/bin/env python3
"""Export RFunipass test targets for cost-parity experiments."""

from __future__ import annotations

import argparse
import csv
import json
from pathlib import Path
from typing import Any


def _read_json(path: Path) -> dict[str, Any]:
    return json.loads(path.read_text(encoding="utf-8"))


def _write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")


def _write_program_csv(path: Path, programs: list[str]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    with path.open("w", newline="", encoding="utf-8") as csv_file:
        writer = csv.DictWriter(csv_file, fieldnames=["filename", "program_index"])
        writer.writeheader()
        for index, program in enumerate(programs):
            writer.writerow({"filename": program, "program_index": index})


def _resolve_members(batch_manifest: dict[str, Any], selected_seeds: set[int] | None) -> list[dict[str, Any]]:
    members = []
    for member in batch_manifest.get("members", []):
        if int(member.get("exit_code") or 0) != 0:
            continue
        seed = int(member.get("experiment_seed"))
        if selected_seeds is not None and seed not in selected_seeds:
            continue
        if not member.get("result_json_path"):
            continue
        members.append(member)
    members.sort(key=lambda item: int(item.get("experiment_seed")))
    return members


def _build_seed_payload(
    *,
    member: dict[str, Any],
    result_json_path: Path,
    target_programs: list[str],
    target_csv_path: Path,
    target_limit: int | None,
) -> dict[str, Any]:
    result = _read_json(result_json_path)
    best_result = result.get("best_result") or {}
    final_test_metrics = best_result.get("final_test_metrics") or {}
    best_core_tuning_cost = result.get("best_core_tuning_cost") or {}
    full_test_programs = list(result.get("test_programs") or best_result.get("test_programs") or [])

    metrics_scope = "full_test"
    if target_limit is not None and target_limit < len(full_test_programs):
        metrics_scope = "full_test_metrics_for_limited_smoke_targets"

    return {
        "seed": int(member.get("experiment_seed")),
        "split_seed": int(member.get("split_seed")),
        "run_id": member.get("run_id") or result.get("run_id"),
        "result_json_path": str(result_json_path),
        "target_csv_path": str(target_csv_path),
        "target_program_count": len(target_programs),
        "full_test_program_count": len(full_test_programs),
        "target_limit": target_limit,
        "metrics_scope": metrics_scope,
        "objective_kind": result.get("objective_kind"),
        "objective_baseline": result.get("objective_baseline"),
        "backend_opt_level": result.get("backend_opt_level"),
        "loop_nesting_policy": result.get("loop_nesting_policy"),
        "feature_mode": result.get("feature_mode"),
        "rfunipass_final_sequence": list(best_result.get("final_sequence") or []),
        "rfunipass_final_test_objective": final_test_metrics.get("objective"),
        "rfunipass_final_test_mean_norm": final_test_metrics.get("mean_norm"),
        "rfunipass_final_test_worsen_rate": final_test_metrics.get("worsen_rate"),
        "rfunipass_core_eval_count": best_core_tuning_cost.get("objective_eval_count"),
        "rfunipass_candidate_sequence_count": best_core_tuning_cost.get("candidate_sequence_count"),
        "rfunipass_target_feedback_eval_count": best_core_tuning_cost.get("target_feedback_eval_count"),
        "target_programs": list(target_programs),
    }


def _build_arg_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--batch-manifest", required=True, type=Path)
    parser.add_argument("--output-dir", required=True, type=Path)
    parser.add_argument("--seeds", nargs="*", type=int, help="Optional subset of experiment seeds.")
    parser.add_argument(
        "--target-limit",
        type=int,
        help="Optional target count limit for smoke tests. Do not use for formal tables.",
    )
    parser.add_argument("--tag", default="cost_parity")
    return parser


def main() -> int:
    args = _build_arg_parser().parse_args()
    if args.target_limit is not None and args.target_limit < 1:
        raise SystemExit("--target-limit must be >= 1")

    batch_manifest = _read_json(args.batch_manifest)
    selected_seeds = set(args.seeds) if args.seeds else None
    members = _resolve_members(batch_manifest, selected_seeds)
    if not members:
        raise SystemExit("No successful RFunipass seed results selected")

    args.output_dir.mkdir(parents=True, exist_ok=True)
    seed_payloads: list[dict[str, Any]] = []
    for member in members:
        result_json_path = Path(str(member["result_json_path"]))
        if not result_json_path.exists():
            raise SystemExit(f"Missing result JSON: {result_json_path}")

        result = _read_json(result_json_path)
        full_test_programs = list(result.get("test_programs") or (result.get("best_result") or {}).get("test_programs") or [])
        if not full_test_programs:
            raise SystemExit(f"No test_programs found in {result_json_path}")

        target_programs = full_test_programs[: args.target_limit] if args.target_limit else full_test_programs
        seed = int(member["experiment_seed"])
        target_csv_path = args.output_dir / f"seed{seed}_test_programs.csv"
        target_json_path = args.output_dir / f"seed{seed}_rfunipass_target.json"
        _write_program_csv(target_csv_path, target_programs)

        payload = _build_seed_payload(
            member=member,
            result_json_path=result_json_path,
            target_programs=target_programs,
            target_csv_path=target_csv_path,
            target_limit=args.target_limit,
        )
        _write_json(target_json_path, payload)
        seed_payloads.append(payload)

    manifest = {
        "tag": args.tag,
        "kind": "rfunipass_cost_parity_targets",
        "batch_manifest_path": str(args.batch_manifest),
        "batch_id": batch_manifest.get("batch_id"),
        "output_dir": str(args.output_dir),
        "target_limit": args.target_limit,
        "seed_count": len(seed_payloads),
        "seeds": [payload["seed"] for payload in seed_payloads],
        "targets": [
            {
                "seed": payload["seed"],
                "target_csv_path": payload["target_csv_path"],
                "target_json_path": str(args.output_dir / f"seed{payload['seed']}_rfunipass_target.json"),
                "target_program_count": payload["target_program_count"],
                "metrics_scope": payload["metrics_scope"],
            }
            for payload in seed_payloads
        ],
    }
    manifest_path = args.output_dir / "rfunipass_targets_manifest.json"
    _write_json(manifest_path, manifest)

    print(f"exported_seeds={len(seed_payloads)}")
    print(f"manifest={manifest_path}")
    for payload in seed_payloads:
        print(
            f"seed={payload['seed']} targets={payload['target_program_count']} "
            f"csv={payload['target_csv_path']}"
        )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
