"""实验主流程与 CLI 入口。"""

from __future__ import annotations

import json
import math
import os
import time
from pathlib import Path
from typing import Any, Dict, Iterable, List, Optional, Sequence, Tuple

import numpy as np

from .data import (
    init_global_state,
    load_runtime_evaluable_rows_from_tuning_csv,
    load_train_test_from_rows,
    load_train_test_from_tuning_csv,
    split_train_validation_programs,
)
from .features import get_feature_dim, get_feature_mode, get_sequence_syn_rate
from .objective import (
    compute_baseline_values,
    configure_objective_backend,
    create_objective_backend,
    evaluate_sequence_metrics,
    get_objective_backend,
    prepare_objective_backend,
    reset_objective_backend,
)
from .paths import (
    DEFAULT_DATA_DIR,
    default_result_json_path,
    default_runtime_manifest_path,
    ensure_results_layout,
    normalize_objective_kind,
)
from .search import get_nd_solutions
from .selection import (
    _primary_metrics_for_selection,
    ablation_post_process,
    rank_top_unique_sequences,
    select_best_sequence_index,
)
from .settings import (
    BACKEND_OPT_LEVEL,
    GA_ELITE_RATIO,
    GA_GENERATIONS,
    GA_MUTATE_RATE,
    GA_POP_SIZE,
    GA_TOURNAMENT_K,
    INITIAL_SEED_TOPK,
    MAX_SEQ_LEN,
    MIN_VAL_PROGRAMS,
    OBJ_HIGHVAR_WEIGHT,
    OBJECTIVE_KIND,
    OBJ_WORSEN_WEIGHT,
    PROGRAM_POOL_KIND,
    REBUILD_RUNTIME_MANIFEST,
    RUNTIME_REQUIRED_ROWS,
    VAL_RATIO,
    begin2end,
    decay,
    iters,
    offset,
    scale,
)
from .state import all_passes, synergy_edges, synergy_self


def _jsonable(obj: Any) -> Any:
    """把 numpy 标量和容器递归转成 JSON 可写对象。"""
    if isinstance(obj, dict):
        return {key: _jsonable(value) for key, value in obj.items()}
    if isinstance(obj, (list, tuple)):
        return [_jsonable(value) for value in obj]
    if isinstance(obj, np.generic):
        return obj.item()
    return obj


def _unique_ordered(items: Iterable[str]) -> List[str]:
    """按首次出现顺序去重，便于预热 objective backend。"""
    seen = set()
    result = []
    for item in items:
        if item in seen:
            continue
        seen.add(item)
        result.append(item)
    return result


def _resolve_program_pool_kind(objective_kind: str, requested_pool_kind: str) -> str:
    """
    解析程序池来源。

    - `auto`：instrcount 默认用原 tuning CSV；runtime 默认用 runtime-evaluable 子集；
    - `tuning`：只适合指令数目标；
    - `runtime`：可用于 runtime 目标，也可用于指令数目标的公平子集对照。
    """
    requested = (requested_pool_kind or 'auto').strip().lower()
    if requested not in {'auto', 'tuning', 'runtime'}:
        raise ValueError(f"Unsupported PROGRAM_POOL_KIND={requested_pool_kind!r}")

    resolved_objective = normalize_objective_kind(objective_kind)
    if requested == 'auto':
        return 'runtime' if resolved_objective == 'runtime' else 'tuning'
    if resolved_objective == 'runtime' and requested != 'runtime':
        raise ValueError(
            "OBJECTIVE_KIND=runtime requires PROGRAM_POOL_KIND=runtime or auto, "
            "because runtime evaluation needs a calibrated harness per program."
        )
    return requested


def _runtime_required_rows(train_topk: int, test_topk: int, seed_topk: int) -> int:
    """解析 runtime manifest 至少需要筛出的程序行数。"""
    if RUNTIME_REQUIRED_ROWS > 0:
        return RUNTIME_REQUIRED_ROWS
    return max(train_topk + test_topk, seed_topk)


