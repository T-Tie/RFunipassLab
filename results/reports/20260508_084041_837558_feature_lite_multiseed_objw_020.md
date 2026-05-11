# RFunipassLab Summary

- Generated at: `2026-05-08T11:34:38`
- Row policy: `all-runs`
- Total rows: `5`

## Best Result by Validation Objective

- Best experiment: `feature_lite` (group=`feature_ablation`, objective=`instrcount/oz`, seed=`459`, split_seed=`459`, loop=`wrap`, validation_obj=`0.6921`, test_obj=`0.8102`)

## Top 10

| Rank | Name | Group | Seed | Split | Baseline | Loop | Val Obj | Test Obj | Train Obj | Len | Runtime(s) | Exit |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | feature_lite | feature_ablation | 459 | 459 | oz | wrap | 0.6921 | 0.8102 | 0.8148 | 18 | 1717.60 | 0 |
| 2 | feature_lite | feature_ablation | 458 | 458 | oz | wrap | 0.7201 | 0.8369 | 0.7320 | 16 | 1564.77 | 0 |
| 3 | feature_lite | feature_ablation | 460 | 460 | oz | wrap | 0.7340 | 0.7172 | 0.7346 | 15 | 1273.60 | 0 |
| 4 | feature_lite | feature_ablation | 457 | 457 | oz | wrap | 0.7810 | 0.8057 | 0.8123 | 16 | 3822.27 | 0 |
| 5 | feature_lite | feature_ablation | 456 | 456 | oz | wrap | 0.8153 | 0.8293 | 0.8459 | 11 | 2057.99 | 0 |

## All Rows

| Name | Group | Seed | Split | SelSplit | SearchN | ValN | TestN | Loop | Backend | Baseline | Val Obj | Test Obj | Train Obj | Val Worse | Test Worse | Len | Runtime(s) | Log |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| feature_lite | feature_ablation | 459 | 459 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.6921 | 0.8102 | 0.8148 | 0.0900 | 0.1000 | 18 | 1717.60 | /root/exp/RFunipassLab/results/logs/20260508_104447_021085_feature_lite_seed459.log |
| feature_lite | feature_ablation | 458 | 458 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.7201 | 0.8369 | 0.7320 | 0.0700 | 0.1400 | 16 | 1564.77 | /root/exp/RFunipassLab/results/logs/20260508_101842_198035_feature_lite_seed458.log |
| feature_lite | feature_ablation | 460 | 460 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.7340 | 0.7172 | 0.7346 | 0.0500 | 0.0600 | 15 | 1273.60 | /root/exp/RFunipassLab/results/logs/20260508_111324_670877_feature_lite_seed460.log |
| feature_lite | feature_ablation | 457 | 457 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.7810 | 0.8057 | 0.8123 | 0.1300 | 0.1200 | 16 | 3822.27 | /root/exp/RFunipassLab/results/logs/20260508_091459_877374_feature_lite_seed457.log |
| feature_lite | feature_ablation | 456 | 456 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.8153 | 0.8293 | 0.8459 | 0.1000 | 0.1600 | 11 | 2057.99 | /root/exp/RFunipassLab/results/logs/20260508_084041_837979_feature_lite_seed456.log |
