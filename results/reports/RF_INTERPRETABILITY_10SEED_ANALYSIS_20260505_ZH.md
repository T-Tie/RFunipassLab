# RF 解释性 10-Seed 正式实验分析报告

## 1. 实验概况

本次实验将 RF 解释性分析扩展到 10 个随机种子，用于评估特征重要度结论是否稳定，而不是只依赖单次 seed 的偶然结果。

基础设置如下：

- Batch ID: `20260505_021422_538199_feature_lite_multiseed_rf_explain_formal_10seeds_20260505_021421`
- Seeds: `456..465`
- 成功运行: `10/10`
- Objective: `instrcount`
- Baseline: `oz`
- Feature mode: `lite`
- Loop policy: `wrap`
- LLVM tools: `/root/llvm/llvm-project-21/build/bin`
- Backend opt level: `-O0`
- RF explain: enabled
- Permutation repeats: `10`
- Counterfactual: enabled, top-k `5`, max evals `20`
- 批量运行时间: `2026-05-05 02:14:22` 到 `2026-05-05 08:04:49`

主要产物：

- Batch manifest: `/root/exp/RFunipassLab/results/manifests/20260505_021422_538199_feature_lite_multiseed_rf_explain_formal_10seeds_20260505_021421.json`
- Feature importance CI: `/root/exp/RFunipassLab/results/reports/rf_explain_formal_10seeds_20260505_021421_rf_importance_ci_features.csv`
- Group importance CI: `/root/exp/RFunipassLab/results/reports/rf_explain_formal_10seeds_20260505_021421_rf_importance_ci_groups.csv`
- 自动 Top 表: `/root/exp/RFunipassLab/results/reports/rf_explain_formal_10seeds_20260505_021421_rf_importance_ci_top.md`
- Driver log: `/root/exp/RFunipassLab/results/logs/rf_explain_formal_10seeds_20260505_021421_driver.log`

## 2. 主实验效果摘要

10 个 seed 的最终通用序列在 train/validation/test 上的平均表现如下，括号内为 95% CI：

| Metric | Mean and 95% CI | Median | Min | Max |
| --- | ---: | ---: | ---: | ---: |
| Train objective | 0.7496 [0.7129, 0.7863] | 0.7490 | 0.6634 | 0.8202 |
| Validation objective | 0.7352 [0.7079, 0.7624] | 0.7384 | 0.6683 | 0.7903 |
| Test objective | 0.7782 [0.7411, 0.8152] | 0.7756 | 0.6847 | 0.8653 |
| Test mean norm | 0.7635 [0.7289, 0.7980] | 0.7595 | 0.6727 | 0.8473 |
| Test worsen rate | 9.8% [6.2%, 13.4%] | 10.0% | 2.0% | 18.0% |
| Final sequence length | 15.2 [12.4, 18.0] | 15.5 | 9 | 22 |

解释：

- Test mean norm 平均为 `0.7635`，说明相对 `-Oz` baseline，最终通用序列在测试集指令数上有稳定收益。
- Test worsen rate 平均为 `9.8%`，说明通用序列仍会在少量程序上退化，这是论文中需要正面讨论的 trade-off。
- Final sequence length 平均约 `15`，相比搜索空间中的长序列，最终 validation ablation 后得到的是相对短的通用序列。

调优成本：

| Metric | Mean and 95% CI | Median | Min | Max |
| --- | ---: | ---: | ---: | ---: |
| Candidate sequence count | 227.0 [210.3, 243.7] | 221.5 | 201 | 269 |
| Objective eval count | 41190 [39574, 42806] | 40850 | 38300 | 45000 |
| Total tuning time | 1804.5s [1067.4, 2541.6] | 1366.8s | 881.6s | 3978.2s |
| ML time | 642.6s [389.9, 895.4] | 536.7s | 298.2s | 1385.7s |

解释：

- 每个 seed 的 objective evaluation 约 4 万次，符合 universal offline tuning 的实验成本设定。
- 运行时间方差较大，主要来自不同 seed 的搜索轨迹、候选序列长度、opt/评估失败重试、RF 解释阶段的 counterfactual evaluation 差异。

