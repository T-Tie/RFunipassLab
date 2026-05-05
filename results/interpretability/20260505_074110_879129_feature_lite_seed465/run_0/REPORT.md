# RF Interpretability Report: 20260505_074110_879129_feature_lite_seed465_run0

## Scope

This is a post-hoc RF surrogate analysis. It does not alter the BO search and is not included in core tuning-cost metrics.

## Controlled Variables

- Objective: `instrcount` / baseline `oz`
- Feature mode: `lite`
- Loop policy: `wrap`
- LLVM tools: `/root/llvm/llvm-project-21/build/bin`
- Experiment seed: `465`
- Split seed: `465`
- Evaluated sequences: `189`
- Holdout ratio: `0.3`
- Permutation repeats: `10`

## Model Quality

| Split | Count | RMSE | MAE | R2 | Pearson |
| --- | ---: | ---: | ---: | ---: | ---: |
| train | 132 | 0.0389 | 0.0272 | 0.9458 | 0.9795 |
| holdout | 57 | 0.1007 | 0.0753 | 0.4020 | 0.6517 |

## Top Features

| Rank | Feature | Group | Pass | MDI | Permutation Mean | Permutation Std |
| ---: | --- | --- | --- | ---: | ---: | ---: |
| 1 | pass_freq:module(scc-oz-module-inliner) | pass_freq | module(scc-oz-module-inliner) | 0.319664 | 0.005307 | 0.002039 |
| 2 | synergy_rate | synergy |  | 0.077946 | 0.002069 | 0.000584 |
| 3 | pass_freq:module(elim-avail-extern) | pass_freq | module(elim-avail-extern) | 0.074064 | 0.001728 | 0.001253 |
| 4 | scope_ratio:module | scope_ratio |  | 0.068382 | 0.001263 | 0.001184 |
| 5 | pass_freq:module(globalopt) | pass_freq | module(globalopt) | 0.058870 | 0.000825 | 0.000633 |
| 6 | scope_ratio:function | scope_ratio |  | 0.124485 | 0.000814 | 0.000568 |
| 7 | pass_freq:function(mem2reg) | pass_freq | function(mem2reg) | 0.047006 | 0.000572 | 0.000685 |
| 8 | pass_freq:function(reassociate) | pass_freq | function(reassociate) | 0.001888 | 0.000052 | 0.000048 |
| 9 | pass_freq:function(instsimplify) | pass_freq | function(instsimplify) | 0.003564 | 0.000036 | 0.000031 |
| 10 | pass_freq:function(jump-threading) | pass_freq | function(jump-threading) | 0.003082 | 0.000031 | 0.000062 |
| 11 | scope_ratio:cgscc | scope_ratio |  | 0.015653 | 0.000021 | 0.000224 |
| 12 | pass_freq:module(inferattrs) | pass_freq | module(inferattrs) | 0.004732 | 0.000006 | 0.000129 |
| 13 | pass_freq:function(newgvn) | pass_freq | function(newgvn) | 0.008700 | 0.000003 | 0.000147 |
| 14 | scope_ratio:other | scope_ratio |  | 0.000000 | 0.000000 | 0.000000 |
| 15 | pass_freq:cgscc(attributor-cgscc) | pass_freq | cgscc(attributor-cgscc) | 0.002694 | -0.000007 | 0.000034 |
| 16 | scope_ratio:loop | scope_ratio |  | 0.015055 | -0.000010 | 0.000119 |
| 17 | pass_freq:module(attributor) | pass_freq | module(attributor) | 0.003515 | -0.000016 | 0.000044 |
| 18 | self_loop_coverage | self_loop |  | 0.002399 | -0.000024 | 0.000035 |
| 19 | pass_freq:function(dse) | pass_freq | function(dse) | 0.006275 | -0.000028 | 0.000034 |
| 20 | pass_freq:module(iroutliner) | pass_freq | module(iroutliner) | 0.002058 | -0.000048 | 0.000051 |

## Group Importance

| Rank | Group | Features | MDI Sum | Permutation Sum |
| ---: | --- | ---: | ---: | ---: |
| 1 | pass_freq | 19 | 0.560740 | 0.007697 |
| 2 | scope_ratio | 5 | 0.223576 | 0.002088 |
| 3 | synergy | 1 | 0.077946 | 0.002069 |
| 4 | self_loop | 2 | 0.020553 | -0.000312 |
| 5 | sequence_shape | 4 | 0.117185 | -0.001887 |

## Counterfactual Validation

- Rows: `12`
- CSV: `/root/exp/RFunipassLab/results/interpretability/20260505_074110_879129_feature_lite_seed465/run_0/rf_counterfactual.csv`

## Files

- Manifest: `/root/exp/RFunipassLab/results/interpretability/20260505_074110_879129_feature_lite_seed465/run_0/manifest.json`
- Model quality: `/root/exp/RFunipassLab/results/interpretability/20260505_074110_879129_feature_lite_seed465/run_0/rf_model_quality.json`
- Feature importance: `/root/exp/RFunipassLab/results/interpretability/20260505_074110_879129_feature_lite_seed465/run_0/rf_feature_importance.csv`
- Group importance: `/root/exp/RFunipassLab/results/interpretability/20260505_074110_879129_feature_lite_seed465/run_0/rf_group_importance.csv`
- Counterfactual: `/root/exp/RFunipassLab/results/interpretability/20260505_074110_879129_feature_lite_seed465/run_0/rf_counterfactual.csv`
