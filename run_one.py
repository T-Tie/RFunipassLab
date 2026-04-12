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
import subprocess
import sys
import time
from datetime import datetime
from pathlib import Path
from typing import Any, Dict

from configs import (
    LOGS_DIR,
    MANIFESTS_DIR,
    TARGET_PROJECT_DIR,
    TARGET_SCRIPT,
    build_process_env,
    default_result_path_for_run,
    ensure_layout,
    format_env_block,
    get_experiment,
    list_experiments,
    resolve_control_env,
)


def build_run_id(experiment_name: str) -> str:
    """
    为一次运行生成唯一标识。

    时间戳 + 实验名的好处是人类可读、文件名稳定，而且足够满足实验场景唯一性。
    """
    now = datetime.now().strftime("%Y%m%d_%H%M%S_%f")
    return f"{now}_{experiment_name}"


def build_manifest(
    experiment: Dict[str, Any],
    control_env: Dict[str, str],
    run_id: str,
    log_path: Path,
    result_json_path: Path,
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
        "control_env": control_env,
        "command": command,
        "cwd": str(TARGET_PROJECT_DIR),
        "target_script": str(TARGET_SCRIPT),
        "log_path": str(log_path),
        "result_json_path": str(result_json_path),
        "started_at": datetime.now().isoformat(timespec="seconds"),
        "finished_at": None,
        "wall_runtime_s": None,
        "exit_code": None,
    }


def write_manifest(manifest: Dict[str, Any], manifest_path: Path) -> None:
    """把 manifest 以 JSON 格式写盘，便于后续自动解析。"""
    manifest_path.write_text(
        json.dumps(manifest, indent=2, ensure_ascii=False) + "\n",
        encoding="utf-8",
    )


def run_experiment(experiment_name: str, dry_run: bool = False, show_env: bool = False) -> Dict[str, Any]:
    """
    执行一个实验，并返回运行信息。

    参数说明：
    - experiment_name: 预设实验名字；
    - dry_run:         只展示将要执行的内容，不真正调用 boca.py；
    - show_env:        额外打印解析后的环境变量。
    """
    ensure_layout()

    experiment = get_experiment(experiment_name)
    control_env = resolve_control_env(experiment["overrides"])

    run_id = build_run_id(experiment_name)
    default_result_json = default_result_path_for_run(run_id, control_env)
    result_json_path = Path(os.environ.get("RESULT_JSON", str(default_result_json)))

    process_env = build_process_env(control_env)
    process_env["RUN_ID"] = run_id
    process_env["RESULT_JSON"] = str(result_json_path)

    log_path = LOGS_DIR / f"{run_id}.log"
    manifest_path = MANIFESTS_DIR / f"{run_id}.json"
    manifest = build_manifest(experiment, control_env, run_id, log_path, result_json_path)

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
