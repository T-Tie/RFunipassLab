# OBJ_WORSEN_W Sensitivity Report

Generated at: 2026-05-09

## 1. Experiment Scope

This report analyzes the `OBJ_WORSEN_W` sensitivity sweep for RFunipassLab.

Experiment setting:

- Objective kind: `instrcount`
- Baseline: `oz`
- Feature mode: `lite`
- Loop nesting policy: `wrap`
- Backend opt level: `-O0`
- Search iterations: `100`
- Seeds: `456, 457, 458, 459, 460`
- Programs per run: `search_train=100`, `validation=100`, `test=50`
- High variance penalty: `OBJ_HIGHVAR_W=0.0`
- Worsen weights tested: `0.00, 0.05, 0.10, 0.15, 0.20, 0.30, 0.50`

Data sources:

- `results/reports/20260507_193449_981124_feature_lite_multiseed_objw_000.csv`
- `results/reports/20260507_223903_628026_feature_lite_multiseed_objw_005.csv`
- `results/reports/20260508_004922_696368_feature_lite_multiseed_objw_010.csv`
- `results/reports/20260508_044906_219900_feature_lite_multiseed_objw_015.csv`
- `results/reports/20260508_084041_837558_feature_lite_multiseed_objw_020.csv`
- `results/reports/20260508_113439_458854_feature_lite_multiseed_objw_030.csv`
- `results/reports/20260508_145253_617927_feature_lite_multiseed_objw_050.csv`

All seven multi-seed batches completed successfully with `5/5` seeds and `failed_run_ids=0`.

## 2. How to Read the Metrics

The tuned objective is:

```text
objective = mean_norm + OBJ_WORSEN_W * worsen_rate
```

Therefore, `validation_obj` and `test_obj` are not directly comparable across different `OBJ_WORSEN_W` values because the scalarization itself changes. For cross-weight analysis, the more reliable metrics are:

- `mean_norm`: normalized IR instruction count, lower is better.
- `worsen_rate`: fraction of programs worse than the baseline, lower is better.

In this report, the main comparison uses `validation_mean`, `test_mean`, `validation_worsen_rate`, and `test_worsen_rate`.

Confidence intervals are 95% t-intervals over 5 seeds. With only 5 seeds, intervals are wide, so the results should be treated as directional evidence rather than final statistical proof.

## 3. Aggregate Results

| OBJ_WORSEN_W | Val mean_norm | Val worsen | Test mean_norm | Test worsen | Len | Runtime(s) |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0.00 | 0.7375 +/- 0.0560 | 9.00% +/- 6.02% | 0.7703 +/- 0.0469 | 10.80% +/- 4.51% | 14.8 +/- 4.2 | 2210.4 |
| 0.05 | 0.7614 +/- 0.0423 | 9.40% +/- 4.35% | 0.7823 +/- 0.0881 | 10.80% +/- 5.15% | 14.0 +/- 2.2 | 1563.5 |
| 0.10 | 0.7207 +/- 0.0458 | 8.80% +/- 4.84% | 0.7498 +/- 0.0371 | 10.80% +/- 6.47% | 17.4 +/- 4.5 | 2876.4 |
| 0.15 | 0.7280 +/- 0.0684 | 9.00% +/- 5.48% | 0.7561 +/- 0.0463 | 10.80% +/- 5.98% | 18.6 +/- 7.2 | 2778.8 |
| 0.20 | 0.7309 +/- 0.0576 | 8.80% +/- 3.77% | 0.7767 +/- 0.0511 | 11.60% +/- 4.78% | 15.2 +/- 3.2 | 2087.2 |
| 0.30 | 0.7322 +/- 0.0426 | 8.80% +/- 5.44% | 0.7522 +/- 0.0707 | 11.20% +/- 6.23% | 18.6 +/- 6.2 | 2378.6 |
| 0.50 | 0.7187 +/- 0.0290 | 8.20% +/- 3.44% | 0.7440 +/- 0.0488 | 9.20% +/- 7.15% | 18.4 +/- 4.6 | 2380.4 |

Main observations:

- `OBJ_WORSEN_W=0.50` gives the best average `test_mean` (`0.7440`) and the lowest average `test_worsen_rate` (`9.20%`).
- `OBJ_WORSEN_W=0.10` is the second-best by average `test_mean` (`0.7498`) and has the most stable paired improvement over `w=0.00`.
- `OBJ_WORSEN_W=0.05` is not useful in this sweep: it worsens average validation and test mean while not reducing test worsen.
- `OBJ_WORSEN_W=0.20` is also not attractive: test mean is worse than `w=0.00`, and test worsen increases to `11.60%`.
- Higher weights tend to produce longer final sequences: `w=0.10/0.15/0.30/0.50` average around `17-19` passes, while `w=0.00/0.05` average around `14-15` passes.

## 4. Paired Comparison Against W=0.00

The following table compares each weight against `OBJ_WORSEN_W=0.00` using the same seed. Negative deltas are better for mean and worsen.

