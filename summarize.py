"""
汇总 RFunipassLab 已有实验结果。

这个脚本只依赖两类输入：

1. `run_one.py` 产生的 manifest
2. `boca.py` 运行日志

它不会修改原项目，只会在 `RFunipassLab/results/reports/` 下生成：

- `summary.csv`
- `summary.md`

为了保持实现简洁，这里只解析最关键的字段：

- validation/test/search_train 目标值
- 最终序列长度
- 最终序列内容
- 运行时长
- 退出码

这样已经足够支撑论文实验整理和日常对比分析。
"""

from __future__ import annotations

import argparse
import csv
import json
import math
import re
from datetime import datetime
from pathlib import Path
from typing import Any, Dict, Iterable, List, Optional, Set

from configs import MANIFESTS_DIR, REPORTS_DIR, ensure_layout


FLOAT_RE = r"[-+]?(?:\d+(?:\.\d+)?|\.\d+)"


def load_manifest(manifest_path: Path) -> Dict[str, Any]:
    """读取单个 manifest。"""
    return json.loads(manifest_path.read_text(encoding="utf-8"))


def parse_metric_block(text: str, split: str) -> Dict[str, Any]:
    """
    解析 search_train / validation / test 三类指标块。

    由于 `boca.py` 日志格式可能在不同阶段有轻微差异，
    这里保留两种常见正则模式，以提高兼容性。
    """
    patterns = [
        re.compile(
            rf"{split}_obj=({FLOAT_RE}), {split}_mean=({FLOAT_RE}), {split}_worsen=({FLOAT_RE})%"
        ),
        re.compile(
            rf"{split}:\s+obj=({FLOAT_RE}), mean=({FLOAT_RE}), worsen=({FLOAT_RE})%"
        ),
    ]

    for pattern in patterns:
        matches = pattern.findall(text)
        if matches:
            obj_s, mean_s, worsen_pct_s = matches[-1]
            return {
                f"{split}_obj": float(obj_s),
                f"{split}_mean": float(mean_s),
                f"{split}_worsen_pct": float(worsen_pct_s),
            }

    return {
        f"{split}_obj": None,
        f"{split}_mean": None,
        f"{split}_worsen_pct": None,
    }


def parse_log(text: str) -> Dict[str, Any]:
    """
    从日志中提取核心实验结果。

    这里尽量沿用 `RFunipass/exp3/run_boca_sweep.py` 的解析思路，
    但实现上保持更轻，避免把整个 sweep 脚本复制过来。
    """
    result: Dict[str, Any] = {}

    summary_re = re.compile(
        r"所有轮次中最优 (?P<selection_split>[A-Za-z_]+) objective: (?P<selection_objective>"
        + FLOAT_RE
        + r")\n"
        + r"最优通用 pass 序列 \((?P<final_length>\d+) passes\):\n"
        + r"\s+(?P<final_sequence>.*)\n"
        + r"\s+search_train:\s+obj=(?P<search_train_obj>"
        + FLOAT_RE
        + r"), mean=(?P<search_train_mean>"
        + FLOAT_RE
        + r"), worsen=(?P<search_train_worsen_pct>"
        + FLOAT_RE
        + r")%\n"
        + r"(?:\s+validation:\s+obj=(?P<validation_obj>"
        + FLOAT_RE
        + r"), mean=(?P<validation_mean>"
        + FLOAT_RE
        + r"), worsen=(?P<validation_worsen_pct>"
        + FLOAT_RE
        + r")%\n)?"
        + r"(?:\s+test:\s+obj=(?P<test_obj>"
        + FLOAT_RE
        + r"), mean=(?P<test_mean>"
        + FLOAT_RE
        + r"), worsen=(?P<test_worsen_pct>"
        + FLOAT_RE
        + r")%\n)?"
    )

    match = summary_re.search(text)
    if match:
        for key, value in match.groupdict().items():
            if value is None:
                result[key] = None
            elif key in {"selection_split", "final_sequence"}:
                result[key] = value.strip()
            elif key == "final_length":
                result[key] = int(value)
            else:
                result[key] = float(value)
    else:
        for split in ("search_train", "validation", "test"):
            result.update(parse_metric_block(text, split))

        match = re.search(
            r"所有轮次中最优 ([A-Za-z_]+) objective: (" + FLOAT_RE + r")",
            text,
        )
        if match:
            result["selection_split"] = match.group(1)
            result["selection_objective"] = float(match.group(2))
        else:
            result["selection_split"] = None
            result["selection_objective"] = None

    # 有些日志会额外打印“最终通用 pass 序列（xx 个 pass, syn_rate=...）”。
    match = re.search(
        r"最终通用 pass 序列（(\d+) 个 pass, syn_rate=(" + FLOAT_RE + r")）:\n\s+(.*)",
        text,
    )
    if match:
        result["final_length"] = result.get("final_length") or int(match.group(1))
        result["final_syn_rate"] = float(match.group(2))
        result["final_sequence"] = result.get("final_sequence") or match.group(3).strip()
    else:
        result["final_syn_rate"] = None
        result["final_length"] = result.get("final_length")
        result["final_sequence"] = result.get("final_sequence")

    match = re.search(r"总运行时间: (" + FLOAT_RE + r") 秒", text)
    result["reported_runtime_s"] = float(match.group(1)) if match else None

    result["iter_count"] = len(re.findall(r"\[iter\s+\d+/\d+\]", text))
    return result


