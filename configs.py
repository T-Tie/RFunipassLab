"""
RFunipassLab 的集中配置入口。

这个文件故意保持“实验级”而不是“平台级”：

1. 路径定义放在这里，方便所有脚本统一引用；
2. 默认实验参数放在这里，方便统一修改；
3. 预设实验列表放在这里，方便做快速 sweep；
4. 只做轻量级校验，不引入复杂 schema 系统。

本次新增 runtime 目标后，配置仍然遵循同一个原则：
搜索方法、特征、GA/RF 参数继续复用；只通过 OBJECTIVE_KIND 和
PROGRAM_POOL_KIND 切换“评估目标”和“程序池来源”。
"""

from __future__ import annotations

import os
from pathlib import Path
from typing import Any, Dict, Iterable, List, Optional

from boca_exp.paths import (
    default_result_json_path,
    ensure_results_layout as ensure_objective_results_layout,
    normalize_objective_kind,
)


# ---------------------------------------------------------------------------
# 基础路径定义
# ---------------------------------------------------------------------------
LAB_ROOT = Path(__file__).resolve().parent
WORKSPACE_ROOT = LAB_ROOT.parent
TARGET_PROJECT_DIR = LAB_ROOT
TARGET_SCRIPT = TARGET_PROJECT_DIR / "boca.py"
REFERENCE_PROJECT_DIR = WORKSPACE_ROOT / "RFunipass"

# 这些仍然是 run_one/run_sweep 自己的外层记录目录。
# 真正的结构化实验 result json 会按 objective 另写到：
# - results/instrcount/summaries/
# - results/runtime/summaries/
RESULTS_DIR = LAB_ROOT / "results"
LOGS_DIR = RESULTS_DIR / "logs"
MANIFESTS_DIR = RESULTS_DIR / "manifests"
REPORTS_DIR = RESULTS_DIR / "reports"


# ---------------------------------------------------------------------------
# 默认环境变量
# ---------------------------------------------------------------------------
BASE_ENV: Dict[str, str] = {
    "RUNS": "1",
    "TRAIN_TOPK": "20",
    "TEST_TOPK": "40",
    "SEED_TOPK": "20",
    "MIN_VAL_PROGRAMS": "4",
    "ITERS": "6",
    "VAL_RATIO": "0.3",
    "OBJ_WORSEN_W": "0.15",
    "GA_POP": "30",
    "GA_GEN": "3",
    "GA_MUT": "0.8",
    "GA_ELITE": "0.1",
    "GA_TOUR": "3",
    "MAX_SEQ_LEN": "60",
    "RNUM": "256",
    "DECAY": "0.5",
    "SCALE": "10",
    "OFFSET": "20",
    "FEATURE_MODE": "full",
    # 目标切换：默认仍保持旧的指令数目标，保证兼容性。
    "OBJECTIVE_KIND": "instrcount",
    "PROGRAM_POOL_KIND": "auto",
    # runtime 目标编译可执行文件时的后端优化等级。
    # 默认 -O0 是为了让测到的变化主要来自待评估 pass 序列，而不是额外后端优化。
    "BACKEND_OPT_LEVEL": "-O0",
    "RUNTIME_TIMEOUT_SEC": "2.0",
    "RUNTIME_SAMPLES": "5",
    "RUNTIME_TARGET_SAMPLE_MS": "30.0",
    "RUNTIME_MAX_VARIANCE_PCT": "10.0",
    "RUNTIME_EVAL_MAX_VARIANCE_PCT": "15.0",
    "RUNTIME_MAX_INNER_REPEATS": "64",
    # 0 表示由 runner 自动取 max(TRAIN_TOPK + TEST_TOPK, SEED_TOPK)。
    "RUNTIME_REQUIRED_ROWS": "0",
}


def _orig_boca_overrides() -> Dict[str, str]:
    """原始 boca 参数的统一片段，避免多个预设复制后不一致。"""
    return {
        "TRAIN_TOPK": "200",
        "TEST_TOPK": "50",
        "SEED_TOPK": "0",
        "MIN_VAL_PROGRAMS": "5",
        "ITERS": "200",
        "VAL_RATIO": "0.5",
        "GA_POP": "200",
        "GA_GEN": "5",
        "MAX_SEQ_LEN": "120",
    }


