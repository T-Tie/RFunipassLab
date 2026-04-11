"""实验主流程与 CLI 入口。"""

from __future__ import annotations

import math
import os
import time

import numpy as np

from .data import (
    compute_oz_values,
    init_global_state,
    load_train_test_from_tuning_csv,
    split_train_validation_programs,
)
from .features import get_feature_dim, get_feature_mode, get_sequence_syn_rate
from .objective import evaluate_sequence_metrics
from .paths import DEFAULT_DATA_DIR
from .search import get_nd_solutions
from .selection import (
    _primary_metrics_for_selection,
    ablation_post_process,
    rank_top_unique_sequences,
    select_best_sequence_index,
)
from .settings import (
    INITIAL_SEED_TOPK,
    MAX_SEQ_LEN,
    MIN_VAL_PROGRAMS,
    OBJ_WORSEN_WEIGHT,
    VAL_RATIO,
    begin2end,
    decay,
    iters,
    offset,
    scale,
)
from .state import all_passes, synergy_edges, synergy_self

def main(programs, suboptimal_sequences, test_programs=None, topn=5):
    """
    核心函数（方向 B 重构版）。

    这一版在旧版序列 BO 的基础上，额外实现了三个关键改造：

      1. 初始样本设计改造
         - seed 序列不再直接等于 CSV 前若干行
         - 改成：训练程序分层抽样 + seed 序列去重 + 分层抽样

      2. 训练/验证职责分离
         - BO 的 surrogate / EI / 采样决策只看 search_train
         - 最终对外报告的通用序列，改为按 validation 选择

      3. 从“单目标均值最小”改为“多目标标量化优化”
         - BO 目标 = mean_norm + w1 * worsen_rate
         - 既追求平均效果，也惩罚退化样本
    """

    # 统一的日志格式函数，避免同样的指标字符串在多个位置重复拼接
    def fmt_metrics(label, metrics):
        return (
            f"{label}_obj={metrics['objective']:.4f}, "
            f"{label}_mean={metrics['mean_norm']:.4f}, "
            f"{label}_worsen={metrics['worsen_rate']:.2%}"
        )

    print("=" * 60)
    print(f"输入程序数:    {len(programs)}")
    print(f"输入次优序列数: {len(suboptimal_sequences)}")
    print(f"测试程序数:    {len(test_programs) if test_programs else 0}")
    print(f"Pass 词表大小: {len(all_passes)}")
    print(f"协同边数:      {len(synergy_edges)}")
    print(f"自环 pass 数:  {len(synergy_self)}")
    print(f"序列长度上限:  {MAX_SEQ_LEN}")
    print(f"特征模式:      {get_feature_mode()}")
    n_feat = get_feature_dim()
    print(f"RF 特征维度:   {n_feat}")
    print(f"词表: {all_passes}")
    print(
        f"多目标权重:    mean=1.0, "
        f"worsen={OBJ_WORSEN_WEIGHT}"
    )

    # ---- Step 1.5: 从训练程序中切出验证集 ----
    search_programs, val_programs = split_train_validation_programs(
        programs, VAL_RATIO, MIN_VAL_PROGRAMS
    )
    primary_split_name = 'validation' if val_programs else 'search_train'
    print("\n[Step 1.5] 训练程序切分...")
    print(f"  search_train 程序数: {len(search_programs)}")
    print(f"  validation 程序数:   {len(val_programs)}")

    # ---- Step 2: 计算 -Oz 基准指令数 ----
    print("\n[Step 2] 计算 search_train 程序 -Oz 基准指令数...")
    search_oz_values = compute_oz_values(search_programs)

    val_oz_values = None
    if val_programs:
        print("[Step 2b] 计算 validation 程序 -Oz 基准指令数...")
        val_oz_values = compute_oz_values(val_programs)

    test_oz_values = None
    if test_programs:
        print("[Step 2c] 计算测试集程序 -Oz 基准指令数...")
        test_oz_values = compute_oz_values(test_programs)

    # ---- Step 3: 评估初始 seed 序列 ----
    evaluated_sequences = [list(s) for s in suboptimal_sequences]
    evaluated_scores = []          # search_train 上的多目标 objective，供 RF + EI 使用
    evaluated_train_metrics = []   # 与 evaluated_scores 对齐的完整 train 指标
    evaluated_val_metrics = []     # 与 evaluated_scores 对齐的完整 validation 指标
    ts = []
    b = time.time()

    print(f"\n[Step 3] 评估初始 seed 序列（共 {len(evaluated_sequences)} 条）...")
    for seq in evaluated_sequences:
        train_metrics = evaluate_sequence_metrics(search_programs, search_oz_values, seq)
        val_metrics = (
            evaluate_sequence_metrics(val_programs, val_oz_values, seq)
            if val_programs else None
        )
        evaluated_scores.append(train_metrics['objective'])
        evaluated_train_metrics.append(train_metrics)
        evaluated_val_metrics.append(val_metrics)
        ts.append(time.time() - b)

    search_best_objective = min(evaluated_scores)
    search_best_idx = int(np.argmin(evaluated_scores))
    search_best_seq = evaluated_sequences[search_best_idx]

    # rnum 衰减调度
    sigma = -scale ** 2 / (2 * math.log(decay))
    rnum0 = int(os.environ.get('RNUM', 2 ** 8))

    # ---- Step 4: 贝叶斯优化主循环 ----
    print(f"\n[Step 4] 开始贝叶斯优化（{iters} 轮）...")
    steps = 0

    while steps < iters:
        steps += 1

        rnum = rnum0 * math.exp(
            -max(0, len(evaluated_sequences) - offset) ** 2 / (2 * sigma ** 2)
        )

        new_seq, ei_val = get_nd_solutions(
            evaluated_sequences, evaluated_scores, search_best_objective, rnum, suboptimal_sequences
        )

        train_metrics = evaluate_sequence_metrics(search_programs, search_oz_values, new_seq)
        val_metrics = (
            evaluate_sequence_metrics(val_programs, val_oz_values, new_seq)
            if val_programs else None
        )
        new_score = train_metrics['objective']

        evaluated_sequences.append(new_seq)
        evaluated_scores.append(new_score)
        evaluated_train_metrics.append(train_metrics)
        evaluated_val_metrics.append(val_metrics)
        ts.append(time.time() - b)

        if new_score < search_best_objective:
            search_best_objective = new_score
            search_best_seq = new_seq

        # 协同满足率是 full / lite 共同的统计量，
        # 直接走统一辅助函数，避免主流程依赖某种特征布局。
        syn_rate = get_sequence_syn_rate(new_seq)
        current_best_idx = select_best_sequence_index(
            evaluated_sequences, evaluated_train_metrics, evaluated_val_metrics
        )
        current_primary_metrics = _primary_metrics_for_selection(
            evaluated_train_metrics[current_best_idx],
            evaluated_val_metrics[current_best_idx],
        )

        print(f"  [iter {steps:3d}/{iters}] "
              f"search_obj={new_score:.4f}  "
              f"search_best={search_best_objective:.4f}  "
              f"{primary_split_name}_best={current_primary_metrics['objective']:.4f}  "
              f"EI={ei_val:.4f}  rnum={rnum:.1f}  "
              f"len={len(new_seq)}  syn_rate={syn_rate:.2f}  "
              f"mean={train_metrics['mean_norm']:.4f}  "
              f"worsen={train_metrics['worsen_rate']:.2%}")

    # ---- Step 5: 基于 validation / search_train 选择最终序列 ----
    print(f"\n[Step 5] 按 {primary_split_name} 选择最终通用序列...")
    selected_idx = select_best_sequence_index(
        evaluated_sequences, evaluated_train_metrics, evaluated_val_metrics
    )
    final_seq = list(evaluated_sequences[selected_idx])
    final_train_metrics = evaluated_train_metrics[selected_idx]
    final_val_metrics = evaluated_val_metrics[selected_idx]
    final_primary_metrics = _primary_metrics_for_selection(
        final_train_metrics, final_val_metrics
    )

    print("  选择结果:")
    print(f"    {fmt_metrics('search_train', final_train_metrics)}")
    if final_val_metrics is not None:
        print(f"    {fmt_metrics('validation', final_val_metrics)}")

    # ---- Step 6: 在最终选择集合上做消融，进一步去冗余 ----
    print(f"\n[Step 6] 在 {primary_split_name} 上执行消融后处理...")
    ablation_programs = val_programs if val_programs else search_programs
    ablation_oz_values = val_oz_values if val_programs else search_oz_values
    ablated_seq, ablated_primary_metrics = ablation_post_process(
        final_seq, ablation_programs, ablation_oz_values, split_name=primary_split_name
    )

    if ablated_primary_metrics['objective'] <= final_primary_metrics['objective'] + 1e-6:
        print(
            f"  消融有效: {len(final_seq)} → {len(ablated_seq)} passes, "
            f"{primary_split_name}_objective: "
            f"{final_primary_metrics['objective']:.4f} → {ablated_primary_metrics['objective']:.4f}"
        )
        final_seq = ablated_seq
        final_train_metrics = evaluate_sequence_metrics(search_programs, search_oz_values, final_seq)
        final_val_metrics = (
            evaluate_sequence_metrics(val_programs, val_oz_values, final_seq)
            if val_programs else None
        )
        final_primary_metrics = _primary_metrics_for_selection(
            final_train_metrics, final_val_metrics
        )
    else:
        print("  消融无改善，保留原序列")

    final_test_metrics = (
        evaluate_sequence_metrics(test_programs, test_oz_values, final_seq)
        if test_programs and test_oz_values else None
    )

    final_syn_rate = get_sequence_syn_rate(final_seq)
    print(
        f"\n最终通用 pass 序列（{len(final_seq)} 个 pass, syn_rate={final_syn_rate:.2f}）:"
    )
    print("  " + " → ".join(final_seq) if final_seq else "  (空序列)")
    print(f"  {fmt_metrics('search_train', final_train_metrics)}")
    if final_val_metrics is not None:
        print(f"  {fmt_metrics('validation', final_val_metrics)}")
    if final_test_metrics is not None:
        print(f"  {fmt_metrics('test', final_test_metrics)}")

    # ---- Step 7: 输出 Top-N 序列 ----
    ranked_top = rank_top_unique_sequences(
        evaluated_sequences,
        evaluated_train_metrics,
        evaluated_val_metrics,
        topn=topn,
    )
    print(
        f"\nTop-{len(ranked_top)} 最佳序列（按 {primary_split_name} 多目标 objective 升序）:"
    )
    for rank_id, idx in enumerate(ranked_top, start=1):
        seq = evaluated_sequences[idx]
        train_metrics = evaluated_train_metrics[idx]
        val_metrics = evaluated_val_metrics[idx]
        primary_metrics = _primary_metrics_for_selection(train_metrics, val_metrics)
        syn_rate = get_sequence_syn_rate(seq)

        msg = (
            f"  #{rank_id}: "
            f"{primary_split_name}_obj={primary_metrics['objective']:.4f}, "
            f"{primary_split_name}_mean={primary_metrics['mean_norm']:.4f}, "
            f"{primary_split_name}_worsen={primary_metrics['worsen_rate']:.2%}, "
            f"train_obj={train_metrics['objective']:.4f}, "
            f"train_mean={train_metrics['mean_norm']:.4f}, "
            f"len={len(seq)}, syn_rate={syn_rate:.2f}"
        )
        if test_programs and test_oz_values:
            test_metrics = evaluate_sequence_metrics(test_programs, test_oz_values, seq)
            msg += (
                f", test_obj={test_metrics['objective']:.4f}, "
                f"test_mean={test_metrics['mean_norm']:.4f}, "
                f"test_worsen={test_metrics['worsen_rate']:.2%}"
            )
        print(msg)
        print("     " + (" → ".join(seq) if seq else "(空序列)"))

    return {
        'objective_history': evaluated_scores,
        'timestamps': ts,
        'search_best_objective': search_best_objective,
        'search_best_sequence': search_best_seq,
        'final_sequence': final_seq,
        'final_train_metrics': final_train_metrics,
        'final_val_metrics': final_val_metrics,
        'final_test_metrics': final_test_metrics,
        'selection_split': primary_split_name,
        'selection_objective': final_primary_metrics['objective'],
    }


