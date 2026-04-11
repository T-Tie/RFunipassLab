"""
RFunipassLab 的集中配置入口。

这个文件故意做得很“朴素”：

1. 路径定义放在这里，方便所有脚本统一引用；
2. 默认实验参数放在这里，方便统一修改；
3. 预设实验列表放在这里，方便做快速 sweep；
4. 只做轻量级校验，不引入复杂 schema 系统。

对当前阶段来说，这样的组织方式已经足够支撑：

- 单实验复现
- 小规模超参数对比
- 论文实验记录
- 日志与结果汇总
"""

from __future__ import annotations

import os
from pathlib import Path
from typing import Any, Dict, Iterable, List, Optional


# ---------------------------------------------------------------------------
# 基础路径定义
# ---------------------------------------------------------------------------
#
# 这里假设当前目录结构为：
#
# /root/exp/
# ├── RFunipass/
# └── RFunipassLab/
#
# 因此只需要取当前目录的上一级，就可以稳定地找到目标项目目录。
LAB_ROOT = Path(__file__).resolve().parent
WORKSPACE_ROOT = LAB_ROOT.parent
TARGET_PROJECT_DIR = LAB_ROOT
TARGET_SCRIPT = TARGET_PROJECT_DIR / "boca.py"
REFERENCE_PROJECT_DIR = WORKSPACE_ROOT / "RFunipass"

# 所有新产物都只写在 RFunipassLab 自己的目录里。
RESULTS_DIR = LAB_ROOT / "results"
LOGS_DIR = RESULTS_DIR / "logs"
MANIFESTS_DIR = RESULTS_DIR / "manifests"
REPORTS_DIR = RESULTS_DIR / "reports"


# ---------------------------------------------------------------------------
# 默认环境变量
# ---------------------------------------------------------------------------
#
# 这些参数直接映射到 RFunipassLab/boca.py 中已经保留的环境变量读取逻辑。
# 这样做的好处是：
#
# 1. 不需要改 boca.py；
# 2. 不需要新造一套配置协议；
# 3. 当前实验脚本仍尽量保持与原项目参数语义兼容。
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
}


# ---------------------------------------------------------------------------
# 预设实验列表
# ---------------------------------------------------------------------------
#
# 这里故意只放少量“代表性实验”，避免把实验框架本身做得太重。
# 后续如果你要扩展 sweep，只需要继续往这个列表中追加 dict 即可。
#
# 每个实验包含四个字段：
# - name:        实验的唯一名字，会进入日志/manifest 文件名
# - group:       实验分组，主要用于汇总报告中分类展示
# - description: 人类可读说明，便于回忆这个实验想验证什么
# - overrides:   只写和 BASE_ENV 不同的项
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
        "overrides": {"FEATURE_MODE": "lite",
                    "TRAIN_TOPK": "200",
                    "TEST_TOPK": "50",
                    "SEED_TOPK": "0",
                    "MIN_VAL_PROGRAMS": "5",
                    "ITERS": "200",
                    "VAL_RATIO": "0.5",
                    "GA_POP": "200",
                    "GA_GEN": "5",
                    "MAX_SEQ_LEN": "120",},
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
    "overrides": {
        "TRAIN_TOPK": "200",
        "TEST_TOPK": "50",
        "SEED_TOPK": "0",
        "MIN_VAL_PROGRAMS": "5",
        "ITERS": "200",
        "VAL_RATIO": "0.5",
        "GA_POP": "200",
        "GA_GEN": "5",
        "MAX_SEQ_LEN": "120",
    },
},

]


# ---------------------------------------------------------------------------
# 简单数值校验规则
# ---------------------------------------------------------------------------
#
# 我们不引入重量级 schema 工具，但依然希望在“运行前”拦住明显错误。
# 这类轻量规则已经足以避免大多数实验配置写错的问题。
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
}


# 这类字符串开关不需要复杂 schema，
# 但仍然值得在运行前做一次显式检查。
CHOICE_RULES: Dict[str, set[str]] = {
    "FEATURE_MODE": {"full", "lite"},
}


