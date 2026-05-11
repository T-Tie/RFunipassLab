# Cost-Parity: cfsat_ga 接入与验证报告

## 目标

将 PerProgramAutoTune 中的 `cfsat_ga` 加入 RFunipass cost-parity 实验，用相同 LLVM21 工具链、相同 baseline、相同 loop policy 和相同测试程序集合，对比 per-program tuning 与 RFunipass 达到同等测试效果时所需的真实 IR 指令数量评估次数。

## 策略定义

- `cfsat_ga` 已在 `/root/exp/PerProgramAutoTune/perprog_tune/strategies/__init__.py` 中注册。
- 该策略实现位于 `/root/exp/PerProgramAutoTune/perprog_tune/strategies/cfsat_graph.py`，核心是基于 pass synergy graph path 的 per-program GA 搜索。
- 本次接入的 `cfsat_ga` 不是 `cfsat21_label_ga`，后者依赖 CFSAT21/ProGraML label artifact，应作为另一组对比实验单独接入。

## 代码升级

### 1. 独立 sweep manifest

修改 `/root/exp/RFunipassLab/scripts/cost_parity/run_perprogram_budget_sweep.py`：

- 新增 `--sweep-manifest-path`。
- 默认写出 tag-specific manifest：`perprogram_budget_sweep_<tag>.json`。
- 继续写出兼容旧流程的 latest manifest：`perprogram_budget_sweep_manifest.json`。
- manifest 中新增 `runner_config`，记录 `python`、`llvm_tools`、`baseline`、`loop_policy`、`max_seq_len`、`jobs`、`timeout_sec`。

这样可以把 `rio_random`、`ga_bitvector`、`cfsat_ga` 分批运行，避免后一次 sweep 覆盖前一次正式记录。

### 2. 多 manifest 汇总

修改 `/root/exp/RFunipassLab/scripts/cost_parity/summarize_cost_parity.py`：

- `--sweep-manifest` 支持重复传入。
- 汇总时可合并多个分批 sweep。
- 对重复的 `(seed, strategy, budget)` 保留后传入 manifest 的记录，便于修复失败 budget 或追加实验。
- curve CSV 中增加 `sweep_manifest_path`，保留每一行结果来源。

## 运行环境

- RFunipassLab root：`/root/exp/RFunipassLab`
- PerProgramAutoTune root：`/root/exp/PerProgramAutoTune`
- LLVM tools：`/root/llvm/llvm-project-21/build/bin`
- Objective：normalized IR instruction count
- Baseline：`oz`
- LOOP_NESTING_POLICY：`wrap`
- max sequence length：`120`
- jobs：`1`

## Smoke 验证

命令：

```bash
cd /root/exp/RFunipassLab
python scripts/cost_parity/run_perprogram_budget_sweep.py \
  --target-dir results/cost_parity/smoke_seed456_limit2 \
  --budgets 1 \
  --strategies cfsat_ga \
  --seeds 456 \
  --perprogram-root /root/exp/PerProgramAutoTune \
  --llvm-tools /root/llvm/llvm-project-21/build/bin \
  --baseline oz \
  --loop-policy wrap \
  --max-seq-len 120 \
  --jobs 1 \
  --tag smoke_cost_parity_cfsat_ga_20260507 \
  --continue-on-error
```

汇总：

```bash
python scripts/cost_parity/summarize_cost_parity.py \
  --target-dir results/cost_parity/smoke_seed456_limit2 \
  --sweep-manifest results/cost_parity/smoke_seed456_limit2/perprogram_budget_sweep_smoke_cost_parity_cfsat_ga_20260507.json \
  --output-prefix results/cost_parity/smoke_seed456_limit2/smoke_cost_parity_cfsat_ga_20260507 \
  --match-field matched_by_objective
```

结果：

- 运行成功，exit code 为 0。
- target program count：2。
- `cfsat_ga` objective eval count：2，即 2 个目标程序 × budget 1。
- RFunipass core eval count：40600。
- Smoke 仅验证流程，不作为论文结果。

主要产物：

- `results/cost_parity/smoke_seed456_limit2/perprogram_budget_sweep_smoke_cost_parity_cfsat_ga_20260507.json`
- `results/cost_parity/smoke_seed456_limit2/smoke_cost_parity_cfsat_ga_20260507_summary.md`
- `results/cost_parity/smoke_seed456_limit2/smoke_cost_parity_cfsat_ga_20260507_curve.csv`

## Pilot 验证

命令：

```bash
cd /root/exp/RFunipassLab
python scripts/cost_parity/run_perprogram_budget_sweep.py \
  --target-dir results/cost_parity/poj_10seed_full_targets_20260507 \
  --budgets 1,2,4,8 \
  --strategies cfsat_ga \
  --seeds 456 \
  --perprogram-root /root/exp/PerProgramAutoTune \
  --llvm-tools /root/llvm/llvm-project-21/build/bin \
  --baseline oz \
  --loop-policy wrap \
  --max-seq-len 120 \
  --jobs 1 \
  --tag pilot_cost_parity_cfsat_ga_seed456_20260507 \
  --continue-on-error
```

