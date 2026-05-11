# RFunipassLab Summary

- Generated at: `2026-05-08T00:49:21`
- Row policy: `all-runs`
- Total rows: `5`

## Best Result by Validation Objective

- Best experiment: `feature_lite` (group=`feature_ablation`, objective=`instrcount/oz`, seed=`460`, split_seed=`460`, loop=`wrap`, validation_obj=`0.7199`, test_obj=`0.6648`)

## Top 10

| Rank | Name | Group | Seed | Split | Baseline | Loop | Val Obj | Test Obj | Train Obj | Len | Runtime(s) | Exit |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | feature_lite | feature_ablation | 460 | 460 | oz | wrap | 0.7199 | 0.6648 | 0.6944 | 15 | 1204.30 | 0 |
| 2 | feature_lite | feature_ablation | 458 | 458 | oz | wrap | 0.7491 | 0.8176 | 0.7336 | 14 | 1184.31 | 0 |
| 3 | feature_lite | feature_ablation | 459 | 459 | oz | wrap | 0.7593 | 0.8518 | 0.8376 | 15 | 1028.24 | 0 |
| 4 | feature_lite | feature_ablation | 456 | 456 | oz | wrap | 0.7922 | 0.7863 | 0.8103 | 15 | 2536.35 | 0 |
| 5 | feature_lite | feature_ablation | 457 | 457 | oz | wrap | 0.8098 | 0.8180 | 0.7969 | 11 | 1864.51 | 0 |

## All Rows

| Name | Group | Seed | Split | SelSplit | SearchN | ValN | TestN | Loop | Backend | Baseline | Val Obj | Test Obj | Train Obj | Val Worse | Test Worse | Len | Runtime(s) | Log |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| feature_lite | feature_ablation | 460 | 460 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.7199 | 0.6648 | 0.6944 | 0.0600 | 0.0400 | 15 | 1204.30 | /root/exp/RFunipassLab/results/logs/20260508_002917_232662_feature_lite_seed460.log |
| feature_lite | feature_ablation | 458 | 458 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.7491 | 0.8176 | 0.7336 | 0.0700 | 0.1200 | 14 | 1184.31 | /root/exp/RFunipassLab/results/logs/20260507_235224_585292_feature_lite_seed458.log |
| feature_lite | feature_ablation | 459 | 459 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.7593 | 0.8518 | 0.8376 | 0.1000 | 0.1000 | 15 | 1028.24 | /root/exp/RFunipassLab/results/logs/20260508_001208_944655_feature_lite_seed459.log |
| feature_lite | feature_ablation | 456 | 456 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.7922 | 0.7863 | 0.8103 | 0.0900 | 0.1400 | 15 | 2536.35 | /root/exp/RFunipassLab/results/logs/20260507_223903_628314_feature_lite_seed456.log |
| feature_lite | feature_ablation | 457 | 457 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.8098 | 0.8180 | 0.7969 | 0.1500 | 0.1400 | 11 | 1864.51 | /root/exp/RFunipassLab/results/logs/20260507_232120_030129_feature_lite_seed457.log |
