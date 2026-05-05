"""统一的 pass 序列特征编码入口。

这个模块保留了原来的 `full` 特征编码方式，同时新增一个更轻量的
`lite` 编码方式，方便后续直接做特征消融实验。

设计原则故意保持简单：

1. 对外仍然只暴露 `extract_features()` / `extract_features_batch()`；
2. 搜索模块不需要知道当前到底是 `full` 还是 `lite`；
3. 只有这个文件知道“某种模式下特征向量长什么样”；
4. 默认使用 `lite` 模式，正式实验如需复现实验旧设置可显式指定 `FEATURE_MODE=full`。
"""

from __future__ import annotations

from collections import Counter
from dataclasses import asdict, dataclass
from typing import Any

import numpy as np

from .settings import FEATURE_MODE, MAX_SEQ_LEN
from .state import all_passes, pass_to_idx, synergy_edges, synergy_self

# Lite 模式里，我们仍然保留“每个 pass 的存在/重复信息”，
# 但不再保留完整频次，而是做一个很轻的截断。
# 这样能明显降维，同时保住“是否重复堆叠某个 pass”这个关键信号。
_LITE_FREQ_CAP = 3.0

# Lite 模式除了 per-pass 频次外，还会追加这些全局统计特征：
# - 序列长度
# - 词表覆盖率
# - 重复率
# - 最大重复占比
# - 协同满足率
# - 自环命中情况
# - 不同作用域 pass 的占比
_LITE_EXTRA_DIM = 12

_VALID_FEATURE_MODES = {"full", "lite"}
_SCOPE_NAMES = ("module", "function", "cgscc", "loop", "other")


@dataclass(frozen=True)
class FeatureSpec:
    """Human-readable schema entry for one surrogate-model feature."""

    index: int
    name: str
    group: str
    feature_mode: str
    pass_name: str | None = None
    scope: str | None = None
    edge_source: str | None = None
    edge_target: str | None = None

    def to_dict(self) -> dict[str, Any]:
        return asdict(self)


def get_feature_mode(mode: str | None = None) -> str:
    """解析并返回当前使用的特征模式。"""
    resolved = (mode or FEATURE_MODE).strip().lower()
    if resolved not in _VALID_FEATURE_MODES:
        valid = ", ".join(sorted(_VALID_FEATURE_MODES))
        raise ValueError(f"Unsupported FEATURE_MODE={resolved!r}. Expected one of: {valid}")
    return resolved


def get_feature_dim(mode: str | None = None) -> int:
    """返回当前模式下的特征维度。"""
    resolved = get_feature_mode(mode)
    if resolved == "full":
        return 2 * len(all_passes) + len(synergy_edges) + 2
    return len(all_passes) + _LITE_EXTRA_DIM


def get_feature_specs(mode: str | None = None) -> list[FeatureSpec]:
    """
    Return the feature schema in the exact order used by extract_features().

    The schema is intentionally explicit so RF importance, permutation
    importance, and group-level reports can share one stable mapping.
    """
    resolved = get_feature_mode(mode)
    specs: list[FeatureSpec] = []

    for pass_name in all_passes:
        specs.append(
            FeatureSpec(
                index=len(specs),
                name=f"pass_freq:{pass_name}",
                group="pass_freq",
                feature_mode=resolved,
                pass_name=pass_name,
                scope=_pass_scope(pass_name),
            )
        )

    if resolved == "full":
        for source, target in synergy_edges:
            specs.append(
                FeatureSpec(
                    index=len(specs),
                    name=f"synergy_edge:{source}->{target}",
                    group="synergy_edge",
                    feature_mode=resolved,
                    edge_source=source,
                    edge_target=target,
                )
            )
        specs.extend(
            [
                FeatureSpec(len(specs), "synergy_rate", "synergy", resolved),
                FeatureSpec(len(specs) + 1, "seq_len_ratio", "sequence_shape", resolved),
            ]
        )
        for pass_name in all_passes:
            specs.append(
                FeatureSpec(
                    index=len(specs),
                    name=f"first_pos:{pass_name}",
                    group="position",
                    feature_mode=resolved,
                    pass_name=pass_name,
                    scope=_pass_scope(pass_name),
                )
            )
        return specs

    lite_extras = (
        ("seq_len_ratio", "sequence_shape"),
        ("pass_coverage", "sequence_shape"),
        ("repeat_mass_ratio", "sequence_shape"),
        ("max_repeat_ratio", "sequence_shape"),
        ("synergy_rate", "synergy"),
        ("self_loop_hit_rate", "self_loop"),
        ("self_loop_coverage", "self_loop"),
        ("scope_ratio:module", "scope_ratio"),
        ("scope_ratio:function", "scope_ratio"),
        ("scope_ratio:cgscc", "scope_ratio"),
        ("scope_ratio:loop", "scope_ratio"),
        ("scope_ratio:other", "scope_ratio"),
    )
    for name, group in lite_extras:
        scope = name.split(":", 1)[1] if name.startswith("scope_ratio:") else None
        specs.append(
            FeatureSpec(
                index=len(specs),
                name=name,
                group=group,
                feature_mode=resolved,
                scope=scope,
            )
        )
    return specs


def _safe_div(numerator: float, denominator: float) -> float:
    """安全除法，避免空序列或空图时出现除零。"""
    if denominator <= 0:
        return 0.0
    return float(numerator) / float(denominator)


def _pass_scope(pass_name: str) -> str:
    """从 `function(gvn-sink)` 这类名字里提取作用域前缀。"""
    prefix = pass_name.split("(", 1)[0]
    if prefix in _SCOPE_NAMES[:-1]:
        return prefix
    return "other"


