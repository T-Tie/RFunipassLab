"""
批量运行多个 RFunipass 实验。

这个脚本的职责非常单纯：

1. 从 `configs.py` 读取一组实验；
2. 依次调用 `run_one.py` 里的执行逻辑；
3. 全部结束后自动生成汇总报告。

它并不尝试做并行调度、复杂失败恢复或远程任务管理，
因为当前目标是“实验级框架”，不是“大型实验平台”。
"""

from __future__ import annotations

import argparse
from typing import List

from configs import iter_selected_experiments
from run_one import run_experiment
from summarize import write_summary


def build_arg_parser() -> argparse.ArgumentParser:
    """构建命令行参数。"""
    parser = argparse.ArgumentParser(description="Run a lightweight sweep for RFunipass presets.")
    parser.add_argument(
        "--names",
        nargs="*",
        help="Optional experiment names. If omitted, all presets in configs.py will run.",
    )
    parser.add_argument(
        "--dry-run",
        action="store_true",
        help="Resolve configs and create manifests without actually running boca.py.",
    )
    parser.add_argument(
        "--continue-on-error",
        action="store_true",
        help="Keep running remaining experiments even if one run exits with a non-zero code.",
    )
    parser.add_argument(
        "--all-runs",
        action="store_true",
        help="When writing the final report, keep all historical runs instead of latest-per-experiment only.",
    )
    return parser


def main() -> int:
    """CLI 主入口。"""
    parser = build_arg_parser()
    args = parser.parse_args()

    experiments = iter_selected_experiments(args.names)
    if not experiments:
        print("[warn] no experiments selected")
        return 0

    failures: List[str] = []
    total = len(experiments)

    for index, experiment in enumerate(experiments, start=1):
        print(
            f"[{index}/{total}] running {experiment['name']} "
            f"(group={experiment['group']}, changed={experiment['changed']})"
        )
        manifest = run_experiment(
            experiment_name=experiment["name"],
            dry_run=args.dry_run,
            show_env=False,
        )

        exit_code = int(manifest["exit_code"] or 0)
        if exit_code != 0:
            failures.append(experiment["name"])
            if not args.continue_on_error:
                print(f"[stop] {experiment['name']} failed with exit code {exit_code}")
                break

    outputs = write_summary(latest_only=not args.all_runs)
    print(f"[summary] csv={outputs['csv']}")
    print(f"[summary] md={outputs['md']}")

    if failures:
        print(f"[warn] failed experiments: {', '.join(failures)}")
        return 1

    print("[done] sweep finished successfully")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
