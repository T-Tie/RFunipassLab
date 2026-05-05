# RF Interpretability Report: 20260505_030042_375448_feature_lite_seed457_run0

## Scope

This is a post-hoc RF surrogate analysis. It does not alter the BO search and is not included in core tuning-cost metrics.

## Controlled Variables

- Objective: `instrcount` / baseline `oz`
- Feature mode: `lite`
- Loop policy: `wrap`
- LLVM tools: `/root/llvm/llvm-project-21/build/bin`
- Experiment seed: `457`
- Split seed: `457`
- Evaluated sequences: `184`
- Holdout ratio: `0.3`
- Permutation repeats: `10`

## Model Quality

| Split | Count | RMSE | MAE | R2 | Pearson |
| --- | ---: | ---: | ---: | ---: | ---: |
| train | 129 | 0.0451 | 0.0318 | 0.9410 | 0.9752 |
| holdout | 55 | 0.1179 | 0.0813 | 0.5137 | 0.7430 |

## Top Features

| Rank | Feature | Group | Pass | MDI | Permutation Mean | Permutation Std |
| ---: | --- | --- | --- | ---: | ---: | ---: |
| 1 | pass_freq:module(elim-avail-extern) | pass_freq | module(elim-avail-extern) | 0.351517 | 0.013455 | 0.003954 |
| 2 | synergy_rate | synergy |  | 0.084974 | 0.003545 | 0.001943 |
| 3 | pass_freq:module(scc-oz-module-inliner) | pass_freq | module(scc-oz-module-inliner) | 0.045169 | 0.001333 | 0.000256 |
| 4 | pass_freq:function(mem2reg) | pass_freq | function(mem2reg) | 0.038521 | 0.001178 | 0.000277 |
| 5 | max_repeat_ratio | sequence_shape |  | 0.035590 | 0.000490 | 0.000539 |
| 6 | pass_freq:function(gvn-hoist) | pass_freq | function(gvn-hoist) | 0.006074 | 0.000327 | 0.000268 |
| 7 | pass_freq:function(dce) | pass_freq | function(dce) | 0.002812 | 0.000111 | 0.000082 |
| 8 | pass_freq:function(gvn-sink) | pass_freq | function(gvn-sink) | 0.006069 | 0.000106 | 0.000110 |
| 9 | pass_freq:function(instsimplify) | pass_freq | function(instsimplify) | 0.006555 | 0.000063 | 0.000150 |
| 10 | scope_ratio:cgscc | scope_ratio |  | 0.012518 | 0.000052 | 0.000126 |
| 11 | pass_freq:function(reassociate) | pass_freq | function(reassociate) | 0.008489 | 0.000043 | 0.000171 |
| 12 | pass_freq:loop(loop-simplifycfg) | pass_freq | loop(loop-simplifycfg) | 0.004812 | 0.000004 | 0.000021 |
| 13 | scope_ratio:other | scope_ratio |  | 0.000000 | 0.000000 | 0.000000 |
| 14 | pass_freq:function(newgvn) | pass_freq | function(newgvn) | 0.003272 | -0.000001 | 0.000041 |
| 15 | self_loop_hit_rate | self_loop |  | 0.031107 | -0.000016 | 0.000269 |
| 16 | scope_ratio:loop | scope_ratio |  | 0.025382 | -0.000020 | 0.000373 |
| 17 | pass_freq:module(iroutliner) | pass_freq | module(iroutliner) | 0.003079 | -0.000028 | 0.000051 |
| 18 | pass_freq:function(lower-switch) | pass_freq | function(lower-switch) | 0.007413 | -0.000037 | 0.000125 |
| 19 | pass_freq:function(dse) | pass_freq | function(dse) | 0.003374 | -0.000071 | 0.000086 |
| 20 | pass_freq:cgscc(attributor-cgscc) | pass_freq | cgscc(attributor-cgscc) | 0.002980 | -0.000075 | 0.000075 |

## Group Importance

| Rank | Group | Features | MDI Sum | Permutation Sum |
| ---: | --- | ---: | ---: | ---: |
| 1 | pass_freq | 19 | 0.590996 | 0.015372 |
| 2 | synergy | 1 | 0.084974 | 0.003545 |
| 3 | self_loop | 2 | 0.035115 | -0.000121 |
| 4 | scope_ratio | 5 | 0.117673 | -0.000833 |
| 5 | sequence_shape | 4 | 0.171243 | -0.000918 |

## Counterfactual Validation

- Rows: `11`
- CSV: `/root/exp/RFunipassLab/results/interpretability/20260505_030042_375448_feature_lite_seed457/run_0/rf_counterfactual.csv`

## Files

- Manifest: `/root/exp/RFunipassLab/results/interpretability/20260505_030042_375448_feature_lite_seed457/run_0/manifest.json`
- Model quality: `/root/exp/RFunipassLab/results/interpretability/20260505_030042_375448_feature_lite_seed457/run_0/rf_model_quality.json`
- Feature importance: `/root/exp/RFunipassLab/results/interpretability/20260505_030042_375448_feature_lite_seed457/run_0/rf_feature_importance.csv`
- Group importance: `/root/exp/RFunipassLab/results/interpretability/20260505_030042_375448_feature_lite_seed457/run_0/rf_group_importance.csv`
- Counterfactual: `/root/exp/RFunipassLab/results/interpretability/20260505_030042_375448_feature_lite_seed457/run_0/rf_counterfactual.csv`