# ---------------------------------------------------------------------------
# 预设实验列表
# ---------------------------------------------------------------------------
EXPERIMENTS: List[Dict[str, Any]] = [
    {
        "name": "baseline",
        "group": "baseline",
        "description": "参考基线配置，不覆盖任何默认参数。",
        "overrides": {},
    },
    {
        "name": "feature_lite",
        "group": "feature_ablation",
        "description": "切换到 Lite 特征编码，保留其余搜索流程不变。",
        "overrides": {
            "FEATURE_MODE": "lite",
            **_orig_boca_overrides(),
        },
    },
    {
        "name": "valratio_020",
        "group": "validation_split",
        "description": "减小验证集占比，观察搜索样本更充足时的表现。",
        "overrides": {"VAL_RATIO": "0.2"},
    },
    {
        "name": "rnum_128",
        "group": "exploration",
        "description": "减小候选扩展规模，测试较保守探索是否更稳。",
        "overrides": {"RNUM": "128"},
    },
    {
        "name": "objw_000",
        "group": "objective",
        "description": "去掉 worsen_rate 惩罚，单独观察平均效果驱动。",
        "overrides": {"OBJ_WORSEN_W": "0.0"},
    },
    {
        "name": "combo_explore",
        "group": "combo",
        "description": "更激进的探索设置，用于做一个组合对照。",
        "overrides": {
            "RNUM": "512",
            "GA_MUT": "1.0",
            "GA_POP": "60",
            "MAX_SEQ_LEN": "90",
        },
    },
    {
        "name": "orig_boca",
        "group": "reproduce",
        "description": "复现原始 RFunipass/boca.py 默认实验参数。",
        "overrides": _orig_boca_overrides(),
    },
    {
        "name": "instr_runtime_pool",
        "group": "runtime_compare",
        "description": "仍以指令数为目标，但只在 runtime-evaluable 子集上搜索，便于公平对照。",
        "overrides": {
            "PROGRAM_POOL_KIND": "runtime",
            **_orig_boca_overrides(),
        },
    },
    {
        "name": "runtime_baseline",
        "group": "runtime",
        "description": "把优化目标切换为实际运行时间，搜索/选择流程与 orig_boca 尽量保持一致。",
        "overrides": {
            "OBJECTIVE_KIND": "runtime",
            "PROGRAM_POOL_KIND": "runtime",
            "BACKEND_OPT_LEVEL": "-O0",
            **_orig_boca_overrides(),
        },
    },
    {
        "name": "runtime_feature_lite",
        "group": "runtime_feature_ablation",
        "description": "运行时间目标 + Lite 特征编码，用于分析轻量特征对时间目标的影响。",
        "overrides": {
            "OBJECTIVE_KIND": "runtime",
            "PROGRAM_POOL_KIND": "runtime",
            "FEATURE_MODE": "lite",
            "BACKEND_OPT_LEVEL": "-O0",
            **_orig_boca_overrides(),
        },
    },
]


# ---------------------------------------------------------------------------
# 简单数值校验规则
# ---------------------------------------------------------------------------
NUMERIC_RULES: Dict[str, Dict[str, Any]] = {
    "RUNS": {"type": int, "min": 1},
    "TRAIN_TOPK": {"type": int, "min": 1},
    "TEST_TOPK": {"type": int, "min": 1},
    "SEED_TOPK": {"type": int, "min": 0},
    "MIN_VAL_PROGRAMS": {"type": int, "min": 1},
    "ITERS": {"type": int, "min": 1},
    "VAL_RATIO": {"type": float, "min": 0.0, "max": 1.0},
    "OBJ_WORSEN_W": {"type": float, "min": 0.0},
    "GA_POP": {"type": int, "min": 1},
    "GA_GEN": {"type": int, "min": 1},
    "GA_MUT": {"type": float, "min": 0.0, "max": 1.0},
    "GA_ELITE": {"type": float, "min": 0.0, "max": 1.0},
    "GA_TOUR": {"type": int, "min": 1},
    "MAX_SEQ_LEN": {"type": int, "min": 1},
    "RNUM": {"type": int, "min": 1},
    "DECAY": {"type": float, "min": 0.0},
    "SCALE": {"type": float, "min": 0.0},
    "OFFSET": {"type": float, "min": 0.0},
    "RUNTIME_TIMEOUT_SEC": {"type": float, "min": 0.1},
    "RUNTIME_SAMPLES": {"type": int, "min": 1},
    "RUNTIME_TARGET_SAMPLE_MS": {"type": float, "min": 0.0},
    "RUNTIME_MAX_VARIANCE_PCT": {"type": float, "min": 0.0},
    "RUNTIME_EVAL_MAX_VARIANCE_PCT": {"type": float, "min": 0.0},
    "RUNTIME_MAX_INNER_REPEATS": {"type": int, "min": 1},
    "RUNTIME_REQUIRED_ROWS": {"type": int, "min": 0},
}


CHOICE_RULES: Dict[str, set[str]] = {
    "FEATURE_MODE": {"full", "lite"},
    "OBJECTIVE_KIND": {"instrcount", "runtime"},
    "PROGRAM_POOL_KIND": {"auto", "tuning", "runtime"},
}


def ensure_layout() -> None:
    """
    创建实验框架自己的输出目录。

    `results/logs` 与 `results/manifests` 仍用于 run_one 外层记录；
    `boca_exp.paths.ensure_results_layout()` 会额外创建：
      - results/instrcount/summaries
      - results/runtime/summaries
      - results/runtime/manifests/cache
    """
    ensure_objective_results_layout()
    for path in (RESULTS_DIR, LOGS_DIR, MANIFESTS_DIR, REPORTS_DIR):
        path.mkdir(parents=True, exist_ok=True)


