#!/usr/bin/env python3
"""Run PerProgramAutoTune budget sweeps on exported RFunipass targets."""

from __future__ import annotations

import argparse
import json
import shlex
import subprocess
import sys
from datetime import datetime
from pathlib import Path
from typing import Any


def _read_json(path: Path) -> dict[str, Any]:
    return json.loads(path.read_text(encoding="utf-8"))


def _write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")


def _parse_csv_list(value: str, *, cast=str) -> list[Any]:
    items = []
    for raw in value.split(","):
        item = raw.strip()
        if item:
            items.append(cast(item))
    return items


def _safe_tag(value: str) -> str:
    chars = []
    for char in value:
        if char.isalnum() or char in "._-":
            chars.append(char)
        else:
            chars.append("_")
    cleaned = "".join(chars).strip("._-")
    return cleaned or "cost_parity"


def _run_command(command: list[str], *, cwd: Path, log_path: Path, dry_run: bool) -> tuple[int | None, str | None]:
    log_path.parent.mkdir(parents=True, exist_ok=True)
    command_text = " ".join(shlex.quote(part) for part in command)
    if dry_run:
        log_path.write_text(f"[dry-run] {command_text}\n", encoding="utf-8")
        return None, None

    with log_path.open("w", encoding="utf-8") as log_file:
        log_file.write(f"$ {command_text}\n")
        log_file.flush()
        completed = subprocess.run(
            command,
            cwd=str(cwd),
            text=True,
            stdout=subprocess.PIPE,
            stderr=subprocess.STDOUT,
            check=False,
        )
        log_file.write(completed.stdout or "")

    run_dir = None
    for line in (completed.stdout or "").splitlines():
        marker = "[done] run_dir="
        if marker in line:
            run_dir = line.split(marker, 1)[1].strip()
    return completed.returncode, run_dir


def _build_payload(
    *,
    args: argparse.Namespace,
    target_manifest_path: Path,
    run_tag_base: str,
    sweep_started_at: str,
    sweep_finished_at: str | None,
    budgets: list[int],
    strategies: list[str],
    selected_seeds: set[int] | None,
    target_manifest: dict[str, Any],
    run_records: list[dict[str, Any]],
    status: str,
    sweep_manifest_path: Path,
    latest_manifest_path: Path,
) -> dict[str, Any]:
    return {
        "kind": "perprogram_budget_sweep",
        "tag": run_tag_base,
        "target_manifest_path": str(target_manifest_path),
        "perprogram_root": str(args.perprogram_root),
        "runner_config": {
            "python": args.python,
            "llvm_tools": str(args.llvm_tools),
            "baseline": args.baseline,
            "loop_policy": args.loop_policy,
            "max_seq_len": args.max_seq_len,
            "jobs": args.jobs,
            "timeout_sec": args.timeout_sec,
            "start_seed": args.start_seed,
            "start_budget": args.start_budget,
        },
        "started_at": sweep_started_at,
        "finished_at": sweep_finished_at,
        "status": status,
        "budgets": budgets,
        "strategies": strategies,
        "seeds": sorted(selected_seeds) if selected_seeds is not None else target_manifest.get("seeds"),
        "dry_run": bool(args.dry_run),
        "continue_on_error": bool(args.continue_on_error),
        "run_records": run_records,
        "sweep_manifest_path": str(sweep_manifest_path),
        "latest_sweep_manifest_path": str(latest_manifest_path),
    }


def _write_sweep_payload(
    *,
    args: argparse.Namespace,
    target_manifest_path: Path,
    run_tag_base: str,
    sweep_started_at: str,
    sweep_finished_at: str | None,
    budgets: list[int],
    strategies: list[str],
    selected_seeds: set[int] | None,
    target_manifest: dict[str, Any],
    run_records: list[dict[str, Any]],
    status: str,
    sweep_manifest_path: Path,
    latest_manifest_path: Path,
) -> None:
    payload = _build_payload(
        args=args,
        target_manifest_path=target_manifest_path,
        run_tag_base=run_tag_base,
        sweep_started_at=sweep_started_at,
        sweep_finished_at=sweep_finished_at,
        budgets=budgets,
        strategies=strategies,
        selected_seeds=selected_seeds,
        target_manifest=target_manifest,
        run_records=run_records,
        status=status,
        sweep_manifest_path=sweep_manifest_path,
        latest_manifest_path=latest_manifest_path,
    )
    _write_json(sweep_manifest_path, payload)
    if latest_manifest_path != sweep_manifest_path:
        _write_json(latest_manifest_path, payload)


def _build_arg_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--target-dir", required=True, type=Path)
    parser.add_argument("--budgets", required=True, help="Comma-separated budgets, e.g. 1,2,4,8,16,30")
    parser.add_argument("--strategies", required=True, help="Comma-separated PerProgramAutoTune strategies.")
    parser.add_argument("--seeds", help="Optional comma-separated seed subset.")
    parser.add_argument("--perprogram-root", type=Path, default=Path("/root/exp/PerProgramAutoTune"))
    parser.add_argument("--python", default=sys.executable)
    parser.add_argument("--llvm-tools", type=Path, default=Path("/root/llvm/llvm-project-21/build/bin"))
    parser.add_argument("--baseline", default="oz")
    parser.add_argument("--loop-policy", default="wrap")
    parser.add_argument("--max-seq-len", type=int, default=120)
    parser.add_argument("--jobs", type=int, default=1)
    parser.add_argument("--timeout-sec", type=float)
    parser.add_argument("--tag", default="cost_parity")
    parser.add_argument("--start-seed", type=int, help="Resume from this seed in seed-major order.")
    parser.add_argument("--start-budget", type=int, help="Resume from this budget within --start-seed.")
    parser.add_argument(
        "--sweep-manifest-path",
        type=Path,
        help=(
            "Optional explicit output path for this sweep manifest. "
            "If omitted, a tag-specific manifest is written under target-dir."
        ),
    )
    parser.add_argument("--continue-on-error", action="store_true")
    parser.add_argument("--dry-run", action="store_true")
    return parser


