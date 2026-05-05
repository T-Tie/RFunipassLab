# RF Interpretability Report: 20260505_054628_012709_feature_lite_seed461_run0

## Scope

This is a post-hoc RF surrogate analysis. It does not alter the BO search and is not included in core tuning-cost metrics.

## Controlled Variables

- Objective: `instrcount` / baseline `oz`
- Feature mode: `lite`
- Loop policy: `wrap`
- LLVM tools: `/root/llvm/llvm-project-21/build/bin`
- Experiment seed: `461`
- Split seed: `461`
- Evaluated sequences: `180`
- Holdout ratio: `0.3`
- Permutation repeats: `10`

## Model Quality

| Split | Count | RMSE | MAE | R2 | Pearson |
| --- | ---: | ---: | ---: | ---: | ---: |
| train | 126 | 0.0475 | 0.0377 | 0.9161 | 0.9707 |
| holdout | 54 | 0.1357 | 0.1102 | 0.4210 | 0.6804 |

## Top Features

| Rank | Feature | Group | Pass | MDI | Permutation Mean | Permutation Std |
| ---: | --- | --- | --- | ---: | ---: | ---: |
| 1 | pass_freq:module(elim-avail-extern) | pass_freq | module(elim-avail-extern) | 0.127521 | 0.005707 | 0.001855 |
| 2 | pass_freq:module(scc-oz-module-inliner) | pass_freq | module(scc-oz-module-inliner) | 0.071571 | 0.001449 | 0.000646 |
| 3 | pass_coverage | sequence_shape |  | 0.049256 | 0.001326 | 0.001167 |
| 4 | scope_ratio:function | scope_ratio |  | 0.123124 | 0.001250 | 0.000888 |
| 5 | self_loop_hit_rate | self_loop |  | 0.057985 | 0.000901 | 0.000741 |
| 6 | synergy_rate | synergy |  | 0.114027 | 0.000655 | 0.001259 |
| 7 | pass_freq:function(reassociate) | pass_freq | function(reassociate) | 0.030654 | 0.000265 | 0.000548 |
| 8 | pass_freq:function(mem2reg) | pass_freq | function(mem2reg) | 0.020247 | 0.000251 | 0.000175 |
| 9 | pass_freq:function(newgvn) | pass_freq | function(newgvn) | 0.013760 | 0.000076 | 0.000318 |
| 10 | pass_freq:function(gvn-hoist) | pass_freq | function(gvn-hoist) | 0.004107 | 0.000042 | 0.000062 |
| 11 | pass_freq:function(gvn-sink) | pass_freq | function(gvn-sink) | 0.001417 | 0.000024 | 0.000022 |
| 12 | pass_freq:function(dse) | pass_freq | function(dse) | 0.005379 | 0.000024 | 0.000104 |
| 13 | pass_freq:function(memcpyopt) | pass_freq | function(memcpyopt) | 0.002187 | 0.000018 | 0.000043 |
| 14 | pass_freq:function(lower-switch) | pass_freq | function(lower-switch) | 0.000117 | 0.000000 | 0.000000 |
| 15 | scope_ratio:other | scope_ratio |  | 0.000000 | 0.000000 | 0.000000 |
| 16 | pass_freq:loop(loop-simplifycfg) | pass_freq | loop(loop-simplifycfg) | 0.006825 | -0.000000 | 0.000010 |
| 17 | pass_freq:module(globalopt) | pass_freq | module(globalopt) | 0.019377 | -0.000015 | 0.000252 |
| 18 | pass_freq:function(instsimplify) | pass_freq | function(instsimplify) | 0.009484 | -0.000033 | 0.000167 |
| 19 | scope_ratio:module | scope_ratio |  | 0.068728 | -0.000035 | 0.000776 |
| 20 | self_loop_coverage | self_loop |  | 0.002176 | -0.000049 | 0.000056 |

## Group Importance

| Rank | Group | Features | MDI Sum | Permutation Sum |
| ---: | --- | ---: | ---: | ---: |
| 1 | pass_freq | 19 | 0.383019 | 0.006495 |
| 2 | scope_ratio | 5 | 0.204004 | 0.000876 |
| 3 | self_loop | 2 | 0.060161 | 0.000853 |
| 4 | synergy | 1 | 0.114027 | 0.000655 |
| 5 | sequence_shape | 4 | 0.238790 | -0.000441 |

## Counterfactual Validation

- Rows: `12`
- CSV: `/root/exp/RFunipassLab/results/interpretability/20260505_054628_012709_feature_lite_seed461/run_0/rf_counterfactual.csv`

## Files

- Manifest: `/root/exp/RFunipassLab/results/interpretability/20260505_054628_012709_feature_lite_seed461/run_0/manifest.json`
- Model quality: `/root/exp/RFunipassLab/results/interpretability/20260505_054628_012709_feature_lite_seed461/run_0/rf_model_quality.json`
- Feature importance: `/root/exp/RFunipassLab/results/interpretability/20260505_054628_012709_feature_lite_seed461/run_0/rf_feature_importance.csv`
- Group importance: `/root/exp/RFunipassLab/results/interpretability/20260505_054628_012709_feature_lite_seed461/run_0/rf_group_importance.csv`
- Counterfactual: `/root/exp/RFunipassLab/results/interpretability/20260505_054628_012709_feature_lite_seed461/run_0/rf_counterfactual.csv`