def safe_metric(row: Dict[str, Any], key: str, default: float = math.inf) -> float:
    """排序时把缺失值统一当作无穷大，避免比较时报错。"""
    value = row.get(key)
    return default if value is None else value


def format_value(value: Any, digits: int = 4, none_text: str = "NA") -> str:
    """把数值格式化成报告里的统一文本。"""
    if value is None:
        return none_text
    if isinstance(value, int):
        return str(value)
    if isinstance(value, float):
        return f"{value:.{digits}f}"
    return str(value)


def markdown_table(headers: List[str], rows: List[List[str]]) -> str:
    """生成一个简单的 Markdown 表格。"""
    lines = []
    lines.append("| " + " | ".join(headers) + " |")
    lines.append("| " + " | ".join(["---"] * len(headers)) + " |")
    for row in rows:
        lines.append("| " + " | ".join(row) + " |")
    return "\n".join(lines)


def _manifest_result_summary(manifest: Dict[str, Any]) -> Dict[str, Any]:
    result_summary = manifest.get("result_summary")
    return result_summary if isinstance(result_summary, dict) else {}


def _manifest_reproducibility(manifest: Dict[str, Any]) -> Dict[str, Any]:
    reproducibility = manifest.get("reproducibility")
    return reproducibility if isinstance(reproducibility, dict) else {}


def _manifest_runner_context(manifest: Dict[str, Any]) -> Dict[str, Any]:
    runner_context = manifest.get("runner_context")
    return runner_context if isinstance(runner_context, dict) else {}


def _copy_missing_fields(row: Dict[str, Any], fallback: Dict[str, Any]) -> None:
    for key, value in fallback.items():
        if key not in row or row[key] is None:
            row[key] = value


def _copy_preferred_fields(row: Dict[str, Any], preferred: Dict[str, Any]) -> None:
    for key, value in preferred.items():
        if value is not None:
            row[key] = value


def _normalize_log_compat_fields(row: Dict[str, Any]) -> None:
    """把旧日志解析字段补齐到新的 summary 字段名上。"""
    for split in ("search_train", "validation", "test"):
        pct_key = f"{split}_worsen_pct"
        rate_key = f"{split}_worsen_rate"
        if row.get(rate_key) is None and row.get(pct_key) is not None:
            row[rate_key] = float(row[pct_key]) / 100.0
    if row.get("final_length_effective") is None and row.get("final_length") is not None:
        row["final_length_effective"] = row.get("final_length")
    if row.get("final_length_raw") is None and row.get("final_length") is not None:
        row["final_length_raw"] = row.get("final_length")


