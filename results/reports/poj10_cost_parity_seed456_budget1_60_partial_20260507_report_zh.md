# Cost-Parity Partial Report: seed456, budget 1-60

## 实验范围

本报告只覆盖已经完成且有有效结果的 partial cost-parity 数据：

- Dataset split：RFunipass formal 10-seed target export 中的 `seed456`。
- Target programs：50 个 POJ test programs。
- Budgets：`1, 2, 4, 8, 16, 30, 60`。
- Strategies：`rio_random`、`ga_bitvector`、`cfsat_ga`。
- Objective：`mean_norm + 0.15 * worsen_rate`，越低越好。
- Baseline：`oz`。
- LLVM tools：`/root/llvm/llvm-project-21/build/bin`。
- LOOP_NESTING_POLICY：`wrap`。

未纳入本报告：

- `seed456,budget100`：已启动但中断，输出目录为空，没有有效 `summary.csv`。
- `seed457-465`：尚未完成。

因此，本报告是单 seed 的 early-budget/pilot 结论，不能替代正式 10-seed 主表。

## RFunipass 参考结果

| Metric | Value |
| --- | ---: |
| RFunipass mean_norm | 0.7453 |
| RFunipass worsen_rate | 0.1600 |
| RFunipass objective | 0.7693 |
| RFunipass core eval count | 40600 |
| RFunipass target-feedback eval count | 0 |

匹配判定使用默认规则：

```text
perprogram_objective <= rfunipass_objective + 0.005
```

本 seed 的 objective 匹配阈值为：

```text
0.7693 + 0.005 = 0.7743
```

## Budget 曲线

### cfsat_ga

| Budget | Eval count | mean_norm | worsen_rate | objective | Matched |
| ---: | ---: | ---: | ---: | ---: | --- |
| 1 | 50 | 0.9345 | 0.2600 | 0.9735 | False |
| 2 | 100 | 0.8647 | 0.1400 | 0.8857 | False |
| 4 | 200 | 0.8121 | 0.1000 | 0.8271 | False |
| 8 | 400 | 0.7608 | 0.1000 | 0.7758 | False |
| 16 | 800 | 0.7112 | 0.1000 | 0.7262 | True |
| 30 | 1500 | 0.6836 | 0.1000 | 0.6986 | True |
| 60 | 3000 | 0.6664 | 0.0800 | 0.6784 | True |

`cfsat_ga` 在 budget 8 已非常接近 RFunipass，但 objective 为 `0.7758`，略高于匹配阈值 `0.7743`。从 budget 16 开始，`cfsat_ga` 明确超过 RFunipass：objective 降至 `0.7262`，worsen_rate 也低于 RFunipass。

### ga_bitvector

| Budget | Eval count | mean_norm | worsen_rate | objective | Matched |
| ---: | ---: | ---: | ---: | ---: | --- |
| 1 | 50 | 1.3511 | 0.7600 | 1.4651 | False |
| 2 | 100 | 1.1620 | 0.6800 | 1.2640 | False |
| 4 | 200 | 1.0290 | 0.4600 | 1.0980 | False |
| 8 | 400 | 0.9862 | 0.3600 | 1.0402 | False |
| 16 | 800 | 0.9674 | 0.2400 | 1.0034 | False |
| 30 | 1500 | 0.9527 | 0.1800 | 0.9797 | False |
| 60 | 3000 | 0.9323 | 0.1800 | 0.9593 | False |

`ga_bitvector` 随 budget 增加持续改善，但到 budget 60 仍未接近 RFunipass objective。其主要问题是 mean_norm 与 worsen_rate 都明显高于 RFunipass 和 `cfsat_ga`。

### rio_random

