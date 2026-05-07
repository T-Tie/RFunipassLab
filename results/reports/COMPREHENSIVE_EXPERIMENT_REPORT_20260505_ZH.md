# RFunipassLab 最近一次综合实验报告

## 1. 选取的实验

本报告选取当前 `results/` 中最近且覆盖面最完整的一次实验：

`20260505_021422_538199_feature_lite_multiseed_rf_explain_formal_10seeds_20260505_021421`

选择依据：

- 时间最新：批量实验于 `2026-05-05 02:14:22` 启动，`2026-05-05 08:04:49` 完成。
- 覆盖 seed 完整：`456..465` 共 10 个 seed，全部成功，失败数为 0。
- 覆盖指标完整：包含 instrcount 主目标、validation/test 泛化、Top-5 序列测试、binary-size test、多 seed RF 可解释性和 counterfactual 验证。
- 复现信息完整：seed、split seed、loop policy、objective、baseline、backend opt level、LLVM 工具链、feature mode 均写入 manifest / summary。
- 论文相关性最高：该实验同时支撑主结果、稳定性、可解释性和消融讨论，比早期单 seed、runtime smoke、external-only 或 binary-only 实验更适合作为论文当前主报告。

主要产物：

- Batch manifest: `/root/exp/RFunipassLab/results/manifests/20260505_021422_538199_feature_lite_multiseed_rf_explain_formal_10seeds_20260505_021421.json`
- 主表 CSV: `/root/exp/RFunipassLab/results/reports/20260505_021422_538199_feature_lite_multiseed_rf_explain_formal_10seeds_20260505_021421.csv`
- 主表 Markdown: `/root/exp/RFunipassLab/results/reports/20260505_021422_538199_feature_lite_multiseed_rf_explain_formal_10seeds_20260505_021421.md`
- RF importance 聚合表: `/root/exp/RFunipassLab/results/reports/rf_explain_formal_10seeds_20260505_021421_rf_importance_ci_top.md`
- RF 解释性分析: `/root/exp/RFunipassLab/results/reports/RF_INTERPRETABILITY_10SEED_ANALYSIS_20260505_ZH.md`
- Driver log: `/root/exp/RFunipassLab/results/logs/rf_explain_formal_10seeds_20260505_021421_driver.log`

## 2. 实验设置

| 项目 | 设置 |
| --- | --- |
| 方法 | RFunipass universal offline tuning |
| 实验名 | `feature_lite` |
| Seeds | `456..465` |
| Split seeds | 与 experiment seed 一致 |
| Objective | `instrcount` |
| Baseline | `oz` |
| Backend opt level | `-O0` |
| Feature mode | `lite` |
| Loop nesting policy | `wrap` |
| LLVM tools | `/root/llvm/llvm-project-21/build/bin` |
| Train top-k | `200` |
| Search train programs | `100` |
| Validation programs | `100` |
| Test programs | `50` |
| Validation ratio | `0.5` |
| BO iterations | `100` |
| GA population | `200` |
| GA generations | `5` |
| Max sequence length | `120` |
| RF explain | enabled |
| Permutation repeats | `10` |
| Counterfactual | enabled, top-k `5`, max evals `20` |

复现实验入口：

```bash
cd /root/exp/RFunipassLab

RUN_TAG=rf_explain_formal_10seeds_20260505_021421 \
SEED_START=456 \
SEED_COUNT=10 \
SPLIT_SEED_OFFSET=0 \
LLVM_TOOLS_PATH=/root/llvm/llvm-project-21/build/bin \
LOOP_NESTING_POLICY=wrap \
OBJECTIVE_KIND=instrcount \
OBJECTIVE_BASELINE=oz \
BACKEND_OPT_LEVEL=-O0 \
FEATURE_MODE=lite \
RF_EXPLAIN_ENABLE=1 \
RF_EXPLAIN_MODE=final \
RF_EXPLAIN_PERM_REPEATS=10 \
RF_EXPLAIN_COUNTERFACTUAL_ENABLE=1 \
bash scripts/run_rf_explain_10seed_driver.sh
```

