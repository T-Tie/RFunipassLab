# Cost-Parity 实验实现报告

## 1. 实现目标

本次实现用于比较：

```text
达到相同 IR 指令数调优效果时，PerProgramAutoTune 与 RFunipassLab 消耗的真实 instruction-count objective evaluation 次数。
```

核心口径：

- RFunipassLab: `best_core_tuning_cost.objective_eval_count`
- PerProgramAutoTune: `core_tuning_cost.json` 中各 strategy 的 `objective_eval_count`
- Per-program target feedback: `target_feedback_eval_count`
- RFunipass target feedback: 当前为 `0`

## 2. 新增脚本

| 脚本 | 作用 |
| --- | --- |
| `/root/exp/RFunipassLab/scripts/cost_parity/export_rfunipass_targets.py` | 从 RFunipass multi-seed manifest 导出每个 seed 的 test target CSV 和 RFunipass 阈值元数据 |
| `/root/exp/RFunipassLab/scripts/cost_parity/run_perprogram_budget_sweep.py` | 调用 `/root/exp/PerProgramAutoTune/run_per_program_autotune.py`，按 seed/budget/strategy 执行 budget sweep |
| `/root/exp/RFunipassLab/scripts/cost_parity/run_perprogram_budget_sweep.sh` | shell 入口包装，便于命令行使用 |
| `/root/exp/RFunipassLab/scripts/cost_parity/summarize_cost_parity.py` | 汇总 RFunipass 与 per-program 的效果、eval count、等效预算和 cost-to-match 曲线 |

代码验证：

```bash
python -m py_compile \
  scripts/cost_parity/export_rfunipass_targets.py \
  scripts/cost_parity/run_perprogram_budget_sweep.py \
  scripts/cost_parity/summarize_cost_parity.py
```

该检查已通过。

## 3. Smoke Test

为避免直接启动完整正式实验，本次先执行最小 smoke：

```text
seed = 456
target programs = 2
budget = 1
strategy = rio_random
jobs = 1
```

### 3.1 导出 smoke target

```bash
cd /root/exp/RFunipassLab

python scripts/cost_parity/export_rfunipass_targets.py \
  --batch-manifest results/manifests/20260505_021422_538199_feature_lite_multiseed_rf_explain_formal_10seeds_20260505_021421.json \
  --output-dir results/cost_parity/smoke_seed456_limit2 \
  --seeds 456 \
  --target-limit 2 \
  --tag smoke_seed456_limit2
```

产物：

- `/root/exp/RFunipassLab/results/cost_parity/smoke_seed456_limit2/rfunipass_targets_manifest.json`
- `/root/exp/RFunipassLab/results/cost_parity/smoke_seed456_limit2/seed456_test_programs.csv`
- `/root/exp/RFunipassLab/results/cost_parity/smoke_seed456_limit2/seed456_rfunipass_target.json`

注意：

该 smoke 使用 `--target-limit 2`，因此 `metrics_scope` 标记为 `full_test_metrics_for_limited_smoke_targets`。它只用于验证流程，不用于论文正式数据。

### 3.2 执行 smoke PerProgram sweep

```bash
python scripts/cost_parity/run_perprogram_budget_sweep.py \
  --target-dir results/cost_parity/smoke_seed456_limit2 \
  --budgets 1 \
  --strategies rio_random \
  --seeds 456 \
  --perprogram-root /root/exp/PerProgramAutoTune \
  --llvm-tools /root/llvm/llvm-project-21/build/bin \
  --baseline oz \
  --loop-policy wrap \
  --max-seq-len 120 \
  --jobs 1 \
  --tag smoke_cost_parity
```

PerProgramAutoTune 产物：

- `/root/exp/PerProgramAutoTune/results/20260507_123105_584414_smoke_cost_parity_seed456_budget1/summary.csv`
- `/root/exp/PerProgramAutoTune/results/20260507_123105_584414_smoke_cost_parity_seed456_budget1/core_tuning_cost.json`

关键 cost 字段：

```json
{
  "method": "rio_random",
  "program_count": 2,
  "budget": 1,
  "candidate_sequence_count": 2,
  "objective_eval_count": 2,
  "target_feedback_eval_count": 2
}
```

这验证了 per-program cost 计数与实验口径一致：`objective_eval_count = budget * target_program_count`。

### 3.3 汇总 smoke

```bash
python scripts/cost_parity/summarize_cost_parity.py \
  --target-dir results/cost_parity/smoke_seed456_limit2 \
  --output-prefix results/cost_parity/smoke_seed456_limit2/smoke_cost_parity \
  --match-field matched_by_objective
```

产物：