| OBJ_WORSEN_W | Delta Val mean | Delta Test mean | Delta Val worsen | Delta Test worsen | Test mean wins | Test worsen wins |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0.05 | +0.0238 +/- 0.0366 | +0.0120 +/- 0.0453 | +0.40pp +/- 1.88pp | +0.00pp +/- 2.48pp | 1/5 | 2/5 |
| 0.10 | -0.0168 +/- 0.0127 | -0.0206 +/- 0.0236 | -0.20pp +/- 1.62pp | -0.00pp +/- 2.48pp | 5/5 | 2/5 |
| 0.15 | -0.0095 +/- 0.0286 | -0.0142 +/- 0.0161 | -0.00pp +/- 0.88pp | -0.00pp +/- 1.76pp | 5/5 | 1/5 |
| 0.20 | -0.0066 +/- 0.0386 | +0.0063 +/- 0.0287 | -0.20pp +/- 2.83pp | +0.80pp +/- 1.36pp | 3/5 | 0/5 |
| 0.30 | -0.0053 +/- 0.0318 | -0.0181 +/- 0.0369 | -0.20pp +/- 1.62pp | +0.40pp +/- 2.08pp | 3/5 | 1/5 |
| 0.50 | -0.0188 +/- 0.0460 | -0.0264 +/- 0.0432 | -0.80pp +/- 3.44pp | -1.60pp +/- 3.24pp | 5/5 | 3/5 |

Main observations:

- `w=0.10` and `w=0.15` improve `test_mean` over `w=0.00` on all 5 seeds, but they do not reduce average test worsen.
- `w=0.50` improves `test_mean` over `w=0.00` on all 5 seeds and reduces test worsen on 3/5 seeds.
- The confidence intervals for test metrics still overlap zero, especially for `w=0.50`, so a 10-seed or larger sweep is needed before making a strong statistical claim.

## 5. Per-Seed Best Weights

| Seed | Best W by test mean | Test mean | Test worsen | Val mean | Len | Best W by test worsen | Test worse | Test mean at that W |
| ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: |
| 456 | 0.30 | 0.6829 | 14.0% | 0.7368 | 27 | 0.30 | 14.0% | 0.6829 |
| 457 | 0.50 | 0.7039 | 8.0% | 0.7197 | 23 | 0.50 | 8.0% | 0.7039 |
| 458 | 0.15 | 0.7630 | 16.0% | 0.6635 | 28 | 0.05 | 12.0% | 0.8116 |
| 459 | 0.10 | 0.7750 | 8.0% | 0.6951 | 19 | 0.50 | 6.0% | 0.7829 |
| 460 | 0.05 | 0.6628 | 4.0% | 0.7169 | 15 | 0.50 | 2.0% | 0.7072 |

This shows that the optimal weight is seed-dependent:

- `w=0.50` is the best by test mean on seed 457 and best by test worsen on seeds 457, 459, and 460.
- Seed 458 exposes a real tradeoff: `w=0.15` gives the best test mean, but `w=0.05` gives lower test worsen at a much worse test mean.
- Seed 456 remains high-worsen across all weights, suggesting that some splits contain programs where the current pass vocabulary/search budget cannot easily avoid regressions.

## 6. Interpretation

The worsen penalty is useful, but only when it is strong enough.

Small weight `0.05` perturbs the search without providing enough pressure to reduce regressions. It gives worse average test mean than `w=0.00` and does not improve test worsen.

Moderate weights `0.10` and `0.15` improve average instruction-count reduction while keeping worsen roughly unchanged. These are good conservative settings if the paper wants to preserve the primary objective as mean instruction count and treat worsen as a secondary safety signal.

Large weight `0.50` is the most promising robustness setting in this 5-seed sweep. It has:

- Best average validation mean.
- Best average validation worsen.
- Best average test mean.
- Best average test worsen.
- Paired test-mean improvement over `w=0.00` on all 5 seeds.
- Paired test-worsen improvement over `w=0.00` on 3/5 seeds.

However, the improvement is not yet statistically decisive because the seed count is small and confidence intervals are wide.

## 7. Recommendation

For the next formal experiment:

1. Use `OBJ_WORSEN_W=0.50` as the main robustness candidate.
2. Keep `OBJ_WORSEN_W=0.10` as a conservative alternative because it improves test mean on all 5 seeds with a smaller penalty.
3. Drop `OBJ_WORSEN_W=0.05` and `OBJ_WORSEN_W=0.20` from the main paper unless they are needed for curve completeness.
4. Re-run at least 10 seeds for `w=0.00`, `w=0.10`, and `w=0.50`.
5. Evaluate the selected sequences on external datasets, especially `polybench_full`, because the current sweep only uses POJ-style internal test splits.

For paper writing:

- Do not claim that increasing `OBJ_WORSEN_W` monotonically reduces worsen rate. The curve is non-monotonic.
- Claim instead that adding a sufficiently strong worsen penalty can improve the robustness/mean tradeoff, with `w=0.50` being the best candidate in the current sweep.
- Present `mean_norm` and `worsen_rate` separately. Avoid using `objective` alone in the ablation table, because objective values are not directly comparable across different weights.

## 8. Limitations

- Only 5 seeds were used in this sweep.
- Test set size is 50 programs per seed, so per-seed test worsen has coarse granularity.
- The sweep was performed on internal POJ splits only; external generalization is not covered here.
- `OBJ_HIGHVAR_W=0.0`, so this experiment does not measure interaction between worsen penalty and variance penalty.
- The current pass vocabulary and search budget may impose a lower bound on achievable worsen rate; increasing `OBJ_WORSEN_W` alone cannot remove all regressions.

