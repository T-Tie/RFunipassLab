"""
批量运行同一实验配置的多随机种子版本。

目标：

1. 不改动 `boca.py` / `boca_exp` 的主实验逻辑；
2. 通过外层多进程调度，把不同 seed 的运行拆成独立、可复现的单次实验；
3. 自动生成 batch manifest 与 batch summary，方便论文中直接引用。
"""

from __future__ import annotations

import argparse
import json
import re
from datetime import datetime
from typing import Any, Dict, List

from configs import MANIFESTS_DIR, ensure_layout
from run_one import run_experiment
from summarize import write_summary


_SAFE_LABEL_RE = re.compile(r"[^A-Za-z0-9_.-]+")


def _safe_label(value: str | None) -> str | None:
    if value is None:
        return None
    cleaned = _SAFE_LABEL_RE.sub("_", value.strip()).strip("._-")
    return cleaned or None


def _build_batch_id(experiment_name: str, tag: str | None = None) -> str:
    timestamp = datetime.now().strftime("%Y%m%d_%H%M%S_%f")
    safe_tag = _safe_label(tag)
    suffix = f"_{safe_tag}" if safe_tag else ""
    return f"{timestamp}_{experiment_name}_multiseed{suffix}"


def _resolve_seed_list(args: argparse.Namespace) -> List[int]:
    if args.seeds:
        return list(dict.fromkeys(args.seeds))

    if args.seed_count is None:
        return [456]

    return [args.seed_start + index for index in range(args.seed_count)]


def _build_arg_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(description="Run one preset across multiple experiment seeds.")
    parser.add_argument("--name", required=True, help="Experiment name defined in configs.py.")
    parser.add_argument(
        "--seeds",
        nargs="*",
        type=int,
        help="Explicit experiment seed list. If omitted, uses --seed-start/--seed-count.",
    )
    parser.add_argument(
        "--seed-start",
        type=int,
        default=456,
        help="Seed range start when --seeds is not provided.",
    )
    parser.add_argument(
        "--seed-count",
        type=int,
        default=5,
        help="How many consecutive seeds to run when --seeds is not provided.",
    )
    parser.add_argument(
        "--split-seed-offset",
        type=int,
        default=0,
        help="Use SPLIT_SEED = EXPERIMENT_SEED + offset. Default keeps them identical.",
    )
    parser.add_argument(
        "--tag",
        help="Optional batch tag appended to the batch manifest/report prefix.",
    )
    parser.add_argument("--dry-run", action="store_true", help="Create manifests without launching boca.py.")
    parser.add_argument("--show-env", action="store_true", help="Print resolved environment for each seed run.")
    parser.add_argument(
        "--continue-on-error",
        action="store_true",
        help="Keep launching the remaining seeds even if one run fails.",
    )
    return parser


def main() -> int:
    parser = _build_arg_parser()
    args = parser.parse_args()
    if args.seed_count is not None and args.seed_count < 1:
        parser.error("--seed-count must be >= 1")

    ensure_layout()
    seeds = _resolve_seed_list(args)
    if not seeds:
        print("[warn] no seeds selected")
        return 0

    batch_id = _build_batch_id(args.name, tag=args.tag)
    batch_manifest_path = MANIFESTS_DIR / f"{batch_id}.json"

    batch_members: List[Dict[str, Any]] = []
    failed_run_ids: List[str] = []
    batch_started_at = datetime.now().isoformat(timespec="seconds")

    total = len(seeds)
    for index, seed in enumerate(seeds, start=1):
        split_seed = seed + args.split_seed_offset
        run_label = f"seed{seed}" if split_seed == seed else f"seed{seed}_split{split_seed}"
        print(f"[{index}/{total}] running {args.name} with EXPERIMENT_SEED={seed}, SPLIT_SEED={split_seed}")

        manifest = run_experiment(
            experiment_name=args.name,
            dry_run=args.dry_run,
            show_env=args.show_env,
            extra_control_env={
                "EXPERIMENT_SEED": str(seed),
                "SPLIT_SEED": str(split_seed),
            },
            run_label=run_label,
            runner_context={
                "runner_kind": "multi_seed",
                "batch_id": batch_id,
                "batch_name": args.name,
                "batch_index": index,
                "batch_size": total,
                "experiment_seed": seed,
                "split_seed": split_seed,
            },
            allow_external_result_json=False,
        )

        exit_code = int(manifest.get("exit_code") or 0)
        batch_members.append(
            {
                "run_id": manifest.get("run_id"),
                "experiment_seed": seed,
                "split_seed": split_seed,
                "exit_code": exit_code,
                "manifest_path": str(MANIFESTS_DIR / f"{manifest['run_id']}.json"),
                "log_path": manifest.get("log_path"),
                "result_json_path": manifest.get("result_json_path"),
            }
        )
        if exit_code != 0:
            failed_run_ids.append(str(manifest.get("run_id")))
            if not args.continue_on_error:
                print(f"[stop] seed run failed: run_id={manifest.get('run_id')} exit={exit_code}")
                break

    batch_finished_at = datetime.now().isoformat(timespec="seconds")
    batch_payload = {
        "batch_id": batch_id,
        "runner_kind": "multi_seed",
        "experiment_name": args.name,
        "batch_started_at": batch_started_at,
        "batch_finished_at": batch_finished_at,
        "dry_run": bool(args.dry_run),
        "continue_on_error": bool(args.continue_on_error),
        "seed_start": args.seed_start,
        "seed_count": args.seed_count,
        "seeds": seeds,
        "split_seed_offset": args.split_seed_offset,
        "members": batch_members,
        "failed_run_ids": failed_run_ids,
    }
    batch_manifest_path.write_text(
        json.dumps(batch_payload, indent=2, ensure_ascii=False) + "\n",
        encoding="utf-8",
    )

    batch_run_ids = [str(member["run_id"]) for member in batch_members]
    batch_outputs = write_summary(
        latest_only=False,
        include_run_ids=batch_run_ids,
        output_prefix=batch_id,
    )
    global_outputs = write_summary(latest_only=False)

    print(f"[batch] manifest={batch_manifest_path}")
    print(f"[batch] csv={batch_outputs['csv']}")
    print(f"[batch] md={batch_outputs['md']}")
    print(f"[summary] csv={global_outputs['csv']}")
    print(f"[summary] md={global_outputs['md']}")

    if failed_run_ids:
        print(f"[warn] failed run ids: {', '.join(failed_run_ids)}")
        return 1
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
