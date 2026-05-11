# RFunipassLab 7-Suite 主实验报告

- Run ID: `20260507_180222_333617_smoke_timeout_compilergym_mixed_seed456_split456`
- Manifest: `/root/exp/PerProgramAutoTune/datasets/compiler_gym_llvm21/manifests/compilergym_baseline_ir_manifest.json`
- Objective: `instrcount` / baseline `oz`
- LLVM tools: `/root/llvm/llvm-project-21/build/bin`
- Loop nesting policy: `wrap`
- Feature mode: `lite`
- Experiment seed / split seed: `456` / `456`
- Train pool / validation ratio: `4` / `0.5`
- BO iters / GA pop / GA gen: `1` / `10` / `1`
- Instrcount opt timeout: `20.0s`

## 数据划分

| suite | total | train_pool | test | search_train | validation |
|---|---:|---:|---:|---:|---:|
| cbench | 11 | 2 | 9 | 1 | 1 |
| chstone | 12 | 2 | 10 | 0 | 2 |

- train_pool signature: `b23e08054065fca3c1aea71e1f21496c3bae63be`
- search_train signature: `30910a2dd0450adaf8a00246f5d3138b880357f1`
- validation signature: `c24e6212f4177604c4589a429e6d84ecfc062228`
- test signature: `23781f0ae436fbb6cac0643751b9fbd7267dd520`

## 最终序列

- Raw length: `2`
- Effective top-level length: `2`
- Effective sequence: `module(inferattrs) -> module(scc-oz-module-inliner)`

## 主要指标

- Search train: objective=1.150566, mean_norm=1.000566, median_norm=1.000566, improved=0/1 (0.00%), worsened=1/1 (100.00%), invalid=0, timeout=0
- Validation: objective=1.102638, mean_norm=1.002638, median_norm=1.001250, improved=1/3 (33.33%), worsened=2/3 (66.67%), invalid=0, timeout=0
- Test overall: objective=1.073764, mean_norm=1.018501, median_norm=1.000000, improved=2/19 (10.53%), worsened=7/19 (36.84%), invalid=0, timeout=0

## 测试集按数据集分解

| suite | count | objective | mean_norm | median_norm | improved_rate | worsen_rate | invalid | timeout |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| cbench | 9 | 1.105380 | 1.038713 | 1.000000 | 11.11% | 44.44% | 0 | 0 |
| chstone | 10 | 1.045310 | 1.000310 | 1.000000 | 10.00% | 30.00% | 0 | 0 |

## 核心调优成本

- Runner wall time: `45.763s`
- Core tuning time: `22.910563s`
- ML time: `0.488008s`
- Candidate sequences counted: `8`
- Objective feedback evaluations: `32`

## 输出文件

- Summary JSON: `/root/exp/RFunipassLab/results/compilergym_mixed_smoke/summaries/20260507_180222_333617_smoke_timeout_compilergym_mixed_seed456_split456.json`
- Manifest JSON: `/root/exp/RFunipassLab/results/compilergym_mixed_smoke/manifests/20260507_180222_333617_smoke_timeout_compilergym_mixed_seed456_split456_manifest.json`
- Split CSV: `/root/exp/RFunipassLab/results/compilergym_mixed_smoke/splits/20260507_180222_333617_smoke_timeout_compilergym_mixed_seed456_split456_split.csv`
- Full log: `/root/exp/RFunipassLab/results/compilergym_mixed_smoke/logs/20260507_180222_333617_smoke_timeout_compilergym_mixed_seed456_split456.log`
