# RFunipassLab Summary

- Generated at: `2026-05-08T04:49:05`
- Row policy: `all-runs`
- Total rows: `5`

## Best Result by Validation Objective

- Best experiment: `feature_lite` (group=`feature_ablation`, objective=`instrcount/oz`, seed=`458`, split_seed=`458`, loop=`wrap`, validation_obj=`0.6887`, test_obj=`0.7984`)

## Top 10

| Rank | Name | Group | Seed | Split | Baseline | Loop | Val Obj | Test Obj | Train Obj | Len | Runtime(s) | Exit |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | feature_lite | feature_ablation | 458 | 458 | oz | wrap | 0.6887 | 0.7984 | 0.6900 | 15 | 3012.94 | 0 |
| 2 | feature_lite | feature_ablation | 459 | 459 | oz | wrap | 0.7041 | 0.7830 | 0.8241 | 19 | 2972.19 | 0 |
| 3 | feature_lite | feature_ablation | 460 | 460 | oz | wrap | 0.7183 | 0.7120 | 0.7146 | 14 | 1137.90 | 0 |
| 4 | feature_lite | feature_ablation | 456 | 456 | oz | wrap | 0.7461 | 0.7594 | 0.7469 | 23 | 4184.51 | 0 |
| 5 | feature_lite | feature_ablation | 457 | 457 | oz | wrap | 0.7905 | 0.7500 | 0.7783 | 16 | 3074.60 | 0 |

## All Rows

| Name | Group | Seed | Split | SelSplit | SearchN | ValN | TestN | Loop | Backend | Baseline | Val Obj | Test Obj | Train Obj | Val Worse | Test Worse | Len | Runtime(s) | Log |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| feature_lite | feature_ablation | 458 | 458 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.6887 | 0.7984 | 0.6900 | 0.0600 | 0.1600 | 15 | 3012.94 | /root/exp/RFunipassLab/results/logs/20260508_025021_913002_feature_lite_seed458.log |
| feature_lite | feature_ablation | 459 | 459 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.7041 | 0.7830 | 0.8241 | 0.0900 | 0.0800 | 19 | 2972.19 | /root/exp/RFunipassLab/results/logs/20260508_034034_911098_feature_lite_seed459.log |
| feature_lite | feature_ablation | 460 | 460 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.7183 | 0.7120 | 0.7146 | 0.0500 | 0.0400 | 14 | 1137.90 | /root/exp/RFunipassLab/results/logs/20260508_043007_149153_feature_lite_seed460.log |
| feature_lite | feature_ablation | 456 | 456 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.7461 | 0.7594 | 0.7469 | 0.0900 | 0.1600 | 23 | 4184.51 | /root/exp/RFunipassLab/results/logs/20260508_004922_696663_feature_lite_seed456.log |
| feature_lite | feature_ablation | 457 | 457 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.7905 | 0.7500 | 0.7783 | 0.1500 | 0.1000 | 16 | 3074.60 | /root/exp/RFunipassLab/results/logs/20260508_015907_263357_feature_lite_seed457.log |
