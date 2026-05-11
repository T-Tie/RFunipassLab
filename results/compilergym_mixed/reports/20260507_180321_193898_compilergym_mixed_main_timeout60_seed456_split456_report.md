# RFunipassLab 7-Suite 主实验报告

- Run ID: `20260507_180321_193898_compilergym_mixed_main_timeout60_seed456_split456`
- Manifest: `/root/exp/PerProgramAutoTune/datasets/compiler_gym_llvm21/manifests/compilergym_baseline_ir_manifest.json`
- Objective: `instrcount` / baseline `oz`
- LLVM tools: `/root/llvm/llvm-project-21/build/bin`
- Loop nesting policy: `wrap`
- Feature mode: `lite`
- Experiment seed / split seed: `456` / `456`
- Train pool / validation ratio: `300` / `0.3333333333333333`
- BO iters / GA pop / GA gen: `100` / `200` / `5`
- Instrcount opt timeout: `60.0s`

## 数据划分

| suite | total | train_pool | test | search_train | validation |
|---|---:|---:|---:|---:|---:|
| cbench | 11 | 3 | 8 | 1 | 2 |
| blas | 162 | 47 | 115 | 36 | 11 |
| opencv | 181 | 53 | 128 | 32 | 21 |
| mibench | 40 | 12 | 28 | 10 | 2 |
| chstone | 12 | 3 | 9 | 2 | 1 |
| tensorflow | 505 | 147 | 358 | 100 | 47 |
| npb | 121 | 35 | 86 | 19 | 16 |

- train_pool signature: `0b2ab573d676da644756fed2425ed67f56f3d1db`
- search_train signature: `e69cc42435e65d3211e48ee5ac8d43cab540f83b`
- validation signature: `f321e3d496d37c262a9e891f50c438f47e7e092d`
- test signature: `e884fd6c4c2163ea569d6c2c3f2d498bb53915fc`

## 最终序列

- Raw length: `13`
- Effective top-level length: `13`
- Effective sequence: `cgscc(attributor-cgscc) -> module(scc-oz-module-inliner) -> module(attributor) -> function(newgvn) -> function(gvn-sink) -> function(gvn-hoist) -> module(inferattrs) -> function(loop(loop-simplifycfg)) -> module(iroutliner) -> module(attributor) -> module(scc-oz-module-inliner) -> module(iroutliner) -> module(elim-avail-extern)`

## 主要指标

- Search train: objective=0.977312, mean_norm=0.957812, median_norm=0.992013, improved=105/200 (52.50%), worsened=26/200 (13.00%), invalid=1, timeout=0
- Validation: objective=0.991102, mean_norm=0.961102, median_norm=0.996023, improved=49/100 (49.00%), worsened=20/100 (20.00%), invalid=4, timeout=0
- Test overall: objective=0.969981, mean_norm=0.952153, median_norm=0.992248, improved=386/732 (52.73%), worsened=87/732 (11.89%), invalid=11, timeout=0

## 测试集按数据集分解

| suite | count | objective | mean_norm | median_norm | improved_rate | worsen_rate | invalid | timeout |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| cbench | 8 | 1.030187 | 0.992687 | 0.995495 | 50.00% | 25.00% | 0 | 0 |
| blas | 115 | 0.992717 | 0.965326 | 0.980392 | 55.65% | 18.26% | 0 | 0 |
| opencv | 128 | 0.989874 | 0.959405 | 1.000000 | 45.31% | 20.31% | 6 | 0 |
| mibench | 28 | 0.964602 | 0.953888 | 0.956146 | 92.86% | 7.14% | 0 | 0 |
| chstone | 9 | 0.933210 | 0.933210 | 0.963664 | 77.78% | 0.00% | 0 | 0 |
| tensorflow | 358 | 0.964582 | 0.950755 | 0.995671 | 51.12% | 9.22% | 5 | 0 |
| npb | 86 | 0.932870 | 0.927638 | 0.995047 | 51.16% | 3.49% | 0 | 0 |

## 核心调优成本

- Runner wall time: `8816.994s`
- Core tuning time: `7961.242478s`
- ML time: `1055.270117s`
- Candidate sequences counted: `168`
- Objective feedback evaluations: `40900`

## 输出文件

- Summary JSON: `/root/exp/RFunipassLab/results/compilergym_mixed/summaries/20260507_180321_193898_compilergym_mixed_main_timeout60_seed456_split456.json`
- Manifest JSON: `/root/exp/RFunipassLab/results/compilergym_mixed/manifests/20260507_180321_193898_compilergym_mixed_main_timeout60_seed456_split456_manifest.json`
- Split CSV: `/root/exp/RFunipassLab/results/compilergym_mixed/splits/20260507_180321_193898_compilergym_mixed_main_timeout60_seed456_split456_split.csv`
- Full log: `/root/exp/RFunipassLab/results/compilergym_mixed/logs/20260507_180321_193898_compilergym_mixed_main_timeout60_seed456_split456.log`
