"""
运行单个 RFunipassLab 实验。

这个脚本是整个轻量实验框架的最小执行入口。它只做四件事：

1. 读取一个实验配置；
2. 解析出最终环境变量；
3. 调用 `RFunipassLab/boca.py`；
4. 保存日志、外层 manifest，并把结构化 result json 路径传给实验进程。

注意：
- 外层日志/manifest 仍统一放在 `results/logs` 与 `results/manifests`；
- 实验内部 result json 会根据 OBJECTIVE_KIND 自动分到：
  - `results/instrcount/summaries/`
  - `results/runtime/summaries/`
"""

from __future__ import annotations

import argparse
import json
import os
import re
import subprocess
import sys
import time
from datetime import datetime
from pathlib import Path
from typing import Any, Dict, Optional

from configs import (
    LOGS_DIR,
    MANIFESTS_DIR,
    TARGET_PROJECT_DIR,
    TARGET_SCRIPT,
    build_process_env,
    default_result_path_for_run,
    describe_overrides,
    ensure_layout,
    format_env_block,
    get_experiment,
    list_experiments,
    resolve_control_env,
)


_RUN_LABEL_RE = re.compile(r"[^A-Za-z0-9_.-]+")
_REPRODUCIBILITY_KEYS = (
    "EXPERIMENT_SEED",
    "SPLIT_SEED",
    "OBJECTIVE_KIND",
    "OBJECTIVE_BASELINE",
    "PROGRAM_POOL_KIND",
    "LOOP_NESTING_POLICY",
    "BACKEND_OPT_LEVEL",
    "FEATURE_MODE",
    "VAL_RATIO",
    "MIN_VAL_PROGRAMS",
    "RUNS",
    "ITERS",
)


def _sanitize_run_label(text: str) -> str:
    """把额外标签收敛到适合文件名的形式。"""
    cleaned = _RUN_LABEL_RE.sub("_", text.strip()).strip("._-")
    return cleaned or "run"


def build_run_id(experiment_name: str, run_label: str | None = None) -> str:
    """
    为一次运行生成唯一标识。

    时间戳 + 实验名的好处是人类可读、文件名稳定，而且足够满足实验场景唯一性。
    """
    now = datetime.now().strftime("%Y%m%d_%H%M%S_%f")
    suffix = f"_{_sanitize_run_label(run_label)}" if run_label else ""
    return f"{now}_{experiment_name}{suffix}"


def _int_or_none(value: Any) -> Optional[int]:
    if value is None or value == "":
        return None
    try:
        return int(value)
    except (TypeError, ValueError):
        return None


def build_reproducibility_snapshot(control_env: Dict[str, str]) -> Dict[str, Any]:
    """把论文复现最关键的配置项提炼成固定结构。"""
    snapshot: Dict[str, Any] = {}
    for key in _REPRODUCIBILITY_KEYS:
        value = control_env.get(key)
        if key in {"EXPERIMENT_SEED", "SPLIT_SEED", "MIN_VAL_PROGRAMS", "RUNS", "ITERS"}:
            snapshot[key.lower()] = _int_or_none(value)
        else:
            snapshot[key.lower()] = value
    snapshot["objective"] = {
        "kind": control_env.get("OBJECTIVE_KIND"),
        "baseline": control_env.get("OBJECTIVE_BASELINE"),
    }
    return snapshot


def _flatten_metric_block(metrics: Any, prefix: str) -> Dict[str, Any]:
    if not isinstance(metrics, dict):
        return {}
    return {
        f"{prefix}_obj": metrics.get("objective"),
        f"{prefix}_mean": metrics.get("mean_norm"),
        f"{prefix}_median": metrics.get("median_norm"),
        f"{prefix}_worsen_rate": metrics.get("worsen_rate"),
        f"{prefix}_invalid": metrics.get("invalid"),
    }


