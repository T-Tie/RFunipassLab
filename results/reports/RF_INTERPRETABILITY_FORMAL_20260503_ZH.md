# RF 解释性正式实验报告

## 实验标识

- Run ID: `20260503_231940_897729_feature_lite_rf_explain_formal`
- 状态: 成功完成，`exit_code=0`
- 开始时间: `2026-05-03T23:19:40`
- 结束时间: `2026-05-04T00:07:15`
- Manifest: `/root/exp/RFunipassLab/results/manifests/20260503_231940_897729_feature_lite_rf_explain_formal.json`
- 调优结果: `/root/exp/RFunipassLab/results/instrcount/summaries/20260503_231940_897729_feature_lite_rf_explain_formal.json`
- RF 解释性目录: `/root/exp/RFunipassLab/results/interpretability/20260503_231940_897729_feature_lite_rf_explain_formal/run_0`

## 控制变量

- Objective: `instrcount`
- Baseline: `oz`
- Feature mode: `lite`
- Loop nesting policy: `wrap`
- LLVM tools: `/root/llvm/llvm-project-21/build/bin`
- Backend opt level: `-O0`
- Experiment seed: `456`
- Split seed: `456`
- Runs: `1`
- Iters: `100`
- GA population: `200`
- GA generations: `5`
- Max sequence length: `120`
- RF explain mode: `final`
- RF explain holdout ratio: `0.3`
- Permutation repeats: `10`
- Counterfactual validation: enabled, top-k `5`, max evals `20`

## 数据划分

- Train pool: `200`
- Search train: `100`
- Validation: `100`
- Test: `50`
- Train pool signature: `8df3afc072b036f8bf6126e6e33701cb1b56c3c8`
- Search train signature: `3ad90166bf9bd1af93680f15067615fd4f341481`
- Validation signature: `bd5a000b3f740ace9576f4dfa0d99ceaf5cd6247`
- Test signature: `42411d4d4c9d084430c688042fea453b6b352eea`

## 调优成本

- Universal offline tuning
- Search pool programs: `200`
- Test programs: `50`
- Candidate sequence count: `228`
- Objective eval count: `41600`
- Target feedback eval count: `0`
- Total tuning time: `2520.98s`
- ML time: `598.74s`

## 最优通用序列

Validation objective 最优序列长度为 `18`:

```text
module(elim-avail-extern) -> module(iroutliner) -> function(gvn-hoist) -> module(inferattrs) -> module(attributor) -> module(globalopt) -> module(iroutliner) -> module(attributor) -> module(iroutliner) -> function(newgvn) -> module(attributor) -> module(scc-oz-module-inliner) -> module(attributor) -> module(attributor) -> function(gvn-sink) -> function(newgvn) -> module(scc-oz-module-inliner) -> module(scc-oz-module-inliner)
```

主要效果:

- Search train objective: `0.7470`
- Validation objective: `0.7518`
- Validation mean norm: `0.7398`
- Validation worsen rate: `8.00%`
- Test objective: `0.7477`
- Test mean norm: `0.7267`
- Test worsen rate: `14.00%`

## RF 代理模型质量

RF explain 使用调优过程中产生的 `186` 条已评估序列做 post-hoc surrogate analysis，不参与 BO/GA 搜索决策，不计入核心调优成本。

| Split | Count | RMSE | MAE | R2 | Pearson |
| --- | ---: | ---: | ---: | ---: | ---: |
| Train | 130 | 0.0520 | 0.0375 | 0.9369 | 0.9763 |
| Holdout | 56 | 0.1253 | 0.0994 | 0.6256 | 0.7916 |

解释:

- Train 拟合较好，说明 RF 能从序列特征中恢复大部分已观测 objective 变化。
- Holdout `R2=0.6256`、`Pearson=0.7916`，说明解释结果有中等偏强可信度，可作为趋势分析和论文讨论依据。
- 不能把 RF importance 当成因果证明；最终因果证据仍应依赖真实 LLVM counterfactual evaluation。

## 重要特征结论

Permutation importance 排名前 10:

| Rank | Feature | Group | Permutation mean | MDI |
| ---: | --- | --- | ---: | ---: |
| 1 | `synergy_rate` | synergy | 0.005500 | 0.110071 |
| 2 | `module(elim-avail-extern)` | pass_freq | 0.004342 | 0.147424 |
| 3 | `module(globalopt)` | pass_freq | 0.001641 | 0.099530 |
| 4 | `scope_ratio:function` | scope_ratio | 0.001621 | 0.113393 |
| 5 | `pass_coverage` | sequence_shape | 0.001484 | 0.072859 |
| 6 | `function(instsimplify)` | pass_freq | 0.000905 | 0.024452 |
| 7 | `function(gvn-hoist)` | pass_freq | 0.000755 | 0.012642 |
| 8 | `seq_len_ratio` | sequence_shape | 0.000646 | 0.067810 |
| 9 | `function(jump-threading)` | pass_freq | 0.000474 | 0.015394 |
| 10 | `loop(loop-simplifycfg)` | pass_freq | 0.000423 | 0.018304 |

