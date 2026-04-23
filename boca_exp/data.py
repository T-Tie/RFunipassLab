"""数据加载、随机采样、runtime harness 构建与全局状态初始化。"""

from __future__ import annotations

import ast
import csv
import json
import os
import random
import time
from collections import defaultdict
from pathlib import Path
from typing import Any, Callable, Dict, Iterable, List, Optional, Sequence, Tuple

from .objective import compute_baseline_values
from .objective_time import ObjectiveError, RuntimeHarnessBuilder
from .paths import RUNTIME_CACHE_DIR, default_runtime_manifest_path
from .settings import (
    SPLIT_SEED,
    RUNTIME_MAX_VARIANCE_PCT,
    RUNTIME_SAMPLES,
    RUNTIME_TARGET_SAMPLE_MS,
    RUNTIME_TIMEOUT_SEC,
    llvm_tools_path,
)
from .state import all_passes, pass_to_idx, synergy_edges, synergy_graph, synergy_self

RUNTIME_MANIFEST_VERSION = 2
REQUIRED_FIXED_BASELINES = ('none', 'oz', 'o3')


def _parse_pass_sequence(seq_raw: str) -> List[str]:
    """
    把 CSV 里的 best_sequence 字段解析成标准化 pass 序列。

    输入通常是 Python list 的字符串表示，例如：
        "['function(mem2reg)', 'function(newgvn)']"

    返回：
        list[str]

    这里统一做两件事：
      1. 过滤非字符串元素和空字符串；
      2. 去掉首尾空白，保证后续做去重 / 建词表时语义一致。
    """
    seq = ast.literal_eval(seq_raw)
    if not isinstance(seq, list):
        return []
    return [p.strip() for p in seq if isinstance(p, str) and p.strip()]


def load_valid_rows_from_tuning_csv(csv_path: str) -> List[Dict[str, Any]]:
    """
    读取 tuning_results.csv 中所有“可用”的记录。

    与旧版直接取前 N 行不同，这里先把整个 CSV 中可用记录统一读入，再做：
      - 程序去重；
      - 序列去重；
      - 随机抽样。

    这样做的目的，是避免 CSV 前部存在大量重复或分布偏斜时，
    让初始样本设计从一开始就偏向某一类序列。
    """
    rows: List[Dict[str, Any]] = []

    with open(csv_path, 'r', newline='') as file_obj:
        reader = csv.DictReader(file_obj)
        for row_id, row in enumerate(reader):
            filename = (row.get('filename') or '').strip()
            seq_raw = (row.get('best_sequence') or '').strip()
            best_score_raw = (row.get('best_score') or '').strip()

            if not filename or not os.path.isfile(filename):
                continue

            try:
                seq = _parse_pass_sequence(seq_raw)
            except Exception:
                # 某些 CSV 行可能存坏了；跳过即可，不让它污染采样分布。
                continue

            try:
                best_score = float(best_score_raw) if best_score_raw else float('inf')
            except ValueError:
                best_score = float('inf')

            # 旧实验中 best_score=0 往往代表无效记录；继续沿用该过滤策略。
            if best_score == 0.0:
                continue

            rows.append({
                'row_id': row_id,
                'filename': filename,
                'best_sequence': seq,
                'best_score': best_score,
            })

    return rows


def _random_unique_rows(
    rows: Sequence[Dict[str, Any]],
    key_fn: Callable[[Dict[str, Any]], Any],
    rng: random.Random,
) -> List[Dict[str, Any]]:
    """
    对候选行按 key 去重，并为每个 key 随机保留一个代表样本。

    这一步仍然保留“去重”约束，但去掉所有按 best_score、长度、分桶等
    启发式偏置，让代表样本的选择完全随机。

    之所以用局部 RNG：
      - 抽样过程可复现；
      - 不会污染后续 BO / GA 的全局随机状态。
    """
    grouped: Dict[Any, List[Dict[str, Any]]] = defaultdict(list)
    for row in rows:
        grouped[key_fn(row)].append(row)

    unique_rows = [rng.choice(group_rows) for group_rows in grouped.values()]
    return rng.sample(unique_rows, len(unique_rows)) if unique_rows else []


def random_sample_rows(
    rows: Sequence[Dict[str, Any]],
    sample_size: int,
    rng: random.Random,
) -> List[Dict[str, Any]]:
    """
    对候选池做完全随机采样。

    当前版本已经取消分层采样，因此这里不再：
      - 构造分层桶；
      - 控制不同桶的覆盖率；
      - 使用任何基于序列长度/重复率的选择逻辑。

    而是直接从候选池中无偏地随机抽取 `sample_size` 个样本。
    如果候选池不够大，则返回全部样本的随机排列。
    """
    if sample_size <= 0 or not rows:
        return []
    size = min(sample_size, len(rows))
    return rng.sample(list(rows), size)


