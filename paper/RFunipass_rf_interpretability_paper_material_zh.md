# RFunipass RF 可解释性实验论文材料

本文档整理 RFunipass 的 RF 代理模型可解释性实验结果，面向论文写作使用。实验材料来自最近完成的 10-seed 正式 RF 解释实验：

`20260505_021422_538199_feature_lite_multiseed_rf_explain_formal_10seeds_20260505_021421`

该批次基于 `instrcount` 目标、`-Oz` baseline、`feature-lite` 编码、`LOOP_NESTING_POLICY=wrap`、LLVM 21 工具链 `/root/llvm/llvm-project-21/build/bin`。每个 seed 完成一次 RFunipass 通用序列搜索，并在最终序列及已评估候选序列上训练 post-hoc RF 解释模型。

## 1. 可复现产物

本次整理生成或使用以下文件：

| 文件 | 用途 |
| --- | --- |
| `/root/exp/RFunipassLab/scripts/summarize_rf_interpretability.py` | 多 seed RF 可解释性汇总脚本 |
| `/root/exp/RFunipassLab/results/reports/20260505_021422_538199_feature_lite_multiseed_rf_explain_formal_10seeds_20260505_021421_rf_feature_importance_aggregate.csv` | Top feature importance 聚合表 |
| `/root/exp/RFunipassLab/results/reports/20260505_021422_538199_feature_lite_multiseed_rf_explain_formal_10seeds_20260505_021421_rf_group_importance_aggregate.csv` | feature group importance 聚合表 |
| `/root/exp/RFunipassLab/results/reports/20260505_021422_538199_feature_lite_multiseed_rf_explain_formal_10seeds_20260505_021421_rf_counterfactual_aggregate.csv` | counterfactual LLVM validation 聚合表 |
| `/root/exp/RFunipassLab/results/reports/20260505_021422_538199_feature_lite_multiseed_rf_explain_formal_10seeds_20260505_021421_rf_group_importance.svg` | group importance 图 |
| `/root/exp/RFunipassLab/results/reports/20260505_021422_538199_feature_lite_multiseed_rf_explain_formal_10seeds_20260505_021421_rf_interpretability_summary.md` | 自动生成的解释性摘要 |

复现汇总命令：

```bash
cd /root/exp/RFunipassLab
python scripts/summarize_rf_interpretability.py \
  --batch-manifest results/manifests/20260505_021422_538199_feature_lite_multiseed_rf_explain_formal_10seeds_20260505_021421.json \
  --output-dir results/reports \
  --topk 10
```

## 2. 方法段落草稿

为分析 RFunipass 学到的通用 pass 序列是否具有可解释结构，我们对每个 seed 的搜索轨迹训练一个 post-hoc Random Forest surrogate。训练样本由该 seed 中所有已真实评估过的候选 pass 序列组成，标签为对应的 validation/search objective。特征采用 RFunipass 的 feature-lite 表示，包括 pass 频次、序列形状、协同满足率、自环命中率以及 pass 作用域比例。我们报告两类全局特征重要度：RF 内部的 impurity-based MDI importance，以及在 holdout 序列集合上计算的 permutation importance。由于 MDI 可能偏向高基数或更容易分裂的特征，论文主结论以 permutation importance 为准，MDI 仅作为诊断补充。

为了避免把 RF 相关性误解释为因果贡献，我们进一步执行真实 LLVM counterfactual validation。对于 RF 认为重要的 pass，我们构造删除、追加和重复等序列变体，并在 validation split 上重新运行 LLVM pass pipeline，观察真实 objective 的变化。若删除某个 pass 使 objective 明显升高，则说明该 pass 对最终序列有真实贡献；若追加或重复某个 pass 没有收益，则说明该 pass 的重要性主要来自其存在和位置，而不是简单频次增加。

## 3. RF 模型可信度

| Split | RMSE | MAE | R2 | Pearson |
| --- | ---: | ---: | ---: | ---: |
| Train | 0.0438 | 0.0323 | 0.9355 | 0.9757 |
| Holdout | 0.1168 | 0.0888 | 0.5411 | 0.7536 |