## 3. RF 代理模型质量

RF 解释性分析是 post-hoc surrogate，不参与搜索决策。10 个 seed 的 RF 预测质量如下：

| Metric | Mean and 95% CI | Median |
| --- | ---: | ---: |
| Train RMSE | 0.0438 [0.0401, 0.0475] | 0.0446 |
| Train MAE | 0.0323 [0.0298, 0.0348] | 0.0315 |
| Train R2 | 0.9355 [0.9271, 0.9439] | 0.9365 |
| Train Pearson | 0.9757 [0.9728, 0.9785] | 0.9757 |
| Holdout RMSE | 0.1168 [0.1000, 0.1336] | 0.1198 |
| Holdout MAE | 0.0888 [0.0763, 0.1013] | 0.0874 |
| Holdout R2 | 0.5411 [0.4822, 0.6000] | 0.5641 |
| Holdout Pearson | 0.7536 [0.7145, 0.7927] | 0.7677 |

解释：

- Train R2 约 `0.94`，说明 RF 能较好拟合已评估序列的 objective。
- Holdout R2 约 `0.54`，Pearson 约 `0.75`，说明 RF 解释结果具有中等可信度，但不是强预测器。
- 因此论文表述应为“RF importance reveals stable correlates of good universal sequences”，不应表述为严格因果证明。
- 真正的因果证据应依赖 counterfactual LLVM evaluation，而不是仅依赖 MDI 或 permutation importance。

## 4. Feature Importance 结论

### 4.1 稳健正贡献特征

以 permutation importance 为主判断标准，95% CI 下界大于 0 的特征可以认为是跨 seed 稳健的正信号：

| Rank | Feature | Group | Perm Mean | 95% CI | MDI Mean |
| ---: | --- | --- | ---: | ---: | ---: |
| 1 | `pass_freq:module(elim-avail-extern)` | pass_freq | 0.004727 | [0.002325, 0.007128] | 0.144142 |
| 2 | `pass_freq:module(scc-oz-module-inliner)` | pass_freq | 0.004437 | [0.001284, 0.007589] | 0.125483 |
| 3 | `synergy_rate` | synergy | 0.004150 | [0.001793, 0.006507] | 0.129006 |
| 4 | `pass_freq:module(globalopt)` | pass_freq | 0.001009 | [0.000261, 0.001758] | 0.061674 |
| 5 | `scope_ratio:function` | scope_ratio | 0.000832 | [0.000473, 0.001191] | 0.074902 |
| 6 | `scope_ratio:module` | scope_ratio | 0.000732 | [0.000247, 0.001218] | 0.073352 |
| 8 | `pass_freq:function(mem2reg)` | pass_freq | 0.000362 | [0.000048, 0.000675] | 0.022034 |

核心结论：

- `module(elim-avail-extern)` 是最稳定的 pass-level 解释信号。
- `module(scc-oz-module-inliner)` 的稳定性很强，说明 size-oriented inlining 对通用序列的指令数目标也具有显著解释力。
- `synergy_rate` 是非常关键的结构特征，排在第 3，且 CI 不跨 0。这是对 RFunipass 协同图设计最直接的支持证据。
- `module(globalopt)` 稳定为正，说明模块级全局优化是 universal pass sequence 中的核心组件。
- `scope_ratio:function` 与 `scope_ratio:module` 同时为正，说明 RF 不只看具体 pass，也利用 pass scope composition 判断序列质量。
- `mem2reg` 出现在稳健正特征中，但重要度远低于前四项，说明它是辅助信号，不是主导信号。

### 4.2 特征组重要度

| Rank | Group | Perm Sum Mean | 95% CI | MDI Sum Mean | 95% CI |
| ---: | --- | ---: | ---: | ---: | ---: |
| 1 | pass_freq | 0.010377 | [0.007284, 0.013469] | 0.475264 | [0.413559, 0.536970] |
| 2 | synergy | 0.004150 | [0.001793, 0.006507] | 0.129006 | [0.074898, 0.183114] |
| 3 | scope_ratio | 0.001612 | [0.000898, 0.002325] | 0.182023 | [0.154641, 0.209405] |
| 4 | sequence_shape | 0.000004 | [-0.000855, 0.000863] | 0.174939 | [0.140894, 0.208984] |
| 5 | self_loop | -0.000145 | [-0.000463, 0.000172] | 0.038767 | [0.026526, 0.051008] |