def main() -> int:
    args = _build_arg_parser().parse_args()
    target_manifest_path = args.target_dir / "rfunipass_targets_manifest.json"
    if not target_manifest_path.exists():
        raise SystemExit(f"Missing target manifest: {target_manifest_path}")

    target_manifest = _read_json(target_manifest_path)
    budgets = _parse_csv_list(args.budgets, cast=int)
    strategies = _parse_csv_list(args.strategies, cast=str)
    selected_seeds = set(_parse_csv_list(args.seeds, cast=int)) if args.seeds else None
    if not budgets:
        raise SystemExit("No budgets selected")
    if not strategies:
        raise SystemExit("No strategies selected")
    if (args.start_seed is None) != (args.start_budget is None):
        raise SystemExit("--start-seed and --start-budget must be specified together")

    run_tag_base = _safe_tag(args.tag)
    sweep_started_at = datetime.now().isoformat(timespec="seconds")
    logs_dir = args.target_dir / "perprogram_logs"
    run_records: list[dict[str, Any]] = []
    sweep_manifest_path = args.sweep_manifest_path or args.target_dir / f"perprogram_budget_sweep_{run_tag_base}.json"
    latest_manifest_path = args.target_dir / "perprogram_budget_sweep_manifest.json"

    for target in target_manifest.get("targets", []):
        seed = int(target["seed"])
        if selected_seeds is not None and seed not in selected_seeds:
            continue
        target_csv = Path(str(target["target_csv_path"]))
        if not target_csv.is_absolute():
            target_csv = (args.target_dir / target_csv.name).resolve()
        if not target_csv.exists():
            raise SystemExit(f"Missing target CSV: {target_csv}")

        for budget in budgets:
            if args.start_seed is not None:
                if seed < args.start_seed:
                    continue
                if seed == args.start_seed and budget < args.start_budget:
                    continue
            run_tag = _safe_tag(f"{run_tag_base}_seed{seed}_budget{budget}")
            command = [
                args.python,
                "run_per_program_autotune.py",
                "--program-csv",
                str(target_csv),
                "--program-csv-column",
                "filename",
                "--program-csv-suite",
                f"rfunipass_seed{seed}_test",
                "--program-csv-mode",
                "plain",
                "--budget",
                str(budget),
                "--seed",
                str(seed),
                "--baseline",
                args.baseline,
                "--llvm-tools",
                str(args.llvm_tools),
                "--loop-policy",
                args.loop_policy,
                "--max-seq-len",
                str(args.max_seq_len),
                "--jobs",
                str(args.jobs),
                "--tag",
                run_tag,
            ]
            for strategy in strategies:
                command.extend(["--strategy", strategy])
            if args.timeout_sec is not None:
                command.extend(["--timeout-sec", str(args.timeout_sec)])

            log_path = logs_dir / f"{run_tag}.log"
            print(f"[run] seed={seed} budget={budget} strategies={','.join(strategies)} tag={run_tag}")
            exit_code, run_dir = _run_command(
                command,
                cwd=args.perprogram_root,
                log_path=log_path,
                dry_run=args.dry_run,
            )
            record = {
                "seed": seed,
                "budget": budget,
                "strategies": list(strategies),
                "tag": run_tag,
                "target_csv_path": str(target_csv),
                "target_program_count": target.get("target_program_count"),
                "command": command,
                "log_path": str(log_path),
                "exit_code": exit_code,
                "run_dir": run_dir,
                "manifest_path": str(Path(run_dir) / "manifest.json") if run_dir else None,
            }
            run_records.append(record)
            _write_sweep_payload(
                args=args,
                target_manifest_path=target_manifest_path,
                run_tag_base=run_tag_base,
                sweep_started_at=sweep_started_at,
                sweep_finished_at=None,
                budgets=budgets,
                strategies=strategies,
                selected_seeds=selected_seeds,
                target_manifest=target_manifest,
                run_records=run_records,
                status="running",
                sweep_manifest_path=sweep_manifest_path,
                latest_manifest_path=latest_manifest_path,
            )
            if exit_code not in (None, 0) and not args.continue_on_error:
                break
        if run_records and run_records[-1].get("exit_code") not in (None, 0) and not args.continue_on_error:
            break

    sweep_finished_at = datetime.now().isoformat(timespec="seconds")
    _write_sweep_payload(
        args=args,
        target_manifest_path=target_manifest_path,
        run_tag_base=run_tag_base,
        sweep_started_at=sweep_started_at,
        sweep_finished_at=sweep_finished_at,
        budgets=budgets,
        strategies=strategies,
        selected_seeds=selected_seeds,
        target_manifest=target_manifest,
        run_records=run_records,
        status="completed",
        sweep_manifest_path=sweep_manifest_path,
        latest_manifest_path=latest_manifest_path,
    )
    print(f"sweep_manifest={sweep_manifest_path}")
    print(f"latest_sweep_manifest={latest_manifest_path}")
    print(f"runs={len(run_records)}")
    failed = [record for record in run_records if record.get("exit_code") not in (None, 0)]
    if failed:
        print(f"failed_runs={len(failed)}")
        return 1
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