def load_train_test_from_rows(
    all_rows: Sequence[Dict[str, Any]],
    train_topk: int = 200,
    test_topk: int = 50,
    seed_topk: Optional[int] = None,
) -> Tuple[List[str], List[List[str]], List[str]]:
    """
    从内存候选行中读取训练程序、测试程序和初始 seed 序列。

    这个函数是“目标无关”的：
      - 指令数目标可以直接传 tuning CSV 行；
      - 运行时间目标可以传带有 `runtime_harness` 的筛选后行。

    采样策略继续保持和 RFunipassLab 原有实现一致：
      - 程序按文件名去重；
      - 训练 / 测试程序完全随机抽样；
      - seed 序列只从训练程序对应序列中去重抽样，避免测试信息泄漏。
    """
    if seed_topk is None:
        seed_topk = train_topk

    if not all_rows:
        return [], [], []

    rng = random.Random(SPLIT_SEED)
    program_rows = _random_unique_rows(all_rows, key_fn=lambda row: row['filename'], rng=rng)
    train_rows = random_sample_rows(program_rows, train_topk, rng)
    train_filenames = {row['filename'] for row in train_rows}

    remaining_program_rows = [
        row for row in program_rows
        if row['filename'] not in train_filenames
    ]
    test_rows = random_sample_rows(remaining_program_rows, test_topk, rng)

    train_seed_rows = _random_unique_rows(
        list(train_rows),
        key_fn=lambda row: tuple(row['best_sequence']),
        rng=rng,
    )
    seed_rows = random_sample_rows(train_seed_rows, seed_topk, rng)

    train_programs = [row['filename'] for row in train_rows]
    suboptimal_sequences = [list(row['best_sequence']) for row in seed_rows]
    test_programs = [row['filename'] for row in test_rows]

    return train_programs, suboptimal_sequences, test_programs


def load_train_test_from_tuning_csv(
    csv_path: str,
    train_topk: int = 200,
    test_topk: int = 50,
    seed_topk: Optional[int] = None,
) -> Tuple[List[str], List[List[str]], List[str]]:
    """
    读取训练程序、测试程序以及“初始 seed 序列”。

    设计原则：
      - 训练程序：从全部有效程序中随机抽样；
      - 测试程序：从剩余程序中随机抽样，保证与训练程序不重叠；
      - 初始 seed 序列：仅从训练程序对应的序列中去重后随机抽取。
    """
    all_rows = load_valid_rows_from_tuning_csv(csv_path)
    return load_train_test_from_rows(
        all_rows,
        train_topk=train_topk,
        test_topk=test_topk,
        seed_topk=seed_topk,
    )


def _load_runtime_rows_from_manifest(
    manifest_path: Path,
    required_rows: Optional[int],
) -> List[Dict[str, Any]]:
    """尝试从已有 runtime manifest 中恢复可评估行。"""
    if not manifest_path.is_file():
        return []

    payload = json.loads(manifest_path.read_text(encoding='utf-8'))
    if int(payload.get('version', 1)) < RUNTIME_MANIFEST_VERSION:
        return []

    rows: List[Dict[str, Any]] = []
    try:
        for idx, item in enumerate(payload.get('programs', [])):
            runtime_harness = item['runtime_harness']
            fixed_baselines = runtime_harness.get('fixed_baselines') or {}
            if any(name not in fixed_baselines for name in REQUIRED_FIXED_BASELINES):
                return []
            rows.append({
                'row_id': item.get('row_id', idx),
                'filename': item['filename'],
                'best_sequence': list(item['best_sequence']),
                'best_score': item.get('best_score', float('inf')),
                'runtime_harness': runtime_harness,
            })
    except (KeyError, TypeError):
        return []

    if rows and (required_rows is None or len(rows) >= required_rows):
        return rows
    return []