def _load_program_pool(
    tuning_csv: str,
    train_topk: int,
    test_topk: int,
    seed_topk: int,
    objective_kind: str,
    program_pool_kind: str,
    runtime_manifest_path: Path,
):
    """按目标类型和程序池策略加载 train / seed / test。"""
    resolved_pool_kind = _resolve_program_pool_kind(objective_kind, program_pool_kind)
    runtime_rows = None
    runtime_required_rows = None

    if resolved_pool_kind == 'runtime':
        runtime_required_rows = _runtime_required_rows(train_topk, test_topk, seed_topk)
        print(f"Loading runtime-evaluable rows from: {tuning_csv}")
        print(f"Runtime manifest path: {runtime_manifest_path}")
        print(f"Runtime required rows: {runtime_required_rows}")
        runtime_rows = load_runtime_evaluable_rows_from_tuning_csv(
            tuning_csv,
            required_rows=runtime_required_rows,
            manifest_path=runtime_manifest_path,
            rebuild=REBUILD_RUNTIME_MANIFEST,
        )
        print(f"Loaded runtime-evaluable rows: {len(runtime_rows)}")
        programs, suboptimal_sequences, test_programs = load_train_test_from_rows(
            runtime_rows,
            train_topk=train_topk,
            test_topk=test_topk,
            seed_topk=seed_topk,
        )
    else:
        print(f"Loading train/test rows from: {tuning_csv}")
        programs, suboptimal_sequences, test_programs = load_train_test_from_tuning_csv(
            tuning_csv,
            train_topk=train_topk,
            test_topk=test_topk,
            seed_topk=seed_topk,
        )

    if not programs:
        raise RuntimeError('No train programs were loaded; check TUNING_CSV and sampling limits.')
    if not suboptimal_sequences:
        raise RuntimeError('No initial seed sequences were loaded; check SEED_TOPK and tuning CSV rows.')

    return programs, suboptimal_sequences, test_programs, runtime_rows, resolved_pool_kind, runtime_required_rows


def _format_metrics(label: str, metrics: Dict[str, Any]) -> str:
    """统一的日志指标格式，避免多处重复拼接。"""
    return ", ".join([
        f"{label}_obj={metrics['objective']:.4f}",
        f"{label}_mean={metrics['mean_norm']:.4f}",
        f"{label}_worsen={metrics['worsen_rate']:.2%}",
        f"{label}_highvar={metrics.get('high_variance_rate', 0.0):.2%}",
    ])


def _format_runtime_comparisons(metrics: Optional[Dict[str, Any]]) -> str:
    """把相对 [] / -Oz / -O3 的运行时间对比格式化为单行文本。"""
    if not metrics:
        return ""

    comparisons = metrics.get('comparisons') or {}
    parts = []
    for name in ('none', 'oz', 'o3'):
        item = comparisons.get(name)
        if not item:
            continue
        mean_norm = float(item.get('mean_norm', float('inf')))
        if not math.isfinite(mean_norm):
            parts.append(f"vs_{name}=inf")
            continue
        improvement_pct = item.get('improvement_pct')
        if improvement_pct is None:
            improvement_pct = (1.0 - mean_norm) * 100.0
        parts.append(f"vs_{name}={mean_norm:.3f} ({float(improvement_pct):+.1f}%)")
    return "  ".join(parts)


def _format_fixed_baseline_panel(panel: Optional[Dict[str, Any]]) -> str:
    """把固定基线摘要压成一行，便于在 Step 2 和 summary 中展示。"""
    if not panel:
        return ""

    baselines = panel.get('baselines') or {}
    parts = []
    for name in ('none', 'oz', 'o3'):
        item = baselines.get(name)
        if not item:
            continue
        mean_norm = float(item.get('mean_norm', float('inf')))
        if not math.isfinite(mean_norm):
            parts.append(f"{item.get('label', name)}=inf")
            continue
        improvement_pct = float(item.get('improvement_pct', (1.0 - mean_norm) * 100.0))
        parts.append(f"{item.get('label', name)}={mean_norm:.3f} ({improvement_pct:+.1f}%)")
    return "  ".join(parts)


