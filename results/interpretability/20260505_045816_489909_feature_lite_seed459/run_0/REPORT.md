# RF Interpretability Report: 20260505_045816_489909_feature_lite_seed459_run0

## Scope

This is a post-hoc RF surrogate analysis. It does not alter the BO search and is not included in core tuning-cost metrics.

## Controlled Variables

- Objective: `instrcount` / baseline `oz`
- Feature mode: `lite`
- Loop policy: `wrap`
- LLVM tools: `/root/llvm/llvm-project-21/build/bin`
- Experiment seed: `459`
- Split seed: `459`
- Evaluated sequences: `180`
- Holdout ratio: `0.3`
- Permutation repeats: `10`

## Model Quality

| Split | Count | RMSE | MAE | R2 | Pearson |
| --- | ---: | ---: | ---: | ---: | ---: |
| train | 126 | 0.0377 | 0.0305 | 0.9371 | 0.9763 |
| holdout | 54 | 0.1053 | 0.0838 | 0.5740 | 0.7591 |

## Top Features

| Rank | Feature | Group | Pass | MDI | Permutation Mean | Permutation Std |
| ---: | --- | --- | --- | ---: | ---: | ---: |
| 1 | pass_freq:module(elim-avail-extern) | pass_freq | module(elim-avail-extern) | 0.231891 | 0.003931 | 0.002097 |
| 2 | synergy_rate | synergy |  | 0.095722 | 0.002607 | 0.001342 |
| 3 | pass_freq:module(scc-oz-module-inliner) | pass_freq | module(scc-oz-module-inliner) | 0.074268 | 0.002530 | 0.000426 |
| 4 | scope_ratio:function | scope_ratio |  | 0.077817 | 0.001463 | 0.000557 |
| 5 | scope_ratio:module | scope_ratio |  | 0.094992 | 0.001414 | 0.000430 |
| 6 | pass_freq:module(globalopt) | pass_freq | module(globalopt) | 0.053723 | 0.000585 | 0.000625 |
| 7 | pass_freq:function(gvn-sink) | pass_freq | function(gvn-sink) | 0.031010 | 0.000352 | 0.000488 |
| 8 | pass_freq:function(mem2reg) | pass_freq | function(mem2reg) | 0.013421 | 0.000328 | 0.000091 |
| 9 | pass_coverage | sequence_shape |  | 0.022666 | 0.000111 | 0.000224 |
| 10 | max_repeat_ratio | sequence_shape |  | 0.021269 | 0.000080 | 0.000217 |
| 11 | pass_freq:module(attributor) | pass_freq | module(attributor) | 0.021972 | 0.000048 | 0.000281 |
| 12 | pass_freq:function(newgvn) | pass_freq | function(newgvn) | 0.003199 | 0.000020 | 0.000035 |
| 13 | pass_freq:loop(loop-simplifycfg) | pass_freq | loop(loop-simplifycfg) | 0.003270 | 0.000017 | 0.000059 |
| 14 | pass_freq:function(reassociate) | pass_freq | function(reassociate) | 0.002117 | 0.000008 | 0.000013 |
| 15 | scope_ratio:cgscc | scope_ratio |  | 0.007472 | 0.000008 | 0.000081 |
| 16 | pass_freq:cgscc(attributor-cgscc) | pass_freq | cgscc(attributor-cgscc) | 0.002048 | 0.000002 | 0.000015 |
| 17 | scope_ratio:other | scope_ratio |  | 0.000000 | 0.000000 | 0.000000 |
| 18 | pass_freq:function(gvn-hoist) | pass_freq | function(gvn-hoist) | 0.002440 | -0.000005 | 0.000074 |
| 19 | pass_freq:function(lower-switch) | pass_freq | function(lower-switch) | 0.000585 | -0.000006 | 0.000016 |
| 20 | pass_freq:function(instsimplify) | pass_freq | function(instsimplify) | 0.005556 | -0.000015 | 0.000091 |

## Group Importance

| Rank | Group | Features | MDI Sum | Permutation Sum |
| ---: | --- | ---: | ---: | ---: |
| 1 | pass_freq | 19 | 0.483202 | 0.007245 |
| 2 | scope_ratio | 5 | 0.191481 | 0.002784 |
| 3 | synergy | 1 | 0.095722 | 0.002607 |
| 4 | sequence_shape | 4 | 0.155132 | -0.000401 |
| 5 | self_loop | 2 | 0.074463 | -0.000435 |

## Counterfactual Validation

- Rows: `12`
- CSV: `/root/exp/RFunipassLab/results/interpretability/20260505_045816_489909_feature_lite_seed459/run_0/rf_counterfactual.csv`

## Files

- Manifest: `/root/exp/RFunipassLab/results/interpretability/20260505_045816_489909_feature_lite_seed459/run_0/manifest.json`
- Model quality: `/root/exp/RFunipassLab/results/interpretability/20260505_045816_489909_feature_lite_seed459/run_0/rf_model_quality.json`
- Feature importance: `/root/exp/RFunipassLab/results/interpretability/20260505_045816_489909_feature_lite_seed459/run_0/rf_feature_importance.csv`
- Group importance: `/root/exp/RFunipassLab/results/interpretability/20260505_045816_489909_feature_lite_seed459/run_0/rf_group_importance.csv`
- Counterfactual: `/root/exp/RFunipassLab/results/interpretability/20260505_045816_489909_feature_lite_seed459/run_0/rf_counterfactual.csv`
