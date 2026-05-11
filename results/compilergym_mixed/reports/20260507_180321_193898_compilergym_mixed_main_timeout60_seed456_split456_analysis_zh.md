# RFunipassLab 7-Suite Mixed 主实验分析报告

## 实验设置

- Run ID: `20260507_180321_193898_compilergym_mixed_main_timeout60_seed456_split456`
- 数据集: CompilerGym-style LLVM21 IR mixed 7-suite，包含 `cbench`, `blas`, `opencv`, `mibench`, `chstone`, `tensorflow`, `npb`
- Manifest: `/root/exp/PerProgramAutoTune/datasets/compiler_gym_llvm21/manifests/compilergym_baseline_ir_manifest.json`
- Objective: `instrcount`
- Baseline: `-Oz`
- LLVM: `/root/llvm/llvm-project-21/build/bin`
- Feature mode: `lite`
- Loop nesting policy: `wrap`
- Seed: experiment `456`, split `456`
- 搜索预算: `100` BO iterations, `GA_POP=200`, `GA_GEN=5`
- 初始序列: synergy pass singleton，共 `19` 条
- 单程序 `opt` timeout: `60s`

正式命令:

```bash
cd /root/exp/RFunipassLab
LD_PRELOAD=/usr/lib/x86_64-linux-gnu/libstdc++.so.6 \
python3 run_compilergym_mixed_tuning.py \
  --manifest /root/exp/PerProgramAutoTune/datasets/compiler_gym_llvm21/manifests/compilergym_baseline_ir_manifest.json \
  --train-pool 300 \
  --val-ratio 0.3333333333333333 \
  --seed 456 \
  --split-seed 456 \
  --iters 100 \
  --ga-pop 200 \
  --ga-gen 5 \
  --seed-seq-mode singletons \
  --instrcount-timeout 60 \
  --tag compilergym_mixed_main_timeout60 \
  --results-root results/compilergym_mixed
```

说明: 初次无 timeout 保护的正式运行在约第 12 轮遇到极端重复 `module(scc-oz-module-inliner)` 的长候选，单个 `opt` 子进程超过 100 秒。为保证大规模 mixed 调优实验可完成并可复现，正式结果使用 runner 内部 timeout-aware instruction backend。该改动只作用于新 runner，不修改原始 RFunipassLab CLI 和 `boca_exp.runner.main()` 搜索逻辑。

## 数据划分

外层分层划分为 `train_pool=300` 和 `test=732`。RFunipass 原有内部切分再把 train pool 划为 `search_train=200` 与 `validation=100`。

| suite | total | train_pool | search_train | validation | test |
|---|---:|---:|---:|---:|---:|
| cbench | 11 | 3 | 1 | 2 | 8 |
| blas | 162 | 47 | 36 | 11 | 115 |
| opencv | 181 | 53 | 32 | 21 | 128 |
| mibench | 40 | 12 | 10 | 2 | 28 |
| chstone | 12 | 3 | 2 | 1 | 9 |
| tensorflow | 505 | 147 | 100 | 47 | 358 |
| npb | 121 | 35 | 19 | 16 | 86 |

Split signatures:

- train_pool: `0b2ab573d676da644756fed2425ed67f56f3d1db`
- search_train: `e69cc42435e65d3211e48ee5ac8d43cab540f83b`
- validation: `f321e3d496d37c262a9e891f50c438f47e7e092d`
- test: `e884fd6c4c2163ea569d6c2c3f2d498bb53915fc`

## 最终序列

Validation selection 选中的原始序列长度为 `48`。消融后长度降为 `13`，validation objective 从 `0.9923` 进一步降到 `0.9911`。

Raw sequence:

```text
cgscc(attributor-cgscc) ->
module(scc-oz-module-inliner) ->
module(attributor) ->
function(newgvn) ->
function(gvn-sink) ->
function(gvn-hoist) ->
module(inferattrs) ->
loop(loop-simplifycfg) ->
module(iroutliner) ->
module(attributor) ->
module(scc-oz-module-inliner) ->
module(iroutliner) ->
module(elim-avail-extern)
```

Effective pipeline:

```text
cgscc(attributor-cgscc),
module(scc-oz-module-inliner),
module(attributor),
function(newgvn),
function(gvn-sink),
function(gvn-hoist),
module(inferattrs),
function(loop(loop-simplifycfg)),
module(iroutliner),
module(attributor),
module(scc-oz-module-inliner),
module(iroutliner),
module(elim-avail-extern)
```

## 主结果

`mean_norm < 1` 表示相对 `-Oz` 的 IR instruction count 更低。`objective = mean_norm + 0.15 * worsen_rate`。Invalid 样本计入 worsened，但不参与 valid ratio 的均值统计。

| split | count | objective | mean_norm | median_norm | improved | worsened | invalid | timeout |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| search_train | 200 | 0.977312 | 0.957812 | 0.992013 | 105 | 26 | 1 | 0 |
| validation | 100 | 0.991102 | 0.961102 | 0.996023 | 49 | 20 | 4 | 0 |
| test | 732 | 0.969981 | 0.952153 | 0.992248 | 386 | 87 | 11 | 0 |

