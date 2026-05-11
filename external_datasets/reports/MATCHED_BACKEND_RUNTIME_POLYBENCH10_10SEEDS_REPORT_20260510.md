# PolyBench-10 10-Seed Matched-Backend Runtime 实验报告

生成时间：2026-05-10

## 实验目的

本实验在 PolyBench-10 子集上复用 PolyBench-full 的 matched-backend runtime 流程，验证 10 个 RFunipassLab instrcount 调优结果在外部 runtime 指标上的表现。实验重点是保证和 PolyBench-full 结果的一致性与连贯性：同一批 10-seed 序列、同一 LLVM21 工具链、同一 backend matching 口径、同一 timeout/invalid 统计规则。

本报告是 repeat=1 的全量 pilot，覆盖 PolyBench-10 的 10 个 benchmark 和 10 个 seed，共 100 个 RFunipass seed-benchmark 组合。该实验用于判断是否值得继续 repeat=30 正式测量；由于 pilot 已出现大面积 timeout/invalid，本次没有继续执行 repeat=30。

## 数据集

PolyBench-10 benchmark：

```text
2mm, 3mm, cholesky, jacobi-2d, lu,
correlation, nussinov, symm, heat-3d, covariance
```

IR 路径：

```text
external_datasets/ir/polybench/*.ll
```

## 输入序列

- Source batch：`results/reports/20260423_181846_348878_feature_lite_multiseed_instrcount_lite_wrap_10seeds.csv`
- Seeds：456, 457, 458, 459, 460, 461, 462, 463, 464, 465
- 使用字段：`final_pipeline_effective`
- 说明：`final_pipeline_effective` 已经是 fix_loop_nesting 后的 LLVM New Pass Manager 合法 pipeline，runner 不再二次修改。

## 工具链与计时口径

- LLVM tools：`/root/llvm/llvm-project-21/build/bin`
- LLVM version：21.1.8
- Runtime metric：PolyBench 输出的 kernel time，即 `polybench_seconds`
- Wall-clock runtime 同时记录在 raw timing 中，但不作为主指标
- repeat：1
- warmup repeat：0
- hard timeout：300 秒
- adaptive timeout：`max(5s, matched_baseline_median * 5)`，再受 300 秒上限约束
- timeout 样本：计为 worsened，并用 timeout cap 作为 censored lower-bound ratio
- invalid 样本：程序非零退出或段错误，单独计入 invalid，不静默丢弃

runner 已支持 `--warmup-repeat`，用于后续 repeat>1 的正式测量。本次 pilot 为了快速判断是否值得进入正式测量，设置为 0；如果未来测 runtime-specific 序列，建议 `--repeat 30 --warmup-repeat 1`。

## Matched-Backend 流程

对 RFunipass：

```bash
opt -S -passes="<RFunipass final_pipeline_effective>" input.ll -o rfunipass.ll
clang -x ir -Oz -Xclang -disable-llvm-passes rfunipass.ll -lm -o rfunipass_oz.out
clang -x ir -O3 -Xclang -disable-llvm-passes rfunipass.ll -lm -o rfunipass_o3.out
```

对 baseline：

```bash
opt -S -Oz input.ll -o oz.ll
clang -x ir -Oz -Xclang -disable-llvm-passes oz.ll -lm -o oz.out

opt -S -O3 input.ll -o o3.ll
clang -x ir -O3 -Xclang -disable-llvm-passes o3.ll -lm -o o3.out
```

`-Xclang -disable-llvm-passes` 用于避免 clang 对已经 materialized 的 IR 再跑一轮 middle-end pipeline，同时保留 `-Oz` / `-O3` 对 codegen/backend 行为的影响。

## 输出文件

Oz：

- Summary：`external_datasets/reports/external_runtime_polybench10_wrap_10seeds_backend_oz_repeat1_adaptive5_20260510_summary.md`
- Manifest：`external_datasets/reports/external_runtime_polybench10_wrap_10seeds_backend_oz_repeat1_adaptive5_20260510_manifest.json`
- Raw timings：`external_datasets/reports/external_runtime_polybench10_wrap_10seeds_backend_oz_repeat1_adaptive5_20260510_raw_timings.csv`
- Per benchmark/seed：`external_datasets/reports/external_runtime_polybench10_wrap_10seeds_backend_oz_repeat1_adaptive5_20260510_per_benchmark_seed.csv`
- Per seed：`external_datasets/reports/external_runtime_polybench10_wrap_10seeds_backend_oz_repeat1_adaptive5_20260510_per_seed.csv`
- Aggregate：`external_datasets/reports/external_runtime_polybench10_wrap_10seeds_backend_oz_repeat1_adaptive5_20260510_aggregate.csv`

O3：

- Summary：`external_datasets/reports/external_runtime_polybench10_wrap_10seeds_backend_o3_repeat1_adaptive5_20260510_summary.md`
- Manifest：`external_datasets/reports/external_runtime_polybench10_wrap_10seeds_backend_o3_repeat1_adaptive5_20260510_manifest.json`
- Raw timings：`external_datasets/reports/external_runtime_polybench10_wrap_10seeds_backend_o3_repeat1_adaptive5_20260510_raw_timings.csv`
- Per benchmark/seed：`external_datasets/reports/external_runtime_polybench10_wrap_10seeds_backend_o3_repeat1_adaptive5_20260510_per_benchmark_seed.csv`
- Per seed：`external_datasets/reports/external_runtime_polybench10_wrap_10seeds_backend_o3_repeat1_adaptive5_20260510_per_seed.csv`
- Aggregate：`external_datasets/reports/external_runtime_polybench10_wrap_10seeds_backend_o3_repeat1_adaptive5_20260510_aggregate.csv`

