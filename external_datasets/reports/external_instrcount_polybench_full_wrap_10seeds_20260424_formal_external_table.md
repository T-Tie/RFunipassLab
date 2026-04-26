# Formal External Table: instrcount, LOOP_NESTING_POLICY=wrap, 10 seeds

- Generated at: `2026-04-24T18:35:47`
- Tag: `external_instrcount_polybench_full_wrap_10seeds_20260424`
- Source batch CSV: `results/reports/20260423_181846_348878_feature_lite_multiseed_instrcount_lite_wrap_10seeds.csv`
- Manifest: `/root/exp/RFunipassLab/external_datasets/reports/external_instrcount_polybench_full_wrap_10seeds_20260424_manifest.json`
- Per-seed CSV: `/root/exp/RFunipassLab/external_datasets/reports/external_instrcount_polybench_full_wrap_10seeds_20260424_per_seed.csv`
- By-suite CSV: `/root/exp/RFunipassLab/external_datasets/reports/external_instrcount_polybench_full_wrap_10seeds_20260424_by_suite.csv`
- Mode: `instrcount`, baseline: `oz`, frontend mode: `canonical`
- Seeds: `[456, 457, 458, 459, 460, 461, 462, 463, 464, 465]`

## External Generalization By Suite

| Suite | Programs | Valid | Seeds | Mean Norm ↓ | Improve vs Baseline ↑ | Worsen Rate ↓ | Invalid | Timeout |
| --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: |
| polybench_full | 30 | 30.00 ± 0.00 | 10 | 0.6019 ± 0.1260 | 39.81% ± 12.60% | 19.00% ± 14.49% | 0.00 ± 0.00 | 0.00 ± 0.00 |
| all_external | 30 | 30.00 ± 0.00 | 10 | 0.6019 ± 0.1260 | 39.81% ± 12.60% | 19.00% ± 14.49% | 0.00 ± 0.00 | 0.00 ± 0.00 |

## Best-By-Validation Seed

- Seed: `463` / run `20260423_221353_240005_feature_lite_seed463`
- Source validation objective: `0.6710`
- External all mean_norm: `0.4602`
- External all improve vs baseline: `53.98%`
- External all worsen rate: `6.67%`
- External report JSON: `/root/exp/RFunipassLab/external_datasets/reports/external_instrcount_polybench_full_wrap_10seeds_20260424_seed463.json`

## Per-Seed External Summary

| Seed | Val Rank | Val Obj ↓ | External Mean ↓ | Improve ↑ | Worsen ↓ | Invalid | Timeout | Report |
| ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: | --- |
| 463 | 1 | 0.6710 | 0.4602 | 53.98% | 6.67% | 0 | 0 | /root/exp/RFunipassLab/external_datasets/reports/external_instrcount_polybench_full_wrap_10seeds_20260424_seed463.json |
| 460 | 2 | 0.7295 | 0.5510 | 44.90% | 16.67% | 0 | 0 | /root/exp/RFunipassLab/external_datasets/reports/external_instrcount_polybench_full_wrap_10seeds_20260424_seed460.json |
| 461 | 3 | 0.7353 | 0.7949 | 20.51% | 36.67% | 0 | 0 | /root/exp/RFunipassLab/external_datasets/reports/external_instrcount_polybench_full_wrap_10seeds_20260424_seed461.json |
| 458 | 4 | 0.7432 | 0.5169 | 48.31% | 10.00% | 0 | 0 | /root/exp/RFunipassLab/external_datasets/reports/external_instrcount_polybench_full_wrap_10seeds_20260424_seed458.json |
| 462 | 5 | 0.7448 | 0.5214 | 47.86% | 13.33% | 0 | 0 | /root/exp/RFunipassLab/external_datasets/reports/external_instrcount_polybench_full_wrap_10seeds_20260424_seed462.json |
| 465 | 6 | 0.7642 | 0.6729 | 32.71% | 10.00% | 0 | 0 | /root/exp/RFunipassLab/external_datasets/reports/external_instrcount_polybench_full_wrap_10seeds_20260424_seed465.json |
| 459 | 7 | 0.7846 | 0.7953 | 20.47% | 50.00% | 0 | 0 | /root/exp/RFunipassLab/external_datasets/reports/external_instrcount_polybench_full_wrap_10seeds_20260424_seed459.json |
| 464 | 8 | 0.7952 | 0.6793 | 32.07% | 23.33% | 0 | 0 | /root/exp/RFunipassLab/external_datasets/reports/external_instrcount_polybench_full_wrap_10seeds_20260424_seed464.json |
| 457 | 9 | 0.8134 | 0.4622 | 53.78% | 3.33% | 0 | 0 | /root/exp/RFunipassLab/external_datasets/reports/external_instrcount_polybench_full_wrap_10seeds_20260424_seed457.json |
| 456 | 10 | 0.8300 | 0.5645 | 43.55% | 20.00% | 0 | 0 | /root/exp/RFunipassLab/external_datasets/reports/external_instrcount_polybench_full_wrap_10seeds_20260424_seed456.json |

## Notes

- External datasets are evaluation-only; no external result is used for tuning or seed selection.
- `Mean Norm` is normalized against the selected baseline. Lower is better.
- `Improve vs Baseline = 1 - Mean Norm`. Higher is better.
- Invalid and timeout cases are reported explicitly and are not silently dropped.
