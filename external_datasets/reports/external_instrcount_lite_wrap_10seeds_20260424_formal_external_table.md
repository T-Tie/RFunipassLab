# Formal External Table: instrcount, LOOP_NESTING_POLICY=wrap, 10 seeds

- Generated at: `2026-04-24T16:32:58`
- Tag: `external_instrcount_lite_wrap_10seeds_20260424`
- Source batch CSV: `results/reports/20260423_181846_348878_feature_lite_multiseed_instrcount_lite_wrap_10seeds.csv`
- Manifest: `/root/exp/RFunipassLab/external_datasets/reports/external_instrcount_lite_wrap_10seeds_20260424_manifest.json`
- Per-seed CSV: `/root/exp/RFunipassLab/external_datasets/reports/external_instrcount_lite_wrap_10seeds_20260424_per_seed.csv`
- By-suite CSV: `/root/exp/RFunipassLab/external_datasets/reports/external_instrcount_lite_wrap_10seeds_20260424_by_suite.csv`
- Mode: `instrcount`, baseline: `oz`, frontend mode: `canonical`
- Seeds: `[456, 457, 458, 459, 460, 461, 462, 463, 464, 465]`

## External Generalization By Suite

| Suite | Programs | Valid | Seeds | Mean Norm ↓ | Improve vs Baseline ↑ | Worsen Rate ↓ | Invalid | Timeout |
| --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: |
| cbench | 10 | 4.60 ± 1.26 | 10 | 0.8628 ± 0.0900 | 13.72% ± 9.00% | 59.00% ± 13.70% | 5.40 ± 1.26 | 5.30 ± 1.25 |
| csmith | 5 | 0.80 ± 0.42 | 10 | 0.4177 ± 0.5744 | 58.23% ± 57.44% | 90.00% ± 10.54% | 4.20 ± 0.42 | 4.20 ± 0.42 |
| polybench | 10 | 10.00 ± 0.00 | 10 | 0.6286 ± 0.1250 | 37.14% ± 12.50% | 24.00% ± 18.97% | 0.00 ± 0.00 | 0.00 ± 0.00 |
| all_external | 25 | 15.40 ± 1.43 | 10 | 0.6874 ± 0.1275 | 31.26% ± 12.75% | 51.20% ± 10.29% | 9.60 ± 1.43 | 9.50 ± 1.43 |

## Best-By-Validation Seed

- Seed: `463` / run `20260423_221353_240005_feature_lite_seed463`
- Source validation objective: `0.6710`
- External all mean_norm: `0.5133`
- External all improve vs baseline: `48.67%`
- External all worsen rate: `44.00%`
- External report JSON: `/root/exp/RFunipassLab/external_datasets/reports/external_instrcount_lite_wrap_10seeds_20260424_seed463.json`

## Per-Seed External Summary

| Seed | Val Rank | Val Obj ↓ | External Mean ↓ | Improve ↑ | Worsen ↓ | Invalid | Timeout | Report |
| ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: | --- |
| 463 | 1 | 0.6710 | 0.5133 | 48.67% | 44.00% | 10 | 10 | /root/exp/RFunipassLab/external_datasets/reports/external_instrcount_lite_wrap_10seeds_20260424_seed463.json |
| 460 | 2 | 0.7295 | 0.6029 | 39.71% | 52.00% | 10 | 10 | /root/exp/RFunipassLab/external_datasets/reports/external_instrcount_lite_wrap_10seeds_20260424_seed460.json |
| 461 | 3 | 0.7353 | 0.9190 | 8.10% | 72.00% | 11 | 11 | /root/exp/RFunipassLab/external_datasets/reports/external_instrcount_lite_wrap_10seeds_20260424_seed461.json |
| 458 | 4 | 0.7432 | 0.6388 | 36.12% | 48.00% | 11 | 11 | /root/exp/RFunipassLab/external_datasets/reports/external_instrcount_lite_wrap_10seeds_20260424_seed458.json |
| 462 | 5 | 0.7448 | 0.5689 | 43.11% | 48.00% | 10 | 9 | /root/exp/RFunipassLab/external_datasets/reports/external_instrcount_lite_wrap_10seeds_20260424_seed462.json |
| 465 | 6 | 0.7642 | 0.6724 | 32.76% | 48.00% | 10 | 10 | /root/exp/RFunipassLab/external_datasets/reports/external_instrcount_lite_wrap_10seeds_20260424_seed465.json |
| 459 | 7 | 0.7846 | 0.8533 | 14.67% | 68.00% | 10 | 10 | /root/exp/RFunipassLab/external_datasets/reports/external_instrcount_lite_wrap_10seeds_20260424_seed459.json |
| 464 | 8 | 0.7952 | 0.7817 | 21.83% | 44.00% | 7 | 7 | /root/exp/RFunipassLab/external_datasets/reports/external_instrcount_lite_wrap_10seeds_20260424_seed464.json |
| 457 | 9 | 0.8134 | 0.6408 | 35.92% | 44.00% | 10 | 10 | /root/exp/RFunipassLab/external_datasets/reports/external_instrcount_lite_wrap_10seeds_20260424_seed457.json |
| 456 | 10 | 0.8300 | 0.6832 | 31.68% | 44.00% | 7 | 7 | /root/exp/RFunipassLab/external_datasets/reports/external_instrcount_lite_wrap_10seeds_20260424_seed456.json |

## Notes

- External datasets are evaluation-only; no external result is used for tuning or seed selection.
- `Mean Norm` is normalized against the selected baseline. Lower is better.
- `Improve vs Baseline = 1 - Mean Norm`. Higher is better.
- Invalid and timeout cases are reported explicitly and are not silently dropped.