汇总：

```bash
python scripts/cost_parity/summarize_cost_parity.py \
  --target-dir results/cost_parity/poj_10seed_full_targets_20260507 \
  --sweep-manifest results/cost_parity/poj_10seed_full_targets_20260507/perprogram_budget_sweep_pilot_cost_parity_cfsat_ga_seed456_20260507.json \
  --output-prefix results/reports/pilot_cost_parity_cfsat_ga_seed456_20260507 \
  --match-field matched_by_objective
```

结果摘要：

| Budget | Per-program evals | cfsat_ga mean_norm | cfsat_ga worsen_rate | cfsat_ga objective | RFunipass objective | Matched |
| ---: | ---: | ---: | ---: | ---: | ---: | --- |
| 1 | 50 | 0.9345 | 0.2600 | 0.9735 | 0.7693 | False |
| 2 | 100 | 0.8647 | 0.1400 | 0.8857 | 0.7693 | False |
| 4 | 200 | 0.8121 | 0.1000 | 0.8271 | 0.7693 | False |
| 8 | 400 | 0.7608 | 0.1000 | 0.7758 | 0.7693 | False |

解释：

- `cfsat_ga` 随 budget 增加有稳定改善趋势。
- budget 8 已接近 RFunipass，但按默认阈值 `perprogram_objective <= rfunipass_objective + 0.005` 仍未匹配：阈值为 `0.7743`，budget 8 为 `0.7758`。
- budget 8 的 target-feedback cost 为 400 次真实 objective 评估，相当于 RFunipass core eval count 40600 的约 0.985%。但这是单个 seed 的测试集，不能外推为正式结论。

主要产物：

- `results/cost_parity/poj_10seed_full_targets_20260507/perprogram_budget_sweep_pilot_cost_parity_cfsat_ga_seed456_20260507.json`
- `results/reports/pilot_cost_parity_cfsat_ga_seed456_20260507_summary.md`
- `results/reports/pilot_cost_parity_cfsat_ga_seed456_20260507_curve.csv`
- `results/reports/pilot_cost_parity_cfsat_ga_seed456_20260507_curve.svg`

## 正式实验建议命令

建议正式实验先只追加 `cfsat_ga`，不要重跑已经存在或之后单独完成的其他策略。加入 `--timeout-sec`，避免个别超长 pass 序列拖慢整个 sweep。

```bash
cd /root/exp/RFunipassLab
python scripts/cost_parity/run_perprogram_budget_sweep.py \
  --target-dir results/cost_parity/poj_10seed_full_targets_20260507 \
  --budgets 1,2,4,8,16,30,60,100 \
  --strategies cfsat_ga \
  --seeds 456,457,458,459,460,461,462,463,464,465 \
  --perprogram-root /root/exp/PerProgramAutoTune \
  --llvm-tools /root/llvm/llvm-project-21/build/bin \
  --baseline oz \
  --loop-policy wrap \
  --max-seq-len 120 \
  --jobs 1 \
  --timeout-sec 120 \
  --tag poj10_cost_parity_cfsat_ga_20260507 \
  --continue-on-error
```

如需合并 `rio_random`、`ga_bitvector`、`cfsat_ga` 的多个分批 sweep：

```bash
python scripts/cost_parity/summarize_cost_parity.py \
  --target-dir results/cost_parity/poj_10seed_full_targets_20260507 \
  --sweep-manifest <rio_random_manifest.json> \
  --sweep-manifest <ga_bitvector_manifest.json> \
  --sweep-manifest results/cost_parity/poj_10seed_full_targets_20260507/perprogram_budget_sweep_poj10_cost_parity_cfsat_ga_20260507.json \
  --output-prefix results/reports/poj10_cost_parity_all_with_cfsat_ga_20260507 \
  --match-field matched_by_objective
```

## 后续注意事项

- 正式实验的核心表应报告 `matched_seed_count`、`equivalent_budget_median`、`perprogram_eval_count_mean`、`rfunipass_eval_count_mean`、`eval_ratio_mean`。
- 如果 `cfsat_ga` 在 budget 16 或 30 即可匹配多数 seed，应重点强调 per-program 方法虽然 target-feedback cost 更低，但需要为每个目标程序重新调优；RFunipass 的优势是训练后部署阶段 target-feedback eval 为 0。
- 如果 `cfsat_ga` 需要很高 budget 才匹配，论文可直接说明通用序列学习在 cost-to-match 上优于 per-program graph-path GA。
- `cfsat_ga` 和 `cfsat21_label_ga` 应在论文中分开命名，避免把当前 graph-path GA 误写为完整 GNN-CFSAT。