## 3. 主实验结果

10 个 seed 的最终通用序列在 Poj test 集上的平均 `test_mean_norm` 为 `0.7635`，即相对 `-Oz` baseline 平均减少约 `23.65%` 的 LLVM IR 指令数。平均 `test_objective` 为 `0.7782`，平均 `test_worsen_rate` 为 `9.8%`。

| 指标 | Mean | 95% CI | Median | Min | Max |
| --- | ---: | ---: | ---: | ---: | ---: |
| Train objective | 0.7496 | [0.7178, 0.7814] | 0.7490 | 0.6634 | 0.8202 |
| Validation objective | 0.7352 | [0.7115, 0.7588] | 0.7384 | 0.6683 | 0.7903 |
| Test objective | 0.7782 | [0.7461, 0.8102] | 0.7756 | 0.6847 | 0.8653 |
| Test mean norm | 0.7635 | [0.7335, 0.7934] | 0.7595 | 0.6727 | 0.8473 |
| Test worsen rate | 9.8% | [6.7%, 12.9%] | 10.0% | 2.0% | 18.0% |
| Final sequence length | 15.2 | [12.8, 17.6] | 15.5 | 9 | 22 |

解释：

- 平均 test mean norm 明显低于 1，说明学到的通用 pass 序列在未参与搜索选择的 test 程序上仍有收益。
- validation objective 与 test objective 存在差距，说明 validation 选择有效但仍存在分布波动；论文中应报告多 seed 均值和置信区间，而不是只展示最优 seed。
- test worsen rate 不为 0，说明通用序列无法保证对所有程序改善；这是 universal tuning 的核心 trade-off。
- 最终序列长度平均约 15，说明 validation ablation 能将较长候选压缩为相对短的通用序列。

## 4. 最优 seed 与代表性序列

按 validation objective 排序，最佳 seed 为 `464`：

| Seed | Val Obj | Test Obj | Train Obj | Val Worse | Test Worse | Length |
| ---: | ---: | ---: | ---: | ---: | ---: | ---: |
| 464 | 0.6683 | 0.7819 | 0.7163 | 8.0% | 10.0% | 18 |

seed 464 的最终有效序列为：

```text
module(globalopt) -> module(attributor) -> module(iroutliner) -> module(iroutliner) -> function(dse) -> cgscc(attributor-cgscc) -> function(newgvn) -> module(iroutliner) -> module(elim-avail-extern) -> module(attributor) -> module(scc-oz-module-inliner) -> module(scc-oz-module-inliner) -> function(gvn-sink) -> function(newgvn) -> module(globalopt) -> cgscc(attributor-cgscc) -> module(iroutliner) -> module(scc-oz-module-inliner)
```

但论文主表不应只报告 seed 464。更严谨的写法应以 10 seed 平均与 95% CI 为主，把 seed 464 作为 case study 或 best-validation example。

## 5. 每个 seed 的主结果

| Seed | Val Obj | Test Obj | Test Mean | Test Worse | Len |
| ---: | ---: | ---: | ---: | ---: | ---: |
| 456 | 0.7677 | 0.7693 | 0.7453 | 16.0% | 15 |
| 457 | 0.7903 | 0.7945 | 0.7795 | 10.0% | 15 |
| 458 | 0.7048 | 0.8122 | 0.7852 | 18.0% | 18 |
| 459 | 0.7349 | 0.8333 | 0.8153 | 12.0% | 11 |
| 460 | 0.7418 | 0.7330 | 0.7240 | 6.0% | 16 |
| 461 | 0.7716 | 0.8653 | 0.8473 | 12.0% | 11 |
| 462 | 0.7036 | 0.6847 | 0.6727 | 8.0% | 22 |
| 463 | 0.7096 | 0.7523 | 0.7463 | 4.0% | 17 |
| 464 | 0.6683 | 0.7819 | 0.7669 | 10.0% | 18 |
| 465 | 0.7590 | 0.7551 | 0.7521 | 2.0% | 9 |

