#!/usr/bin/env python3
from __future__ import annotations

import argparse
import json
import os
import sys
from pathlib import Path

from external_validation.core import (
    build_external_ir,
    run_external_validation,
    sync_external_sources,
)
from external_validation.registry import VALID_SUITES


SYSTEM_LIBSTDCPP = "/usr/lib/x86_64-linux-gnu/libstdc++.so.6"


def _maybe_reexec_for_instrcount(args: argparse.Namespace) -> None:
    if args.command != "evaluate" or getattr(args, "mode", None) != "instrcount":
        return
    if os.environ.get("RFUNIPASS_EXTERNAL_PRELOAD_DONE") == "1":
        return
    if not Path(SYSTEM_LIBSTDCPP).is_file():
        return

    env = os.environ.copy()
    existing = env.get("LD_PRELOAD", "").strip()
    if SYSTEM_LIBSTDCPP not in existing.split(":"):
        env["LD_PRELOAD"] = f"{SYSTEM_LIBSTDCPP}:{existing}" if existing else SYSTEM_LIBSTDCPP
    env["RFUNIPASS_EXTERNAL_PRELOAD_DONE"] = "1"
    os.execve(sys.executable, [sys.executable, *sys.argv], env)


def _add_common_suite_args(parser: argparse.ArgumentParser) -> None:
    parser.add_argument(
        "--suite",
        action="append",
        choices=VALID_SUITES,
        help="Restrict to one or more external suites. Defaults to all registered suites.",
    )
    parser.add_argument(
        "--exclude-suite",
        action="append",
        choices=VALID_SUITES,
        help="Exclude one or more suites from the selected evaluation set.",
    )
    parser.add_argument(
        "--benchmark",
        action="append",
        help="Restrict to specific benchmark names across the selected suites.",
    )
    parser.add_argument(
        "--dataset-id",
        type=int,
        default=1,
        help="CBench dataset id used when runtime-evaluating CBench programs.",
    )
    parser.add_argument(
        "--force-sync",
        action="store_true",
        help="Force re-copying external datasets into external_datasets/sources.",
    )


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(
        description="Validate a universal pass sequence on external benchmark suites without changing the original RFunipass workflow."
    )
    subparsers = parser.add_subparsers(dest="command", required=True)

    sync_parser = subparsers.add_parser("sync", help="Sync external benchmark sources into external_datasets/sources.")
    _add_common_suite_args(sync_parser)

    ir_parser = subparsers.add_parser("build-ir", help="Build linked LLVM IR files for external instrcount validation.")
    _add_common_suite_args(ir_parser)
    ir_parser.add_argument(
        "--force-ir",
        action="store_true",
        help="Force rebuilding linked LLVM IR files even if they already exist.",
    )
    ir_parser.add_argument(
        "--frontend-mode",
        choices=("canonical", "raw"),
        default="canonical",
        help="Source-to-IR generation strategy. 'canonical' uses -O1 with LLVM passes disabled; 'raw' uses -O0 without optnone.",
    )

    eval_parser = subparsers.add_parser("evaluate", help="Run instrcount, binarysize, or runtime validation on external suites.")
    _add_common_suite_args(eval_parser)
    eval_parser.add_argument(
        "--mode",
        choices=("instrcount", "binarysize", "runtime"),
        required=True,
        help="Validation mode.",
    )
    eval_parser.add_argument(
        "--result-json",
        help="Existing RFunipass result JSON whose final_sequence will be evaluated.",
    )
    eval_parser.add_argument(
        "--sequence-text",
        help="Inline pass pipeline text. If set, it overrides --result-json.",
    )
    eval_parser.add_argument(
        "--objective-baseline",
        choices=("oz", "o3"),
        default="oz",
        help="Primary baseline for instrcount / binarysize aggregation.",
    )
    eval_parser.add_argument(
        "--repeat",
        type=int,
        default=1,
        help="Runtime repeat count for each benchmark.",
    )
    eval_parser.add_argument(
        "--timeout",
        type=float,
        default=300.0,
        help="Runtime timeout per benchmark run in seconds.",
    )
    eval_parser.add_argument(
        "--force-ir",
        action="store_true",
        help="Force rebuilding linked LLVM IR files before instrcount/binarysize validation.",
    )
    eval_parser.add_argument(
        "--tag",
        help="Optional report tag. Defaults to an auto-generated timestamped name.",
    )
    eval_parser.add_argument(
        "--frontend-mode",
        choices=("canonical", "raw"),
        default="canonical",
        help="IR generation strategy used when building external linked .ll files for instrcount/binarysize validation.",
    )
    eval_parser.add_argument(
        "--instrcount-timeout",
        type=float,
        default=60.0,
        help="Per-program opt timeout in seconds for external instrcount validation.",
    )
    eval_parser.add_argument(
        "--instrcount-workers",
        type=int,
        default=4,
        help="Maximum parallel workers for external instrcount validation.",
    )
    eval_parser.add_argument(
        "--binarysize-timeout",
        type=float,
        default=60.0,
        help="Per-program timeout in seconds for external binary-size validation.",
    )
    eval_parser.add_argument(
        "--binarysize-workers",
        type=int,
        default=4,
        help="Maximum parallel workers for external binary-size validation.",
    )
    eval_parser.add_argument(
        "--binarysize-metric",
        choices=("file_bytes", "stripped_file_bytes", "text_bytes", "data_bytes", "bss_bytes", "dec_bytes"),
        default="stripped_file_bytes",
        help="Primary size metric used for binary-size validation.",
    )
    return parser


def main() -> int:
    parser = build_parser()
    args = parser.parse_args()
    _maybe_reexec_for_instrcount(args)

    if args.command == "sync":
        payload = sync_external_sources(
            selected_suites=args.suite,
            exclude_suites=args.exclude_suite,
            force=args.force_sync,
        )
    elif args.command == "build-ir":
        payload = build_external_ir(
            selected_suites=args.suite,
            exclude_suites=args.exclude_suite,
            benchmarks=args.benchmark,
            dataset_id=args.dataset_id,
            force_sync=args.force_sync,
            force_rebuild=args.force_ir,
            frontend_mode=args.frontend_mode,
        )
    else:
        payload = run_external_validation(
            mode=args.mode,
            result_json_path=args.result_json,
            sequence_text=args.sequence_text,
            selected_suites=args.suite,
            exclude_suites=args.exclude_suite,
            benchmarks=args.benchmark,
            objective_baseline=args.objective_baseline,
            repeat=args.repeat,
            timeout=args.timeout,
            dataset_id=args.dataset_id,
            force_sync=args.force_sync,
            force_ir=args.force_ir,
            tag=args.tag,
            frontend_mode=args.frontend_mode,
            instrcount_timeout=args.instrcount_timeout,
            instrcount_workers=args.instrcount_workers,
            binarysize_timeout=args.binarysize_timeout,
            binarysize_workers=args.binarysize_workers,
            binarysize_metric=args.binarysize_metric,
        )

    print(json.dumps(payload, indent=2, ensure_ascii=False))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