论文解读：

RF 在训练集上拟合良好，train R2 为 `0.9355`。在 holdout 序列上，R2 为 `0.5411`、Pearson 为 `0.7536`，说明 RF 具备中等强度的泛化排序能力。因此，RF importance 可以作为“稳定相关解释信号”，但不应被表述为严格因果证明。真正的因果证据应来自后续 counterfactual LLVM evaluation。

可写入论文的句子：

```text
The post-hoc RF surrogate achieves a mean holdout Pearson correlation of 0.754 across ten seeds, indicating that it captures a meaningful, although not oracle-level, ranking signal over evaluated pass sequences. Therefore, we use permutation importance as an explanatory diagnostic and validate the main findings with real LLVM counterfactual evaluations.
```

## 4. Top-10 Feature Importance 表

表题建议：

`Table X: Top-10 RF feature importance across ten seeds. Permutation importance is computed on held-out evaluated sequences and is used as the primary interpretation criterion. MDI importance is reported as a diagnostic reference.`

| Rank | Feature | Group | Permutation Mean [95% CI] | MDI Mean [95% CI] |
| ---: | --- | --- | ---: | ---: |
| 1 | `pass_freq:module(elim-avail-extern)` | pass_freq | 0.004727 [0.002325, 0.007128] | 0.144142 [0.073738, 0.214547] |
| 2 | `pass_freq:module(scc-oz-module-inliner)` | pass_freq | 0.004437 [0.001284, 0.007589] | 0.125483 [0.063442, 0.187524] |
| 3 | `synergy_rate` | synergy | 0.004150 [0.001793, 0.006507] | 0.129006 [0.074898, 0.183114] |
| 4 | `pass_freq:module(globalopt)` | pass_freq | 0.001009 [0.000261, 0.001758] | 0.061674 [0.037659, 0.085690] |
| 5 | `scope_ratio:function` | scope_ratio | 0.000832 [0.000473, 0.001191] | 0.074902 [0.053879, 0.095924] |
| 6 | `scope_ratio:module` | scope_ratio | 0.000732 [0.000247, 0.001218] | 0.073352 [0.054275, 0.092429] |
| 7 | `pass_coverage` | sequence_shape | 0.000368 [-0.000122, 0.000858] | 0.040571 [0.021730, 0.059413] |
| 8 | `pass_freq:function(mem2reg)` | pass_freq | 0.000362 [0.000048, 0.000675] | 0.022034 [0.011987, 0.032081] |
| 9 | `pass_freq:function(gvn-sink)` | pass_freq | 0.000093 [-0.000085, 0.000272] | 0.013766 [0.001309, 0.026222] |
| 10 | `pass_freq:function(reassociate)` | pass_freq | 0.000067 [-0.000047, 0.000181] | 0.007007 [0.000801, 0.013214] |

论文解读：

最稳定的 pass-level 信号集中在模块级 pass：`elim-avail-extern`、`scc-oz-module-inliner` 和 `globalopt`。其中 `elim-avail-extern` 排名第一，且 permutation 95% CI 不跨 0，说明其贡献不是单 seed 偶然结果。`synergy_rate` 排名第三，是唯一进入 Top-3 的结构性特征，说明协同图不仅影响 GA 搜索算子，也为 RF surrogate 提供了稳定的可预测信号。`pass_coverage`、`gvn-sink` 和 `reassociate` 的置信区间跨 0，论文中不应把它们作为强结论。

## 5. Group Importance 图

图文件：

`/root/exp/RFunipassLab/results/reports/20260505_021422_538199_feature_lite_multiseed_rf_explain_formal_10seeds_20260505_021421_rf_group_importance.svg`

图题建议：

`Figure X: Group-level permutation importance of feature-lite components. Error bars show 95% confidence intervals over ten seeds.`

图中数据：

