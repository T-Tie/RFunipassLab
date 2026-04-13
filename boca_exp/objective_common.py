"""与具体目标无关的指标聚合与 EI 工具。"""

from __future__ import annotations

import math
import statistics

import numpy as np

from .settings import MAX_SEQ_LEN, OBJ_HIGHVAR_WEIGHT, OBJ_WORSEN_WEIGHT


def compose_multi_objective(
    metrics,
    pass_sequence,
    worsen_weight: float = OBJ_WORSEN_WEIGHT,
    highvar_weight: float = OBJ_HIGHVAR_WEIGHT,
):
    """把平均收益、退化率和高方差比例合成为单个 BO 目标。"""
    del pass_sequence
    return (
        metrics['mean_norm']
        + worsen_weight * metrics['worsen_rate']
        + highvar_weight * metrics.get('high_variance_rate', 0.0)
    )



def compose_metrics(
    programs,
    pass_sequence,
    ratios,
    improved,
    tied,
    worsened,
    per_program,
    invalid,
    *,
    high_variance: int = 0,
    max_seq_len: int = MAX_SEQ_LEN,
    worsen_weight: float = OBJ_WORSEN_WEIGHT,
    highvar_weight: float = OBJ_HIGHVAR_WEIGHT,
):
    """把逐程序观测汇总成统一的 metrics 字典。"""
    total = len(programs)
    if total <= 0:
        return {
            'count': 0,
            'mean_norm': float('inf'),
            'median_norm': float('inf'),
            'improved': 0,
            'tied': 0,
            'worsened': 0,
            'invalid': 0,
            'high_variance': 0,
            'improved_rate': 0.0,
            'tie_rate': 0.0,
            'worsen_rate': 1.0,
            'high_variance_rate': 0.0,
            'len_ratio': 0.0,
            'objective': float('inf'),
            'per_program': {},
        }

    if ratios:
        mean_norm = float(statistics.fmean(ratios))
        median_norm = float(statistics.median(ratios))
    else:
        mean_norm = float('inf')
        median_norm = float('inf')

    metrics = {
        'count': total,
        'mean_norm': mean_norm,
        'median_norm': median_norm,
        'improved': improved,
        'tied': tied,
        'worsened': worsened,
        'invalid': invalid,
        'high_variance': high_variance,
        'improved_rate': improved / total,
        'tie_rate': tied / total,
        'worsen_rate': worsened / total,
        'high_variance_rate': high_variance / total,
        'len_ratio': len(pass_sequence) / max(max_seq_len, 1),
        'per_program': per_program,
    }
    metrics['objective'] = compose_multi_objective(
        metrics,
        pass_sequence,
        worsen_weight=worsen_weight,
        highvar_weight=highvar_weight,
    )
    return metrics



def get_ei(pred, eta):
    """计算 Expected Improvement。"""
    pred = np.array(pred).transpose(1, 0)
    mean_values = np.mean(pred, axis=1)
    std_values = np.std(pred, axis=1)

    def calculate_f(safe_std_values):
        z = (eta - mean_values) / safe_std_values
        cdf = 0.5 * (1.0 + np.vectorize(math.erf)(z / math.sqrt(2.0)))
        pdf = np.exp(-0.5 * np.square(z)) / math.sqrt(2.0 * math.pi)
        return (eta - mean_values) * cdf + safe_std_values * pdf

    if np.any(std_values == 0.0):
        std_copy = np.copy(std_values)
        std_safe = np.copy(std_values)
        std_safe[std_copy == 0.0] = 1.0
        ei = calculate_f(std_safe)
        ei[std_copy == 0.0] = 0.0
        return ei

    return calculate_f(std_values)