def load_runtime_evaluable_rows_from_tuning_csv(
    csv_path: str,
    required_rows: Optional[int] = None,
    manifest_path: Optional[str | Path] = None,
    rebuild: bool = False,
) -> List[Dict[str, Any]]:
    """
    从 tuning CSV 中筛出“可用于真实运行时间评估”的程序子集。

    约束：
      - 程序必须能在 -Oz 下成功编译并运行；
      - 程序在自动生成输入上，其已知 best_sequence 版本与 -Oz 版本输出一致；
      - -Oz 基线运行时间的重复测量方差受控。

    返回的每一行在原始字段基础上额外附带 `runtime_harness`。
    该 manifest 会写在 RFunipassLab/results/runtime/manifests/ 下，
    与指令数实验结果天然分离。

    自 v2 起，runtime harness 会一次性记录 `[] / -Oz / -O3` 三条固定参考基线，
    供后续每轮迭代直接做相对对比，而不必在实验中重复测量它们。
    """
    manifest = Path(manifest_path) if manifest_path else default_runtime_manifest_path()

    if not rebuild:
        rows = _load_runtime_rows_from_manifest(manifest, required_rows)
        if rows:
            return rows

    all_rows = load_valid_rows_from_tuning_csv(csv_path)
    builder = RuntimeHarnessBuilder(
        cache_dir=str(RUNTIME_CACHE_DIR),
        llvm_tools_path_value=llvm_tools_path,
        timeout_sec=RUNTIME_TIMEOUT_SEC,
        samples=RUNTIME_SAMPLES,
        target_sample_ms=RUNTIME_TARGET_SAMPLE_MS,
        max_variance_pct=RUNTIME_MAX_VARIANCE_PCT,
    )

    runtime_rows: List[Dict[str, Any]] = []
    for row in all_rows:
        if required_rows is not None and len(runtime_rows) >= required_rows:
            break
        try:
            harness = builder.calibrate_program(row['filename'], row['best_sequence'])
        except ObjectiveError:
            continue
        runtime_rows.append({
            'row_id': row['row_id'],
            'filename': row['filename'],
            'best_sequence': list(row['best_sequence']),
            'best_score': row['best_score'],
            'runtime_harness': harness.to_json(),
        })

    payload = {
        'version': RUNTIME_MANIFEST_VERSION,
        'generated_at': time.strftime('%Y-%m-%d %H:%M:%S'),
        'required_rows': required_rows,
        'programs': runtime_rows,
    }
    manifest.parent.mkdir(parents=True, exist_ok=True)
    manifest.write_text(
        json.dumps(payload, indent=2, ensure_ascii=False),
        encoding='utf-8',
    )
    return runtime_rows


def build_synergy_graph(csv_path: str):
    """
    从 Step3_EnumeratedPairs.csv 构建 pass 协同关系有向图。

    CSV 中每行是一个协同对 (passA, passB)，含义：
      passA 放在 passB 前面使用，比单独使用 passB 效果更好。

    返回：
        graph:      dict[str, set[str]]  - 有向邻接表
        edges:      list[(str, str)]     - 非自环协同边列表
        self_loops: set[str]             - 自环 pass 集合
        pass_set:   set[str]             - 所有 pass 名称
    """
    graph = defaultdict(set)
    edges = []
    self_loops = set()
    pass_set = set()

    with open(csv_path, 'r', newline='') as file_obj:
        reader = csv.DictReader(file_obj)
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
                self_loops.add(a)
            else:
                graph[a].add(b)
                edges.append((a, b))

    return dict(graph), edges, self_loops, pass_set


def init_global_state(suboptimal_sequences: Iterable[Sequence[str]], synergy_csv_path: str) -> None:
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

    seen: Dict[str, int] = {}
    for seq in suboptimal_sequences:
        for pass_name in seq:
            if pass_name not in seen:
                seen[pass_name] = len(seen)
    for pass_name in sorted(syn_passes - set(seen.keys())):
        seen[pass_name] = len(seen)

    all_passes.clear()
    all_passes.extend(seen.keys())
    pass_to_idx.clear()
    pass_to_idx.update({pass_name: idx for idx, pass_name in enumerate(all_passes)})


def split_train_validation_programs(
    programs: Sequence[str],
    val_ratio: float = 0.2,
    min_val: int = 5,
) -> Tuple[List[str], List[str]]:
    """
    把训练程序切分为“BO 搜索训练集”和“最终模型选择验证集”。

    切分原则：
      - 固定随机种子，保证可复现；
      - 至少留 1 个 search_train 程序；
      - 至少留 min_val 个 validation 程序（如果总量允许）。
    """
    program_list = list(programs)
    if len(program_list) <= 1 or val_ratio <= 0.0:
        return program_list, []

    rng = random.Random(SPLIT_SEED)
    shuffled = list(program_list)
    rng.shuffle(shuffled)

    val_size = int(round(len(shuffled) * val_ratio))
    val_size = max(min_val, val_size)
    val_size = min(val_size, len(shuffled) - 1)

    if val_size <= 0:
        return shuffled, []

    val_programs = shuffled[:val_size]
    search_programs = shuffled[val_size:]
    return search_programs, val_programs


def compute_oz_values(programs: Sequence[str]):
    """
    兼容旧代码的 baseline 入口。

    历史上这个函数只计算 -Oz 指令数；现在它委托给当前 active objective backend，
    因此在 runtime 目标下返回的是 -Oz 基准运行时间，在 instrcount 目标下返回的是
    -Oz 基准指令数。新代码建议直接调用 `objective.compute_baseline_values`。
    """
    return compute_baseline_values(programs)