| Rank | Group | Permutation Sum Mean [95% CI] | MDI Sum Mean [95% CI] |
| ---: | --- | ---: | ---: |
| 1 | `pass_freq` | 0.010377 [0.007284, 0.013469] | 0.475264 [0.413559, 0.536970] |
| 2 | `synergy` | 0.004150 [0.001793, 0.006507] | 0.129006 [0.074898, 0.183114] |
| 3 | `scope_ratio` | 0.001612 [0.000898, 0.002325] | 0.182023 [0.154641, 0.209405] |
| 4 | `sequence_shape` | 0.000004 [-0.000855, 0.000863] | 0.174939 [0.140894, 0.208984] |
| 5 | `self_loop` | -0.000145 [-0.000463, 0.000172] | 0.038767 [0.026526, 0.051008] |

论文解读：

`pass_freq` 是最主要的解释性特征组，说明 RFunipass 的收益首先来自选择了哪些 pass。`synergy` 仅包含一个 `synergy_rate` 特征，但其 permutation sum 排名第二，且 95% CI 不跨 0，这是协同图设计有效性的核心证据。`scope_ratio` 排名第三，表明 pass 作用域组成也有稳定贡献。`sequence_shape` 的 MDI 较高但 permutation importance 接近 0，说明 RF 内部可能使用了长度、覆盖率等形状特征进行分裂，但这些特征在 held-out permutation 检验中没有稳定泛化贡献。`self_loop` 的 permutation importance 为负且 CI 跨 0，因此当前不能把 self-loop 作为主结论。

## 6. Counterfactual Validation 表

表题建议：

`Table Y: Counterfactual LLVM validation for important passes. Positive delta objective means that the mutation worsens the validation objective; therefore, larger positive values indicate stronger evidence that the removed pass is necessary.`

| Pass | Mutation | Seeds | Delta Objective Mean [95% CI] | Delta Mean Norm | Delta Worsen Rate |
| --- | --- | ---: | ---: | ---: | ---: |
| `module(scc-oz-module-inliner)` | `delete_all` | 6 | +0.7272 [0.5441, 0.9103] | +0.6150 | +0.7483 |
| `module(scc-oz-module-inliner)` | `delete_first` | 10 | +0.2954 [0.0184, 0.5724] | +0.2546 | +0.2720 |
| `module(elim-avail-extern)` | `delete_first` | 10 | +0.2672 [0.2358, 0.2985] | +0.2217 | +0.3030 |
| `module(globalopt)` | `delete_first` | 7 | +0.1390 [0.0823, 0.1957] | +0.1111 | +0.1857 |
| `module(scc-oz-module-inliner)` | `duplicate_after_first` | 10 | -0.0031 [-0.0059, -0.0002] | -0.0029 | -0.0010 |
| `module(scc-oz-module-inliner)` | `append_once` | 7 | -0.0029 [-0.0096, 0.0038] | -0.0020 | -0.0057 |
| `module(globalopt)` | `append_once` | 7 | -0.0004 [-0.0011, 0.0004] | -0.0004 | 0.0000 |
| `module(elim-avail-extern)` | `append_once` | 10 | +0.0000 [-0.0000, 0.0000] | +0.0000 | 0.0000 |
| `function(mem2reg)` | `append_once` | 8 | 0.0000 [0.0000, 0.0000] | 0.0000 | 0.0000 |

论文解读：

反事实实验支持 RF 的主要解释。删除 `elim-avail-extern` 在 10 个 seed 上稳定恶化 objective，平均 delta 为 `+0.2672`，且置信区间较窄。删除所有 `scc-oz-module-inliner` 的退化最大，平均 delta 为 `+0.7272`，说明该 pass 家族对最终通用序列非常关键，但该 mutation 只在 6 个 seed 上可用，论文中需要报告样本数。删除 `globalopt` 也稳定恶化 objective，支持其在 importance 表中的高排名。

同时，追加或重复重要 pass 并不一定继续带来收益。`elim-avail-extern` 的 append 和 duplicate 基本没有影响，说明它的重要性来自“是否出现在合适位置”，而不是简单重复。`scc-oz-module-inliner` 重复一次有轻微改善，但幅度很小，不能据此声称重复越多越好。

## 7. 结果段落草稿

中文版本：