## 主结果

| Backend profile | Matched baseline | Seeds | Programs/seed | Geomean ratio ↓ | Speedup ↑ | Worsen rate ↓ | Invalid rate ↓ | Worsen-or-invalid ↓ | Improved / tied / worsened | Timeout / invalid |
| --- | --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: |
| Oz | Oz | 10 | 10 | 3252.3781 ± 7351.2272 | 0.4330 ± 0.2018 | 52.00% ± 15.38% | 35.00% ± 13.17% | 87.00% ± 7.58% | 3 / 10 / 52 | 33 / 35 |
| O3 | O3 | 10 | 10 | 3570.8567 ± 8071.4992 | 0.4098 ± 0.1808 | 56.00% ± 14.39% | 35.00% ± 13.17% | 91.00% ± 5.28% | 3 / 6 / 56 | 34 / 35 |

## Per-Seed 结果

| Seed | Oz finite ratios | Oz geomean ↓ | Oz bad rate ↓ | O3 finite ratios | O3 geomean ↓ | O3 bad rate ↓ |
| ---: | ---: | ---: | ---: | ---: | ---: | ---: |
| 456 | 7 | 2.5103 | 80.00% | 7 | 2.5570 | 90.00% |
| 457 | 8 | 3.3510 | 90.00% | 8 | 3.3608 | 90.00% |
| 458 | 5 | 2.6496 | 90.00% | 5 | 2.6832 | 100.00% |
| 459 | 5 | 1.0135 | 70.00% | 5 | 1.0304 | 80.00% |
| 460 | 4 | 2.2820 | 100.00% | 4 | 2.2866 | 100.00% |
| 461 | 8 | 1.2090 | 80.00% | 8 | 1.6063 | 90.00% |
| 462 | 5 | 2.6812 | 100.00% | 5 | 2.6567 | 90.00% |
| 463 | 10 | 4.2746 | 100.00% | 10 | 4.2878 | 100.00% |
| 464 | 7 | 2.5170 | 80.00% | 7 | 2.5238 | 80.00% |
| 465 | 6 | 32501.2925 | 80.00% | 6 | 35685.5748 | 90.00% |

## 失败模式

Oz 状态分布：

```text
invalid: 35
timeout: 33
worsened: 19
tied: 10
improved: 3
```

O3 状态分布：

```text
invalid: 35
timeout: 34
worsened: 22
tied: 6
improved: 3
```

高频 timeout benchmark：

```text
2mm, 3mm, heat-3d, covariance, jacobi-2d, cholesky, lu
```

高频 invalid benchmark：

```text
symm, cholesky, jacobi-2d, lu, heat-3d, covariance
```

## 与 PolyBench-full 的连贯性

PolyBench-10 的结果与 PolyBench-full 的结论一致：instrcount objective 调优得到的通用 pass 序列不能直接作为 runtime 优化结果使用。PolyBench-10 虽然规模更小，但仍然出现 87.00%（Oz）和 91.00%（O3）的 worsen-or-invalid rate。

这说明问题不是 PolyBench-full 中个别 benchmark 导致的，而是 instrcount 序列本身对 runtime correctness/performance 的迁移风险较高。

## 是否继续 repeat=30

不建议继续对当前 instrcount 10-seed 序列执行 repeat=30。原因：

- repeat=1 已显示 Oz 下 68/100 个 timeout-or-invalid，O3 下 69/100 个 timeout-or-invalid。
- 大量 invalid 是 correctness 问题，重复测量不能修复。
- 大量 timeout 表示 runtime 退化非常严重，repeat=30 只会增加资源消耗。
- 当前结果已经足以支持论文中的 limitation/negative evidence：instrcount 和 runtime 目标不可混用。

## 后续建议

如果论文需要 runtime 主表，应启动 runtime-specific RFunipass 调优，而不是复用 instrcount 序列。建议后续正式 runtime 实验采用：

```bash
--repeat 30
--warmup-repeat 1
--adaptive-timeout-factor 5
--min-runtime-timeout 5
```

并且训练 objective 中加入 correctness gate、timeout penalty、invalid penalty 和 bad-rate penalty。

## 复现实验命令

Oz pilot：

```bash
LLVM_TOOLS_PATH=/root/llvm/llvm-project-21/build/bin \
python run_external_runtime_multi_seed.py \
  --batch-csv results/reports/20260423_181846_348878_feature_lite_multiseed_instrcount_lite_wrap_10seeds.csv \
  --suite polybench \
  --backend-profile oz \
  --matched-baseline oz \
  --repeat 1 \
  --warmup-repeat 0 \
  --timeout 300 \
  --adaptive-timeout-factor 5 \
  --min-runtime-timeout 5 \
  --tag external_runtime_polybench10_wrap_10seeds_backend_oz_repeat1_adaptive5_20260510 \
  --continue-on-error \
  --resume
```

O3 pilot：

```bash
LLVM_TOOLS_PATH=/root/llvm/llvm-project-21/build/bin \
python run_external_runtime_multi_seed.py \
  --batch-csv results/reports/20260423_181846_348878_feature_lite_multiseed_instrcount_lite_wrap_10seeds.csv \
  --suite polybench \
  --backend-profile o3 \
  --matched-baseline o3 \
  --repeat 1 \
  --warmup-repeat 0 \
  --timeout 300 \
  --adaptive-timeout-factor 5 \
  --min-runtime-timeout 5 \
  --tag external_runtime_polybench10_wrap_10seeds_backend_o3_repeat1_adaptive5_20260510 \
  --continue-on-error \
  --resume
```
