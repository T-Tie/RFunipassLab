# RFunipassLab Summary

- Generated at: `2026-05-10T18:30:18`
- Row policy: `all-runs`
- Total rows: `3`

## Best Result by Validation Objective

- Best experiment: `feature_lite` (group=`feature_ablation`, objective=`instrcount/oz`, seed=`458`, split_seed=`458`, loop=`wrap`, validation_obj=`0.7554`, test_obj=`0.9363`)

## Top 10

| Rank | Name | Group | Seed | Split | Baseline | Loop | Val Obj | Test Obj | Train Obj | Len | Runtime(s) | Exit |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | feature_lite | feature_ablation | 458 | 458 | oz | wrap | 0.7554 | 0.9363 | 0.7909 | 15 | 964.30 | 0 |
| 2 | feature_lite | feature_ablation | 457 | 457 | oz | wrap | 0.8295 | 0.7766 | 0.8142 | 13 | 2407.43 | 0 |
| 3 | feature_lite | feature_ablation | 456 | 456 | oz | wrap | 0.8513 | 0.8733 | 0.8111 | 21 | 2209.21 | 0 |

## All Rows

| Name | Group | Seed | Split | SelSplit | SearchN | ValN | TestN | Loop | Backend | Baseline | Val Obj | Test Obj | Train Obj | Val Worse | Test Worse | Len | Runtime(s) | Log |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| feature_lite | feature_ablation | 458 | 458 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.7554 | 0.9363 | 0.7909 | 0.0600 | 0.1800 | 15 | 964.30 | /root/exp/RFunipassLab/results/logs/20260510_181414_425950_feature_lite_seed458.log |
| feature_lite | feature_ablation | 457 | 457 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.8295 | 0.7766 | 0.8142 | 0.1200 | 0.0800 | 13 | 2407.43 | /root/exp/RFunipassLab/results/logs/20260510_173406_941469_feature_lite_seed457.log |
| feature_lite | feature_ablation | 456 | 456 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.8513 | 0.8733 | 0.8111 | 0.1000 | 0.1400 | 21 | 2209.21 | /root/exp/RFunipassLab/results/logs/20260510_165717_670185_feature_lite_seed456.log |