测试集整体结果表明，最终通用序列在 732 个 held-out external programs 上达到 `0.9522` mean normalized instruction count，即相对 `-Oz` 平均约减少 `4.78%` IR instruction count。测试集 objective 为 `0.9700`，worsen rate 为 `11.89%`，invalid 为 `11/732`，timeout 为 `0/732`。

## 按数据集分解

| suite | count | objective | mean_norm | median_norm | improved_rate | worsen_rate | invalid | timeout |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| cbench | 8 | 1.030187 | 0.992687 | 0.995495 | 50.00% | 25.00% | 0 | 0 |
| blas | 115 | 0.992717 | 0.965326 | 0.980392 | 55.65% | 18.26% | 0 | 0 |
| opencv | 128 | 0.989874 | 0.959405 | 1.000000 | 45.31% | 20.31% | 6 | 0 |
| mibench | 28 | 0.964602 | 0.953888 | 0.956146 | 92.86% | 7.14% | 0 | 0 |
| chstone | 9 | 0.933210 | 0.933210 | 0.963664 | 77.78% | 0.00% | 0 | 0 |
| tensorflow | 358 | 0.964582 | 0.950755 | 0.995671 | 51.12% | 9.22% | 5 | 0 |
| npb | 86 | 0.932870 | 0.927638 | 0.995047 | 51.16% | 3.49% | 0 | 0 |

强项主要来自 `npb`, `chstone`, `tensorflow`, `mibench`。`cbench` 的 objective 高于 1，原因不是 mean_norm 退化严重，而是样本数很小且 worsen_rate 为 25%，被 worsen penalty 放大。`opencv` 和 `tensorflow` 出现 invalid，主要由 LLVM Attributor assertion crash 触发。

## Invalid 分析

最终 test invalid 为 `11/732`:

- `opencv`: 6 个
- `tensorflow`: 5 个
- timeout: 0 个

抽样错误:

```text
opt failed ... returncode=-6
llvm/lib/Transforms/IPO/AttributorAttributes.cpp:12853:
AAInvariantLoadPointerCallSiteReturned::initialize(...):
Assertion `F && "no associated function for return from call"' failed.
```

这说明当前 invalid 不是 timeout，也不是 IR 文件缺失，而是 LLVM21 Attributor 相关断言崩溃。由于最终序列包含 `cgscc(attributor-cgscc)` 和两次 `module(attributor)`，论文中必须显式报告 valid/invalid/timeout，并建议增加 no-attributor 或 attributor-safety-filter 消融。

## 调优成本

| metric | value |
|---|---:|
| runner wall time | 8816.994 s |
| core tuning time | 7961.242 s |
| ML time | 1055.270 s |
| candidate sequences counted | 168 |
| objective feedback evaluations | 40900 |

搜索过程共评估 19 条 singleton seed、100 条 BO 候选、若干 ablation/top-N 序列。`objective_eval_count=40900` 是按程序粒度统计的 objective feedback 次数，不是唯一 pass sequence 数。

## 论文结论

1. 7-suite mixed external 调优是有效的。最终 test mean_norm 为 `0.9522`，比 `-Oz` 平均降低约 `4.78%` IR instruction count。
2. Validation selection 是必要的。搜索后期 search_train 最优约 `0.9749`，但 validation best 长期停在 `0.9923` 附近，说明只按 search_train 选择会有过拟合风险。
3. 消融后处理非常关键。原始 validation-selected 序列长度为 `48`，消融后为 `13`，同时 validation objective 还从 `0.9923` 降到 `0.9911`。
4. 当前结果仍不够作为最终顶会主表的唯一结论。需要 multi-seed 置信区间、no-attributor 安全消融、per-suite stable subset 分析，以及与 per-program autotuning 的成本-效果曲线对比。

## 输出文件

- Auto report: `/root/exp/RFunipassLab/results/compilergym_mixed/reports/20260507_180321_193898_compilergym_mixed_main_timeout60_seed456_split456_report.md`
- Analysis report: `/root/exp/RFunipassLab/results/compilergym_mixed/reports/20260507_180321_193898_compilergym_mixed_main_timeout60_seed456_split456_analysis_zh.md`
- Summary JSON: `/root/exp/RFunipassLab/results/compilergym_mixed/summaries/20260507_180321_193898_compilergym_mixed_main_timeout60_seed456_split456.json`
- Manifest JSON: `/root/exp/RFunipassLab/results/compilergym_mixed/manifests/20260507_180321_193898_compilergym_mixed_main_timeout60_seed456_split456_manifest.json`
- Split CSV: `/root/exp/RFunipassLab/results/compilergym_mixed/splits/20260507_180321_193898_compilergym_mixed_main_timeout60_seed456_split456_split.csv`
- Full log: `/root/exp/RFunipassLab/results/compilergym_mixed/logs/20260507_180321_193898_compilergym_mixed_main_timeout60_seed456_split456.log`