- `/root/exp/RFunipassLab/results/cost_parity/smoke_seed456_limit2/smoke_cost_parity_curve.csv`
- `/root/exp/RFunipassLab/results/cost_parity/smoke_seed456_limit2/smoke_cost_parity_equivalent_budget.csv`
- `/root/exp/RFunipassLab/results/cost_parity/smoke_seed456_limit2/smoke_cost_parity_aggregate.csv`
- `/root/exp/RFunipassLab/results/cost_parity/smoke_seed456_limit2/smoke_cost_parity_summary.md`
- `/root/exp/RFunipassLab/results/cost_parity/smoke_seed456_limit2/smoke_cost_parity_curve.svg`

Smoke 结果只用于验证字段流通：

```text
perprogram_eval_count = 2
rfunipass_eval_count = 40600
matched_by_objective = False
```

由于 budget=1 且只取 2 个程序，该结果不代表正式结论。

## 4. 正式 10-Seed Target 已导出

已导出完整 Poj 10-seed target：

```bash
python scripts/cost_parity/export_rfunipass_targets.py \
  --batch-manifest results/manifests/20260505_021422_538199_feature_lite_multiseed_rf_explain_formal_10seeds_20260505_021421.json \
  --output-dir results/cost_parity/poj_10seed_full_targets_20260507 \
  --tag poj_10seed_full_targets_20260507
```

产物：

- `/root/exp/RFunipassLab/results/cost_parity/poj_10seed_full_targets_20260507/rfunipass_targets_manifest.json`
- `/root/exp/RFunipassLab/results/cost_parity/poj_10seed_full_targets_20260507/seed456_test_programs.csv`
- ...
- `/root/exp/RFunipassLab/results/cost_parity/poj_10seed_full_targets_20260507/seed465_test_programs.csv`

每个 seed 均包含 `50` 个 RFunipass test programs。

## 5. 正式实验命令

正式 Poj 10-seed cost-parity sweep 建议命令：

```bash
cd /root/exp/RFunipassLab

python scripts/cost_parity/run_perprogram_budget_sweep.py \
  --target-dir results/cost_parity/poj_10seed_full_targets_20260507 \
  --budgets 1,2,4,8,16,30,60,100 \
  --strategies rio_random,ga_bitvector \
  --seeds 456,457,458,459,460,461,462,463,464,465 \
  --perprogram-root /root/exp/PerProgramAutoTune \
  --llvm-tools /root/llvm/llvm-project-21/build/bin \
  --baseline oz \
  --loop-policy wrap \
  --max-seq-len 120 \
  --jobs 1 \
  --tag poj10_cost_parity_20260507 \
  --continue-on-error
```

正式汇总命令：

```bash
python scripts/cost_parity/summarize_cost_parity.py \
  --target-dir results/cost_parity/poj_10seed_full_targets_20260507 \
  --output-prefix results/reports/poj10_cost_parity_20260507 \
  --match-field matched_by_objective
```

如果要加入 worsen-rate 安全约束：

```bash
python scripts/cost_parity/summarize_cost_parity.py \
  --target-dir results/cost_parity/poj_10seed_full_targets_20260507 \
  --output-prefix results/reports/poj10_cost_parity_20260507_safe \
  --match-field matched_by_objective_and_worsen
```

## 6. 输出解释

正式汇总会生成：

| 文件 | 内容 |
| --- | --- |
| `<prefix>_curve.csv` | 每个 seed/strategy/budget 的效果与 eval count |
| `<prefix>_equivalent_budget.csv` | 每个 seed/strategy 的最小等效预算 |
| `<prefix>_aggregate.csv` | 跨 seed 聚合的等效预算与 eval ratio |
| `<prefix>_summary.md` | 论文报告摘要 |
| `<prefix>_curve.svg` | budget-effect 曲线 |

核心判定：

```text
matched_by_objective = perprogram_objective <= rfunipass_objective + 0.005
perprogram_objective = perprogram_mean_norm + 0.15 * perprogram_worsen_rate
```

核心成本比：

```text
eval_ratio_vs_rfunipass = perprogram_eval_count / rfunipass_eval_count
```

## 7. 质量与可扩展性说明

- 不修改 RFunipassLab 原调优逻辑。
- 不修改 PerProgramAutoTune 原调优逻辑。
- 所有新增代码只做导出、调度和汇总。
- seed、budget、strategy、LLVM path、baseline、loop policy 均参数化。
- 支持 smoke target 与正式 full target。
- 支持后续扩展到 external datasets，只需要生成相同格式的 target manifest。
- PerProgram 失败 run 会记录到 sweep manifest；可用 `--continue-on-error` 保留部分结果。

## 8. 当前状态

已完成：

- 实现 3 个核心 Python 脚本和 1 个 shell wrapper。
- 完成 py_compile 静态检查。
- 完成 seed456 / 2 target / budget1 / rio_random smoke。
- 导出正式 Poj 10-seed full target CSV。

未执行：

- 未启动完整 10-seed × 8 budgets × 2 strategies 正式 sweep，避免立即占用大量 LLVM 资源。