def collect_rows(
    latest_only: bool = True,
    include_run_ids: Optional[Iterable[str]] = None,
) -> List[Dict[str, Any]]:
    """
    扫描所有 manifest，并和对应日志拼成汇总行。

    默认只保留每个实验名字的“最新一次运行”，这样更适合实验阶段查看。
    如果需要保留所有历史运行，可通过 CLI 关闭该行为。
    """
    rows: List[Dict[str, Any]] = []
    include_run_id_set: Optional[Set[str]] = (
        {str(item) for item in include_run_ids} if include_run_ids is not None else None
    )

    for manifest_path in sorted(MANIFESTS_DIR.glob("*.json")):
        manifest = load_manifest(manifest_path)
        if "run_id" not in manifest or "control_env" not in manifest:
            continue
        run_id = str(manifest.get("run_id"))
        if include_run_id_set is not None and run_id not in include_run_id_set:
            continue

        log_path_value = manifest.get("log_path")
        log_path = Path(log_path_value) if log_path_value else None
        parsed = {}
        if log_path and log_path.is_file():
            parsed = parse_log(log_path.read_text(encoding="utf-8", errors="replace"))

        control_env = manifest.get("control_env") or {}
        reproducibility = _manifest_reproducibility(manifest)
        result_summary = _manifest_result_summary(manifest)
        runner_context = _manifest_runner_context(manifest)
        wall_runtime_s = manifest.get("wall_runtime_s")
        if wall_runtime_s is None:
            wall_runtime_s = parsed.get("reported_runtime_s")
        row: Dict[str, Any] = {
            "run_id": run_id,
            "name": manifest.get("name"),
            "group": manifest.get("group"),
            "description": manifest.get("description"),
            "changed": manifest.get("effective_overrides") or manifest.get("changed"),
            "objective_kind": control_env.get("OBJECTIVE_KIND", "instrcount"),
            "objective_baseline": control_env.get("OBJECTIVE_BASELINE", "oz"),
            "backend_opt_level": control_env.get("BACKEND_OPT_LEVEL"),
            "loop_nesting_policy": control_env.get("LOOP_NESTING_POLICY"),
            "feature_mode": control_env.get("FEATURE_MODE"),
            "experiment_seed": control_env.get("EXPERIMENT_SEED"),
            "split_seed": control_env.get("SPLIT_SEED"),
            "runner_kind": runner_context.get("runner_kind", "single"),
            "batch_id": runner_context.get("batch_id"),
            "batch_index": runner_context.get("batch_index"),
            "batch_size": runner_context.get("batch_size"),
            "started_at": manifest.get("started_at"),
            "finished_at": manifest.get("finished_at"),
            "wall_runtime_s": wall_runtime_s,
            "exit_code": manifest.get("exit_code"),
            "log_path": str(log_path) if log_path else None,
            "manifest_path": str(manifest_path),
        }
        row.update(parsed)
        _copy_missing_fields(row, reproducibility)
        _copy_preferred_fields(row, result_summary)
        _normalize_log_compat_fields(row)
        rows.append(row)

    if latest_only:
        latest_rows: Dict[str, Dict[str, Any]] = {}
        for row in rows:
            name = f"{row.get('name')}::{row.get('runner_kind')}::{row.get('experiment_seed')}::{row.get('split_seed')}"
            current = latest_rows.get(name)
            if current is None or str(row.get("started_at", "")) > str(current.get("started_at", "")):
                latest_rows[name] = row
        rows = list(latest_rows.values())

    rows.sort(
        key=lambda row: (
            safe_metric(row, "validation_obj"),
            safe_metric(row, "test_obj"),
            str(row.get("name")),
        )
    )
    return rows


def write_csv(path: Path, rows: List[Dict[str, Any]], fieldnames: List[str]) -> None:
    """写出机器可读的汇总 CSV。"""
    with path.open("w", newline="", encoding="utf-8") as file_obj:
        writer = csv.DictWriter(file_obj, fieldnames=fieldnames, extrasaction="ignore")
        writer.writeheader()
        for row in rows:
            writer.writerow(row)


