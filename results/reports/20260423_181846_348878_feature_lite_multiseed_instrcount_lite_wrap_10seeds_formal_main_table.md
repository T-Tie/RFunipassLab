# Formal Main Table: instrcount lite, LOOP_NESTING_POLICY=wrap, 10 seeds

- Generated at: `2026-04-23T23:43:51`
- Batch id: `20260423_181846_348878_feature_lite_multiseed_instrcount_lite_wrap_10seeds`
- Batch manifest: `results/manifests/20260423_181846_348878_feature_lite_multiseed_instrcount_lite_wrap_10seeds.json`
- Source report: `results/reports/20260423_181846_348878_feature_lite_multiseed_instrcount_lite_wrap_10seeds.csv`
- Objective: `instrcount`, baseline: `oz`, feature mode: `lite`, loop policy: `wrap`, backend opt level: `-O0`
- Seeds: `[456, 457, 458, 459, 460, 461, 462, 463, 464, 465]`; split seeds are identical to experiment seeds
- Status: `10/10` completed, failed_run_ids=`[]`

## Aggregate Results

| Metric | Mean ± Std | Median | Best | Worst |
| --- | ---: | ---: | ---: | ---: |
| Validation objective | 0.7611 ± 0.0466 | 0.7545 | 0.6710 | 0.8300 |
| Validation mean_norm | 0.7482 ± 0.0417 | 0.7433 | 0.6635 | 0.8135 |
| Test objective | 0.7878 ± 0.0625 | 0.7843 | 0.7132 | 0.8808 |
| Test mean_norm | 0.7737 ± 0.0563 | 0.7693 | 0.7102 | 0.8598 |
| Test worsen rate | 9.40% ± 5.58% | 9.00% | 2.00% | 18.00% |
| Final sequence length | 14.80 ± 4.29 | 14.50 | 8.00 | 22.00 |
| Runtime seconds | 1942.68 ± 907.85 | 1669.28 | 912.44 | 3635.99 |

## Paper-Facing Main Table

| Seed | Rank | Val Obj ↓ | Val Mean | Val Improve vs Oz | Test Obj ↓ | Test Mean | Test Improve vs Oz | Test Worse | Len | Runtime(s) |
| ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: |
| 456 | 10 | 0.8300 | 0.8135 | 18.65% | 0.8170 | 0.7930 | 20.70% | 16.00% | 11 | 1764.74 |
| 457 | 9 | 0.8134 | 0.7879 | 21.21% | 0.7517 | 0.7397 | 26.03% | 8.00% | 15 | 2715.27 |
| 458 | 4 | 0.7432 | 0.7327 | 26.73% | 0.8222 | 0.7952 | 20.48% | 18.00% | 20 | 3635.99 |
| 459 | 7 | 0.7846 | 0.7681 | 23.19% | 0.8470 | 0.8290 | 17.10% | 12.00% | 11 | 972.14 |
| 460 | 2 | 0.7295 | 0.7235 | 27.65% | 0.7257 | 0.7167 | 28.33% | 6.00% | 15 | 1573.83 |
| 461 | 3 | 0.7353 | 0.7293 | 27.07% | 0.8808 | 0.8598 | 14.02% | 14.00% | 18 | 1484.74 |
| 462 | 5 | 0.7448 | 0.7358 | 26.42% | 0.7195 | 0.7105 | 28.95% | 6.00% | 14 | 1959.84 |
| 463 | 1 | 0.6710 | 0.6635 | 33.65% | 0.7132 | 0.7102 | 28.98% | 2.00% | 22 | 3051.24 |
| 464 | 8 | 0.7952 | 0.7772 | 22.28% | 0.8518 | 0.8368 | 16.32% | 10.00% | 8 | 912.44 |
| 465 | 6 | 0.7642 | 0.7507 | 24.93% | 0.7487 | 0.7457 | 25.43% | 2.00% | 14 | 1356.55 |

## Best Seed

- Best by validation objective: seed `463` / run `20260423_221353_240005_feature_lite_seed463`
- Validation objective: `0.6710`; validation mean_norm: `0.6635`; validation improve vs Oz: `33.65%`
- Test objective: `0.7132`; test mean_norm: `0.7102`; test improve vs Oz: `28.98%`
- Final sequence length: `22`
- Log: `/root/exp/RFunipassLab/results/logs/20260423_221353_240005_feature_lite_seed463.log`
- Manifest: `/root/exp/RFunipassLab/results/manifests/20260423_221353_240005_feature_lite_seed463.json`

## Notes

- `objective` is the multi-objective score used by the tuner; `mean_norm` is the normalized instruction count versus `-Oz`.
- Lower is better for objective and mean_norm. `Improve vs Oz = 1 - mean_norm`.
- `Test` is not used for selection; it is reported as held-out performance for each seed.