def default_result_path_for_run(run_id: str, control_env: Dict[str, str]) -> Path:
    """根据 objective kind 生成本次运行的结构化 result json 路径。"""
    objective_kind = normalize_objective_kind(control_env.get("OBJECTIVE_KIND", "instrcount"))
    return default_result_json_path(objective_kind, run_id)


def describe_overrides(overrides: Dict[str, str]) -> str:
    """把覆盖项转成简洁的文本描述，便于写入 manifest 和报告。"""
    if not overrides:
        return "baseline"
    return ", ".join(f"{key}={overrides[key]}" for key in sorted(overrides))


def list_experiments() -> List[Dict[str, Any]]:
    """返回实验列表的浅拷贝，并补充 `changed` 字段。"""
    experiments: List[Dict[str, Any]] = []
    for item in EXPERIMENTS:
        copied = dict(item)
        copied["overrides"] = dict(item["overrides"])
        copied["changed"] = describe_overrides(copied["overrides"])
        experiments.append(copied)
    return experiments


def available_experiment_names() -> List[str]:
    """返回所有实验名字，主要给 CLI 的帮助信息使用。"""
    return [item["name"] for item in EXPERIMENTS]


def get_experiment(name: str) -> Dict[str, Any]:
    """按名字获取单个实验配置。"""
    for experiment in list_experiments():
        if experiment["name"] == name:
            return experiment
    available = ", ".join(available_experiment_names())
    raise KeyError(f"Unknown experiment '{name}'. Available experiments: {available}")


def resolve_control_env(overrides: Optional[Dict[str, str]] = None) -> Dict[str, str]:
    """
    生成“实验真正关心”的环境变量集合。

    注意这里不把整个系统环境也混进来，是因为：
    - manifest 只需要记录受实验控制的参数；
    - 这样输出更干净，也更利于复现。
    """
    env = dict(BASE_ENV)
    if overrides:
        env.update(overrides)
    validate_env(env)
    return env


def build_process_env(control_env: Dict[str, str]) -> Dict[str, str]:
    """生成传给 subprocess 的完整环境变量。"""
    env = os.environ.copy()
    env.update(control_env)
    return env


def validate_env(env: Dict[str, str]) -> None:
    """对实验参数做轻量校验，把常见手误挡在运行前。"""
    if not TARGET_PROJECT_DIR.exists():
        raise FileNotFoundError(f"Target project directory not found: {TARGET_PROJECT_DIR}")
    if not TARGET_SCRIPT.exists():
        raise FileNotFoundError(f"Target script not found: {TARGET_SCRIPT}")

    for key, rule in NUMERIC_RULES.items():
        if key not in env:
            continue
        raw_value = env[key]
        value_type = rule["type"]

        try:
            value = value_type(raw_value)
        except (TypeError, ValueError) as exc:
            raise ValueError(f"{key} must be a valid {value_type.__name__}, got {raw_value!r}") from exc

        min_value = rule.get("min")
        max_value = rule.get("max")
        if min_value is not None and value < min_value:
            raise ValueError(f"{key} must be >= {min_value}, got {value}")
        if max_value is not None and value > max_value:
            raise ValueError(f"{key} must be <= {max_value}, got {value}")

    for key, choices in CHOICE_RULES.items():
        if key not in env:
            continue
        value = str(env[key]).strip().lower()
        if value not in choices:
            expected = ", ".join(sorted(choices))
            raise ValueError(f"{key} must be one of: {expected}, got {env[key]!r}")

    val_ratio = float(env["VAL_RATIO"])
    if not 0.0 < val_ratio < 1.0:
        raise ValueError(f"VAL_RATIO should be inside (0, 1), got {val_ratio}")

    elite_ratio = float(env["GA_ELITE"])
    if elite_ratio >= 1.0:
        raise ValueError(f"GA_ELITE should be smaller than 1.0, got {elite_ratio}")

    objective_kind = str(env.get("OBJECTIVE_KIND", "instrcount")).strip().lower()
    pool_kind = str(env.get("PROGRAM_POOL_KIND", "auto")).strip().lower()
    if objective_kind == "runtime" and pool_kind == "tuning":
        raise ValueError(
            "OBJECTIVE_KIND=runtime cannot use PROGRAM_POOL_KIND=tuning; "
            "use auto or runtime so every program has a calibrated runtime harness."
        )


def format_env_block(env: Dict[str, str]) -> str:
    """把环境变量格式化成多行文本，便于终端输出、日志头部和 manifest 调试。"""
    lines = []
    for key in sorted(env):
        lines.append(f"{key}={env[key]}")
    return "\n".join(lines)


def iter_selected_experiments(names: Optional[Iterable[str]] = None) -> List[Dict[str, Any]]:
    """
    根据名字筛选要运行的实验。

    - names 为空时，返回全部预设实验；
    - names 非空时，按给定顺序返回对应实验。
    """
    if not names:
        return list_experiments()
    return [get_experiment(name) for name in names]
