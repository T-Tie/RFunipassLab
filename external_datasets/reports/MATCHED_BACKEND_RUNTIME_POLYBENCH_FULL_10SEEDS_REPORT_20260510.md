# PolyBench-full 10-Seed Matched-Backend Runtime 实验报告

生成时间：2026-05-10

## 实验目的

本实验验证 10 个 RFunipassLab instrcount 调优结果在 PolyBench-full 外部数据集上的 runtime 表现，并修正早期 runtime 设计中的后端不一致问题。新的实验口径是：RFunipass 和 LLVM baseline 都先显式生成 middle-end 优化后的 LLVM IR，再使用与被比较 baseline 一致的 backend optimization level 编译二进制。

本报告是 repeat=1 的全量先导实验，覆盖 PolyBench-full 30 个 benchmark 和 10 个 seed，共 300 个 RFunipass seed-benchmark 组合。它用于验证流程、发现 correctness/runtime 风险和估计正式实验成本，不应直接作为论文最终 runtime 主表。

## 输入

- RFunipass 10-seed batch：`results/reports/20260423_181846_348878_feature_lite_multiseed_instrcount_lite_wrap_10seeds.csv`
- 数据集：`external_datasets/ir/polybench_full`
- benchmark 数量：30
- seeds：456, 457, 458, 459, 460, 461, 462, 463, 464, 465
- LLVM 工具链：`/root/llvm/llvm-project-21/build/bin`
- LLVM 版本：21.1.8
- runtime 指标：PolyBench 输出的 kernel time，字段名 `polybench_seconds`

## Matched-Backend 评估流程

对每个 benchmark 和每个 seed：

```bash
opt -S -passes="<RFunipass final_pipeline_effective>" input.ll -o rfunipass.ll
clang -x ir -Oz -Xclang -disable-llvm-passes rfunipass.ll -lm -o rfunipass_oz.out
```

对 Oz baseline：

```bash
opt -S -Oz input.ll -o oz.ll
clang -x ir -Oz -Xclang -disable-llvm-passes oz.ll -lm -o oz.out
```

对 O3 baseline：

```bash
opt -S -O3 input.ll -o o3.ll
clang -x ir -O3 -Xclang -disable-llvm-passes o3.ll -lm -o o3.out
```

`-Xclang -disable-llvm-passes` 的作用是保留 matched backend codegen 配置，同时避免 clang 对已经显式优化过的 IR 再跑一轮 middle-end pipeline。

## 超时与无效样本口径

- repeat：1
- hard timeout：300 秒
- adaptive timeout：`max(5s, matched_baseline_median * 5)`，再受 300 秒上限约束
- timeout 样本：计为 worsened，并用 timeout cap 作为 censored lower-bound runtime ratio
- invalid 样本：程序非零退出或段错误，单独计入 invalid，不静默丢弃
- worsen-or-invalid rate：`(worsened + invalid) / 30`，按 seed 汇总后计算均值和 95% CI

## 输出文件

- Oz summary：`external_datasets/reports/external_runtime_polybench_full_wrap_10seeds_backend_oz_repeat1_adaptive5_20260509_summary.md`
- Oz manifest：`external_datasets/reports/external_runtime_polybench_full_wrap_10seeds_backend_oz_repeat1_adaptive5_20260509_manifest.json`
- Oz raw timing：`external_datasets/reports/external_runtime_polybench_full_wrap_10seeds_backend_oz_repeat1_adaptive5_20260509_raw_timings.csv`
- Oz per-seed：`external_datasets/reports/external_runtime_polybench_full_wrap_10seeds_backend_oz_repeat1_adaptive5_20260509_per_seed.csv`
- O3 summary：`external_datasets/reports/external_runtime_polybench_full_wrap_10seeds_backend_o3_repeat1_adaptive5_20260509_summary.md`
- O3 manifest：`external_datasets/reports/external_runtime_polybench_full_wrap_10seeds_backend_o3_repeat1_adaptive5_20260509_manifest.json`
- O3 raw timing：`external_datasets/reports/external_runtime_polybench_full_wrap_10seeds_backend_o3_repeat1_adaptive5_20260509_raw_timings.csv`
- O3 per-seed：`external_datasets/reports/external_runtime_polybench_full_wrap_10seeds_backend_o3_repeat1_adaptive5_20260509_per_seed.csv`

## 主结果

| Backend profile | Matched baseline | Seeds | Programs/seed | Geomean ratio ↓ | Speedup ↑ | Worsen rate ↓ | Invalid rate ↓ | Worsen-or-invalid ↓ | Improved / tied / worsened | Timeout / invalid |
| --- | --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: |
| Oz | Oz | 10 | 30 | 46137.1827 ± 104334.7380 | 0.1208 ± 0.1004 | 57.33% ± 14.82% | 31.00% ± 11.30% | 88.33% ± 9.94% | 26 / 9 / 172 | 135 / 93 |
| O3 | O3 | 10 | 30 | 53817.8685 ± 121705.6358 | 0.1034 ± 0.0784 | 63.67% ± 11.32% | 31.00% ± 11.30% | 94.67% ± 5.41% | 10 / 6 / 191 | 135 / 93 |

## Per-Seed 现象

