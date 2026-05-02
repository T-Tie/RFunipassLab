"""最终序列选择、Top-N 排序与消融后处理。"""

from __future__ import annotations

from .core_tuning_cost import record_candidate_sequence
from .objective import evaluate_sequence_metrics

def _primary_metrics_for_selection(train_metrics, val_metrics):
    """
    返回“用于最终选择”的主指标来源。

    若存在验证集，则最终选择优先看验证集；
    若没有验证集，则回退到 search_train 指标。
    """
    return val_metrics if val_metrics is not None else train_metrics

def _selection_sort_key(seq, train_metrics, val_metrics):
    """
    统一定义“最终序列优先级”的排序键。

    设计目标：
      1. 先按主集合（优先 validation）上的多目标 objective 排序
      2. 再按主集合 mean_norm 排序
      3. 再按主集合 worsen_rate 排序
      4. 再偏好更短的序列
      5. 若仍然相同，用 search_train objective 再做一次 tie-break
    """
    primary = _primary_metrics_for_selection(train_metrics, val_metrics)
    return (
        primary['objective'],
        primary['mean_norm'],
        primary['worsen_rate'],
        len(seq),
        train_metrics['objective'],
    )

def select_best_sequence_index(evaluated_sequences, train_metrics_list, val_metrics_list=None):
    """
    在所有已评估序列中选出“最终应该对外报告”的那一条。

    注意：
      - 这不一定等于 search_train 上的历史最优
      - 如果存在验证集，它代表“模型选择”阶段的最优
    """
    best_idx = None
    best_key = None

    for idx, seq in enumerate(evaluated_sequences):
        val_metrics = val_metrics_list[idx] if val_metrics_list is not None else None
        key = _selection_sort_key(seq, train_metrics_list[idx], val_metrics)
        if best_idx is None or key < best_key:
            best_idx = idx
            best_key = key

    return best_idx

def rank_top_unique_sequences(evaluated_sequences, train_metrics_list, val_metrics_list=None,
                              topn=5, min_edit_distance=5):
    """
    对已评估序列做“去重 + 多样性约束 + 最终选择准则排序”。

    与旧版不同：
      - 排序不再只按训练集均值
      - 如果存在验证集，则按验证集的多目标 objective 排序
      - 同一条序列如果被重复评估，只保留最优代表
      - 继续保留编辑距离约束，避免 Top-N 全是几乎一样的序列

    返回：
        list[int] - 排好序的 evaluated_sequences 下标
    """
    best_by_seq = {}

    for idx, seq in enumerate(evaluated_sequences):
        key = tuple(seq)
        val_metrics = val_metrics_list[idx] if val_metrics_list is not None else None
        rank_key = _selection_sort_key(seq, train_metrics_list[idx], val_metrics)
        saved = best_by_seq.get(key)
        if saved is None or rank_key < saved[0]:
            best_by_seq[key] = (rank_key, idx)

    ranked_indices = [idx for _, idx in sorted(best_by_seq.values(), key=lambda x: x[0])]

    selected_indices = []
    for idx in ranked_indices:
        seq = evaluated_sequences[idx]
        if all(_seq_distance(seq, evaluated_sequences[j]) >= min_edit_distance
               for j in selected_indices):
            selected_indices.append(idx)
            if len(selected_indices) >= topn:
                break

    return selected_indices

def _seq_distance(seq1, seq2):
    """
    序列距离：逐位比较不同的位置数 + 长度差异。
    简化版编辑距离，比完整 Levenshtein 快得多。
    """
    min_len = min(len(seq1), len(seq2))
    diff = abs(len(seq1) - len(seq2))
    for i in range(min_len):
        if seq1[i] != seq2[i]:
            diff += 1
    return diff

def ablation_post_process(seq, programs, oz_values, split_name='validation', verbose=True):
    """
    消融后处理：逐个尝试移除序列中的每个 pass，
    如果移除后“主选择目标”不变或改善，则永久移除该 pass。
    用于精简冗余序列（如连续重复的无效 pass）。

    算法：
      1. 从后向前遍历序列中的每个位置
      2. 临时移除该位置的 pass
      3. 如果移除后 objective <= 原 objective，则保留移除
      4. 否则恢复该 pass

    注意：
      这里的 programs / oz_values 应该传入“最终选择所依赖的集合”：
        - 有验证集时，用验证集
        - 没验证集时，用 search_train

    返回:
        (精简后的序列, 精简后的 metrics)
    """
    if not seq:
        return seq, {
            'count': 0,
            'mean_norm': float('inf'),
            'median_norm': float('inf'),
            'improved': 0,
            'tied': 0,
            'worsened': 0,
            'improved_rate': 0.0,
            'tie_rate': 0.0,
            'worsen_rate': 1.0,
            'len_ratio': 0.0,
            'objective': float('inf'),
        }

    current_seq = list(seq)
    record_candidate_sequence()
    current_metrics = evaluate_sequence_metrics(programs, oz_values, current_seq)
    current_score = current_metrics['objective']
    if verbose:
        print(
            f"\n[Ablation-{split_name}] 初始序列长度: {len(current_seq)}, "
            f"objective: {current_score:.4f}, "
            f"mean_norm: {current_metrics['mean_norm']:.4f}, "
            f"worsen_rate: {current_metrics['worsen_rate']:.2%}"
        )

    removed_count = 0
    i = len(current_seq) - 1
    while i >= 0:
        if len(current_seq) <= 1:
            break
        removed_pass = current_seq.pop(i)
        record_candidate_sequence()
        new_metrics = evaluate_sequence_metrics(programs, oz_values, current_seq)
        new_score = new_metrics['objective']

        if new_score <= current_score + 1e-6:  # 允许微小浮点误差
            current_score = new_score
            current_metrics = new_metrics
            removed_count += 1
            if verbose:
                print(
                    f"  移除 [{i}] {removed_pass}: "
                    f"objective {new_score:.4f}, "
                    f"mean_norm {new_metrics['mean_norm']:.4f}, "
                    f"worsen_rate {new_metrics['worsen_rate']:.2%} "
                    f"(保留移除)"
                )
        else:
            current_seq.insert(i, removed_pass)
            if verbose:
                print(
                    f"  移除 [{i}] {removed_pass}: "
                    f"objective {new_score:.4f} > {current_score:.4f} "
                    f"(恢复)"
                )
        i -= 1

    if verbose:
        print(
            f"[Ablation-{split_name}] 最终序列长度: {len(current_seq)}, "
            f"objective: {current_score:.4f}, "
            f"mean_norm: {current_metrics['mean_norm']:.4f}, "
            f"worsen_rate: {current_metrics['worsen_rate']:.2%}, "
            f"移除了 {removed_count} 个 pass"
        )

    return current_seq, current_metrics
