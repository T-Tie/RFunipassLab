# RF Interpretability Report: 20260505_060712_941720_feature_lite_seed462_run0

## Scope

This is a post-hoc RF surrogate analysis. It does not alter the BO search and is not included in core tuning-cost metrics.

## Controlled Variables

- Objective: `instrcount` / baseline `oz`
- Feature mode: `lite`
- Loop policy: `wrap`
- LLVM tools: `/root/llvm/llvm-project-21/build/bin`
- Experiment seed: `462`
- Split seed: `462`
- Evaluated sequences: `178`
- Holdout ratio: `0.3`
- Permutation repeats: `10`

## Model Quality

| Split | Count | RMSE | MAE | R2 | Pearson |
| --- | ---: | ---: | ---: | ---: | ---: |
| train | 125 | 0.0537 | 0.0383 | 0.9349 | 0.9747 |
| holdout | 53 | 0.1601 | 0.1136 | 0.5043 | 0.7226 |

## Top Features

| Rank | Feature | Group | Pass | MDI | Permutation Mean | Permutation Std |
| ---: | --- | --- | --- | ---: | ---: | ---: |
| 1 | pass_freq:module(scc-oz-module-inliner) | pass_freq | module(scc-oz-module-inliner) | 0.098185 | 0.015732 | 0.002684 |
| 2 | synergy_rate | synergy |  | 0.283150 | 0.009227 | 0.003232 |
| 3 | pass_freq:module(elim-avail-extern) | pass_freq | module(elim-avail-extern) | 0.040023 | 0.002878 | 0.000731 |
| 4 | scope_ratio:module | scope_ratio |  | 0.053691 | 0.001363 | 0.001060 |
| 5 | pass_coverage | sequence_shape |  | 0.044980 | 0.001035 | 0.000351 |
| 6 | seq_len_ratio | sequence_shape |  | 0.028850 | 0.000954 | 0.000421 |
| 7 | repeat_mass_ratio | sequence_shape |  | 0.092435 | 0.000727 | 0.000757 |
| 8 | pass_freq:module(globalopt) | pass_freq | module(globalopt) | 0.039064 | 0.000717 | 0.000589 |
| 9 | scope_ratio:function | scope_ratio |  | 0.058360 | 0.000564 | 0.000672 |
| 10 | pass_freq:function(gvn-sink) | pass_freq | function(gvn-sink) | 0.006279 | 0.000504 | 0.000365 |
| 11 | pass_freq:function(instsimplify) | pass_freq | function(instsimplify) | 0.006987 | 0.000486 | 0.000150 |
| 12 | scope_ratio:loop | scope_ratio |  | 0.019378 | 0.000473 | 0.000581 |
| 13 | pass_freq:module(iroutliner) | pass_freq | module(iroutliner) | 0.003241 | 0.000286 | 0.000104 |
| 14 | pass_freq:function(memcpyopt) | pass_freq | function(memcpyopt) | 0.008551 | 0.000277 | 0.000334 |
| 15 | self_loop_coverage | self_loop |  | 0.002802 | 0.000215 | 0.000159 |
| 16 | pass_freq:function(dce) | pass_freq | function(dce) | 0.056465 | 0.000177 | 0.001550 |
| 17 | pass_freq:loop(loop-simplifycfg) | pass_freq | loop(loop-simplifycfg) | 0.007966 | 0.000147 | 0.000158 |
| 18 | pass_freq:function(jump-threading) | pass_freq | function(jump-threading) | 0.004780 | 0.000099 | 0.000130 |
| 19 | pass_freq:function(newgvn) | pass_freq | function(newgvn) | 0.003079 | 0.000088 | 0.000118 |
| 20 | pass_freq:function(reassociate) | pass_freq | function(reassociate) | 0.002507 | 0.000067 | 0.000085 |

## Group Importance

| Rank | Group | Features | MDI Sum | Permutation Sum |
| ---: | --- | ---: | ---: | ---: |
| 1 | pass_freq | 19 | 0.332091 | 0.019985 |
| 2 | synergy | 1 | 0.283150 | 0.009227 |
| 3 | sequence_shape | 4 | 0.201861 | 0.002184 |
| 4 | scope_ratio | 5 | 0.147977 | 0.002078 |
| 5 | self_loop | 2 | 0.034919 | -0.000221 |

## Counterfactual Validation

- Rows: `13`
- CSV: `/root/exp/RFunipassLab/results/interpretability/20260505_060712_941720_feature_lite_seed462/run_0/rf_counterfactual.csv`

## Files

- Manifest: `/root/exp/RFunipassLab/results/interpretability/20260505_060712_941720_feature_lite_seed462/run_0/manifest.json`
- Model quality: `/root/exp/RFunipassLab/results/interpretability/20260505_060712_941720_feature_lite_seed462/run_0/rf_model_quality.json`
- Feature importance: `/root/exp/RFunipassLab/results/interpretability/20260505_060712_941720_feature_lite_seed462/run_0/rf_feature_importance.csv`
- Group importance: `/root/exp/RFunipassLab/results/interpretability/20260505_060712_941720_feature_lite_seed462/run_0/rf_group_importance.csv`
- Counterfactual: `/root/exp/RFunipassLab/results/interpretability/20260505_060712_941720_feature_lite_seed462/run_0/rf_counterfactual.csv`