| Seed | Oz finite ratios | Oz geomean ↓ | Oz bad rate ↓ | O3 finite ratios | O3 geomean ↓ | O3 bad rate ↓ |
| ---: | ---: | ---: | ---: | ---: | ---: | ---: |
| 456 | 24 | 12.6530 | 93.33% | 24 | 13.9309 | 93.33% |
| 457 | 24 | 15.3271 | 96.67% | 24 | 16.7419 | 96.67% |
| 458 | 18 | 16.4743 | 96.67% | 18 | 18.4981 | 100.00% |
| 459 | 19 | 4.6942 | 70.00% | 19 | 5.4329 | 86.67% |
| 460 | 11 | 13.4587 | 93.33% | 11 | 15.4672 | 100.00% |
| 461 | 22 | 2.0459 | 56.67% | 22 | 2.5984 | 76.67% |
| 462 | 18 | 22.5525 | 96.67% | 18 | 24.9729 | 100.00% |
| 463 | 28 | 13.1304 | 96.67% | 28 | 12.9963 | 96.67% |
| 464 | 24 | 9.3564 | 86.67% | 24 | 10.2478 | 96.67% |
| 465 | 19 | 461262.1346 | 96.67% | 19 | 538057.7982 | 100.00% |

## 失败模式

Oz 和 O3 的 timeout 总数一致，都是 135/300。高频 timeout benchmark 包括 `jacobi-1d`、`gesummv`、`durbin`、`2mm`、`3mm`、`deriche`、`atax`、`doitgen`、`fdtd-2d`。

Oz 和 O3 的 invalid 总数一致，都是 93/300，主要表现为 `returncode=-11` 段错误。高频 invalid benchmark 包括 `mvt`、`symm`、`seidel-2d`、`bicg`、`cholesky`、`lu`、`floyd-warshall`、`jacobi-2d`。

## 结论

第一，当前 10-seed instrcount 调优得到的通用 pass 序列不适合作为 runtime 优化结果直接对外报告。即使在 matched backend 条件下，Oz 对比的 worsen-or-invalid rate 为 88.33%，O3 对比为 94.67%。

第二，很多序列在 PolyBench-full 上产生段错误，说明 instrcount objective 找到的 IR 变换组合可能破坏 runtime 可执行语义，或者触发了未被 instrcount 捕获的编译/运行时风险。这个结果对论文很重要：它说明 instrcount generalization 与 runtime correctness/performance 不能混用。

第三，正式 runtime 主表不应该使用这批 instrcount-optimized 10-seed 序列作为 runtime claim。更合理的论文叙述是：RFunipass 在 IR instruction count 目标上有效，但 runtime 目标需要单独以 runtime objective 训练，或者至少加入 correctness gate 和 runtime validation gate。

第四，如果论文需要 runtime 部分，建议后续做 runtime-specific RFunipass：训练时使用 runtime objective、matched backend、stdout/correctness check、adaptive timeout 和 bad-rate penalty。否则 runtime 实验应放在 limitation 或 negative result，而不是主贡献表。

## 后续正式实验建议

建议先不要直接跑 repeat=30 的当前 instrcount 序列。原因是 repeat=1 已经显示大面积 timeout/invalid，repeat=30 只会放大资源成本，而不会改变主要结论。

如果仍需论文级 runtime 表，建议重新启动 runtime-specific 10-seed 调优：

```bash
OBJECTIVE_KIND=runtime \
FEATURE_MODE=lite \
LOOP_NESTING_POLICY=wrap \
LLVM_TOOLS_PATH=/root/llvm/llvm-project-21/build/bin \
python run_multi_seed.py --seed-start 456 --seed-count 10 ...
```

然后再使用本次新增的 matched-backend runner 对 runtime-specific 序列进行 PolyBench-full 外部验证。

## 复现实验命令

Oz repeat=1 先导实验：

```bash
LLVM_TOOLS_PATH=/root/llvm/llvm-project-21/build/bin \
python run_external_runtime_multi_seed.py \
  --batch-csv results/reports/20260423_181846_348878_feature_lite_multiseed_instrcount_lite_wrap_10seeds.csv \
  --suite polybench_full \
  --backend-profile oz \
  --matched-baseline oz \
  --repeat 1 \
  --timeout 300 \
  --adaptive-timeout-factor 5 \
  --min-runtime-timeout 5 \
  --tag external_runtime_polybench_full_wrap_10seeds_backend_oz_repeat1_adaptive5_20260509 \
  --continue-on-error \
  --resume
```

O3 repeat=1 先导实验：

```bash
LLVM_TOOLS_PATH=/root/llvm/llvm-project-21/build/bin \
python run_external_runtime_multi_seed.py \
  --batch-csv results/reports/20260423_181846_348878_feature_lite_multiseed_instrcount_lite_wrap_10seeds.csv \
  --suite polybench_full \
  --backend-profile o3 \
  --matched-baseline o3 \
  --repeat 1 \
  --timeout 300 \
  --adaptive-timeout-factor 5 \
  --min-runtime-timeout 5 \
  --tag external_runtime_polybench_full_wrap_10seeds_backend_o3_repeat1_adaptive5_20260509 \
  --continue-on-error \
  --resume
```
