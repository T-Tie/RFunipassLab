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

# 特征编码模式
#
# 目前保留两种模式：
# - full: 原始完整版特征，尽量保留更多顺序/协同细节
# - lite: 实验版轻量特征，用更少维度表达序列结构
#
# 这里故意只用一个简单字符串开关，不引入额外配置系统，
# 这样做消融实验时最直接。
FEATURE_MODE = os.environ.get('FEATURE_MODE', 'full').strip().lower()

# LLVM 工具路径
llvm_tools_path = os.environ.get('LLVM_TOOLS_PATH', '/root/opt/rv64gc_llvm_21/bin')