观察：

- seed 462 的 test objective 最好，为 `0.6847`；seed 464 的 validation objective 最好，为 `0.6683`。
- validation 最好不等于 test 最好，说明 validation split 只能近似估计泛化表现。
- seed 461 的 test objective 最差，为 `0.8653`，但仍低于 1；说明最差 seed 仍有整体收益。

## 6. Binary Size Test

本批次还对最终序列进行了 binary-size test。primary binary metric 是 `stripped_file_bytes`，同时记录 `text_bytes`、`data_bytes`、`bss_bytes`、`dec_bytes`。

| Metric | Mean Norm | 95% CI | Improved Rate | Worsen Rate | 结论 |
| --- | ---: | ---: | ---: | ---: | --- |
| stripped_file_bytes | 0.9995 | [0.9994, 0.9996] | 47.8% | 5.4% | 几乎持平，略有改善 |
| text_bytes | 0.9126 | [0.9023, 0.9230] | 76.6% | 17.4% | `.text` 段显著缩小 |
| data_bytes | 0.9935 | [0.9926, 0.9943] | 46.8% | 6.8% | 小幅改善 |
| bss_bytes | 1.0000 | [1.0000, 1.0000] | 0.0% | 0.0% | 无变化 |
| dec_bytes | 0.9333 | [0.9247, 0.9418] | 76.0% | 18.0% | 总段大小明显缩小 |

解释：

- instrcount 优化序列对 `.text` 和 `dec_bytes` 有明显正迁移，说明 IR 指令数减少与代码段大小减少存在相关性。
- `stripped_file_bytes` 几乎不变，是因为 strip 后可执行文件包含 ELF 结构、对齐、元数据和固定运行时开销，很多小程序中 `.text` 的变化会被文件级粒度掩盖。
- 如果论文讨论 binary size，建议主表同时展示 `.text` 和 `stripped_file_bytes`，避免只看 stripped file size 得出“没有收益”的误判。

## 7. Top-5 序列测试

每个 seed 保存按 validation objective 排序的 Top-5 序列，并在 test 上评估。跨 10 seed 共 50 条 Top-ranked 序列：

| 指标 | 数值 |
| --- | ---: |
| Top-ranked sequences | 50 |
| Mean test objective | 0.7898 |
| 95% CI | [0.7789, 0.8007] |
| Min test objective | 0.7096 |
| Max test objective | 0.8728 |

解释：

- Top-5 平均 test objective 为 `0.7898`，略差于每个 seed 最终 ablation 后序列的平均 test objective `0.7782`。
- 这支持 validation ablation 的价值：不是简单选择 Top-1 长序列，而是进一步删除冗余 pass，能保留或提升泛化效果。

## 8. 调优成本

| 指标 | Mean | 95% CI | Median | Min | Max |
| --- | ---: | ---: | ---: | ---: | ---: |
| Candidate sequence count | 227.0 | [212.6, 241.4] | 221.5 | 201 | 269 |
| Objective eval count | 41190 | [39790, 42590] | 40850 | 38300 | 45000 |
| Total tuning time | 1804.5s | [1165.8s, 2443.1s] | 1366.8s | 881.6s | 3978.2s |
| ML time | 642.6s | [423.6s, 861.6s] | 536.7s | 298.2s | 1385.7s |

解释：

- 每个 seed 的真实 objective evaluation 约 4 万次，属于 offline universal tuning 成本。
- 运行时间方差较大，主要来自不同 seed 产生的序列长度、opt 执行成本、RF 解释性分析和 counterfactual evaluation 差异。
- 论文中应把 tuning cost 与 per-program tuner 区分：RFunipass 的成本用于学习一条通用序列，而不是为每个程序单独搜索。

