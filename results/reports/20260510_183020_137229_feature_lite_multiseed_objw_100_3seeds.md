# RFunipassLab Summary

- Generated at: `2026-05-10T20:18:44`
- Row policy: `all-runs`
- Total rows: `3`

## Best Result by Validation Objective

- Best experiment: `feature_lite` (group=`feature_ablation`, objective=`instrcount/oz`, seed=`458`, split_seed=`458`, loop=`wrap`, validation_obj=`0.8088`, test_obj=`0.9842`)

## Top 10

| Rank | Name | Group | Seed | Split | Baseline | Loop | Val Obj | Test Obj | Train Obj | Len | Runtime(s) | Exit |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | feature_lite | feature_ablation | 458 | 458 | oz | wrap | 0.8088 | 0.9842 | 0.8227 | 13 | 1555.80 | 0 |
| 2 | feature_lite | feature_ablation | 456 | 456 | oz | wrap | 0.8600 | 0.9206 | 0.8685 | 19 | 2581.20 | 0 |
| 3 | feature_lite | feature_ablation | 457 | 457 | oz | wrap | 0.9286 | 0.9013 | 0.9393 | 12 | 2367.07 | 0 |

## All Rows

| Name | Group | Seed | Split | SelSplit | SearchN | ValN | TestN | Loop | Backend | Baseline | Val Obj | Test Obj | Train Obj | Val Worse | Test Worse | Len | Runtime(s) | Log |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| feature_lite | feature_ablation | 458 | 458 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.8088 | 0.9842 | 0.8227 | 0.0600 | 0.1600 | 13 | 1555.80 | /root/exp/RFunipassLab/results/logs/20260510_195248_525320_feature_lite_seed458.log |
| feature_lite | feature_ablation | 456 | 456 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.8600 | 0.9206 | 0.8685 | 0.0900 | 0.1400 | 19 | 2581.20 | /root/exp/RFunipassLab/results/logs/20260510_183020_137491_feature_lite_seed456.log |
| feature_lite | feature_ablation | 457 | 457 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.9286 | 0.9013 | 0.9393 | 0.1500 | 0.1200 | 12 | 2367.07 | /root/exp/RFunipassLab/results/logs/20260510_191321_401631_feature_lite_seed457.log |