```text
表 X 展示了 10 个随机种子上的 RF permutation importance。最重要的特征组是 pass frequency，说明通用序列的效果首先由 pass 选择决定。在 pass 级别，module(elim-avail-extern)、module(scc-oz-module-inliner) 和 module(globalopt) 是最稳定的正信号。值得注意的是，协同图导出的 synergy_rate 在所有特征中排名第三，且 95% 置信区间不跨 0，说明协同关系不仅用于搜索算子，也被 RF surrogate 作为稳定的预测信号。相比之下，sequence_shape 和 self_loop 在 MDI 中看似有一定权重，但 permutation importance 不稳定，因此我们不将它们作为主要机制结论。
```

英文版本：

```text
Table X reports the RF permutation importance aggregated over ten random seeds. Pass-frequency features form the dominant explanatory group, indicating that the quality of a universal sequence is primarily determined by which passes are selected. At the pass level, module(elim-avail-extern), module(scc-oz-module-inliner), and module(globalopt) are the most stable positive signals. Notably, the synergy-rate feature derived from the pass interaction graph ranks third overall and has a strictly positive 95% confidence interval, suggesting that the learned pass interactions provide predictive signal beyond their role in genetic search operators. In contrast, sequence-shape and self-loop features receive non-negligible MDI importance but have unstable permutation importance, so we treat them as diagnostic rather than primary explanatory evidence.
```

## 8. Counterfactual 结果段落草稿

中文版本：

```text
为了验证 RF 解释是否反映真实 LLVM 行为，我们对重要 pass 执行 counterfactual validation。结果显示，删除 module(elim-avail-extern) 会使 validation objective 平均恶化 0.2672，且 10 个 seed 上均可观察到该趋势。删除所有 module(scc-oz-module-inliner) 的影响最大，平均恶化 0.7272，表明 size-oriented inlining 对该通用序列至关重要。删除 module(globalopt) 也会稳定恶化 objective。另一方面，简单追加或重复这些 pass 通常收益很小，说明 pass 的贡献依赖于序列上下文和位置，而不是单调频次增加。这些真实 LLVM 反事实结果与 RF permutation importance 基本一致，支持 RFunipass 学到的关键 pass 与协同结构具有实际优化意义。
```

英文版本：

```text
We further validate the RF explanations using counterfactual LLVM evaluations. Removing module(elim-avail-extern) increases the validation objective by 0.2672 on average across all ten seeds, while removing all occurrences of module(scc-oz-module-inliner) causes the largest degradation, increasing the objective by 0.7272 on average. Removing module(globalopt) also consistently worsens the objective. In contrast, simply appending or duplicating these important passes yields little additional benefit, indicating that their contribution depends on sequence context and placement rather than monotonic frequency. These real LLVM counterfactual results are consistent with the permutation-importance ranking and support the practical relevance of the key passes and synergy structure learned by RFunipass.
```

## 9. 最终结论

可作为论文结论的一段：

```text
RFunipass 学到的通用 pass 序列不是不可解释的黑盒组合。跨 10 个随机种子的 RF permutation importance 显示，pass frequency 是最强解释性特征组，协同图导出的 synergy_rate 是第二强的结构性信号，scope composition 也提供稳定贡献。pass 级别上，elim-avail-extern、scc-oz-module-inliner 和 globalopt 是最关键的组成部分。真实 LLVM counterfactual validation 进一步验证了这些发现：删除这些 pass 会显著恶化 validation objective，而简单追加或重复它们通常没有等价收益。因此，RFunipass 的收益来自特定 pass 的选择、协同顺序结构和作用域组合，而不是单纯增加序列长度或重复 pass。
```

## 10. 写作注意事项

- 主表应优先报告 permutation importance，不要只报告 MDI。
- MDI 可以放在附录或作为诊断列，因为 impurity-based importance 可能存在偏置。
- `synergy_rate` 可以作为协同图有效性的主证据。
- `self_loop` 当前不能作为主结论，因为 permutation importance 不稳定。
- Counterfactual 表必须报告 seed/sample count，尤其是 `delete_all scc-oz-module-inliner` 只有 6 个 seed。
- 不要说 RF 解释证明了因果关系；更严谨的说法是 RF 提供相关解释，counterfactual LLVM evaluation 提供机制验证。