def _resolve_default_input_path(env_name: str, local_filename: str) -> str:
    """
    解析实验输入文件路径。

    优先级很简单：
    1. 用户显式传入的环境变量；
    2. `RFunipassLab/data/` 下的本地默认文件。
    """
    env_value = os.environ.get(env_name)
    if env_value:
        return env_value
    return str(DEFAULT_DATA_DIR / local_filename)


def _require_existing_file(path: str, env_name: str) -> None:
    """在真正启动实验前检查关键输入文件是否存在。"""
    if os.path.isfile(path):
        return
    raise FileNotFoundError(
        f"{env_name} resolved to {path}, but the file does not exist. "
        f"Place the file under {DEFAULT_DATA_DIR} or set {env_name} explicitly."
    )


def cli_main() -> int:
    """脚本入口：加载数据、初始化状态、执行多轮实验并打印汇总。"""
    tuning_csv = _resolve_default_input_path('TUNING_CSV', 'tuning_results.csv')
    synergy_csv = _resolve_default_input_path('SYNERGY_CSV', 'Step3_EnumeratedPairs.csv')
    _require_existing_file(tuning_csv, 'TUNING_CSV')
    _require_existing_file(synergy_csv, 'SYNERGY_CSV')

    top_n = 5
    train_topk = int(os.environ.get('TRAIN_TOPK', 200))
    test_topk = int(os.environ.get('TEST_TOPK', 50))
    seed_topk = INITIAL_SEED_TOPK if INITIAL_SEED_TOPK > 0 else train_topk

    print(f"Loading train/test rows from: {tuning_csv}")
    programs, suboptimal_sequences, test_programs = load_train_test_from_tuning_csv(
        tuning_csv, train_topk, test_topk, seed_topk=seed_topk
    )
    print(f"Loaded train programs:       {len(programs)}")
    print(f"Loaded initial seed seqs:    {len(suboptimal_sequences)}")
    print(f"Loaded test programs:        {len(test_programs)}")

    print(f"\nLoading synergy graph from: {synergy_csv}")
    init_global_state(suboptimal_sequences, synergy_csv)
    print(f"All passes ({len(all_passes)}): {all_passes}")
    print(f"Synergy edges: {len(synergy_edges)}")
    print(f"Self-loop passes: {synergy_self}")

    stats = []
    times = []
    run_results = []
    start_time = time.time()

    for run_idx in range(begin2end):
        print(f"\n{'=' * 60}")
        print(f"实验轮次 {run_idx + 1} / {begin2end}")
        print(f"{'=' * 60}")
        run_result = main(
            programs,
            suboptimal_sequences,
            test_programs=test_programs,
            topn=top_n,
        )
        stats.append(run_result['objective_history'])
        times.append(run_result['timestamps'])
        run_results.append(run_result)

    for v_tmp in stats:
        cur_best = float('inf')
        for i in range(len(v_tmp)):
            cur_best = min(cur_best, v_tmp[i])
            v_tmp[i] = cur_best

    selection_scores = [r['selection_objective'] for r in run_results]
    best_run = int(np.argmin(selection_scores))
    best_result = run_results[best_run]
    best_seq_overall = best_result['final_sequence']

    print(f"\n{'=' * 60}")
    print(
        f"所有轮次中最优 {best_result['selection_split']} objective: "
        f"{best_result['selection_objective']:.4f}"
    )
    print(f"最优通用 pass 序列 ({len(best_seq_overall)} passes):")
    print(f"  {' → '.join(best_seq_overall)}")
    print(
        f"  search_train: "
        f"obj={best_result['final_train_metrics']['objective']:.4f}, "
        f"mean={best_result['final_train_metrics']['mean_norm']:.4f}, "
        f"worsen={best_result['final_train_metrics']['worsen_rate']:.2%}"
    )
    if best_result['final_val_metrics'] is not None:
        print(
            f"  validation:   "
            f"obj={best_result['final_val_metrics']['objective']:.4f}, "
            f"mean={best_result['final_val_metrics']['mean_norm']:.4f}, "
            f"worsen={best_result['final_val_metrics']['worsen_rate']:.2%}"
        )
    if best_result['final_test_metrics'] is not None:
        print(
            f"  test:         "
            f"obj={best_result['final_test_metrics']['objective']:.4f}, "
            f"mean={best_result['final_test_metrics']['mean_norm']:.4f}, "
            f"worsen={best_result['final_test_metrics']['worsen_rate']:.2%}"
        )

    end_time = time.time()
    print(f"总运行时间: {end_time - start_time:.2f} 秒")
    return 0