def _collect_common_stats(seq):
    """
    收集 full / lite 两种编码都会复用的中间统计量。

    这样做的目的，是把“序列统计”与“最终拼特征向量”拆开：
    - full 想保留更细的边级/位置级特征；
    - lite 只想拿这些统计量做聚合表达；
    - 搜索流程完全不用关心这两者差异。
    """
    n_passes = len(all_passes)
    n_edges = len(synergy_edges)

    freq = np.zeros(n_passes, dtype=float)
    first_pos = {}
    last_pos = {}
    pass_counts = Counter()
    scope_counts = Counter()
    self_hit_count = 0

    for idx, p in enumerate(seq):
        vocab_idx = pass_to_idx.get(p)
        if vocab_idx is not None:
            freq[vocab_idx] += 1.0

        pass_counts[p] += 1
        if p not in first_pos:
            first_pos[p] = idx
        last_pos[p] = idx

        scope_counts[_pass_scope(p)] += 1
        if p in synergy_self:
            self_hit_count += 1

    sat = np.zeros(n_edges, dtype=float)
    sat_count = 0
    for edge_idx, (a, b) in enumerate(synergy_edges):
        if a in first_pos and b in last_pos and first_pos[a] < last_pos[b]:
            sat[edge_idx] = 1.0
            sat_count += 1

    seq_len = len(seq)
    unique_count = len(pass_counts)

    return {
        "freq": freq,
        "sat": sat,
        "sat_count": sat_count,
        "syn_rate": _safe_div(sat_count, n_edges),
        "first_pos": first_pos,
        "seq_len": seq_len,
        "unique_count": unique_count,
        "repeat_mass": max(seq_len - unique_count, 0),
        "max_repeat": max(pass_counts.values(), default=0),
        "self_hit_count": self_hit_count,
        "distinct_self_count": sum(1 for p in pass_counts if p in synergy_self),
        "scope_counts": scope_counts,
    }


def _extract_full_features(seq):
    """
    原始完整版特征编码。

    特征组成（5 类）:

      1. Pass 频率向量 (|V| 维)
      2. 协同对满足向量 (|E| 维)
      3. 协同满足率 (1 维)
      4. 归一化序列长度 (1 维)
      5. Pass 首次出现位置 (|V| 维)

    总维度 = 2|V| + |E| + 2
    """
    stats = _collect_common_stats(seq)
    n_passes = len(all_passes)

    pos_feat = np.full(n_passes, -1.0, dtype=float)
    seq_len = max(stats["seq_len"], 1)
    for p, fp in stats["first_pos"].items():
        idx = pass_to_idx.get(p)
        if idx is not None:
            pos_feat[idx] = fp / seq_len

    syn_rate = np.array([stats["syn_rate"]], dtype=float)
    norm_len = np.array([_safe_div(stats["seq_len"], MAX_SEQ_LEN)], dtype=float)
    return np.concatenate([stats["freq"], stats["sat"], syn_rate, norm_len, pos_feat])


def _extract_lite_features(seq):
    """
    轻量实验版特征编码。

    设计思路：
    - 保留每个 pass 的“使用/重复”信息，但改成截断频次；
    - 去掉逐边协同向量与逐 pass 位置向量；
    - 换成更粗粒度、论文里更容易解释的全局统计量。

    特征组成：

      1. 截断后的 pass 频次 (|V| 维)
         `min(freq, 3) / 3`，区分不用 / 用一次 / 用多次。

      2. 全局统计特征 (12 维)
         - 序列长度占比
         - 词表覆盖率
         - 重复质量占比
         - 最大重复占比
         - 协同满足率
         - 自环命中占比
         - 自环 pass 覆盖率
         - module/function/cgscc/loop/other 五类作用域占比

    总维度 = |V| + 12
    """
    stats = _collect_common_stats(seq)
    seq_len = max(stats["seq_len"], 1)

    clipped_freq = np.minimum(stats["freq"], _LITE_FREQ_CAP) / _LITE_FREQ_CAP

    scalar_feat = np.array([
        _safe_div(stats["seq_len"], MAX_SEQ_LEN),
        _safe_div(stats["unique_count"], len(all_passes)),
        _safe_div(stats["repeat_mass"], seq_len),
        _safe_div(stats["max_repeat"], seq_len),
        stats["syn_rate"],
        _safe_div(stats["self_hit_count"], seq_len),
        _safe_div(stats["distinct_self_count"], len(synergy_self)),
        _safe_div(stats["scope_counts"]["module"], seq_len),
        _safe_div(stats["scope_counts"]["function"], seq_len),
        _safe_div(stats["scope_counts"]["cgscc"], seq_len),
        _safe_div(stats["scope_counts"]["loop"], seq_len),
        _safe_div(stats["scope_counts"]["other"], seq_len),
    ], dtype=float)

    return np.concatenate([clipped_freq, scalar_feat])


def extract_features(seq, mode: str | None = None):
    """按指定模式提取单条序列的特征。"""
    resolved = get_feature_mode(mode)
    if resolved == "full":
        return _extract_full_features(seq)
    return _extract_lite_features(seq)


def extract_features_batch(sequences, mode: str | None = None):
    """批量提取特征矩阵。返回 shape = (len(sequences), feature_dim)"""
    if not sequences:
        return np.empty((0, get_feature_dim(mode)), dtype=float)
    return np.array([extract_features(seq, mode=mode) for seq in sequences], dtype=float)


def get_sequence_syn_rate(seq) -> float:
    """返回一条序列的协同满足率，供日志与分析打印使用。"""
    return _collect_common_stats(seq)["syn_rate"]
