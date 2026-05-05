# RF Interpretability Report: 20260503_230021_786396_baseline_rf_explain_validation_preload_run0

## Scope

This is a post-hoc RF surrogate analysis. It does not alter the BO search and is not included in core tuning-cost metrics.

## Controlled Variables

- Objective: `instrcount` / baseline `oz`
- Feature mode: `lite`
- Loop policy: `wrap`
- LLVM tools: `/root/llvm/llvm-project-21/build/bin`
- Experiment seed: `456`
- Split seed: `456`
- Evaluated sequences: `5`
- Holdout ratio: `0.3`
- Permutation repeats: `2`

## Model Quality

| Split | Count | RMSE | MAE | R2 | Pearson |
| --- | ---: | ---: | ---: | ---: | ---: |
| train | 3 | 0.0127 | 0.0120 | 0.9010 | 0.9972 |
| holdout | 2 | 0.2781 | 0.2186 | -1.8397 | -1.0000 |

## Top Features

| Rank | Feature | Group | Pass | MDI | Permutation Mean | Permutation Std |
| ---: | --- | --- | --- | ---: | ---: | ---: |
| 1 | pass_coverage | sequence_shape |  | 0.027027 | 0.000591 | 0.000000 |
| 2 | scope_ratio:function | scope_ratio |  | 0.081081 | 0.000591 | 0.000000 |
| 3 | scope_ratio:module | scope_ratio |  | 0.027027 | 0.000591 | 0.000000 |
| 4 | synergy_rate | synergy |  | 0.027027 | 0.000591 | 0.000000 |
| 5 | pass_freq:cgscc(attributor-cgscc) | pass_freq | cgscc(attributor-cgscc) | 0.027027 | 0.000000 | 0.000000 |

## Group Importance

| Rank | Group | Features | MDI Sum | Permutation Sum |
| ---: | --- | ---: | ---: | ---: |
| 1 | scope_ratio | 5 | 0.162162 | 0.001182 |
| 2 | synergy | 1 | 0.027027 | 0.000591 |
| 3 | sequence_shape | 4 | 0.135135 | 0.000006 |
| 4 | self_loop | 2 | 0.108108 | -0.001738 |
| 5 | pass_freq | 19 | 0.567568 | -0.004641 |

## Counterfactual Validation

- Rows: `2`
- CSV: `/root/exp/RFunipassLab/results/interpretability/20260503_230021_786396_baseline_rf_explain_validation_preload/run_0/rf_counterfactual.csv`

## Files

- Manifest: `/root/exp/RFunipassLab/results/interpretability/20260503_230021_786396_baseline_rf_explain_validation_preload/run_0/manifest.json`
- Model quality: `/root/exp/RFunipassLab/results/interpretability/20260503_230021_786396_baseline_rf_explain_validation_preload/run_0/rf_model_quality.json`
- Feature importance: `/root/exp/RFunipassLab/results/interpretability/20260503_230021_786396_baseline_rf_explain_validation_preload/run_0/rf_feature_importance.csv`
- Group importance: `/root/exp/RFunipassLab/results/interpretability/20260503_230021_786396_baseline_rf_explain_validation_preload/run_0/rf_group_importance.csv`
- Counterfactual: `/root/exp/RFunipassLab/results/interpretability/20260503_230021_786396_baseline_rf_explain_validation_preload/run_0/rf_counterfactual.csv`
