"""数据加载、随机采样、协同图构建与全局状态初始化。"""

from __future__ import annotations

import ast
import csv
import os
import random
from collections import defaultdict

from .runtime import get_instrcount
from .settings import llvm_tools_path
from .state import all_passes, pass_to_idx, synergy_edges, synergy_graph, synergy_self

def _parse_pass_sequence(seq_raw):
    """
    把 CSV 里的 best_sequence 字段解析成标准化的 pass 序列。

    输入通常是 Python list 的字符串表示，例如：
        "['function(mem2reg)', 'function(newgvn)']"

    返回：
        list[str]

    这里统一做两件事：
      1. 过滤非字符串元素和空字符串
      2. 去掉首尾空白，保证后续做去重 / 建词表时语义一致
    """
    seq = ast.literal_eval(seq_raw)
    if not isinstance(seq, list):
        return []
    return [p.strip() for p in seq if isinstance(p, str) and p.strip()]

def load_valid_rows_from_tuning_csv(csv_path):
    """
    读取 tuning_results.csv 中所有“可用”的记录。

    与旧版直接取前 N 行不同，这里先把整个 CSV 中可用记录统一读入，再做：
      - 程序去重
      - 序列去重
      - 分层抽样

    这样做的目的，是避免因为 CSV 前部存在大量重复或分布偏斜，
    让初始样本设计从一开始就偏向某一类序列。
    """
    rows = []

    with open(csv_path, 'r', newline='') as f:
        reader = csv.DictReader(f)
        for row_id, row in enumerate(reader):
            filename = (row.get('filename') or '').strip()
            seq_raw = (row.get('best_sequence') or '').strip()
            best_score_raw = (row.get('best_score') or '').strip()

            if not filename or not os.path.isfile(filename):
                continue

            try:
                seq = _parse_pass_sequence(seq_raw)
            except Exception:
                # 某些 CSV 行可能存坏了；跳过即可，不让它污染采样分布
                continue

            try:
                best_score = float(best_score_raw) if best_score_raw else float('inf')
            except ValueError:
                best_score = float('inf')

            # 跳过结果为 0 的记录，避免无效样本进入后续流程
            if best_score == 0.0:
                continue

            rows.append({
                'row_id': row_id,
                'filename': filename,
                'best_sequence': seq,
                'best_score': best_score,
            })

    return rows

def _random_unique_rows(rows, key_fn, rng):
    """
    对候选行按 key 去重，并为每个 key 随机保留一个代表样本。

    这一步仍然保留“去重”约束，但去掉所有按 best_score、长度、分桶等
    启发式偏置，让代表样本的选择完全随机。

    之所以用局部 RNG：
      - 抽样过程可复现
      - 不会污染后续 BO / GA 的全局随机状态
    """
    grouped = defaultdict(list)
    for row in rows:
        grouped[key_fn(row)].append(row)

    unique_rows = [rng.choice(group_rows) for group_rows in grouped.values()]
    return rng.sample(unique_rows, len(unique_rows)) if unique_rows else []

def random_sample_rows(rows, sample_size, rng):
    """
    对候选池做完全随机采样。

    当前版本已经取消分层采样，因此这里不再：
      - 构造分层桶
      - 控制不同桶的覆盖率
      - 使用任何基于序列长度/重复率的选择逻辑

    而是直接从候选池中无偏地随机抽取 `sample_size` 个样本。
    如果候选池不够大，则返回全部样本的随机排列。
    """
    if sample_size <= 0 or not rows:
        return []
    size = min(sample_size, len(rows))
    return rng.sample(rows, size)

def load_train_test_from_tuning_csv(csv_path, train_topk=200, test_topk=50, seed_topk=None):
    """
    读取训练程序、测试程序以及“初始 seed 序列”。

    当前版本已经取消分层采样，改成“去重 + 完全随机抽样”。

    设计原则：
      - 训练程序：从全部有效程序中随机抽样
      - 测试程序：从剩余程序中随机抽样，保证与训练程序不重叠
      - 初始 seed 序列：仅从训练程序对应的序列中去重后随机抽取
        （避免从测试程序泄漏 tuned sequence 到搜索起点）

    返回：
        train_programs:       list[str]      - 用于 BO 真实评估的训练程序集
        suboptimal_sequences: list[list[str]]- 去重后、随机选择的初始 seed 序列
        test_programs:        list[str]      - 独立测试集程序路径
    """
    if seed_topk is None:
        seed_topk = train_topk

    all_rows = load_valid_rows_from_tuning_csv(csv_path)
    if not all_rows:
        return [], [], []
    rng = random.Random(456)

    # 训练 / 测试程序按“文件名”去重，避免同一个程序被重复抽到。
    # 注意：这里的去重代表行也改成随机选择，不再叠加额外启发式。
    program_rows = _random_unique_rows(all_rows, key_fn=lambda r: r['filename'], rng=rng)
    # train_topk = len(program_rows)
    # test_topk = 50
    # seed_topk = len(program_rows)
    train_rows = random_sample_rows(program_rows, train_topk, rng)
    train_filenames = {row['filename'] for row in train_rows}

    remaining_program_rows = [
        row for row in program_rows
        if row['filename'] not in train_filenames
    ]
    test_rows = random_sample_rows(remaining_program_rows, test_topk, rng)

    # 初始 seed 只从训练集对应的序列里产生，防止测试集信息泄漏到 BO 起点
    train_seed_rows = _random_unique_rows(
        list(train_rows),
        key_fn=lambda r: tuple(r['best_sequence']),
        rng=rng,
    )
    seed_rows = random_sample_rows(train_seed_rows, seed_topk, rng)

    train_programs = [row['filename'] for row in train_rows]
    suboptimal_sequences = [list(row['best_sequence']) for row in seed_rows]
    test_programs = [row['filename'] for row in test_rows]

    return train_programs, suboptimal_sequences, test_programs

