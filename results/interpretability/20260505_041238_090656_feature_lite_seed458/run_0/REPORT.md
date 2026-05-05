# RF Interpretability Report: 20260505_041238_090656_feature_lite_seed458_run0

## Scope

This is a post-hoc RF surrogate analysis. It does not alter the BO search and is not included in core tuning-cost metrics.

## Controlled Variables

- Objective: `instrcount` / baseline `oz`
- Feature mode: `lite`
- Loop policy: `wrap`
- LLVM tools: `/root/llvm/llvm-project-21/build/bin`
- Experiment seed: `458`
- Split seed: `458`
- Evaluated sequences: `179`
- Holdout ratio: `0.3`
- Permutation repeats: `10`

## Model Quality

| Split | Count | RMSE | MAE | R2 | Pearson |
| --- | ---: | ---: | ---: | ---: | ---: |
| train | 125 | 0.0441 | 0.0312 | 0.9479 | 0.9790 |
| holdout | 54 | 0.1022 | 0.0758 | 0.6120 | 0.7906 |

## Top Features

| Rank | Feature | Group | Pass | MDI | Permutation Mean | Permutation Std |
| ---: | --- | --- | --- | ---: | ---: | ---: |
| 1 | pass_freq:module(scc-oz-module-inliner) | pass_freq | module(scc-oz-module-inliner) | 0.145260 | 0.003428 | 0.001646 |
| 2 | pass_freq:module(elim-avail-extern) | pass_freq | module(elim-avail-extern) | 0.063619 | 0.002691 | 0.000649 |
| 3 | scope_ratio:module | scope_ratio |  | 0.130806 | 0.000811 | 0.000838 |
| 4 | scope_ratio:function | scope_ratio |  | 0.063046 | 0.000640 | 0.000283 |
| 5 | pass_freq:function(jump-threading) | pass_freq | function(jump-threading) | 0.016265 | 0.000609 | 0.000213 |
| 6 | pass_freq:function(mem2reg) | pass_freq | function(mem2reg) | 0.021288 | 0.000548 | 0.000392 |
| 7 | scope_ratio:cgscc | scope_ratio |  | 0.028938 | 0.000535 | 0.000177 |
| 8 | synergy_rate | synergy |  | 0.048171 | 0.000456 | 0.000338 |
| 9 | pass_freq:function(reassociate) | pass_freq | function(reassociate) | 0.008617 | 0.000413 | 0.000150 |
| 10 | pass_freq:function(gvn-sink) | pass_freq | function(gvn-sink) | 0.057519 | 0.000342 | 0.000182 |
| 11 | pass_freq:module(globalopt) | pass_freq | module(globalopt) | 0.030593 | 0.000240 | 0.000258 |
| 12 | pass_freq:function(gvn-hoist) | pass_freq | function(gvn-hoist) | 0.004534 | 0.000202 | 0.000089 |
| 13 | pass_freq:module(attributor) | pass_freq | module(attributor) | 0.071047 | 0.000200 | 0.000246 |
| 14 | seq_len_ratio | sequence_shape |  | 0.054171 | 0.000046 | 0.000271 |
| 15 | pass_freq:cgscc(attributor-cgscc) | pass_freq | cgscc(attributor-cgscc) | 0.007073 | 0.000039 | 0.000142 |
| 16 | pass_freq:function(memcpyopt) | pass_freq | function(memcpyopt) | 0.006037 | 0.000030 | 0.000066 |
| 17 | pass_freq:function(dse) | pass_freq | function(dse) | 0.001263 | 0.000024 | 0.000053 |
| 18 | pass_freq:module(inferattrs) | pass_freq | module(inferattrs) | 0.002136 | 0.000023 | 0.000022 |
| 19 | pass_freq:function(instsimplify) | pass_freq | function(instsimplify) | 0.002741 | 0.000018 | 0.000084 |
| 20 | pass_freq:function(lower-switch) | pass_freq | function(lower-switch) | 0.002642 | 0.000016 | 0.000044 |

## Group Importance

| Rank | Group | Features | MDI Sum | Permutation Sum |
| ---: | --- | ---: | ---: | ---: |
| 1 | pass_freq | 19 | 0.463887 | 0.008202 |
| 2 | scope_ratio | 5 | 0.223354 | 0.002000 |
| 3 | synergy | 1 | 0.048171 | 0.000456 |
| 4 | self_loop | 2 | 0.020430 | -0.000269 |
| 5 | sequence_shape | 4 | 0.244157 | -0.000397 |

## Counterfactual Validation

- Rows: `10`
- CSV: `/root/exp/RFunipassLab/results/interpretability/20260505_041238_090656_feature_lite_seed458/run_0/rf_counterfactual.csv`

## Files

- Manifest: `/root/exp/RFunipassLab/results/interpretability/20260505_041238_090656_feature_lite_seed458/run_0/manifest.json`
- Model quality: `/root/exp/RFunipassLab/results/interpretability/20260505_041238_090656_feature_lite_seed458/run_0/rf_model_quality.json`
- Feature importance: `/root/exp/RFunipassLab/results/interpretability/20260505_041238_090656_feature_lite_seed458/run_0/rf_feature_importance.csv`
- Group importance: `/root/exp/RFunipassLab/results/interpretability/20260505_041238_090656_feature_lite_seed458/run_0/rf_group_importance.csv`
- Counterfactual: `/root/exp/RFunipassLab/results/interpretability/20260505_041238_090656_feature_lite_seed458/run_0/rf_counterfactual.csv`
