# RFunipassLab Summary

- Generated at: `2026-05-05T08:04:49`
- Row policy: `all-runs`
- Total rows: `10`

## Best Result by Validation Objective

- Best experiment: `feature_lite` (group=`feature_ablation`, objective=`instrcount/oz`, seed=`464`, split_seed=`464`, loop=`wrap`, validation_obj=`0.6683`, test_obj=`0.7819`)

## Top 10

| Rank | Name | Group | Seed | Split | Baseline | Loop | Val Obj | Test Obj | Train Obj | Len | Runtime(s) | Exit |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | feature_lite | feature_ablation | 464 | 464 | oz | wrap | 0.6683 | 0.7819 | 0.7163 | 18 | 1246.30 | 0 |
| 2 | feature_lite | feature_ablation | 462 | 462 | oz | wrap | 0.7036 | 0.6847 | 0.6634 | 22 | 3159.38 | 0 |
| 3 | feature_lite | feature_ablation | 458 | 458 | oz | wrap | 0.7048 | 0.8122 | 0.7044 | 18 | 2738.34 | 0 |
| 4 | feature_lite | feature_ablation | 463 | 463 | oz | wrap | 0.7096 | 0.7523 | 0.7183 | 17 | 1232.13 | 0 |
| 5 | feature_lite | feature_ablation | 459 | 459 | oz | wrap | 0.7349 | 0.8333 | 0.8202 | 11 | 1079.02 | 0 |
| 6 | feature_lite | feature_ablation | 460 | 460 | oz | wrap | 0.7418 | 0.7330 | 0.7346 | 16 | 1812.41 | 0 |
| 7 | feature_lite | feature_ablation | 465 | 465 | oz | wrap | 0.7590 | 0.7551 | 0.7950 | 9 | 1418.82 | 0 |
| 8 | feature_lite | feature_ablation | 456 | 456 | oz | wrap | 0.7677 | 0.7693 | 0.7644 | 15 | 2779.78 | 0 |
| 9 | feature_lite | feature_ablation | 461 | 461 | oz | wrap | 0.7716 | 0.8653 | 0.7633 | 11 | 1244.89 | 0 |
| 10 | feature_lite | feature_ablation | 457 | 457 | oz | wrap | 0.7903 | 0.7945 | 0.8160 | 15 | 4315.65 | 0 |

## All Rows

| Name | Group | Seed | Split | SelSplit | SearchN | ValN | TestN | Loop | Backend | Baseline | Val Obj | Test Obj | Train Obj | Val Worse | Test Worse | Len | Runtime(s) | Log |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| feature_lite | feature_ablation | 464 | 464 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.6683 | 0.7819 | 0.7163 | 0.0800 | 0.1000 | 18 | 1246.30 | /root/exp/RFunipassLab/results/logs/20260505_072024_540076_feature_lite_seed464.log |
| feature_lite | feature_ablation | 462 | 462 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.7036 | 0.6847 | 0.6634 | 0.0900 | 0.0800 | 22 | 3159.38 | /root/exp/RFunipassLab/results/logs/20260505_060712_941720_feature_lite_seed462.log |
| feature_lite | feature_ablation | 458 | 458 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.7048 | 0.8122 | 0.7044 | 0.0600 | 0.1800 | 18 | 2738.34 | /root/exp/RFunipassLab/results/logs/20260505_041238_090656_feature_lite_seed458.log |
| feature_lite | feature_ablation | 463 | 463 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.7096 | 0.7523 | 0.7183 | 0.0500 | 0.0400 | 17 | 1232.13 | /root/exp/RFunipassLab/results/logs/20260505_065952_368025_feature_lite_seed463.log |
| feature_lite | feature_ablation | 459 | 459 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.7349 | 0.8333 | 0.8202 | 0.0900 | 0.1200 | 11 | 1079.02 | /root/exp/RFunipassLab/results/logs/20260505_045816_489909_feature_lite_seed459.log |
| feature_lite | feature_ablation | 460 | 460 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.7418 | 0.7330 | 0.7346 | 0.0500 | 0.0600 | 16 | 1812.41 | /root/exp/RFunipassLab/results/logs/20260505_051615_556780_feature_lite_seed460.log |
| feature_lite | feature_ablation | 465 | 465 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.7590 | 0.7551 | 0.7950 | 0.0900 | 0.0200 | 9 | 1418.82 | /root/exp/RFunipassLab/results/logs/20260505_074110_879129_feature_lite_seed465.log |
| feature_lite | feature_ablation | 456 | 456 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.7677 | 0.7693 | 0.7644 | 0.0900 | 0.1600 | 15 | 2779.78 | /root/exp/RFunipassLab/results/logs/20260505_021422_538513_feature_lite_seed456.log |
| feature_lite | feature_ablation | 461 | 461 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.7716 | 0.8653 | 0.7633 | 0.0500 | 0.1200 | 11 | 1244.89 | /root/exp/RFunipassLab/results/logs/20260505_054628_012709_feature_lite_seed461.log |
| feature_lite | feature_ablation | 457 | 457 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.7903 | 0.7945 | 0.8160 | 0.1600 | 0.1000 | 15 | 4315.65 | /root/exp/RFunipassLab/results/logs/20260505_030042_375448_feature_lite_seed457.log |
