# RF Interpretability Report: 20260505_072024_540076_feature_lite_seed464_run0

## Scope

This is a post-hoc RF surrogate analysis. It does not alter the BO search and is not included in core tuning-cost metrics.

## Controlled Variables

- Objective: `instrcount` / baseline `oz`
- Feature mode: `lite`
- Loop policy: `wrap`
- LLVM tools: `/root/llvm/llvm-project-21/build/bin`
- Experiment seed: `464`
- Split seed: `464`
- Evaluated sequences: `179`
- Holdout ratio: `0.3`
- Permutation repeats: `10`

## Model Quality

| Split | Count | RMSE | MAE | R2 | Pearson |
| --- | ---: | ---: | ---: | ---: | ---: |
| train | 125 | 0.0435 | 0.0340 | 0.9332 | 0.9741 |
| holdout | 54 | 0.1217 | 0.0910 | 0.5745 | 0.7763 |

## Top Features

| Rank | Feature | Group | Pass | MDI | Permutation Mean | Permutation Std |
| ---: | --- | --- | --- | ---: | ---: | ---: |
| 1 | pass_freq:module(scc-oz-module-inliner) | pass_freq | module(scc-oz-module-inliner) | 0.233089 | 0.007555 | 0.002793 |
| 2 | synergy_rate | synergy |  | 0.120299 | 0.005413 | 0.001264 |
| 3 | pass_freq:module(elim-avail-extern) | pass_freq | module(elim-avail-extern) | 0.068943 | 0.002333 | 0.000554 |
| 4 | pass_freq:module(globalopt) | pass_freq | module(globalopt) | 0.051461 | 0.001285 | 0.000376 |
| 5 | pass_coverage | sequence_shape |  | 0.031199 | 0.001121 | 0.000535 |
| 6 | scope_ratio:module | scope_ratio |  | 0.092848 | 0.001019 | 0.000860 |
| 7 | pass_freq:function(mem2reg) | pass_freq | function(mem2reg) | 0.037980 | 0.000681 | 0.000238 |
| 8 | scope_ratio:function | scope_ratio |  | 0.053855 | 0.000561 | 0.000253 |
| 9 | scope_ratio:cgscc | scope_ratio |  | 0.046847 | 0.000290 | 0.000386 |
| 10 | pass_freq:function(dce) | pass_freq | function(dce) | 0.017232 | 0.000288 | 0.000346 |
| 11 | pass_freq:function(jump-threading) | pass_freq | function(jump-threading) | 0.014728 | 0.000248 | 0.000192 |
| 12 | pass_freq:loop(loop-simplifycfg) | pass_freq | loop(loop-simplifycfg) | 0.006349 | 0.000155 | 0.000093 |
| 13 | pass_freq:module(attributor) | pass_freq | module(attributor) | 0.024880 | 0.000144 | 0.000277 |
| 14 | max_repeat_ratio | sequence_shape |  | 0.026279 | 0.000122 | 0.000209 |
| 15 | pass_freq:function(reassociate) | pass_freq | function(reassociate) | 0.003618 | 0.000033 | 0.000039 |
| 16 | pass_freq:cgscc(attributor-cgscc) | pass_freq | cgscc(attributor-cgscc) | 0.002629 | 0.000014 | 0.000025 |
| 17 | pass_freq:function(dse) | pass_freq | function(dse) | 0.004840 | 0.000006 | 0.000107 |
| 18 | scope_ratio:other | scope_ratio |  | 0.000000 | 0.000000 | 0.000000 |
| 19 | pass_freq:function(lower-switch) | pass_freq | function(lower-switch) | 0.001335 | -0.000000 | 0.000031 |
| 20 | pass_freq:function(gvn-hoist) | pass_freq | function(gvn-hoist) | 0.003631 | -0.000019 | 0.000045 |

## Group Importance

| Rank | Group | Features | MDI Sum | Permutation Sum |
| ---: | --- | ---: | ---: | ---: |
| 1 | pass_freq | 19 | 0.531488 | 0.011638 |
| 2 | synergy | 1 | 0.120299 | 0.005413 |
| 3 | scope_ratio | 5 | 0.202868 | 0.001751 |
| 4 | sequence_shape | 4 | 0.120441 | 0.000879 |
| 5 | self_loop | 2 | 0.024903 | -0.000451 |

## Counterfactual Validation

- Rows: `13`
- CSV: `/root/exp/RFunipassLab/results/interpretability/20260505_072024_540076_feature_lite_seed464/run_0/rf_counterfactual.csv`

## Files

- Manifest: `/root/exp/RFunipassLab/results/interpretability/20260505_072024_540076_feature_lite_seed464/run_0/manifest.json`
- Model quality: `/root/exp/RFunipassLab/results/interpretability/20260505_072024_540076_feature_lite_seed464/run_0/rf_model_quality.json`
- Feature importance: `/root/exp/RFunipassLab/results/interpretability/20260505_072024_540076_feature_lite_seed464/run_0/rf_feature_importance.csv`
- Group importance: `/root/exp/RFunipassLab/results/interpretability/20260505_072024_540076_feature_lite_seed464/run_0/rf_group_importance.csv`
- Counterfactual: `/root/exp/RFunipassLab/results/interpretability/20260505_072024_540076_feature_lite_seed464/run_0/rf_counterfactual.csv`
