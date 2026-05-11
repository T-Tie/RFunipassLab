# RFunipassLab Summary

- Generated at: `2026-05-08T18:11:15`
- Row policy: `all-runs`
- Total rows: `5`

## Best Result by Validation Objective

- Best experiment: `feature_lite` (group=`feature_ablation`, objective=`instrcount/oz`, seed=`458`, split_seed=`458`, loop=`wrap`, validation_obj=`0.7153`, test_obj=`0.8552`)

## Top 10

| Rank | Name | Group | Seed | Split | Baseline | Loop | Val Obj | Test Obj | Train Obj | Len | Runtime(s) | Exit |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | feature_lite | feature_ablation | 458 | 458 | oz | wrap | 0.7153 | 0.8552 | 0.7193 | 19 | 2205.69 | 0 |
| 2 | feature_lite | feature_ablation | 459 | 459 | oz | wrap | 0.7492 | 0.8129 | 0.8380 | 17 | 1374.42 | 0 |
| 3 | feature_lite | feature_ablation | 460 | 460 | oz | wrap | 0.7580 | 0.7172 | 0.7616 | 13 | 1039.60 | 0 |
| 4 | feature_lite | feature_ablation | 457 | 457 | oz | wrap | 0.7797 | 0.7439 | 0.7843 | 23 | 5210.94 | 0 |
| 5 | feature_lite | feature_ablation | 456 | 456 | oz | wrap | 0.7965 | 0.8205 | 0.7917 | 20 | 2071.41 | 0 |

## All Rows

| Name | Group | Seed | Split | SelSplit | SearchN | ValN | TestN | Loop | Backend | Baseline | Val Obj | Test Obj | Train Obj | Val Worse | Test Worse | Len | Runtime(s) | Log |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| feature_lite | feature_ablation | 458 | 458 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.7153 | 0.8552 | 0.7193 | 0.0500 | 0.1400 | 19 | 2205.69 | /root/exp/RFunipassLab/results/logs/20260508_165416_083723_feature_lite_seed458.log |
| feature_lite | feature_ablation | 459 | 459 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.7492 | 0.8129 | 0.8380 | 0.0900 | 0.0600 | 17 | 1374.42 | /root/exp/RFunipassLab/results/logs/20260508_173101_829701_feature_lite_seed459.log |
| feature_lite | feature_ablation | 460 | 460 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.7580 | 0.7172 | 0.7616 | 0.0600 | 0.0200 | 13 | 1039.60 | /root/exp/RFunipassLab/results/logs/20260508_175356_290917_feature_lite_seed460.log |
| feature_lite | feature_ablation | 457 | 457 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.7797 | 0.7439 | 0.7843 | 0.1200 | 0.0800 | 23 | 5210.94 | /root/exp/RFunipassLab/results/logs/20260508_152725_084539_feature_lite_seed457.log |
| feature_lite | feature_ablation | 456 | 456 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.7965 | 0.8205 | 0.7917 | 0.0900 | 0.1600 | 20 | 2071.41 | /root/exp/RFunipassLab/results/logs/20260508_145253_618219_feature_lite_seed456.log |