def load_result_summary_excerpt(result_json_path: Path) -> Optional[Dict[str, Any]]:
    """从结构化 result json 中提炼摘要，回写到外层 manifest。"""
    if not result_json_path.exists():
        return None

    payload = json.loads(result_json_path.read_text(encoding="utf-8"))
    best_result = payload.get("best_result")
    if not isinstance(best_result, dict):
        best_result = {}

    split_summary = payload.get("split_summary")
    if not isinstance(split_summary, dict):
        split_summary = best_result.get("split_summary") if isinstance(best_result.get("split_summary"), dict) else {}

    final_sequence_effective = list(best_result.get("final_sequence") or [])
    final_sequence_raw = list(best_result.get("final_sequence_raw") or final_sequence_effective)
    excerpt: Dict[str, Any] = {
        "objective_kind": payload.get("objective_kind"),
        "objective_baseline": payload.get("objective_baseline"),
        "baseline_pipeline": payload.get("baseline_pipeline"),
        "loop_nesting_policy": payload.get("loop_nesting_policy"),
        "backend_opt_level": payload.get("backend_opt_level"),
        "feature_mode": payload.get("feature_mode"),
        "experiment_seed": payload.get("experiment_seed"),
        "split_seed": payload.get("split_seed"),
        "selection_split": best_result.get("selection_split"),
        "selection_objective": best_result.get("selection_objective"),
        "final_length_effective": len(final_sequence_effective),
        "final_length_raw": len(final_sequence_raw),
        "final_pipeline_effective": best_result.get("final_pipeline_effective"),
        "final_sequence_effective": final_sequence_effective,
        "final_sequence_raw": final_sequence_raw,
        "search_train_count": split_summary.get("search_train_count"),
        "validation_count": split_summary.get("validation_count"),
        "test_count": split_summary.get("test_count"),
        "search_train_signature": split_summary.get("search_train_signature"),
        "validation_signature": split_summary.get("validation_signature"),
        "test_signature": split_summary.get("test_signature"),
        "train_pool_signature": split_summary.get("train_pool_signature"),
    }
    excerpt.update(_flatten_metric_block(best_result.get("final_train_metrics"), "search_train"))
    excerpt.update(_flatten_metric_block(best_result.get("final_val_metrics"), "validation"))
    excerpt.update(_flatten_metric_block(best_result.get("final_test_metrics"), "test"))
    return excerpt


def build_manifest(
    experiment: Dict[str, Any],
    control_env: Dict[str, str],
    run_id: str,
    log_path: Path,
    result_json_path: Path,
    *,
    extra_overrides: Optional[Dict[str, str]] = None,
    runner_context: Optional[Dict[str, Any]] = None,
) -> Dict[str, Any]:
    """生成本次实验的外层 manifest 初始内容。"""
    command = [sys.executable, str(TARGET_SCRIPT)]
    return {
        "run_id": run_id,
        "name": experiment["name"],
        "group": experiment["group"],
        "description": experiment["description"],
        "changed": experiment["changed"],
        "overrides": experiment["overrides"],
        "preset_overrides": experiment["overrides"],
        "extra_overrides": dict(extra_overrides or {}),
        "effective_overrides": describe_overrides({**experiment["overrides"], **(extra_overrides or {})}),
        "control_env": control_env,
        "reproducibility": build_reproducibility_snapshot(control_env),
        "runner_context": dict(runner_context or {}),
        "command": command,
        "cwd": str(TARGET_PROJECT_DIR),
        "target_script": str(TARGET_SCRIPT),
        "log_path": str(log_path),
        "result_json_path": str(result_json_path),
        "started_at": datetime.now().isoformat(timespec="seconds"),
        "finished_at": None,
        "wall_runtime_s": None,
        "exit_code": None,
        "result_summary": None,
    }


def write_manifest(manifest: Dict[str, Any], manifest_path: Path) -> None:
    """把 manifest 以 JSON 格式写盘，便于后续自动解析。"""
    manifest_path.write_text(
        json.dumps(manifest, indent=2, ensure_ascii=False) + "\n",
        encoding="utf-8",
    )