def main(programs: Sequence[str], suboptimal_sequences: Sequence[Sequence[str]],
         test_programs: Optional[Sequence[str]] = None, topn: int = 5):
    """
    核心 BOCA 搜索函数。

    这里刻意不关心“优化目标到底是指令数还是运行时间”：
    - BO / RF / GA / validation selection 的方法保持不变；
    - 目标差异统一封装在 `boca_exp.objective` 的 active backend 中；
    - 因此 runtime 版本和 instrcount 版本更容易做公平对照。
    """
    backend = get_objective_backend()
    test_programs = list(test_programs or [])

    print("=" * 60)
    print(f"目标类型:      {backend.objective_kind}")
    print(f"基准指标:      {backend.baseline_display_name}")
    print(f"优化指标:      {backend.metric_display_name}")
    if backend.objective_kind == 'runtime':
        print(f"后端编译级别:  {BACKEND_OPT_LEVEL or '(none)'}")
    print(f"输入程序数:    {len(programs)}")
    print(f"输入次优序列数: {len(suboptimal_sequences)}")
    print(f"测试程序数:    {len(test_programs)}")
    print(f"Pass 词表大小: {len(all_passes)}")
    print(f"协同边数:      {len(synergy_edges)}")
    print(f"自环 pass 数:  {len(synergy_self)}")
    print(f"序列长度上限:  {MAX_SEQ_LEN}")
    print(f"特征模式:      {get_feature_mode()}")
    print(f"RF 特征维度:   {get_feature_dim()}")
    print(f"词表: {all_passes}")
    print(
        f"多目标权重:    mean=1.0, "
        f"worsen={OBJ_WORSEN_WEIGHT}, highvar={OBJ_HIGHVAR_WEIGHT}"
    )

    # ---- Step 1.5: 从训练程序中切出验证集 ----
    search_programs, val_programs = split_train_validation_programs(
        programs,
        VAL_RATIO,
        MIN_VAL_PROGRAMS,
    )
    primary_split_name = 'validation' if val_programs else 'search_train'
    print("\n[Step 1.5] 训练程序切分...")
    print(f"  search_train 程序数: {len(search_programs)}")
    print(f"  validation 程序数:   {len(val_programs)}")

    # ---- Step 2: 计算目标后端对应的 -Oz baseline ----
    print(f"\n[Step 2] 计算 search_train 程序 {backend.baseline_display_name}...")
    search_baseline_values = compute_baseline_values(search_programs)

    val_baseline_values = None
    if val_programs:
        print(f"[Step 2b] 计算 validation 程序 {backend.baseline_display_name}...")
        val_baseline_values = compute_baseline_values(val_programs)

    test_baseline_values = None
    if test_programs:
        print(f"[Step 2c] 计算测试集程序 {backend.baseline_display_name}...")
        test_baseline_values = compute_baseline_values(test_programs)

    fixed_baseline_summaries: Dict[str, Dict[str, Any]] = {}
    if backend.objective_kind == 'runtime' and hasattr(backend, 'summarize_fixed_baselines'):
        print("\n[Step 2d] 固定参考基线（相对 []）...")
        fixed_baseline_summaries['search_train'] = backend.summarize_fixed_baselines(
            search_programs,
            anchor='none',
        )
        print(
            f"  search_train: {_format_fixed_baseline_panel(fixed_baseline_summaries['search_train'])}"
        )
        if val_programs:
            fixed_baseline_summaries['validation'] = backend.summarize_fixed_baselines(
                val_programs,
                anchor='none',
            )
            print(
                f"  validation:   {_format_fixed_baseline_panel(fixed_baseline_summaries['validation'])}"
            )
        if test_programs:
            fixed_baseline_summaries['test'] = backend.summarize_fixed_baselines(
                test_programs,
                anchor='none',
            )
            print(
                f"  test:         {_format_fixed_baseline_panel(fixed_baseline_summaries['test'])}"
            )

    # ---- Step 3: 评估初始 seed 序列 ----
    evaluated_sequences = [list(sequence) for sequence in suboptimal_sequences]
    evaluated_scores = []
    evaluated_train_metrics = []
    evaluated_val_metrics = []
    timestamps = []
    iteration_compare_history = []
    begin_time = time.time()

    print(f"\n[Step 3] 评估初始 seed 序列（共 {len(evaluated_sequences)} 条）...")
    for seq in evaluated_sequences:
        train_metrics = evaluate_sequence_metrics(search_programs, search_baseline_values, seq)
        val_metrics = (
            evaluate_sequence_metrics(val_programs, val_baseline_values, seq)
            if val_programs else None
        )
        evaluated_scores.append(train_metrics['objective'])
        evaluated_train_metrics.append(train_metrics)
        evaluated_val_metrics.append(val_metrics)
        timestamps.append(time.time() - begin_time)

    search_best_objective = min(evaluated_scores)
    search_best_idx = int(np.argmin(evaluated_scores))
    search_best_seq = evaluated_sequences[search_best_idx]

    # rnum 衰减调度。
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
            evaluated_sequences,
            evaluated_scores,
            search_best_objective,
            rnum,
            suboptimal_sequences,
        )

        train_metrics = evaluate_sequence_metrics(search_programs, search_baseline_values, new_seq)
        val_metrics = (
            evaluate_sequence_metrics(val_programs, val_baseline_values, new_seq)
            if val_programs else None
        )
        new_score = train_metrics['objective']

        evaluated_sequences.append(new_seq)
        evaluated_scores.append(new_score)
        evaluated_train_metrics.append(train_metrics)
        evaluated_val_metrics.append(val_metrics)
        timestamps.append(time.time() - begin_time)

        if new_score < search_best_objective:
            search_best_objective = new_score
            search_best_seq = new_seq

        syn_rate = get_sequence_syn_rate(new_seq)
        current_best_idx = select_best_sequence_index(
            evaluated_sequences,
            evaluated_train_metrics,
            evaluated_val_metrics,
        )
        current_primary_metrics = _primary_metrics_for_selection(
            evaluated_train_metrics[current_best_idx],
            evaluated_val_metrics[current_best_idx],
        )

        print(
            f"  [iter {steps:3d}/{iters}] "
            f"search_obj={new_score:.4f}  "
            f"search_best={search_best_objective:.4f}  "
            f"{primary_split_name}_best={current_primary_metrics['objective']:.4f}  "
            f"EI={ei_val:.4f}  rnum={rnum:.1f}  "
            f"len={len(new_seq)}  syn_rate={syn_rate:.2f}  "
            f"mean={train_metrics['mean_norm']:.4f}  "
            f"worsen={train_metrics['worsen_rate']:.2%}  "
            f"highvar={train_metrics.get('high_variance_rate', 0.0):.2%}"
        )
        train_compare_text = _format_runtime_comparisons(train_metrics)
        if train_compare_text:
            print(f"                 search_train: {train_compare_text}")
        val_compare_text = _format_runtime_comparisons(val_metrics)
        if val_compare_text:
            print(f"                 validation:   {val_compare_text}")

        iteration_compare_history.append({
            'iter': steps,
            'sequence': list(new_seq),
            'search_objective': new_score,
            'search_train': train_metrics.get('comparisons', {}),
            'validation': val_metrics.get('comparisons', {}) if val_metrics else None,
        })

    # ---- Step 5: 基于 validation / search_train 选择最终序列 ----
    print(f"\n[Step 5] 按 {primary_split_name} 选择最终通用序列...")
    selected_idx = select_best_sequence_index(
        evaluated_sequences,
        evaluated_train_metrics,
        evaluated_val_metrics,
    )
    final_seq = list(evaluated_sequences[selected_idx])
    final_train_metrics = evaluated_train_metrics[selected_idx]
    final_val_metrics = evaluated_val_metrics[selected_idx]
    final_primary_metrics = _primary_metrics_for_selection(
        final_train_metrics,
        final_val_metrics,
    )

    print("  选择结果:")
    print(f"    {_format_metrics('search_train', final_train_metrics)}")
    final_train_compare_text = _format_runtime_comparisons(final_train_metrics)
    if final_train_compare_text:
        print(f"    search_train: {final_train_compare_text}")
    if final_val_metrics is not None:
        print(f"    {_format_metrics('validation', final_val_metrics)}")
        final_val_compare_text = _format_runtime_comparisons(final_val_metrics)
        if final_val_compare_text:
            print(f"    validation:   {final_val_compare_text}")

    # ---- Step 6: 在最终选择集合上做消融，进一步去冗余 ----
    print(f"\n[Step 6] 在 {primary_split_name} 上执行消融后处理...")
    ablation_programs = val_programs if val_programs else search_programs
    ablation_baseline_values = val_baseline_values if val_programs else search_baseline_values
    ablated_seq, ablated_primary_metrics = ablation_post_process(
        final_seq,
        ablation_programs,
        ablation_baseline_values,
        split_name=primary_split_name,
    )

    if ablated_primary_metrics['objective'] <= final_primary_metrics['objective'] + 1e-6:
        print(
            f"  消融有效: {len(final_seq)} → {len(ablated_seq)} passes, "
            f"{primary_split_name}_objective: "
            f"{final_primary_metrics['objective']:.4f} → {ablated_primary_metrics['objective']:.4f}"
        )
        final_seq = ablated_seq
        final_train_metrics = evaluate_sequence_metrics(search_programs, search_baseline_values, final_seq)
        final_val_metrics = (
            evaluate_sequence_metrics(val_programs, val_baseline_values, final_seq)
            if val_programs else None
        )
        final_primary_metrics = _primary_metrics_for_selection(
            final_train_metrics,
            final_val_metrics,
        )
    else:
        print("  消融无改善，保留原序列")

    final_test_metrics = (
        evaluate_sequence_metrics(test_programs, test_baseline_values, final_seq)
        if test_programs and test_baseline_values else None
    )

    final_syn_rate = get_sequence_syn_rate(final_seq)
    print(f"\n最终通用 pass 序列（{len(final_seq)} 个 pass, syn_rate={final_syn_rate:.2f}）:")
    print("  " + " → ".join(final_seq) if final_seq else "  (空序列)")
    print(f"  {_format_metrics('search_train', final_train_metrics)}")
    final_train_compare_text = _format_runtime_comparisons(final_train_metrics)
    if final_train_compare_text:
        print(f"  search_train: {final_train_compare_text}")
    if final_val_metrics is not None:
        print(f"  {_format_metrics('validation', final_val_metrics)}")
        final_val_compare_text = _format_runtime_comparisons(final_val_metrics)
        if final_val_compare_text:
            print(f"  validation:   {final_val_compare_text}")
    if final_test_metrics is not None:
        print(f"  {_format_metrics('test', final_test_metrics)}")
        final_test_compare_text = _format_runtime_comparisons(final_test_metrics)
        if final_test_compare_text:
            print(f"  test:         {final_test_compare_text}")

    # ---- Step 7: 输出 Top-N 序列 ----
    ranked_top = rank_top_unique_sequences(
        evaluated_sequences,
        evaluated_train_metrics,
        evaluated_val_metrics,
        topn=topn,
    )
    print(f"\nTop-{len(ranked_top)} 最佳序列（按 {primary_split_name} 多目标 objective 升序）:")
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
            f"{primary_split_name}_highvar={primary_metrics.get('high_variance_rate', 0.0):.2%}, "
            f"train_obj={train_metrics['objective']:.4f}, "
            f"train_mean={train_metrics['mean_norm']:.4f}, "
            f"train_highvar={train_metrics.get('high_variance_rate', 0.0):.2%}, "
            f"len={len(seq)}, syn_rate={syn_rate:.2f}"
        )
        if test_programs and test_baseline_values:
            test_metrics = evaluate_sequence_metrics(test_programs, test_baseline_values, seq)
            msg += (
                f", test_obj={test_metrics['objective']:.4f}, "
                f"test_mean={test_metrics['mean_norm']:.4f}, "
                f"test_worsen={test_metrics['worsen_rate']:.2%}, "
                f"test_highvar={test_metrics.get('high_variance_rate', 0.0):.2%}"
            )
        print(msg)
        print("     " + (" → ".join(seq) if seq else "(空序列)"))

    return {
        'objective_kind': backend.objective_kind,
        'objective_history': evaluated_scores,
        'timestamps': timestamps,
        'search_best_objective': search_best_objective,
        'search_best_sequence': search_best_seq,
        'final_sequence': final_seq,
        'final_train_metrics': final_train_metrics,
        'final_val_metrics': final_val_metrics,
        'final_test_metrics': final_test_metrics,
        'selection_split': primary_split_name,
        'selection_objective': final_primary_metrics['objective'],
        'fixed_baseline_summaries': fixed_baseline_summaries,
        'iteration_compare_history': iteration_compare_history,
    }