| Budget | Eval count | mean_norm | worsen_rate | objective | Matched |
| ---: | ---: | ---: | ---: | ---: | --- |
| 1 | 50 | 1.3792 | 0.8400 | 1.5052 | False |
| 2 | 100 | 1.1769 | 0.7200 | 1.2849 | False |
| 4 | 200 | 1.0605 | 0.4800 | 1.1325 | False |
| 8 | 400 | 0.9948 | 0.3400 | 1.0458 | False |
| 16 | 800 | 0.9671 | 0.2400 | 1.0031 | False |
| 30 | 1500 | 0.9512 | 0.2000 | 0.9812 | False |
| 60 | 3000 | 0.9331 | 0.1800 | 0.9601 | False |

`rio_random` 与 `ga_bitvector` 的曲线非常接近，budget 60 仍未达到 RFunipass。它可以作为“无结构随机搜索”的下界参考。

## Cost-to-Match 结果

| Strategy | Matched | Equivalent budget | Eval count to match | Ratio vs RFunipass core eval |
| --- | --- | ---: | ---: | ---: |
| `cfsat_ga` | True | 16 | 800 | 0.0197 |
| `ga_bitvector` | False | >60 | 3000 | 0.0739 |
| `rio_random` | False | >60 | 3000 | 0.0739 |

在 `seed456` 上，`cfsat_ga` 用 800 次 per-target objective evaluation 达到并超过 RFunipass 的测试 objective。这相当于 RFunipass offline core eval count `40600` 的约 `1.97%`。但这两种 cost 的含义不同：

- `cfsat_ga` 的 800 次 evaluation 是对这 50 个 target programs 的 per-program target-feedback cost。
- RFunipass 的 40600 次 evaluation 是训练/搜索阶段的 offline cost，部署到 target test programs 时 target-feedback eval count 为 0。

因此，这个 partial 结果不能简单解读为 `cfsat_ga` 成本一定低于 RFunipass。更准确的说法是：在单个 seed 的 50 个测试程序上，per-program graph-path GA 能以较少 target-feedback evaluations 追上 RFunipass；但它需要对每个目标程序重新调优，而 RFunipass 学到的是一条可直接部署的通用 pass 序列。

## 方法对比观察

1. `cfsat_ga` 显著优于 `ga_bitvector` 和 `rio_random`。在 budget 16 时，`cfsat_ga` objective 已为 `0.7262`，而另外两者约为 `1.003`。

2. 协同图结构对 per-program 搜索有明显帮助。`cfsat_ga` 与 `rio_random` 的差距说明，沿 pass synergy graph path 组织候选序列比无结构随机搜索更有效。

3. `ga_bitvector` 在低 budget 下改善较慢。它到 budget 60 仍未匹配 RFunipass，说明仅靠 bit-vector 组合搜索很难在有限预算内找到高质量序列。

4. `cfsat_ga` 在 budget 8 已接近阈值。`budget8 objective=0.7758`，匹配阈值为 `0.7743`，只差约 `0.0015`。这说明后续正式实验可重点关注 budget 8 到 16 之间的 cost-to-match 拐点。

## 论文写作建议

这个 partial 结果适合放在实验分析或 ablation discussion 中，作为早期证据说明：

- per-program CFSAT-style graph search 在足够 budget 下很强；
- RFunipass 的优势不是“每个目标程序都比 per-program tuning 更低 cost”，而是“训练后得到一条通用序列，部署时不需要 target feedback”；
- cost-parity 评估应同时报告 offline tuning cost 和 deployment target-feedback cost，否则容易误读。

正式论文主表仍应使用 10-seed 汇总，报告均值和置信区间。当前单 seed 结果只能作为趋势分析。

## 生成文件

- Curve CSV：`results/reports/poj10_cost_parity_seed456_budget1_60_partial_20260507_curve.csv`
- Equivalent budget CSV：`results/reports/poj10_cost_parity_seed456_budget1_60_partial_20260507_equivalent_budget.csv`
- Aggregate CSV：`results/reports/poj10_cost_parity_seed456_budget1_60_partial_20260507_aggregate.csv`
- Auto summary：`results/reports/poj10_cost_parity_seed456_budget1_60_partial_20260507_summary.md`
- SVG curve：`results/reports/poj10_cost_parity_seed456_budget1_60_partial_20260507_curve.svg`
