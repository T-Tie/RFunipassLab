# RF Interpretability Report: 20260505_051615_556780_feature_lite_seed460_run0

## Scope

This is a post-hoc RF surrogate analysis. It does not alter the BO search and is not included in core tuning-cost metrics.

## Controlled Variables

- Objective: `instrcount` / baseline `oz`
- Feature mode: `lite`
- Loop policy: `wrap`
- LLVM tools: `/root/llvm/llvm-project-21/build/bin`
- Experiment seed: `460`
- Split seed: `460`
- Evaluated sequences: `190`
- Holdout ratio: `0.3`
- Permutation repeats: `10`

## Model Quality

| Split | Count | RMSE | MAE | R2 | Pearson |
| --- | ---: | ---: | ---: | ---: | ---: |
| train | 133 | 0.0363 | 0.0287 | 0.9358 | 0.9795 |
| holdout | 57 | 0.1247 | 0.0980 | 0.5542 | 0.8020 |

## Top Features

| Rank | Feature | Group | Pass | MDI | Permutation Mean | Permutation Std |
| ---: | --- | --- | --- | ---: | ---: | ---: |
| 1 | synergy_rate | synergy |  | 0.190141 | 0.009708 | 0.003099 |
| 2 | pass_freq:module(elim-avail-extern) | pass_freq | module(elim-avail-extern) | 0.104154 | 0.004185 | 0.001337 |
| 3 | pass_freq:module(scc-oz-module-inliner) | pass_freq | module(scc-oz-module-inliner) | 0.079545 | 0.002684 | 0.000508 |
| 4 | pass_freq:module(globalopt) | pass_freq | module(globalopt) | 0.128399 | 0.002525 | 0.001045 |
| 5 | scope_ratio:module | scope_ratio |  | 0.068601 | 0.001247 | 0.000699 |
| 6 | scope_ratio:function | scope_ratio |  | 0.049812 | 0.001082 | 0.000731 |
| 7 | pass_coverage | sequence_shape |  | 0.060195 | 0.001050 | 0.001157 |
| 8 | pass_freq:module(iroutliner) | pass_freq | module(iroutliner) | 0.011762 | 0.000337 | 0.000290 |
| 9 | pass_freq:module(attributor) | pass_freq | module(attributor) | 0.009951 | 0.000252 | 0.000097 |
| 10 | pass_freq:function(mem2reg) | pass_freq | function(mem2reg) | 0.007693 | 0.000148 | 0.000234 |
| 11 | pass_freq:function(memcpyopt) | pass_freq | function(memcpyopt) | 0.012411 | 0.000057 | 0.000347 |
| 12 | repeat_mass_ratio | sequence_shape |  | 0.018483 | 0.000053 | 0.000093 |
| 13 | scope_ratio:loop | scope_ratio |  | 0.052081 | 0.000045 | 0.000613 |
| 14 | pass_freq:function(dce) | pass_freq | function(dce) | 0.004136 | 0.000045 | 0.000058 |
| 15 | self_loop_coverage | self_loop |  | 0.008517 | 0.000032 | 0.000132 |
| 16 | pass_freq:function(gvn-sink) | pass_freq | function(gvn-sink) | 0.003997 | 0.000014 | 0.000051 |
| 17 | pass_freq:function(lower-switch) | pass_freq | function(lower-switch) | 0.000444 | 0.000013 | 0.000005 |
| 18 | scope_ratio:other | scope_ratio |  | 0.000000 | 0.000000 | 0.000000 |
| 19 | pass_freq:module(inferattrs) | pass_freq | module(inferattrs) | 0.002701 | -0.000011 | 0.000046 |
| 20 | pass_freq:function(dse) | pass_freq | function(dse) | 0.010673 | -0.000012 | 0.000180 |

## Group Importance

| Rank | Group | Features | MDI Sum | Permutation Sum |
| ---: | --- | ---: | ---: | ---: |
| 1 | synergy | 1 | 0.190141 | 0.009708 |
| 2 | pass_freq | 19 | 0.435869 | 0.009084 |
| 3 | scope_ratio | 5 | 0.197072 | 0.002192 |
| 4 | sequence_shape | 4 | 0.137284 | 0.001025 |
| 5 | self_loop | 2 | 0.039634 | -0.000167 |

## Counterfactual Validation

- Rows: `18`
- CSV: `/root/exp/RFunipassLab/results/interpretability/20260505_051615_556780_feature_lite_seed460/run_0/rf_counterfactual.csv`

## Files

- Manifest: `/root/exp/RFunipassLab/results/interpretability/20260505_051615_556780_feature_lite_seed460/run_0/manifest.json`
- Model quality: `/root/exp/RFunipassLab/results/interpretability/20260505_051615_556780_feature_lite_seed460/run_0/rf_model_quality.json`
- Feature importance: `/root/exp/RFunipassLab/results/interpretability/20260505_051615_556780_feature_lite_seed460/run_0/rf_feature_importance.csv`
- Group importance: `/root/exp/RFunipassLab/results/interpretability/20260505_051615_556780_feature_lite_seed460/run_0/rf_group_importance.csv`
- Counterfactual: `/root/exp/RFunipassLab/results/interpretability/20260505_051615_556780_feature_lite_seed460/run_0/rf_counterfactual.csv`
