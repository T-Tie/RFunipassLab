# RFunipassLab Summary

- Generated at: `2026-05-07T22:39:02`
- Row policy: `all-runs`
- Total rows: `5`

## Best Result by Validation Objective

- Best experiment: `feature_lite` (group=`feature_ablation`, objective=`instrcount/oz`, seed=`459`, split_seed=`459`, loop=`wrap`, validation_obj=`0.6964`, test_obj=`0.7981`)

## Top 10

| Rank | Name | Group | Seed | Split | Baseline | Loop | Val Obj | Test Obj | Train Obj | Len | Runtime(s) | Exit |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | feature_lite | feature_ablation | 459 | 459 | oz | wrap | 0.6964 | 0.7981 | 0.8189 | 18 | 3537.54 | 0 |
| 2 | feature_lite | feature_ablation | 458 | 458 | oz | wrap | 0.6994 | 0.7970 | 0.7462 | 14 | 1577.30 | 0 |
| 3 | feature_lite | feature_ablation | 460 | 460 | oz | wrap | 0.7274 | 0.7117 | 0.7045 | 14 | 1128.36 | 0 |
| 4 | feature_lite | feature_ablation | 456 | 456 | oz | wrap | 0.7609 | 0.7526 | 0.7565 | 18 | 2754.19 | 0 |
| 5 | feature_lite | feature_ablation | 457 | 457 | oz | wrap | 0.8035 | 0.7921 | 0.7997 | 10 | 2054.79 | 0 |

## All Rows

| Name | Group | Seed | Split | SelSplit | SearchN | ValN | TestN | Loop | Backend | Baseline | Val Obj | Test Obj | Train Obj | Val Worse | Test Worse | Len | Runtime(s) | Log |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| feature_lite | feature_ablation | 459 | 459 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.6964 | 0.7981 | 0.8189 | 0.0900 | 0.0800 | 18 | 3537.54 | /root/exp/RFunipassLab/results/logs/20260507_212116_456941_feature_lite_seed459.log |
| feature_lite | feature_ablation | 458 | 458 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.6994 | 0.7970 | 0.7462 | 0.0700 | 0.1400 | 14 | 1577.30 | /root/exp/RFunipassLab/results/logs/20260507_205459_116127_feature_lite_seed458.log |
| feature_lite | feature_ablation | 460 | 460 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.7274 | 0.7117 | 0.7045 | 0.0400 | 0.0600 | 14 | 1128.36 | /root/exp/RFunipassLab/results/logs/20260507_222014_087837_feature_lite_seed460.log |
| feature_lite | feature_ablation | 456 | 456 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.7609 | 0.7526 | 0.7565 | 0.0800 | 0.1400 | 18 | 2754.19 | /root/exp/RFunipassLab/results/logs/20260507_193449_981418_feature_lite_seed456.log |
| feature_lite | feature_ablation | 457 | 457 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.8035 | 0.7921 | 0.7997 | 0.1700 | 0.1200 | 10 | 2054.79 | /root/exp/RFunipassLab/results/logs/20260507_202044_265072_feature_lite_seed457.log |