def ensure_layout() -> None:
    """
    创建实验框架自己的输出目录。

    这里不接触 RFunipass 目录内的任何文件或文件夹，
    以满足“只新增、不修改原项目”的约束。
    """
    for path in (RESULTS_DIR, LOGS_DIR, MANIFESTS_DIR, REPORTS_DIR):
        path.mkdir(parents=True, exist_ok=True)


def describe_overrides(overrides: Dict[str, str]) -> str:
    """
    把覆盖项转成简洁的文本描述，便于写入 manifest 和报告。

    例如：
        {"VAL_RATIO": "0.2", "RNUM": "128"}
    会变成：
        "RNUM=128, VAL_RATIO=0.2"
    """
    if not overrides:
        return "baseline"
    return ", ".join(f"{key}={overrides[key]}" for key in sorted(overrides))


def list_experiments() -> List[Dict[str, Any]]:
    """
    返回实验列表的浅拷贝，并补充 `changed` 字段。

    这样上层脚本可以直接使用这个列表，而不必重复拼接说明文字。
    """
    experiments: List[Dict[str, Any]] = []
    for item in EXPERIMENTS:
        copied = dict(item)
        copied["overrides"] = dict(item["overrides"])
        copied["changed"] = describe_overrides(copied["overrides"])
        experiments.append(copied)
    return experiments


def get_experiment(name: str) -> Dict[str, Any]:
    """
    按名字获取单个实验配置。

    如果名字写错，直接抛出异常，让调用方尽早失败。
    """
    for experiment in list_experiments():
        if experiment["name"] == name:
            return experiment
    available = ", ".join(available_experiment_names())
    raise KeyError(f"Unknown experiment '{name}'. Available experiments: {available}")


def available_experiment_names() -> List[str]:
    """返回所有实验名字，主要给 CLI 的帮助信息使用。"""
    return [item["name"] for item in EXPERIMENTS]


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
    """
    生成传给 subprocess 的完整环境变量。

    这里会保留当前 shell 中已有的 PATH / HOME / PYTHONPATH 等变量，
    然后再叠加实验需要控制的参数。
    """
    env = os.environ.copy()
    env.update(control_env)
    return env


def validate_env(env: Dict[str, str]) -> None:
    """
    对实验参数做非常轻量的校验。

    这个函数的设计目标不是“面面俱到”，而是把最常见、最浪费时间的错误挡在运行之前。
    例如：
    - 本来应为整数的参数写成了字符串文字
    - 本来应在 [0, 1] 的比例参数被写成了 1.5
    - 关键脚本路径不存在
    """
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

    # 下面补充几条跨字段或“更接近语义”的检查。
    #
    # 虽然它们也不复杂，但能显著降低因为配置手误导致的无效实验。
    val_ratio = float(env["VAL_RATIO"])
    if not 0.0 < val_ratio < 1.0:
        raise ValueError(f"VAL_RATIO should be inside (0, 1), got {val_ratio}")

    elite_ratio = float(env["GA_ELITE"])
    if elite_ratio >= 1.0:
        raise ValueError(f"GA_ELITE should be smaller than 1.0, got {elite_ratio}")


def format_env_block(env: Dict[str, str]) -> str:
    """
    把环境变量格式化成多行文本，便于：
    - 终端输出
    - 日志头部
    - manifest 调试
    """
    lines = []
    for key in sorted(env):
        lines.append(f"{key}={env[key]}")
    return "\n".join(lines)


def iter_selected_experiments(names: Optional[Iterable[str]] = None) -> List[Dict[str, Any]]:
    """
    根据名字筛选要运行的实验。

    - names 为空时，返回全部预设实验；
    - names 非空时，按给定顺序返回对应实验。

    这样可以让 run_sweep.py 很容易支持“全量跑”和“只跑其中几个”两种模式。
    """
    if not names:
        return list_experiments()
    return [get_experiment(name) for name in names]
