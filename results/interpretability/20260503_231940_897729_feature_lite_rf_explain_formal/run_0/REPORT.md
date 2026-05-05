# RF Interpretability Report: 20260503_231940_897729_feature_lite_rf_explain_formal_run0

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
| train | 130 | 0.0520 | 0.0375 | 0.9369 | 0.9763 |
| holdout | 56 | 0.1253 | 0.0994 | 0.6256 | 0.7916 |

## Top Features

| Rank | Feature | Group | Pass | MDI | Permutation Mean | Permutation Std |
| ---: | --- | --- | --- | ---: | ---: | ---: |
| 1 | synergy_rate | synergy |  | 0.110071 | 0.005500 | 0.002034 |
| 2 | pass_freq:module(elim-avail-extern) | pass_freq | module(elim-avail-extern) | 0.147424 | 0.004342 | 0.001653 |
| 3 | pass_freq:module(globalopt) | pass_freq | module(globalopt) | 0.099530 | 0.001641 | 0.000719 |
| 4 | scope_ratio:function | scope_ratio |  | 0.113393 | 0.001621 | 0.001118 |
| 5 | pass_coverage | sequence_shape |  | 0.072859 | 0.001484 | 0.000671 |
| 6 | pass_freq:function(instsimplify) | pass_freq | function(instsimplify) | 0.024452 | 0.000905 | 0.000617 |
| 7 | pass_freq:function(gvn-hoist) | pass_freq | function(gvn-hoist) | 0.012642 | 0.000755 | 0.000474 |
| 8 | seq_len_ratio | sequence_shape |  | 0.067810 | 0.000646 | 0.000778 |
| 9 | pass_freq:function(jump-threading) | pass_freq | function(jump-threading) | 0.015394 | 0.000474 | 0.000352 |
| 10 | pass_freq:loop(loop-simplifycfg) | pass_freq | loop(loop-simplifycfg) | 0.018304 | 0.000423 | 0.000333 |
| 11 | pass_freq:function(gvn-sink) | pass_freq | function(gvn-sink) | 0.006821 | 0.000409 | 0.000234 |
| 12 | repeat_mass_ratio | sequence_shape |  | 0.038853 | 0.000321 | 0.000538 |
| 13 | pass_freq:module(scc-oz-module-inliner) | pass_freq | module(scc-oz-module-inliner) | 0.028364 | 0.000304 | 0.000594 |
| 14 | max_repeat_ratio | sequence_shape |  | 0.029913 | 0.000297 | 0.000287 |
| 15 | scope_ratio:module | scope_ratio |  | 0.069294 | 0.000200 | 0.000351 |
| 16 | pass_freq:function(memcpyopt) | pass_freq | function(memcpyopt) | 0.004858 | 0.000198 | 0.000133 |
| 17 | pass_freq:function(newgvn) | pass_freq | function(newgvn) | 0.002156 | 0.000146 | 0.000051 |
| 18 | pass_freq:cgscc(attributor-cgscc) | pass_freq | cgscc(attributor-cgscc) | 0.003244 | 0.000114 | 0.000136 |
| 19 | pass_freq:function(mem2reg) | pass_freq | function(mem2reg) | 0.002420 | 0.000081 | 0.000032 |
| 20 | pass_freq:function(dse) | pass_freq | function(dse) | 0.003362 | 0.000073 | 0.000128 |

## Group Importance

| Rank | Group | Features | MDI Sum | Permutation Sum |
| ---: | --- | ---: | ---: | ---: |
| 1 | pass_freq | 19 | 0.391174 | 0.009740 |
| 2 | synergy | 1 | 0.110071 | 0.005500 |
| 3 | sequence_shape | 4 | 0.209435 | 0.002748 |
| 4 | scope_ratio | 5 | 0.220340 | 0.001745 |
| 5 | self_loop | 2 | 0.068979 | -0.000406 |

## Counterfactual Validation

- Rows: `11`
- CSV: `/root/exp/RFunipassLab/results/interpretability/20260503_231940_897729_feature_lite_rf_explain_formal/run_0/rf_counterfactual.csv`

## Files

- Manifest: `/root/exp/RFunipassLab/results/interpretability/20260503_231940_897729_feature_lite_rf_explain_formal/run_0/manifest.json`
- Model quality: `/root/exp/RFunipassLab/results/interpretability/20260503_231940_897729_feature_lite_rf_explain_formal/run_0/rf_model_quality.json`
- Feature importance: `/root/exp/RFunipassLab/results/interpretability/20260503_231940_897729_feature_lite_rf_explain_formal/run_0/rf_feature_importance.csv`
- Group importance: `/root/exp/RFunipassLab/results/interpretability/20260503_231940_897729_feature_lite_rf_explain_formal/run_0/rf_group_importance.csv`
- Counterfactual: `/root/exp/RFunipassLab/results/interpretability/20260503_231940_897729_feature_lite_rf_explain_formal/run_0/rf_counterfactual.csv`