def _resolve_default_input_path(env_name: str, local_filename: str) -> str:
    """
    解析实验输入文件路径。

    优先级：
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


def _write_summary_json(summary_payload: Dict[str, Any], result_json_path: Path) -> None:
    """写出单次实验的结构化结果。"""
    result_json_path.parent.mkdir(parents=True, exist_ok=True)
    result_json_path.write_text(
        json.dumps(_jsonable(summary_payload), indent=2, ensure_ascii=False) + "\n",
        encoding='utf-8',
    )


def _build_cross_instrcount_metrics(best_sequence: Sequence[str], test_programs: Sequence[str]):
    """
    runtime 目标下额外记录同一序列的指令数表现。

    这不是 runtime 搜索目标的一部分，只是论文分析时很有用的旁路指标：
    它可以帮助判断“运行时间收益是否一定伴随指令数下降”。
    """
    if normalize_objective_kind(OBJECTIVE_KIND) != 'runtime' or not test_programs:
        return None

    try:
        instr_backend = create_objective_backend('instrcount')
        baselines = instr_backend.compute_baseline_values(test_programs)
        return instr_backend.evaluate_sequence_metrics(test_programs, baselines, best_sequence)
    except Exception as exc:
        return {'status': f'failed: {exc}'}


def cli_main() -> int:
    """脚本入口：加载数据、初始化状态、选择 objective backend 并执行实验。"""
    ensure_results_layout()

    tuning_csv = _resolve_default_input_path('TUNING_CSV', 'tuning_results.csv')
    synergy_csv = _resolve_default_input_path('SYNERGY_CSV', 'Step3_EnumeratedPairs.csv')
    _require_existing_file(tuning_csv, 'TUNING_CSV')
    _require_existing_file(synergy_csv, 'SYNERGY_CSV')

    objective_kind = normalize_objective_kind(OBJECTIVE_KIND)
    run_id = os.environ.get('RUN_ID') or time.strftime('%Y%m%d_%H%M%S_manual')
    result_json_path = Path(os.environ.get(
        'RESULT_JSON',
        str(default_result_json_path(objective_kind, run_id)),
    ))
    runtime_manifest_path = Path(os.environ.get(
        'RUNTIME_MANIFEST',
        str(default_runtime_manifest_path()),
    ))

    top_n = 5
    train_topk = int(os.environ.get('TRAIN_TOPK', 200))
    test_topk = int(os.environ.get('TEST_TOPK', 50))
    configured_seed_topk = INITIAL_SEED_TOPK
    effective_seed_topk = configured_seed_topk if configured_seed_topk > 0 else train_topk

    programs, suboptimal_sequences, test_programs, runtime_rows, resolved_pool_kind, runtime_required_rows = _load_program_pool(
        tuning_csv=tuning_csv,
        train_topk=train_topk,
        test_topk=test_topk,
        seed_topk=effective_seed_topk,
        objective_kind=objective_kind,
        program_pool_kind=PROGRAM_POOL_KIND,
        runtime_manifest_path=runtime_manifest_path,
    )
    print(f"Loaded train programs:       {len(programs)}")
    print(f"Loaded initial seed seqs:    {len(suboptimal_sequences)}")
    print(f"Loaded test programs:        {len(test_programs)}")
    print(f"Objective kind:              {objective_kind}")
    print(f"Program pool kind:           {resolved_pool_kind}")

    print(f"\nLoading synergy graph from: {synergy_csv}")
    init_global_state(suboptimal_sequences, synergy_csv)
    print(f"All passes ({len(all_passes)}): {all_passes}")
    print(f"Synergy edges: {len(synergy_edges)}")
    print(f"Self-loop passes: {synergy_self}")

    reset_objective_backend()
    backend = create_objective_backend(objective_kind, runtime_rows=runtime_rows)
    configure_objective_backend(backend)
    prepare_objective_backend(_unique_ordered(list(programs) + list(test_programs)))

    stats = []
    times = []
    run_results = []
    start_time = time.time()

    try:
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

        for history in stats:
            cur_best = float('inf')
            for idx, value in enumerate(history):
                cur_best = min(cur_best, value)
                history[idx] = cur_best

        selection_scores = [result['selection_objective'] for result in run_results]
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
        print(f"  {_format_metrics('search_train', best_result['final_train_metrics'])}")
        best_train_compare_text = _format_runtime_comparisons(best_result['final_train_metrics'])
        if best_train_compare_text:
            print(f"  search_train: {best_train_compare_text}")
        if best_result['final_val_metrics'] is not None:
            print(f"  {_format_metrics('validation', best_result['final_val_metrics'])}")
            best_val_compare_text = _format_runtime_comparisons(best_result['final_val_metrics'])
            if best_val_compare_text:
                print(f"  validation:   {best_val_compare_text}")
        if best_result['final_test_metrics'] is not None:
            print(f"  {_format_metrics('test', best_result['final_test_metrics'])}")
            best_test_compare_text = _format_runtime_comparisons(best_result['final_test_metrics'])
            if best_test_compare_text:
                print(f"  test:         {best_test_compare_text}")

        fixed_runtime_baselines = best_result.get('fixed_baseline_summaries')
        if fixed_runtime_baselines:
            print("固定参考基线（相对 []）:")
            for split_name in ('search_train', 'validation', 'test'):
                panel = fixed_runtime_baselines.get(split_name)
                if panel:
                    print(f"  {split_name}: {_format_fixed_baseline_panel(panel)}")

        cross_instrcount_metrics = _build_cross_instrcount_metrics(best_seq_overall, test_programs)
        summary_payload = {
            'run_id': run_id,
            'tuning_csv': tuning_csv,
            'synergy_csv': synergy_csv,
            'result_json_path': str(result_json_path),
            'objective_kind': objective_kind,
            'program_pool_kind': resolved_pool_kind,
            'runtime_manifest_path': str(runtime_manifest_path) if runtime_rows is not None else None,
            'runtime_required_rows': runtime_required_rows,
            'runtime_rows_count': len(runtime_rows) if runtime_rows is not None else None,
            'backend_opt_level': BACKEND_OPT_LEVEL,
            'train_topk': train_topk,
            'test_topk': test_topk,
            'seed_topk': configured_seed_topk,
            'effective_seed_topk': effective_seed_topk,
            'iters': iters,
            'runs': begin2end,
            'decay': decay,
            'scale': scale,
            'offset': offset,
            'ga_pop_size': GA_POP_SIZE,
            'ga_generations': GA_GENERATIONS,
            'ga_mutate_rate': GA_MUTATE_RATE,
            'ga_elite_ratio': GA_ELITE_RATIO,
            'ga_tournament_k': GA_TOURNAMENT_K,
            'max_seq_len': MAX_SEQ_LEN,
            'val_ratio': VAL_RATIO,
            'min_val_programs': MIN_VAL_PROGRAMS,
            'obj_worsen_weight': OBJ_WORSEN_WEIGHT,
            'obj_highvar_weight': OBJ_HIGHVAR_WEIGHT,
            'feature_mode': get_feature_mode(),
            'programs': list(programs),
            'test_programs': list(test_programs),
            'suboptimal_sequences': [list(seq) for seq in suboptimal_sequences],
            'run_results': run_results,
            'best_run_index': best_run,
            'best_result': best_result,
            'fixed_runtime_baselines': fixed_runtime_baselines,
            'best_runtime_sequence_instruction_test_metrics': cross_instrcount_metrics,
        }
        _write_summary_json(summary_payload, result_json_path)
        print(f"结果已写入: {result_json_path}")

        end_time = time.time()
        print(f"总运行时间: {end_time - start_time:.2f} 秒")
        return 0
    finally:
        reset_objective_backend()
