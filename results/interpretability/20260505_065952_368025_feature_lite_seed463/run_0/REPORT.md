# RF Interpretability Report: 20260505_065952_368025_feature_lite_seed463_run0

## Scope

This is a post-hoc RF surrogate analysis. It does not alter the BO search and is not included in core tuning-cost metrics.

## Controlled Variables

- Objective: `instrcount` / baseline `oz`
- Feature mode: `lite`
- Loop policy: `wrap`
- LLVM tools: `/root/llvm/llvm-project-21/build/bin`
- Experiment seed: `463`
- Split seed: `463`
- Evaluated sequences: `184`
- Holdout ratio: `0.3`
- Permutation repeats: `10`

## Model Quality

| Split | Count | RMSE | MAE | R2 | Pearson |
| --- | ---: | ---: | ---: | ---: | ---: |
| train | 129 | 0.0451 | 0.0330 | 0.9153 | 0.9681 |
| holdout | 55 | 0.0728 | 0.0572 | 0.6641 | 0.8216 |

## Top Features

| Rank | Feature | Group | Pass | MDI | Permutation Mean | Permutation Std |
| ---: | --- | --- | --- | ---: | ---: | ---: |
| 1 | pass_freq:module(elim-avail-extern) | pass_freq | module(elim-avail-extern) | 0.225404 | 0.005750 | 0.001369 |
| 2 | pass_freq:module(globalopt) | pass_freq | module(globalopt) | 0.109045 | 0.002803 | 0.000717 |
| 3 | pass_freq:module(scc-oz-module-inliner) | pass_freq | module(scc-oz-module-inliner) | 0.118580 | 0.002490 | 0.001313 |
| 4 | synergy_rate | synergy |  | 0.062487 | 0.002119 | 0.000647 |
| 5 | scope_ratio:function | scope_ratio |  | 0.093541 | 0.000781 | 0.000301 |
| 6 | seq_len_ratio | sequence_shape |  | 0.081210 | 0.000747 | 0.000370 |
| 7 | scope_ratio:module | scope_ratio |  | 0.062634 | 0.000524 | 0.000490 |
| 8 | self_loop_hit_rate | self_loop |  | 0.028227 | 0.000303 | 0.000182 |
| 9 | pass_freq:function(mem2reg) | pass_freq | function(mem2reg) | 0.010579 | 0.000107 | 0.000114 |
| 10 | repeat_mass_ratio | sequence_shape |  | 0.020951 | 0.000095 | 0.000115 |
| 11 | pass_freq:module(inferattrs) | pass_freq | module(inferattrs) | 0.004949 | 0.000067 | 0.000092 |
| 12 | self_loop_coverage | self_loop |  | 0.013195 | 0.000057 | 0.000166 |
| 13 | max_repeat_ratio | sequence_shape |  | 0.023991 | 0.000038 | 0.000166 |
| 14 | pass_freq:function(memcpyopt) | pass_freq | function(memcpyopt) | 0.005915 | 0.000037 | 0.000036 |
| 15 | pass_freq:function(gvn-hoist) | pass_freq | function(gvn-hoist) | 0.007351 | 0.000034 | 0.000047 |
| 16 | pass_freq:function(jump-threading) | pass_freq | function(jump-threading) | 0.008443 | 0.000031 | 0.000084 |
| 17 | scope_ratio:loop | scope_ratio |  | 0.014979 | 0.000028 | 0.000077 |
| 18 | scope_ratio:cgscc | scope_ratio |  | 0.015582 | 0.000026 | 0.000093 |
| 19 | scope_ratio:other | scope_ratio |  | 0.000000 | 0.000000 | 0.000000 |
| 20 | pass_freq:function(newgvn) | pass_freq | function(newgvn) | 0.010641 | -0.000006 | 0.000069 |

## Group Importance

| Rank | Group | Features | MDI Sum | Permutation Sum |
| ---: | --- | ---: | ---: | ---: |
| 1 | pass_freq | 19 | 0.563567 | 0.010924 |
| 2 | synergy | 1 | 0.062487 | 0.002119 |
| 3 | scope_ratio | 5 | 0.186736 | 0.001360 |
| 4 | sequence_shape | 4 | 0.145789 | 0.000857 |
| 5 | self_loop | 2 | 0.041422 | 0.000360 |

## Counterfactual Validation

- Rows: `12`
- CSV: `/root/exp/RFunipassLab/results/interpretability/20260505_065952_368025_feature_lite_seed463/run_0/rf_counterfactual.csv`

## Files

- Manifest: `/root/exp/RFunipassLab/results/interpretability/20260505_065952_368025_feature_lite_seed463/run_0/manifest.json`
- Model quality: `/root/exp/RFunipassLab/results/interpretability/20260505_065952_368025_feature_lite_seed463/run_0/rf_model_quality.json`
- Feature importance: `/root/exp/RFunipassLab/results/interpretability/20260505_065952_368025_feature_lite_seed463/run_0/rf_feature_importance.csv`
- Group importance: `/root/exp/RFunipassLab/results/interpretability/20260505_065952_368025_feature_lite_seed463/run_0/rf_group_importance.csv`
- Counterfactual: `/root/exp/RFunipassLab/results/interpretability/20260505_065952_368025_feature_lite_seed463/run_0/rf_counterfactual.csv`
