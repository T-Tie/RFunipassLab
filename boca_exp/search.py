"""RF surrogate + GA candidate generation。"""

from __future__ import annotations

import random
import time

import numpy as np

from .core_tuning_cost import ml_phase
from .features import extract_features_batch
from .objective import get_ei
from .operators import (
    mut_delete_pass,
    mut_insert_pass,
    mut_replace_pass,
    mut_swap_passes,
    mut_synergy_reorder,
    random_sequence,
    xover_frequency_sampling,
    xover_single_point,
    xover_subsequence_insert,
    xover_synergy_guided_merge,
    xover_union_concat,
)
from .settings import (
    GA_ELITE_RATIO,
    GA_GENERATIONS,
    GA_MUTATE_RATE,
    GA_POP_SIZE,
    GA_TOURNAMENT_K,
)
from .surrogate import build_rf_regressor

def ga_search(evaluated_sequences, evaluated_scores, model, eta,
              ga_pop_size, ga_gens, init_sequences=None):
    """
    在序列空间中用遗传算法搜索高 EI 的候选 pass 序列。

    交叉算子（5 种，按概率选择）:
      0 - 单点交叉    (25%): 保留局部子序列结构
      1 - 子序列插入  (20%): 移植局部 pass 组合
      2 - 联合拼接    (15%): 组合双方全部优化能力
      3 - 协同引导合并 (25%): 协同图指导的智能合并
      4 - 精英频率采样 (15%): 从最优分布中采样新个体

    变异算子（5 种，每个子代以 GA_MUTATE_RATE 概率触发一种）:
      0 - 插入 pass  (20%): 扩展覆盖范围
      1 - 删除 pass  (25%): 精简序列
      2 - 交换 pass  (15%): 探索顺序变化
      3 - 替换 pass  (15%): 定点探索
      4 - 协同重排   (25%): 优化 pass 顺序

    参数:
        evaluated_sequences: 历史已评估的 pass 序列列表
        evaluated_scores:    对应目标值（用于精英频率统计）
        model:               已拟合的 RF 代理模型
        eta:                 当前最优目标值
        ga_pop_size:         种群大小
        ga_gens:             进化代数
        init_sequences:      初始种子序列（次优序列）

    返回:
        list[(序列, EI值)]  - 按 EI 降序排列
    """
    estimators = model.estimators_

    # ---- 构建精英序列集合（供频率采样算子使用）----
    if evaluated_scores and len(evaluated_scores) >= 3:
        n_top = max(3, len(evaluated_scores) // 4)
        top_indices = np.argsort(evaluated_scores)[:n_top]
        elite_sequences = [evaluated_sequences[i] for i in top_indices]
    else:
        elite_sequences = list(evaluated_sequences) if evaluated_sequences else []

    # ---- 辅助: 批量计算种群的 EI ----
    def compute_ei(population):
        if not population:
            return np.array([])
        feat_matrix = extract_features_batch(population)
        preds = [e.predict(feat_matrix) for e in estimators]
        return get_ei(preds, eta)

    # ---- 初始化种群 ----
    population = []
    if init_sequences:
        population.extend([list(s) for s in init_sequences])
    population.extend([list(s) for s in evaluated_sequences])
    while len(population) < ga_pop_size:
        population.append(random_sequence())
    population = population[:ga_pop_size]

    # ---- 算子权重 ----
    CROSSOVER_WEIGHTS = [0.25, 0.20, 0.15, 0.25, 0.15]
    MUTATION_WEIGHTS  = [0.20, 0.25, 0.15, 0.15, 0.25]

    # ---- GA 主循环 ----
    for gen in range(ga_gens):
        ei_vals = compute_ei(population)

        # 精英保留
        elite_n = max(1, int(ga_pop_size * GA_ELITE_RATIO))
        ranked = sorted(zip(ei_vals, range(len(population))),
                        key=lambda x: x[0], reverse=True)
        elites = [list(population[idx]) for _, idx in ranked[:elite_n]]
        next_population = list(elites)

        # 锦标赛选择函数
        def tournament():
            k = min(GA_TOURNAMENT_K, len(population))
            indices = random.sample(range(len(population)), k)
            best_idx = max(indices, key=lambda i: ei_vals[i])
            return list(population[best_idx])

        # 生成子代
        while len(next_population) < ga_pop_size:
            parent1 = tournament()
            parent2 = tournament()

            # 随机选择交叉算子
            op = random.choices(range(5), weights=CROSSOVER_WEIGHTS, k=1)[0]
            if op == 0:
                child = xover_single_point(parent1, parent2)
            elif op == 1:
                child = xover_subsequence_insert(parent1, parent2)
            elif op == 2:
                child = xover_union_concat(parent1, parent2)
            elif op == 3:
                child = xover_synergy_guided_merge(parent1, parent2)
            else:
                child = xover_frequency_sampling(elite_sequences)

            # 以 GA_MUTATE_RATE 概率触发一种变异
            if random.random() < GA_MUTATE_RATE:
                mut_op = random.choices(range(5), weights=MUTATION_WEIGHTS, k=1)[0]
                if mut_op == 0:
                    child = mut_insert_pass(child)
                elif mut_op == 1:
                    child = mut_delete_pass(child)
                elif mut_op == 2:
                    child = mut_swap_passes(child)
                elif mut_op == 3:
                    child = mut_replace_pass(child)
                else:
                    child = mut_synergy_reorder(child)

            # 保证序列非空
            if not child:
                child = random_sequence()

            next_population.append(child)

        population = next_population

    # 最终种群排序
    final_ei = compute_ei(population)
    results = [(population[i], float(final_ei[i])) for i in range(len(population))]
    results.sort(key=lambda x: x[1], reverse=True)
    return results

def get_nd_solutions(evaluated_sequences, evaluated_scores, eta, rnum, init_sequences):
    """
    单轮贝叶斯优化迭代：RF 拟合 + GA 搜索 → 推荐下一个待评估序列。

    与旧版差异:
      - RF 训练数据是组合特征矩阵（而非 0/1 向量）
      - GA 在序列空间搜索（而非配置空间）
      - 返回值是 pass 序列 list[str]（而非 0/1 向量）
    """
    with ml_phase():
        feat_matrix = extract_features_batch(evaluated_sequences)

        model = build_rf_regressor(random_state=42)
        model.fit(feat_matrix, np.array(evaluated_scores))

        # 按 rnum 调整本轮 GA 种群规模, 随 rnum 增大而扩容，最多到 2000, 由于 rnum 在主循环里会衰减，早期更探索、后期更收敛
        ga_pop = min(max(GA_POP_SIZE, GA_POP_SIZE + int(rnum)), 2000)

        begin = time.time()
        candidates = ga_search(
            evaluated_sequences, evaluated_scores, model, eta,
            ga_pop, GA_GENERATIONS, init_sequences
        )
        print(f'GA search time: {time.time() - begin:.2f}s, candidates: {len(candidates)}')

    # 去重：避免推荐已评估过的完全相同的序列
    train_set = {tuple(s) for s in evaluated_sequences}
    for seq, ei_val in candidates:
        if tuple(seq) not in train_set:
            return seq, ei_val

    print("[Warning] All GA candidates already evaluated, returning random sequence.")
    while True:
        rnd = random_sequence()
        if tuple(rnd) not in train_set:
            return rnd, 0.0
