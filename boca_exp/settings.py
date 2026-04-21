"""环境变量驱动的实验超参数。"""

import os
import random

import numpy as np

# 保持与原实验脚本一致的随机种子，避免这次重构意外改变结果分布。
random.seed(456)
np.random.seed(456)

# BO / 调度超参数
iters = int(os.environ.get('ITERS', 200))
begin2end = int(os.environ.get('RUNS', 1))
decay = float(os.environ.get('DECAY', 0.5))
scale = float(os.environ.get('SCALE', 10))
offset = float(os.environ.get('OFFSET', 20))

# GA 超参数
GA_POP_SIZE = int(os.environ.get('GA_POP', 200))
GA_GENERATIONS = int(os.environ.get('GA_GEN', 5))
GA_MUTATE_RATE = float(os.environ.get('GA_MUT', 0.8))
GA_ELITE_RATIO = float(os.environ.get('GA_ELITE', 0.1))
GA_TOURNAMENT_K = int(os.environ.get('GA_TOUR', 3))
MAX_SEQ_LEN = int(os.environ.get('MAX_SEQ_LEN', 120))

# 数据划分超参数
VAL_RATIO = float(os.environ.get('VAL_RATIO', 0.5))
MIN_VAL_PROGRAMS = int(os.environ.get('MIN_VAL_PROGRAMS', 5))
INITIAL_SEED_TOPK = int(os.environ.get('SEED_TOPK', 0))

# 多目标权重
OBJ_WORSEN_WEIGHT = float(os.environ.get('OBJ_WORSEN_W', 0.15))
OBJ_HIGHVAR_WEIGHT = float(os.environ.get('OBJ_HIGHVAR_W', 0.0))

# 特征编码模式
FEATURE_MODE = os.environ.get('FEATURE_MODE', 'full').strip().lower()

# 目标与数据池模式
def normalize_objective_baseline(value=None):
    """把目标函数基准规范化为内部名字。"""
    raw_value = 'oz' if value is None else str(value).strip().lower()
    aliases = {
        'oz': 'oz',
        '-oz': 'oz',
        'default<oz>': 'oz',
        'o3': 'o3',
        '-o3': 'o3',
        'default<o3>': 'o3',
    }
    try:
        return aliases[raw_value]
    except KeyError as exc:
        raise ValueError(
            f"OBJECTIVE_BASELINE must be one of: oz, o3; got {value!r}"
        ) from exc


def objective_baseline_pipeline(value=None):
    """返回目标函数基准对应的 opt pipeline 标志。"""
    baseline = normalize_objective_baseline(value)
    return {'oz': '-Oz', 'o3': '-O3'}[baseline]


def objective_baseline_label(value=None):
    """返回目标函数基准的人类可读标签。"""
    return objective_baseline_pipeline(value)


OBJECTIVE_KIND = os.environ.get('OBJECTIVE_KIND', 'instrcount').strip().lower()
OBJECTIVE_BASELINE = normalize_objective_baseline(os.environ.get('OBJECTIVE_BASELINE', 'oz'))
OBJECTIVE_BASELINE_PIPELINE = objective_baseline_pipeline(OBJECTIVE_BASELINE)
OBJECTIVE_BASELINE_LABEL = objective_baseline_label(OBJECTIVE_BASELINE)
PROGRAM_POOL_KIND = os.environ.get('PROGRAM_POOL_KIND', 'auto').strip().lower()

# LLVM 工具路径
llvm_tools_path = os.environ.get('LLVM_TOOLS_PATH', '/root/opt/rv64gc_llvm_21/bin')
BACKEND_OPT_LEVEL = os.environ.get('BACKEND_OPT_LEVEL', '-O0').strip()

# runtime 目标相关参数
RUNTIME_TIMEOUT_SEC = float(os.environ.get('RUNTIME_TIMEOUT_SEC', 2.0))
RUNTIME_SAMPLES = int(os.environ.get('RUNTIME_SAMPLES', 5))
RUNTIME_TARGET_SAMPLE_MS = float(os.environ.get('RUNTIME_TARGET_SAMPLE_MS', 30.0))
RUNTIME_MAX_VARIANCE_PCT = float(os.environ.get('RUNTIME_MAX_VARIANCE_PCT', 10.0))
RUNTIME_EVAL_MAX_VARIANCE_PCT = float(os.environ.get('RUNTIME_EVAL_MAX_VARIANCE_PCT', 15.0))
RUNTIME_MAX_INNER_REPEATS = int(os.environ.get('RUNTIME_MAX_INNER_REPEATS', 64))
RUNTIME_REQUIRED_ROWS = int(os.environ.get('RUNTIME_REQUIRED_ROWS', 0))
REBUILD_RUNTIME_MANIFEST = os.environ.get('REBUILD_RUNTIME_MANIFEST', '').strip().lower() in {
    '1', 'true', 'yes', 'on'
}
