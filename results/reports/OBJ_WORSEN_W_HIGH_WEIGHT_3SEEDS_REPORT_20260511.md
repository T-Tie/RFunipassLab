# OBJ_WORSEN_W High-Weight 3-Seed Report

Generated at: 2026-05-11

## 1. Experiment Scope

This report summarizes the follow-up high-weight sweep for the worsen penalty in RFunipassLab.

Experiment setting:

- Objective kind: `instrcount`
- Baseline: `oz`
- Feature mode: `lite`
- Loop nesting policy: `wrap`
- Backend opt level: `-O0`
- Search iterations: `100`
- Seeds: `456, 457, 458`
- Programs per run: `search_train=100`, `validation=100`, `test=50`
- High variance penalty: `OBJ_HIGHVAR_W=0.0`
- Worsen weights tested: `0.60, 0.75, 1.00`

Runtime note:

- The successful sweep was launched with `LD_PRELOAD=/usr/lib/x86_64-linux-gnu/libstdc++.so.6` to avoid the conda `libstdc++` `GLIBCXX_3.4.30` mismatch when loading `libAutophase_21_1_8.so`.
- The earlier failed batch `20260510_141734_083605_feature_lite_multiseed_objw_060_3seeds` is excluded because all three runs exited before objective evaluation.

Data sources:

- `results/reports/20260510_142027_843333_feature_lite_multiseed_objw_060_3seeds.csv`
- `results/reports/20260510_165717_669915_feature_lite_multiseed_objw_075_3seeds.csv`
- `results/reports/20260510_183020_137229_feature_lite_multiseed_objw_100_3seeds.csv`
- Sweep log: `results/logs/objw_high_3seeds_sweep_20260510_142026.log`

All three batches completed successfully with `3/3` seeds and `exit=0`.

## 2. Metric Interpretation

The tuned objective is:

```text
objective = mean_norm + OBJ_WORSEN_W * worsen_rate
```

Because the scalarization changes with `OBJ_WORSEN_W`, `validation_obj` and `test_obj` are not directly comparable across different weights. Cross-weight conclusions should primarily use:

- `mean_norm`: normalized IR instruction count, lower is better.
- `worsen_rate`: fraction of programs worse than the `-Oz` baseline, lower is better.

The confidence intervals below are 95% t-intervals over only 3 seeds, so they are descriptive rather than statistically decisive.

## 3. Aggregate Results

| OBJ_WORSEN_W | Val mean_norm | Val worsen | Test mean_norm | Test worsen | Len | Runtime(s) |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| 0.60 | 0.7453 +/- 0.0391 | 10.00% +/- 4.30% | 0.7728 +/- 0.1790 | 13.33% +/- 7.59% | 14.7 +/- 10.3 | 3136.1 |
| 0.75 | 0.7421 +/- 0.0820 | 9.33% +/- 7.59% | 0.7621 +/- 0.1061 | 13.33% +/- 12.50% | 16.3 +/- 10.3 | 1860.3 |
| 1.00 | 0.7658 +/- 0.0382 | 10.00% +/- 11.38% | 0.7953 +/- 0.0620 | 14.00% +/- 4.97% | 14.7 +/- 9.4 | 2168.0 |

Main observations:

- `OBJ_WORSEN_W=0.75` has the lowest average validation mean and test mean among these three high-weight settings, but it does not reduce average test worsen relative to `0.60`.
- `OBJ_WORSEN_W=1.00` is worse on average test mean and test worsen, indicating that an overly strong worsen penalty can degrade generalization.
- The results are non-monotonic: increasing the penalty from `0.60` to `0.75` slightly improves average mean, but increasing it further to `1.00` hurts.

## 4. Per-Seed Results

| OBJ_WORSEN_W | Seed | Val mean | Val worsen | Test mean | Test worsen | Len | Runtime(s) |
| --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: |
| 0.60 | 456 | 0.7619 | 9.00% | 0.7449 | 14.00% | 16 | 2277.3 |
| 0.60 | 457 | 0.7306 | 12.00% | 0.7189 | 10.00% | 18 | 6216.3 |
| 0.60 | 458 | 0.7434 | 9.00% | 0.8547 | 16.00% | 10 | 914.8 |
| 0.75 | 456 | 0.7763 | 10.00% | 0.7683 | 14.00% | 21 | 2209.2 |
| 0.75 | 457 | 0.7395 | 12.00% | 0.7166 | 8.00% | 13 | 2407.4 |
| 0.75 | 458 | 0.7104 | 6.00% | 0.8013 | 18.00% | 15 | 964.3 |
| 1.00 | 456 | 0.7700 | 9.00% | 0.7806 | 14.00% | 19 | 2581.2 |
| 1.00 | 457 | 0.7786 | 15.00% | 0.7813 | 12.00% | 12 | 2367.1 |
| 1.00 | 458 | 0.7488 | 6.00% | 0.8242 | 16.00% | 13 | 1555.8 |

Per-seed best by test mean:

| Seed | Best W | Test mean | Test worsen |
| ---: | ---: | ---: | ---: |
| 456 | 0.60 | 0.7449 | 14.00% |
| 457 | 0.75 | 0.7166 | 8.00% |
| 458 | 0.75 | 0.8013 | 18.00% |

Per-seed best by test worsen:

| Seed | Best W | Test worsen | Test mean |
| ---: | ---: | ---: | ---: |
| 456 | 0.60 / 0.75 / 1.00 | 14.00% | 0.7449 / 0.7683 / 0.7806 |
| 457 | 0.75 | 8.00% | 0.7166 |
| 458 | 0.60 / 1.00 | 16.00% | 0.8547 / 0.8242 |

## 5. Paired Comparison Against W=0.60

Negative deltas are better for `mean_norm` and `worsen_rate`.

| Compared W | Delta Val mean | Delta Val worsen | Delta Test mean | Delta Test worsen | Delta Len |
| --- | ---: | ---: | ---: | ---: | ---: |
| 0.75 - 0.60 | -0.0033 | -0.67pp | -0.0108 | +0.00pp | +1.7 |
| 1.00 - 0.60 | +0.0205 | +0.00pp | +0.0225 | +0.67pp | +0.0 |

Interpretation:

- `0.75` is slightly better than `0.60` on average `test_mean`, but the margin is small and it does not improve average `test_worsen_rate`.
- `1.00` is worse than `0.60` on both average `test_mean` and average `test_worsen_rate`.
- The high-weight sweep does not support increasing the default worsen penalty beyond the previously tested `0.50` range without more evidence.

## 6. Conclusion

The high-weight sweep provides useful negative evidence. `OBJ_WORSEN_W=0.75` can occasionally improve test mean, especially on seeds 457 and 458, but it does not consistently reduce regressions and increases test worsen on seed 458. `OBJ_WORSEN_W=1.00` is clearly too strong in this setting: it degrades average test mean and does not improve worsen rate.

For paper writing, the safest conclusion is:

- The objective-weight sensitivity is non-monotonic.
- Moderate-to-strong penalties can improve the mean/worsen tradeoff, but overly large penalties hurt generalization.
- The prior `0.50` result remains the most promising robustness candidate from the 5-seed sweep, while `0.60/0.75/1.00` should be reported as follow-up probes showing that larger penalties do not keep improving performance.
- `0.15` remains a defensible conservative default if the paper wants MEANNORM to stay dominant; `0.50` can be discussed as a robustness candidate rather than a strict optimum.
