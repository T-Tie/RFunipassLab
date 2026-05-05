# RF Interpretability Report: 20260505_021422_538513_feature_lite_seed456_run0

## Scope

This is a post-hoc RF surrogate analysis. It does not alter the BO search and is not included in core tuning-cost metrics.

## Controlled Variables

- Objective: `instrcount` / baseline `oz`
- Feature mode: `lite`
- Loop policy: `wrap`
- LLVM tools: `/root/llvm/llvm-project-21/build/bin`
- Experiment seed: `456`
- Split seed: `456`
- Evaluated sequences: `186`
- Holdout ratio: `0.3`
- Permutation repeats: `10`

## Model Quality

| Split | Count | RMSE | MAE | R2 | Pearson |
| --- | ---: | ---: | ---: | ---: | ---: |
| train | 130 | 0.0461 | 0.0307 | 0.9482 | 0.9792 |
| holdout | 56 | 0.1268 | 0.1015 | 0.5915 | 0.7887 |

## Top Features

| Rank | Feature | Group | Pass | MDI | Permutation Mean | Permutation Std |
| ---: | --- | --- | --- | ---: | ---: | ---: |
| 1 | synergy_rate | synergy |  | 0.213144 | 0.005701 | 0.003141 |
| 2 | pass_freq:module(elim-avail-extern) | pass_freq | module(elim-avail-extern) | 0.154287 | 0.004609 | 0.002103 |
| 3 | pass_freq:module(scc-oz-module-inliner) | pass_freq | module(scc-oz-module-inliner) | 0.069494 | 0.001857 | 0.001108 |
| 4 | pass_freq:module(globalopt) | pass_freq | module(globalopt) | 0.062262 | 0.001544 | 0.000426 |
| 5 | scope_ratio:function | scope_ratio |  | 0.060898 | 0.001395 | 0.000841 |
| 6 | scope_ratio:module | scope_ratio |  | 0.057147 | 0.000350 | 0.000678 |
| 7 | pass_freq:function(mem2reg) | pass_freq | function(mem2reg) | 0.010961 | 0.000311 | 0.000421 |
| 8 | pass_freq:function(instsimplify) | pass_freq | function(instsimplify) | 0.005902 | 0.000262 | 0.000328 |
| 9 | pass_freq:function(gvn-sink) | pass_freq | function(gvn-sink) | 0.006275 | 0.000126 | 0.000181 |
| 10 | scope_ratio:cgscc | scope_ratio |  | 0.003451 | 0.000082 | 0.000055 |
| 11 | pass_freq:cgscc(attributor-cgscc) | pass_freq | cgscc(attributor-cgscc) | 0.004456 | 0.000070 | 0.000130 |
| 12 | pass_freq:module(inferattrs) | pass_freq | module(inferattrs) | 0.000630 | 0.000016 | 0.000020 |
| 13 | pass_freq:loop(loop-simplifycfg) | pass_freq | loop(loop-simplifycfg) | 0.001005 | 0.000000 | 0.000004 |
| 14 | scope_ratio:other | scope_ratio |  | 0.000000 | 0.000000 | 0.000000 |
| 15 | scope_ratio:loop | scope_ratio |  | 0.003993 | -0.000003 | 0.000025 |
| 16 | self_loop_coverage | self_loop |  | 0.002114 | -0.000003 | 0.000068 |
| 17 | pass_coverage | sequence_shape |  | 0.104102 | -0.000017 | 0.001281 |
| 18 | pass_freq:function(dse) | pass_freq | function(dse) | 0.003929 | -0.000063 | 0.000075 |
| 19 | pass_freq:function(jump-threading) | pass_freq | function(jump-threading) | 0.013122 | -0.000085 | 0.000136 |
| 20 | pass_freq:function(gvn-hoist) | pass_freq | function(gvn-hoist) | 0.002888 | -0.000094 | 0.000056 |

## Group Importance

| Rank | Group | Features | MDI Sum | Permutation Sum |
| ---: | --- | ---: | ---: | ---: |
| 1 | pass_freq | 19 | 0.407784 | 0.007123 |
| 2 | synergy | 1 | 0.213144 | 0.005701 |
| 3 | scope_ratio | 5 | 0.125489 | 0.001825 |
| 4 | self_loop | 2 | 0.036074 | -0.000692 |
| 5 | sequence_shape | 4 | 0.217510 | -0.000862 |

## Counterfactual Validation

- Rows: `12`
- CSV: `/root/exp/RFunipassLab/results/interpretability/20260505_021422_538513_feature_lite_seed456/run_0/rf_counterfactual.csv`

## Files

- Manifest: `/root/exp/RFunipassLab/results/interpretability/20260505_021422_538513_feature_lite_seed456/run_0/manifest.json`
- Model quality: `/root/exp/RFunipassLab/results/interpretability/20260505_021422_538513_feature_lite_seed456/run_0/rf_model_quality.json`
- Feature importance: `/root/exp/RFunipassLab/results/interpretability/20260505_021422_538513_feature_lite_seed456/run_0/rf_feature_importance.csv`
- Group importance: `/root/exp/RFunipassLab/results/interpretability/20260505_021422_538513_feature_lite_seed456/run_0/rf_group_importance.csv`
- Counterfactual: `/root/exp/RFunipassLab/results/interpretability/20260505_021422_538513_feature_lite_seed456/run_0/rf_counterfactual.csv`