## 9. RF 代理模型质量

RF 解释性分析是 post-hoc 分析，不参与最终搜索决策。10 seed 聚合结果如下：

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

- RF 对已评估序列拟合较好，train R2 约 `0.94`。
- holdout R2 约 `0.54`，说明 RF 有中等预测能力，但不能被表述为高精度 oracle。
- 论文中应将 RF importance 表述为“稳定相关解释信号”，不要把 MDI/permutation 直接表述为严格因果。

## 10. Feature Importance 与 Counterfactual

以 permutation importance 为主，跨 seed 稳健的正特征包括：

| Rank | Feature | Group | Perm Mean | 95% CI |
| ---: | --- | --- | ---: | ---: |
| 1 | `pass_freq:module(elim-avail-extern)` | pass_freq | 0.004727 | [0.002325, 0.007128] |
| 2 | `pass_freq:module(scc-oz-module-inliner)` | pass_freq | 0.004437 | [0.001284, 0.007589] |
| 3 | `synergy_rate` | synergy | 0.004150 | [0.001793, 0.006507] |
| 4 | `pass_freq:module(globalopt)` | pass_freq | 0.001009 | [0.000261, 0.001758] |
| 5 | `scope_ratio:function` | scope_ratio | 0.000832 | [0.000473, 0.001191] |
| 6 | `scope_ratio:module` | scope_ratio | 0.000732 | [0.000247, 0.001218] |
| 8 | `pass_freq:function(mem2reg)` | pass_freq | 0.000362 | [0.000048, 0.000675] |

按特征组聚合：

| Rank | Group | Perm Sum Mean | 95% CI | 结论 |
| ---: | --- | ---: | ---: | --- |
| 1 | pass_freq | 0.010377 | [0.007284, 0.013469] | 哪些 pass 被选中最重要 |
| 2 | synergy | 0.004150 | [0.001793, 0.006507] | 协同图特征有稳定解释力 |
| 3 | scope_ratio | 0.001612 | [0.000898, 0.002325] | pass 作用域分布有贡献 |
| 4 | sequence_shape | 0.000004 | [-0.000855, 0.000863] | 泛化贡献不稳定 |
| 5 | self_loop | -0.000145 | [-0.000463, 0.000172] | 当前不能作为强主张 |

Counterfactual LLVM evaluation 的关键结果：

| Mutation | Seeds | Mean delta objective | 95% CI | 解释 |
| --- | ---: | ---: | ---: | --- |
| delete_all `module(scc-oz-module-inliner)` | 6 | +0.7272 | [0.5876, 0.8668] | 删除所有该 pass 后严重退化 |
| delete_first `module(scc-oz-module-inliner)` | 10 | +0.2954 | [0.0184, 0.5724] | 平均退化明显，seed 间差异大 |
| delete_first `module(elim-avail-extern)` | 10 | +0.2672 | [0.2358, 0.2985] | 最稳定的单 pass 因果证据 |
| delete_first `module(globalopt)` | 7 | +0.1390 | [0.0935, 0.1844] | 稳定退化 |
| duplicate_after_first `module(scc-oz-module-inliner)` | 10 | -0.0031 | [-0.0059, -0.0002] | 重复一次有轻微改善 |

主要解释：

- `elim-avail-extern`、`scc-oz-module-inliner`、`globalopt` 是当前 instrcount 目标下最关键的 pass-level 信号。
- `synergy_rate` 排名第 3 且置信区间不跨 0，是协同图设计对 RF surrogate 有贡献的直接证据。
- `self_loop` 的 permutation importance 不稳定，不能作为主论文强结论；如果讨论，应放在 limitation 或 discussion。
- “pass 重要”不等于“重复越多越好”。counterfactual 显示简单 append/duplicate 多数收益有限。

## 11. 与项目其他实验的关系

项目中还存在以下实验类型：