按特征组汇总:

| Rank | Group | Feature count | MDI sum | Permutation sum |
| ---: | --- | ---: | ---: | ---: |
| 1 | pass_freq | 19 | 0.391174 | 0.009740 |
| 2 | synergy | 1 | 0.110071 | 0.005500 |
| 3 | sequence_shape | 4 | 0.209435 | 0.002748 |
| 4 | scope_ratio | 5 | 0.220340 | 0.001745 |
| 5 | self_loop | 2 | 0.068979 | -0.000406 |

核心解释:

- Pass 频次特征整体最重要，说明 RF 主要依赖具体 pass 的出现频率来判断序列质量。
- `synergy_rate` 是单个最强 permutation feature，说明协同图不仅影响搜索算子，也被 RF 代理模型显式利用。
- `self_loop` 的 permutation sum 为负，说明当前 self-loop 相关特征在 held-out set 上没有稳定解释增益；论文中不应过度声称 self-loop 特征本身贡献显著。
- `loop(loop-simplifycfg)` 进入 permutation top-10，但重要度低于 `elim-avail-extern`、`globalopt`、`instsimplify`、`gvn-hoist` 等 pass，支持“loop pass 不是完全无用，但在当前任务/特征/程序池下不是主导因素”的表述。

## Counterfactual 验证

真实 LLVM evaluation 的反事实结果显示:

- 删除 `module(elim-avail-extern)` 使 validation objective 从 `0.7518` 恶化到 `1.0525`，`delta_objective=+0.3006`，worsen rate 增加 `35pp`。
- 删除 `module(globalopt)` 使 validation objective 恶化到 `0.9233`，`delta_objective=+0.1714`，worsen rate 增加 `24pp`。
- 删除 `function(gvn-hoist)` 使 validation objective 恶化到 `0.7719`，`delta_objective=+0.0200`，worsen rate 增加 `1pp`。
- 对上述 pass 做简单 duplicate 或 append 多数没有明显收益，说明“重要”不等价于“重复越多越好”。
- append 一次 `function(gvn-hoist)` 出现轻微改善，`delta_objective=-0.0007`，但幅度很小，不应单独作为强结论。

论文可用结论:

```text
Permutation importance and counterfactual LLVM evaluation agree that early module-level cleanup and global optimization passes, especially elim-avail-extern and globalopt, are decisive for the learned universal sequence. In contrast, repeated insertion of the same pass rarely improves the objective, indicating that pass presence and placement are more important than naive repetition.
```

## 二进制大小附带结果

虽然本次 objective 是 `instrcount`，实验也记录了最佳序列在 test set 上的 binary size 指标:

- `stripped_file_bytes`: mean norm `0.9996`，improved `46%`，tied `46%`，worsened `8%`
- `text_bytes`: 相对 `Oz` 约 `+9.6%` 改善，相对 `O3` 约 `+21.5%` 改善
- `data_bytes`: 相对 `Oz` 约 `+0.6%` 改善
- `bss_bytes`: 基本无变化
- `dec_bytes`: 相对 `Oz` 约 `+7.6%` 改善，相对 `O3` 约 `+16.8%` 改善

注意: binary size 不是本次 RF explain 的训练 objective，因此只能作为附带观察，不能作为主结论。

## 产物文件

- `/root/exp/RFunipassLab/results/interpretability/20260503_231940_897729_feature_lite_rf_explain_formal/run_0/REPORT.md`
- `/root/exp/RFunipassLab/results/interpretability/20260503_231940_897729_feature_lite_rf_explain_formal/run_0/rf_model_quality.json`
- `/root/exp/RFunipassLab/results/interpretability/20260503_231940_897729_feature_lite_rf_explain_formal/run_0/rf_feature_importance.csv`
- `/root/exp/RFunipassLab/results/interpretability/20260503_231940_897729_feature_lite_rf_explain_formal/run_0/rf_group_importance.csv`
- `/root/exp/RFunipassLab/results/interpretability/20260503_231940_897729_feature_lite_rf_explain_formal/run_0/rf_counterfactual.csv`
- `/root/exp/RFunipassLab/results/instrcount/summaries/20260503_231940_897729_feature_lite_rf_explain_formal.json`
- `/root/exp/RFunipassLab/results/instrcount/summaries/20260503_231940_897729_feature_lite_rf_explain_formal_core_tuning_cost.json`
- `/root/exp/RFunipassLab/results/logs/20260503_231940_897729_feature_lite_rf_explain_formal.log`

## 后续建议

- 将该解释实验扩展到 10-seed 正式主实验，报告 feature importance 的均值和置信区间。
- 对 Top-5 pass 做更系统的 controlled mutation，例如 delete-all、delete-first、move-earlier、move-later、replace-with-neighbor，而不是只做 duplicate/append。
- 对 `synergy_rate` 做消融实验: 保持搜索空间和预算不变，关闭协同特征或打乱协同图，检验它对 RF 预测和最终序列质量的贡献。
