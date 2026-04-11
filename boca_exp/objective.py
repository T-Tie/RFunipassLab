"""目标函数、评估指标与 EI 采集函数。"""

from __future__ import annotations

from concurrent.futures import ThreadPoolExecutor
import math

import numpy as np

from .runtime import get_instrcount
from .settings import MAX_SEQ_LEN, OBJ_WORSEN_WEIGHT, llvm_tools_path

def compose_multi_objective(metrics, pass_sequence):
    """
    把多个目标标量化为一个 BO 可直接优化的 objective。

    多目标组成：
      1. mean_norm   : 平均归一化指令数，越小越好
      2. worsen_rate : 相比 -Oz 变差的程序比例，越小越好

    直觉解释：
      - mean_norm 管“整体平均效果”
      - worsen_rate 管“鲁棒性/保守性”

    返回值越小越好。
    """
    return (
        metrics['mean_norm']
        + OBJ_WORSEN_WEIGHT * metrics['worsen_rate']
    )

def evaluate_sequence_metrics(programs, oz_values, pass_sequence):
    """
    在一组程序上评估一条 pass 序列，并返回详细统计。

    与旧版只返回一个平均值不同，这里同时返回多目标需要的多个指标：
      - mean_norm    : 平均归一化指令数
      - median_norm  : 中位数归一化指令数
      - worsen_rate  : 退化比例
      - improved/tied/worsened: 三类样本计数
      - objective    : 上述指标经加权后的标量化目标

    这样 BO 仍然优化一个标量 objective，
    但我们在日志、验证集选择、最终报告里都能看到完整画像。
    """
    if not programs:
        return {
            'count': 0,
            'mean_norm': float('inf'),
            'median_norm': float('inf'),
            'improved': 0,
            'tied': 0,
            'worsened': 0,
            'improved_rate': 0.0,
            'tie_rate': 0.0,
            'worsen_rate': 1.0,
            'len_ratio': len(pass_sequence) / max(MAX_SEQ_LEN, 1),
            'objective': float('inf'),
        }

    def eval_one(args):
        prog, oz = args
        with open(prog, 'r') as f:
            ll_code = f.read()
        try:
            count = get_instrcount(ll_code, pass_sequence, llvm_tools_path)
            ratio = count / oz if oz > 0 else float(count)
            return count, ratio
        except Exception as e:
            print(f"[Error] eval {prog}: {e}")
            return None, float('inf')

    with ThreadPoolExecutor() as executor:
        results = list(executor.map(eval_one, zip(programs, oz_values)))

    ratios = []
    improved = 0
    tied = 0
    worsened = 0

    for (count, ratio), oz in zip(results, oz_values):
        if ratio == float('inf'):
            # 出现异常时，把它视为“最坏情况”：既不让平均值乐观，也不让退化率乐观
            worsened += 1
            continue

        ratios.append(ratio)
        if oz > 0 and count < oz:
            improved += 1
        elif oz > 0 and count == oz:
            tied += 1
        else:
            worsened += 1

    if not ratios:
        return {
            'count': len(programs),
            'mean_norm': float('inf'),
            'median_norm': float('inf'),
            'improved': improved,
            'tied': tied,
            'worsened': max(worsened, len(programs)),
            'improved_rate': 0.0,
            'tie_rate': 0.0,
            'worsen_rate': 1.0,
            'len_ratio': len(pass_sequence) / max(MAX_SEQ_LEN, 1),
            'objective': float('inf'),
        }

    total = len(programs)
    metrics = {
        'count': total,
        'mean_norm': float(np.mean(ratios)),
        'median_norm': float(np.median(ratios)),
        'improved': improved,
        'tied': tied,
        'worsened': worsened,
        'improved_rate': improved / total,
        'tie_rate': tied / total,
        'worsen_rate': worsened / total,
        'len_ratio': len(pass_sequence) / max(MAX_SEQ_LEN, 1),
    }
    metrics['objective'] = compose_multi_objective(metrics, pass_sequence)
    return metrics

def get_objective_score(programs, oz_values, pass_sequence):
    """
    兼容性包装函数：返回多目标标量化后的 objective。

    之所以保留这个名字，是因为 GA / 消融 / Top-N 等旧逻辑很多地方都在调用它。
    现在它不再只表示“平均值”，而是表示“多目标合成后的 BO 优化目标”。
    """
    return evaluate_sequence_metrics(programs, oz_values, pass_sequence)['objective']

def get_ei(pred, eta):
    """
    计算 Expected Improvement。

    这里用 `math.erf` 实现标准正态的 CDF，避免把 `scipy` 变成硬依赖。
    对实验脚本来说，这样更轻，也更方便在不同环境里做消融和快速复现。
    """
    pred = np.array(pred).transpose(1, 0)
    m = np.mean(pred, axis=1)
    s = np.std(pred, axis=1)

    def calculate_f(std_values):
        z = (eta - m) / std_values
        cdf = 0.5 * (1.0 + np.vectorize(math.erf)(z / math.sqrt(2.0)))
        pdf = np.exp(-0.5 * np.square(z)) / math.sqrt(2.0 * math.pi)
        return (eta - m) * cdf + std_values * pdf

    if np.any(s == 0.0):
        s_copy = np.copy(s)
        s_safe = np.copy(s)
        s_safe[s_copy == 0.0] = 1.0
        f = calculate_f(s_safe)
        f[s_copy == 0.0] = 0.0
    else:
        f = calculate_f(s)

    return f