def build_markdown_report(rows: List[Dict[str, Any]], latest_only: bool) -> str:
    """
    生成一份适合人工阅读的 Markdown 汇总。

    这里不追求写成“大报告”，而是尽量让你能在几秒钟内看懂：
    - 跑了哪些实验
    - 哪组效果最好
    - 关键指标大概是什么
    """
    lines: List[str] = []
    lines.append("# RFunipassLab Summary")
    lines.append("")
    lines.append(f"- Generated at: `{datetime.now().isoformat(timespec='seconds')}`")
    lines.append(f"- Row policy: `{'latest-per-experiment-seed' if latest_only else 'all-runs'}`")
    lines.append(f"- Total rows: `{len(rows)}`")
    lines.append("")

    if not rows:
        lines.append("No manifest/log pairs were found.")
        return "\n".join(lines) + "\n"

    best_row = rows[0]
    lines.append("## Best Result by Validation Objective")
    lines.append("")
    lines.append(
        f"- Best experiment: `{best_row['name']}` "
        f"(group=`{best_row['group']}`, "
        f"objective=`{best_row.get('objective_kind')}/{best_row.get('objective_baseline')}`, "
        f"seed=`{format_value(best_row.get('experiment_seed'), digits=0)}`, "
        f"split_seed=`{format_value(best_row.get('split_seed'), digits=0)}`, "
        f"loop=`{best_row.get('loop_nesting_policy')}`, "
        f"validation_obj=`{format_value(best_row.get('validation_obj'))}`, "
        f"test_obj=`{format_value(best_row.get('test_obj'))}`)"
    )
    lines.append("")

    top_rows: List[List[str]] = []
    for index, row in enumerate(rows[:10], start=1):
        top_rows.append(
            [
                str(index),
                str(row.get("name")),
                str(row.get("group")),
                format_value(row.get("experiment_seed"), digits=0),
                format_value(row.get("split_seed"), digits=0),
                str(row.get("objective_baseline")),
                str(row.get("loop_nesting_policy")),
                format_value(row.get("validation_obj")),
                format_value(row.get("test_obj")),
                format_value(row.get("search_train_obj")),
                format_value(row.get("final_length_effective"), digits=0),
                format_value(row.get("wall_runtime_s"), digits=2),
                str(row.get("exit_code")),
            ]
        )

    lines.append("## Top 10")
    lines.append("")
    lines.append(
        markdown_table(
            ["Rank", "Name", "Group", "Seed", "Split", "Baseline", "Loop", "Val Obj", "Test Obj", "Train Obj", "Len", "Runtime(s)", "Exit"],
            top_rows,
        )
    )
    lines.append("")

    full_rows: List[List[str]] = []
    for row in rows:
        full_rows.append(
            [
                str(row.get("name")),
                str(row.get("group")),
                format_value(row.get("experiment_seed"), digits=0),
                format_value(row.get("split_seed"), digits=0),
                str(row.get("selection_split")),
                format_value(row.get("search_train_count"), digits=0),
                format_value(row.get("validation_count"), digits=0),
                format_value(row.get("test_count"), digits=0),
                str(row.get("loop_nesting_policy")),
                str(row.get("backend_opt_level")),
                str(row.get("objective_baseline")),
                format_value(row.get("validation_obj")),
                format_value(row.get("test_obj")),
                format_value(row.get("search_train_obj")),
                format_value(row.get("validation_worsen_rate"), digits=4),
                format_value(row.get("test_worsen_rate"), digits=4),
                format_value(row.get("final_length_effective"), digits=0),
                format_value(row.get("wall_runtime_s"), digits=2),
                str(row.get("log_path")),
            ]
        )

    lines.append("## All Rows")
    lines.append("")
    lines.append(
        markdown_table(
            ["Name", "Group", "Seed", "Split", "SelSplit", "SearchN", "ValN", "TestN", "Loop", "Backend", "Baseline", "Val Obj", "Test Obj", "Train Obj", "Val Worse", "Test Worse", "Len", "Runtime(s)", "Log"],
            full_rows,
        )
    )
    lines.append("")
    return "\n".join(lines)


def write_summary(
    latest_only: bool = True,
    *,
    include_run_ids: Optional[Iterable[str]] = None,
    output_prefix: str = "summary",
) -> Dict[str, Path]:
    """
    生成并写出汇总文件。

    返回值是一个小字典，便于调用者在终端打印输出路径。
    """
    ensure_layout()

    rows = collect_rows(latest_only=latest_only, include_run_ids=include_run_ids)
    csv_path = REPORTS_DIR / f"{output_prefix}.csv"
    md_path = REPORTS_DIR / f"{output_prefix}.md"

    fieldnames = [
        "run_id",
        "name",
        "group",
        "description",
        "changed",
        "runner_kind",
        "batch_id",
        "batch_index",
        "batch_size",
        "experiment_seed",
        "split_seed",
        "objective_kind",
        "objective_baseline",
        "backend_opt_level",
        "loop_nesting_policy",
        "feature_mode",
        "started_at",
        "finished_at",
        "wall_runtime_s",
        "exit_code",
        "selection_split",
        "selection_objective",
        "search_train_count",
        "validation_count",
        "test_count",
        "search_train_signature",
        "validation_signature",
        "test_signature",
        "search_train_obj",
        "search_train_mean",
        "search_train_worsen_rate",
        "validation_obj",
        "validation_mean",
        "validation_worsen_rate",
        "test_obj",
        "test_mean",
        "test_worsen_rate",
        "final_length_effective",
        "final_length_raw",
        "iter_count",
        "log_path",
        "manifest_path",
        "final_pipeline_effective",
    ]

    write_csv(csv_path, rows, fieldnames)
    md_path.write_text(build_markdown_report(rows, latest_only=latest_only), encoding="utf-8")
    return {"csv": csv_path, "md": md_path}


def build_arg_parser() -> argparse.ArgumentParser:
    """构建命令行参数。"""
    parser = argparse.ArgumentParser(description="Summarize existing RFunipassLab results.")
    parser.add_argument(
        "--all-runs",
        action="store_true",
        help="Include all historical runs instead of keeping only the latest run for each experiment name.",
    )
    parser.add_argument(
        "--prefix",
        default="summary",
        help="Output filename prefix under results/reports/.",
    )
    return parser


def main() -> int:
    """CLI 主入口。"""
    parser = build_arg_parser()
    args = parser.parse_args()

    outputs = write_summary(latest_only=not args.all_runs, output_prefix=args.prefix)
    print(f"[summary] csv={outputs['csv']}")
    print(f"[summary] md={outputs['md']}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