解释：

- `pass_freq` 是最强特征组，说明“哪些 pass 被选中”比“纯序列形状”更重要。
- `synergy` 虽然只有一个 `synergy_rate` 特征，但 permutation sum 排第 2，说明协同图确实提供了可预测信号。
- `scope_ratio` 稳定为正，说明 pass 作用域分布本身有解释力。
- `sequence_shape` 的 MDI 很高，但 permutation importance 约为 0 且 CI 跨 0，说明 RF 内部确实使用了这些特征，但它们在 held-out permutation 检验中没有稳定泛化贡献。
- `self_loop` 的 permutation importance 为负且 CI 跨 0，说明目前 self-loop 特征不能作为论文主张的强证据。

### 4.3 MDI 与 permutation 的差异

本次实验再次说明，不能只报告 `feature_importances_`。

- `seq_len_ratio` 的 MDI 为 `0.0530`，但 permutation mean 只有 `0.000036`，CI 跨 0。
- `repeat_mass_ratio` 的 MDI 为 `0.0444`，但 permutation mean 为 `-0.000211`，CI 跨 0。
- `self_loop_hit_rate` 的 MDI 为 `0.0335`，但 permutation mean 为 `-0.000131`，CI 跨 0。

论文中建议把 permutation importance 作为主表，把 MDI 放到附录或诊断图中。这样可以避免被审稿人质疑 impurity-based importance 的偏置问题。

## 5. Counterfactual 验证

Counterfactual 是真实 LLVM evaluation，不是 RF 预测，因此它比 importance 更接近因果证据。

主要结果如下：

| Mutation | Seeds | Delta objective mean and 95% CI | Median | Interpretation |
| --- | ---: | ---: | ---: | --- |
| delete_all `module(scc-oz-module-inliner)` | 6 | +0.7272 [0.5876, 0.8668] | +0.6603 | 极强退化，说明该 pass 家族在最终序列中非常关键 |
| delete_first `module(scc-oz-module-inliner)` | 10 | +0.2954 [0.0184, 0.5724] | +0.0456 | 平均退化明显，但 seed 间差异很大 |
| delete_first `module(elim-avail-extern)` | 10 | +0.2672 [0.2358, 0.2985] | +0.2788 | 最稳定、最强的单 pass 因果证据 |
| delete_first `module(globalopt)` | 7 | +0.1390 [0.0935, 0.1844] | +0.1576 | 稳定退化，支持 importance 结论 |
| duplicate_after_first `module(scc-oz-module-inliner)` | 10 | -0.0031 [-0.0059, -0.0002] | -0.0013 | 重复一次有轻微改善，但幅度很小 |
| duplicate/append `module(elim-avail-extern)` | 10 | 约 0 | 0 | 重要性来自存在和位置，不来自简单重复 |
| append `function(mem2reg)` | 8 | 0 | 0 | 单纯追加无收益 |

解释：

- `elim-avail-extern` 的 delete-first 结果最稳健，10 个 seed 全部参与且 CI 很窄，说明它不是 RF 偶然学到的相关特征。
- `scc-oz-module-inliner` 的 delete-all 退化最大，但只在 6 个 seed 有该 mutation，说明它不是每个 seed 都以相同方式进入 counterfactual top-k；仍然是强证据，但论文中需要注明样本数。
- `globalopt` 同时在 importance 和 counterfactual 中出现，说明它既是预测信号也是真实优化贡献来源。
- 简单 duplicate/append 大多数没有收益，说明“pass 重要”不等于“重复越多越好”。这对解释连续 pass/self-loop 设计非常重要。

## 6. 对论文写作的直接指导

### 6.1 可以作为主结论的点