- 早期 instrcount 单 seed / baseline 实验：用于开发与 sanity check，但缺少多 seed 统计。
- runtime 目标实验：用于探索运行时间目标，但日志中存在失败或不完整记录，且当前没有 10 seed 正式统计。
- binary-size 手动序列实验：用于验证二进制大小指标实现，但不如本批次与正式调优流程绑定紧密。
- external dataset 实验：包括 cBench / PolyBench / polybench_full 等外部分布泛化测试，但最近一次完整 external 10-seed 报告时间为 2026-04-24，早于本批次，且不包含 RF 解释性。
- RF 单 seed 解释实验：验证了可解释性模块可用，但统计可靠性弱于本次 10-seed 聚合。

因此，本批次适合作为当前 RFunipassLab 的“内部主实验 + 可解释性主实验”。如果论文目标是完整顶会投稿，还需要把 external dataset 10-seed 泛化结果与本批次并列为第二张主表。

## 12. 论文写作建议

可作为主结论：

- RFunipass 在 10 seed 上学习到的通用 pass 序列能在未参与搜索的 test 程序上稳定降低 IR 指令数，平均 test mean norm 为 `0.7635`。
- validation-based selection 能有效约束过拟合，但 validation 最优不必然等于 test 最优，因此必须报告 multi-seed 均值与置信区间。
- 通用序列对 `.text` 和 `dec_bytes` 有明显正迁移，但对 `stripped_file_bytes` 的影响接近持平，说明 binary-size 需要多指标呈现。
- RF 解释性显示，pass frequency、synergy rate 和 scope composition 是最有解释力的特征组。
- Counterfactual LLVM evaluation 支持 `elim-avail-extern`、`scc-oz-module-inliner`、`globalopt` 的真实贡献。

应避免的表述：

- 不应只报告 seed 464 或 seed 462 的最优结果。
- 不应声称 RF importance 是严格因果证明。
- 不应把 `self_loop` 作为强正结论；当前证据不足。
- 不应只用 `stripped_file_bytes` 评价 binary size，否则会掩盖 `.text` 的真实缩小。

## 13. 局限性与下一步

当前局限：

- 本批次是 Poj 内部分布实验，不等价于外部分布泛化。
- runtime 目标尚缺少同等规模的 10 seed 正式实验。
- RF holdout R2 约 `0.54`，解释可信但预测能力有限。
- Counterfactual 只覆盖 top-k pass，mutation panel 不够完整。
- binary-size 评估是附加测试，不是搜索目标；若论文主张 size，需要进一步做 binary-size objective 的正式调优。

建议下一步：

- 用同一批 10 seed 最终序列补齐 external datasets 主表，尤其是 `polybench_full`、cBench、CSmith 类外部分布。
- 做 synergy 消融实验：禁用协同图排序/特征或打乱协同图，保持预算相同，比较最终 objective。
- 做 fixed counterfactual panel：对每个 seed 的同一组关键 pass 统一执行 delete_first、delete_all、move、replace。
- 做 runtime 10 seed 正式实验，检验 instrcount 序列是否能迁移到运行时间目标。
- 做 binary-size objective 正式实验，区分“instrcount 序列对 size 的迁移”与“直接以 size 为目标搜索”的效果。

## 14. 总结

这次 `20260505` 10-seed feature-lite 实验是当前项目中最近且最全面的一次正式实验。它证明 RFunipass 在 Poj test 集上可以学习到稳定有效的通用 pass 序列，平均 IR 指令数降至 `-Oz` baseline 的 `76.35%`，同时 `.text` bytes 平均降至 `91.26%`。可解释性分析进一步表明，收益主要来自少量模块级 pass、pass 频次结构和协同图特征，其中 `elim-avail-extern`、`scc-oz-module-inliner`、`globalopt` 是最稳定的核心 pass。该实验可以作为论文内部主实验与解释性分析的基础，但投稿级完整性还需要补充外部分布泛化、消融对照和 runtime / binary-size 目标实验。
