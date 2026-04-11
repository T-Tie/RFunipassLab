"""序列级 crossover / mutation 算子。"""

from __future__ import annotations

import random
from collections import Counter

import numpy as np

from .settings import MAX_SEQ_LEN
from .state import all_passes, synergy_edges, synergy_graph, synergy_self

def xover_single_point(seq1, seq2):
    """
    交叉算子 1: 单点交叉

    分别在两个父代序列的随机位置切一刀，
    取 seq1 的前半部分 + seq2 的后半部分拼接成子代。

    示例:
      seq1 = [A, B, C, D]  切点=2 → [A, B]
      seq2 = [E, F, G]     切点=1 → [F, G]
      child = [A, B, F, G]

    保留了两个父代各自的局部子序列结构。
    """
    if not seq1 or not seq2:
        return list(seq1 or seq2 or [])
    c1 = random.randint(0, len(seq1))
    c2 = random.randint(0, len(seq2))
    child = seq1[:c1] + seq2[c2:]
    return child[:MAX_SEQ_LEN]

def xover_subsequence_insert(seq1, seq2):
    """
    交叉算子 2: 子序列插入

    从 seq2 中取一段连续子序列（长度不超过 MAX_SEQ_LEN/4），
    插入到 seq1 的随机位置。

    类似"器官移植"：将 seq2 的一段有效 pass 组合移植到 seq1 中，
    保留 seq1 的整体结构，同时引入 seq2 的局部知识。
    """
    if not seq2:
        return list(seq1)
    start = random.randint(0, len(seq2) - 1)
    max_frag = max(1, MAX_SEQ_LEN // 4)
    end = random.randint(start + 1, min(start + max_frag, len(seq2)))
    fragment = seq2[start:end]

    child = list(seq1)
    insert_pos = random.randint(0, len(child))
    child = child[:insert_pos] + fragment + child[insert_pos:]
    return child[:MAX_SEQ_LEN]

def xover_union_concat(seq1, seq2):
    """
    交叉算子 3: 联合拼接

    将两个父代序列首尾拼接。如果超过 MAX_SEQ_LEN，
    从随机位置截取一段等于 MAX_SEQ_LEN 的子序列。

    类似"把两套优化方案依次执行"，组合双方的全部优化能力。
    截取操作避免序列过长，同时保留局部连续性。
    """
    combined = seq1 + seq2
    if len(combined) <= MAX_SEQ_LEN:
        return combined
    start = random.randint(0, len(combined) - MAX_SEQ_LEN)
    return combined[start:start + MAX_SEQ_LEN]

def xover_synergy_guided_merge(seq1, seq2):
    """
    交叉算子 4: 协同引导合并

    合并两个父代的 pass 集合（取每个 pass 的最大出现次数），
    然后用协同图做贪心排序，使结果尽可能满足协同约束。

    步骤:
      1. 统计每个 pass 在两个父代中的最大出现次数
      2. 生成候选 pass 列表（含重复）
      3. 用 synergy_greedy_sort 按协同图排序

    这是最"智能"的交叉算子：兼顾"选什么 pass"（来自父代）
    和"怎么排序"（来自协同图），生成协同最优的子代。
    """
    c1 = Counter(seq1)
    c2 = Counter(seq2)
    all_p = set(c1.keys()) | set(c2.keys())
    pool = []
    for p in all_p:
        pool.extend([p] * max(c1.get(p, 0), c2.get(p, 0)))

    if len(pool) > MAX_SEQ_LEN:
        random.shuffle(pool)
        pool = pool[:MAX_SEQ_LEN]

    return synergy_greedy_sort(pool)

def xover_frequency_sampling(elite_sequences):
    """
    生成算子 5: 精英频率采样

    统计精英序列中各 pass 的平均出现频率，
    按频率加权随机采样生成一条全新序列。

    这是 EDA（估计分布算法）思想：不依赖具体父代，
    而是从"群体最优分布"中采样。如果某个 pass 在 80% 的
    最优序列中出现，它有 80% 概率被采样到。
    """
    if not elite_sequences:
        return random_sequence()

    total_freq = Counter()
    for seq in elite_sequences:
        total_freq.update(seq)

    avg_len = max(1, int(np.mean([len(s) for s in elite_sequences])))
    passes_pool = list(total_freq.keys())
    weights = [total_freq[p] / len(elite_sequences) for p in passes_pool]
    total_w = sum(weights)
    probs = [w / total_w for w in weights]

    target_len = max(3, avg_len + random.randint(-5, 5))
    target_len = min(target_len, MAX_SEQ_LEN)
    seq = list(np.random.choice(passes_pool, size=target_len, p=probs))
    return seq

def mut_insert_pass(seq):
    """
    变异算子 1: 插入 pass

    在序列的随机位置插入一个从全局词表中随机选取的 pass。
    可以引入次优序列中未出现的新 pass（来自协同图的额外 pass）。
    """
    p = random.choice(all_passes)
    pos = random.randint(0, len(seq))
    child = list(seq)
    child.insert(pos, p)
    return child[:MAX_SEQ_LEN]

def mut_delete_pass(seq):
    """
    变异算子 2: 删除 pass

    随机删除序列中的一个 pass。
    精简序列，去除可能产生负面影响或冗余的 pass。
    delete 概率略高于 insert（25% vs 20%），防止序列长度爆炸。
    """
    if len(seq) <= 1:
        return list(seq)
    pos = random.randint(0, len(seq) - 1)
    child = list(seq)
    child.pop(pos)
    return child

def mut_swap_passes(seq):
    """
    变异算子 3: 交换 pass

    随机选两个位置，交换其 pass。
    改变 pass 的执行顺序而不改变 pass 的组成。
    """
    if len(seq) <= 1:
        return list(seq)
    child = list(seq)
    i, j = random.sample(range(len(child)), 2)
    child[i], child[j] = child[j], child[i]
    return child

def mut_replace_pass(seq):
    """
    变异算子 4: 替换 pass

    随机选一个位置，将该位置的 pass 替换为词表中的另一个随机 pass。
    定点探索——保持序列长度和结构，只改一个 pass。
    """
    if not seq:
        return [random.choice(all_passes)]
    child = list(seq)
    pos = random.randint(0, len(child) - 1)
    child[pos] = random.choice(all_passes)
    return child

def mut_synergy_reorder(seq):
    """
    变异算子 5: 协同感知重排

    对序列做冒泡式局部重排：遍历所有相邻 pass 对，
    如果交换后更符合协同图约束，则交换。重复 3 轮。

    算法: 对每对相邻 (seq[i], seq[i+1]):
      设 a=seq[i], b=seq[i+1]（当前 a 在 b 前面）
      - b→a 是协同边 (b 应该在 a 前面): 当前顺序违反了 b→a 约束
      - a→b 是协同边 (a 应该在 b 前面): 当前顺序满足了 a→b 约束
      - 如果违反 b→a 且不破坏 a→b: 交换

    不改变序列的 pass 组成，只优化顺序以满足更多协同约束。
    """
    child = list(seq)
    for _ in range(3):
        swapped = False
        for i in range(len(child) - 1):
            a, b = child[i], child[i + 1]
            # b→a 协同边存在? (即 b 应在 a 前面)
            b_before_a = a in synergy_graph.get(b, set())
            # a→b 协同边存在? (即 a 应在 b 前面, 当前已满足)
            a_before_b = b in synergy_graph.get(a, set())
            # 仅当违反 b→a 且不破坏 a→b 时才交换
            if b_before_a and not a_before_b:
                child[i], child[i + 1] = child[i + 1], child[i]
                swapped = True
        if not swapped:
            break
    return child

def synergy_greedy_sort(pool):
    """
    贪心排序：给定一组 pass（可含重复），按协同图约束排序。

    算法:
      1. 维护已放置集合 placed 和待放置列表 remaining
      2. 每步从 remaining 中选得分最高的 pass 放入结果
      3. 得分计算:
         - predecessors_satisfied: 已放置的 pass 中有多少是当前 pass 的
           协同前驱（即 already→p 边存在，already 已放置在前面了）
         - future_benefit: 当前 pass 对 remaining 中后续 pass 的
           协同贡献数（p→q 边存在，q 还在等待放置）
         - score = predecessors_satisfied × 2 + future_benefit
           前驱满足权重更高，因为它直接影响当前 pass 的效果
      4. "先放其前驱多的 pass"策略最大化协同满足率

    注意: 协同图可能有环（如 (A,B) 和 (B,A) 同时存在），
    此算法不做严格拓扑排序，而是用贪心启发式。
    """
    if len(pool) <= 1:
        return list(pool)

    remaining = list(pool)
    random.shuffle(remaining)  # 打乱以避免确定性偏差
    result = []
    placed_set = set()

    while remaining:
        best_idx = 0
        best_score = -1

        for i, p in enumerate(remaining):
            # 已放置的 pass 中，有多少是 p 的协同前驱
            predecessors_satisfied = sum(
                1 for already in placed_set
                if p in synergy_graph.get(already, set())
            )
            # p 放下后，remaining 中有多少 pass 能从中受益
            future_benefit = sum(
                1 for j, q in enumerate(remaining)
                if j != i and q in synergy_graph.get(p, set())
            )
            score = predecessors_satisfied * 2 + future_benefit

            if score > best_score:
                best_score = score
                best_idx = i

        chosen = remaining.pop(best_idx)
        result.append(chosen)
        placed_set.add(chosen)

    return result

def random_sequence():
    """
    生成随机 pass 序列。
    长度从 [3, MAX_SEQ_LEN//2] 中均匀采样，pass 从全局词表随机选取。
    """
    length = random.randint(3, max(3, MAX_SEQ_LEN // 2))
    return [random.choice(all_passes) for _ in range(length)]