第一，RFunipass 学到的通用序列不是黑盒堆叠。RF 解释性分析显示，关键收益集中在少量模块级 pass 与协同结构上。

第二，协同图不是只影响 GA 排序或变异算子。`synergy_rate` 在 10-seed permutation importance 中排名第 3，且 95% CI 不跨 0，说明协同图编码本身也为 RF surrogate 提供了稳定预测信号。

第三，模块级 pass 是当前任务的核心。`elim-avail-extern`、`scc-oz-module-inliner`、`globalopt` 均为稳健正特征；counterfactual 删除这些 pass 会显著恶化 objective。

第四，self-loop 当前不能作为强解释结论。虽然 MDI 给了 self-loop 一定权重，但 permutation importance 不支持其 held-out 泛化贡献。论文中如果讨论 self-loop，应放在 discussion/limitation，而不是主结果。

第五，序列长度、重复率等 shape 特征主要是 RF 内部拟合信号，不是稳定泛化信号。论文主图应避免把它们解释为优化机制。

### 6.2 建议论文表述

可使用如下表述：

```text
Across ten random seeds, permutation importance identifies pass frequency as the dominant explanatory group, followed by the synergy-rate feature derived from the pass interaction graph. The strongest pass-level signals are elim-avail-extern, scc-oz-module-inliner, and globalopt. Counterfactual LLVM evaluations confirm these findings: removing elim-avail-extern consistently worsens the validation objective by 0.267 on average, while removing all occurrences of scc-oz-module-inliner causes the largest degradation among tested mutations.
```

中文版本：

```text
在 10 个随机种子上，permutation importance 显示 pass 频次是最主要的解释性特征组，协同图导出的 synergy-rate 是第二强的稳定信号。pass 级别上，elim-avail-extern、scc-oz-module-inliner 和 globalopt 构成主要贡献来源。真实 LLVM counterfactual evaluation 进一步验证了该结论：删除 elim-avail-extern 会使 validation objective 平均恶化 0.267，而删除所有 scc-oz-module-inliner 会造成最大退化。
```

## 7. 局限性

- RF holdout R2 约 `0.54`，说明 surrogate 解释有价值但并非高精度 oracle。
- Permutation importance 会受相关特征影响。例如 pass frequency、scope ratio、sequence length 之间不是完全独立的。
- Counterfactual 当前只覆盖 RF top-k pass，并且 mutation 类型有限，不能覆盖所有 pass 的因果影响。
- 有些 counterfactual 的样本数小于 10，例如 `delete_all scc-oz-module-inliner` 为 6，需要在论文中报告 n。
- 本次解释目标是 `instrcount`，不能直接推广到 `runtime` 或 `binary size`。

## 8. 后续实验建议

- 将 counterfactual 扩展为固定 mutation panel，对每个 seed 的同一组 pass 都做 `delete_first`、`delete_all`、`move_earlier`、`move_later`、`replace`。
- 做 synergy 消融：保留搜索预算和程序划分不变，打乱协同图或去掉 `synergy_rate`，比较 RF 质量和最终 objective。
- 做 self-loop 消融：保留/去掉 self-loop 特征与 self-loop 边，验证其真实贡献，而不是仅靠 MDI。
- 在 external datasets 上复现 RF importance，检查 `elim-avail-extern`、`scc-oz-module-inliner`、`globalopt` 是否仍然稳定。
- 对 runtime objective 单独做一套解释性实验，因为 runtime 可能更依赖 loop/function pass，而不是当前 instrcount 的模块级 pass。

## 9. 总结

本次 10-seed RF 解释性实验给出了比单 seed 更可靠的结论：RFunipass 的有效通用序列主要由 pass frequency、协同满足率和 pass scope composition 解释，其中 `elim-avail-extern`、`scc-oz-module-inliner`、`globalopt` 是最关键的 pass-level 信号。真实 counterfactual LLVM evaluation 与 permutation importance 基本一致，支持这些特征不是纯粹的 RF 拟合噪声。与此同时，self-loop 和 sequence-shape 特征在 MDI 中看似重要，但 permutation importance 不稳定，因此不应作为主论文强结论。