def build_synergy_graph(csv_path):
    """
    从 Step3_EnumeratedPairs.csv 构建 pass 协同关系有向图。

    CSV 中每行是一个协同对 (passA, passB)，含义:
      passA 放在 passB 前面使用，比单独使用 passB 效果更好。

    构建有向图 G(V, E):
      - V = 所有出现过的 pass 名称
      - E = {A→B | (A,B) 是协同对}
      - 自环 (A,A): pass A 重复使用有增益

    返回:
        graph:      dict[str, set[str]]  - 有向邻接表
        edges:      list[(str, str)]     - 非自环协同边列表
        self_loops: set[str]             - 自环 pass 集合
        pass_set:   set[str]             - 所有 pass 名称
    """
    graph = defaultdict(set)
    edges = []
    self_loops = set()
    pass_set = set()

    with open(csv_path, 'r', newline='') as f:
        reader = csv.DictReader(f)
        for row in reader:
            pair_raw = (row.get('synerpair') or '').strip()
            if not pair_raw:
                continue
            pair = ast.literal_eval(pair_raw)
            if not isinstance(pair, tuple) or len(pair) != 2:
                continue

            a, b = pair[0].strip(), pair[1].strip()
            pass_set.add(a)
            pass_set.add(b)

            if a == b:
                # 自环: pass A 重复使用有增益
                self_loops.add(a)
            else:
                # 有向边: A 放在 B 前面有增益
                graph[a].add(b)
                edges.append((a, b))

    return dict(graph), edges, self_loops, pass_set


def init_global_state(suboptimal_sequences, synergy_csv_path):
    """
    初始化共享状态：统一词表 + 协同图。

    与大文件版本相比，这里改成“原地更新”共享容器，
    这样拆到多个模块后，各模块拿到的状态引用仍然一致。
    """
    graph, edges, self_loops, syn_passes = build_synergy_graph(synergy_csv_path)

    synergy_graph.clear()
    synergy_graph.update(graph)
    synergy_edges.clear()
    synergy_edges.extend(edges)
    synergy_self.clear()
    synergy_self.update(self_loops)

    seen = {}
    for seq in suboptimal_sequences:
        for p in seq:
            if p not in seen:
                seen[p] = len(seen)
    for p in sorted(syn_passes - set(seen.keys())):
        seen[p] = len(seen)

    all_passes.clear()
    all_passes.extend(seen.keys())
    pass_to_idx.clear()
    pass_to_idx.update({p: i for i, p in enumerate(all_passes)})

def split_train_validation_programs(programs, val_ratio=0.2, min_val=5):
    """
    把训练程序切分为“BO 搜索训练集”和“最终模型选择验证集”。

    这是对前面建议第 2 点的直接实现：
      - BO 的代理模型、EI 和迭代决策，只看 search_train
      - 最终通用序列的选择，不再按训练集最优，而按 validation 最优

    这样能显著缓解一个常见问题：
      某条序列在 search_train 上非常好，但对未见程序不一定最好；
      如果最终仍按训练集最优选，就容易把“训练集特化序列”误当通用序列。

    切分方式：
      - 固定随机种子，保证可复现
      - 至少留 1 个 search_train 程序
      - 至少留 min_val 个 validation 程序（如果总量允许）
    """
    programs = list(programs)
    if len(programs) <= 1 or val_ratio <= 0.0:
        return programs, []

    rng = random.Random(456)
    shuffled = list(programs)
    rng.shuffle(shuffled)

    val_size = int(round(len(shuffled) * val_ratio))
    val_size = max(min_val, val_size)
    val_size = min(val_size, len(shuffled) - 1)

    if val_size <= 0:
        return shuffled, []

    val_programs = shuffled[:val_size]
    search_programs = shuffled[val_size:]
    return search_programs, val_programs

def compute_oz_values(programs):
    """
    为一组程序计算 -Oz 基准指令数。

    把这个步骤抽成独立函数有两个好处：
      1. 训练 / 验证 / 测试三套集合都能复用相同逻辑
      2. 主流程更容易读，也便于后续替换为缓存版实现
    """
    oz_values = []
    for prog in programs:
        with open(prog, 'r') as f:
            ll_code = f.read()
        try:
            oz_values.append(get_instrcount(ll_code, ['-Oz'], llvm_tools_path))
        except Exception as exc:
            raise RuntimeError(
                f"Failed to compute -Oz baseline for {prog}: {exc}"
            ) from exc
    return oz_values

