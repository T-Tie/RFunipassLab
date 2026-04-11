"""
运行单个 RFunipass 实验。

这个脚本是整个轻量实验框架的最小执行入口。
它只做四件事：

1. 读取一个实验配置；
2. 解析出最终环境变量；
3. 调用 `RFunipassLab/boca.py`；
4. 保存日志与 manifest。

之所以把“单实验运行”单独做成一个文件，是因为它有两个直接好处：

- 调试时最方便：先把单个实验跑通；
- 批量运行时最稳定：`run_sweep.py` 直接复用这里的逻辑即可。
"""

from __future__ import annotations

import argparse
import json
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
    ensure_layout,
    format_env_block,
    get_experiment,
    list_experiments,
    resolve_control_env,
)


def build_run_id(experiment_name: str) -> str:
    """
    为一次运行生成唯一标识。

    这里用时间戳 + 实验名，是因为：
    - 人类可读；
    - 文件名稳定；
    - 不需要再引入 uuid；
    - 足够满足实验场景的唯一性需求。
    """
    now = datetime.now().strftime("%Y%m%d_%H%M%S_%f")
    return f"{now}_{experiment_name}"


def build_manifest(
    experiment: Dict[str, Any],
    control_env: Dict[str, str],
    run_id: str,
    log_path: Path,
) -> Dict[str, Any]:
    """
    生成本次实验的 manifest 初始内容。

    manifest 是轻量实验框架里非常划算的一项设计：
    实现简单，但对复现、追踪和论文整理都很有帮助。
    """
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
    - experiment_name: 预设实验名字
    - dry_run:         只展示将要执行的内容，不真正调用 boca.py
    - show_env:        额外打印解析后的环境变量
    """
    ensure_layout()

    experiment = get_experiment(experiment_name)
    control_env = resolve_control_env(experiment["overrides"])
    process_env = build_process_env(control_env)

    run_id = build_run_id(experiment_name)
    log_path = LOGS_DIR / f"{run_id}.log"
    manifest_path = MANIFESTS_DIR / f"{run_id}.json"
    manifest = build_manifest(experiment, control_env, run_id, log_path)

    if show_env:
        print(f"[env] resolved environment for '{experiment_name}':")
        print(format_env_block(control_env))
        print()

    if dry_run:
        manifest["finished_at"] = datetime.now().isoformat(timespec="seconds")
        manifest["wall_runtime_s"] = 0.0
        manifest["exit_code"] = 0
        write_manifest(manifest, manifest_path)
        print(f"[dry-run] experiment='{experiment_name}'")
        print(f"[dry-run] target={TARGET_SCRIPT}")
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
    print(f"[done] manifest={manifest_path}")

    return manifest


def build_arg_parser() -> argparse.ArgumentParser:
    """构建命令行参数。"""
    parser = argparse.ArgumentParser(description="Run one RFunipass experiment preset.")
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