def run_experiment(
    experiment_name: str,
    dry_run: bool = False,
    show_env: bool = False,
    *,
    extra_control_env: Optional[Dict[str, str]] = None,
    run_label: str | None = None,
    runner_context: Optional[Dict[str, Any]] = None,
    result_json_path: Optional[Path] = None,
    allow_external_result_json: bool = True,
) -> Dict[str, Any]:
    """
    执行一个实验，并返回运行信息。

    参数说明：
    - experiment_name: 预设实验名字；
    - dry_run:         只展示将要执行的内容，不真正调用 boca.py；
    - show_env:        额外打印解析后的环境变量。
    """
    ensure_layout()

    experiment = get_experiment(experiment_name)
    merged_overrides = dict(experiment["overrides"])
    if extra_control_env:
        merged_overrides.update(extra_control_env)
    control_env = resolve_control_env(merged_overrides, external_env=os.environ)

    run_id = build_run_id(experiment_name, run_label=run_label)
    default_result_json = default_result_path_for_run(run_id, control_env)
    if result_json_path is None:
        result_json_path = Path(
            os.environ.get("RESULT_JSON", str(default_result_json))
            if allow_external_result_json else default_result_json
        )

    process_env = build_process_env(control_env)
    process_env["RUN_ID"] = run_id
    process_env["RESULT_JSON"] = str(result_json_path)

    log_path = LOGS_DIR / f"{run_id}.log"
    manifest_path = MANIFESTS_DIR / f"{run_id}.json"
    manifest = build_manifest(
        experiment,
        control_env,
        run_id,
        log_path,
        result_json_path,
        extra_overrides=extra_control_env,
        runner_context=runner_context,
    )

    if show_env:
        print(f"[env] resolved environment for '{experiment_name}':")
        print(format_env_block(control_env))
        print(f"RUN_ID={run_id}")
        print(f"RESULT_JSON={result_json_path}")
        print()

    if dry_run:
        manifest["finished_at"] = datetime.now().isoformat(timespec="seconds")
        manifest["wall_runtime_s"] = 0.0
        manifest["exit_code"] = 0
        write_manifest(manifest, manifest_path)
        print(f"[dry-run] experiment='{experiment_name}'")
        print(f"[dry-run] target={TARGET_SCRIPT}")
        print(f"[dry-run] result_json={result_json_path}")
        print(f"[dry-run] manifest={manifest_path}")
        return manifest

    start_time = time.time()

    with log_path.open("w", encoding="utf-8") as log_file:
        # 先写一段清晰的头部，后续回看日志时会轻松很多。
        log_file.write(f"# run_id: {run_id}\n")
        log_file.write(f"# name: {experiment['name']}\n")
        log_file.write(f"# group: {experiment['group']}\n")
        log_file.write(f"# description: {experiment['description']}\n")
        log_file.write(f"# changed: {experiment['changed']}\n")
        log_file.write(f"# result_json: {result_json_path}\n")
        log_file.write(f"# started_at: {manifest['started_at']}\n")
        log_file.write("# control_env:\n")
        for line in format_env_block(control_env).splitlines():
            log_file.write(f"#   {line}\n")
        log_file.write("\n")
        log_file.flush()

        completed = subprocess.run(
            [sys.executable, str(TARGET_SCRIPT)],
            cwd=str(TARGET_PROJECT_DIR),
            env=process_env,
            stdout=log_file,
            stderr=subprocess.STDOUT,
            text=True,
            check=False,
        )

    wall_runtime_s = time.time() - start_time
    manifest["finished_at"] = datetime.now().isoformat(timespec="seconds")
    manifest["wall_runtime_s"] = round(wall_runtime_s, 6)
    manifest["exit_code"] = int(completed.returncode)
    try:
        manifest["result_summary"] = load_result_summary_excerpt(result_json_path)
    except Exception as exc:
        manifest["result_summary"] = None
        manifest["result_summary_error"] = str(exc)
    write_manifest(manifest, manifest_path)

    print(
        f"[done] name={experiment_name} exit={completed.returncode} "
        f"runtime={manifest['wall_runtime_s']:.2f}s"
    )
    print(f"[done] log={log_path}")
    print(f"[done] result_json={result_json_path}")
    print(f"[done] manifest={manifest_path}")

    return manifest


def build_arg_parser() -> argparse.ArgumentParser:
    """构建命令行参数。"""
    parser = argparse.ArgumentParser(description="Run one RFunipassLab experiment preset.")
    parser.add_argument("--name", help="Experiment name defined in configs.py.")
    parser.add_argument("--list", action="store_true", help="List available experiment presets and exit.")
    parser.add_argument("--dry-run", action="store_true", help="Resolve config but do not actually run boca.py.")
    parser.add_argument("--show-env", action="store_true", help="Print resolved experiment env before running.")
    return parser


def print_experiment_list() -> None:
    """把预设实验列表打印出来，方便用户快速确认名称。"""
    print("Available experiments:")
    for experiment in list_experiments():
        print(
            f"- {experiment['name']}: "
            f"{experiment['description']} "
            f"[group={experiment['group']}; changed={experiment['changed']}]"
        )


def main() -> int:
    """CLI 主入口。"""
    parser = build_arg_parser()
    args = parser.parse_args()

    if args.list:
        print_experiment_list()
        return 0

    if not args.name:
        parser.error("--name is required unless --list is used.")

    manifest = run_experiment(
        experiment_name=args.name,
        dry_run=args.dry_run,
        show_env=args.show_env,
    )

    return int(manifest["exit_code"] or 0)


if __name__ == "__main__":
    raise SystemExit(main())
