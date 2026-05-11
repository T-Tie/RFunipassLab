# RFunipassLab Summary

- Generated at: `2026-05-10T16:57:16`
- Row policy: `all-runs`
- Total rows: `3`

## Best Result by Validation Objective

- Best experiment: `feature_lite` (group=`feature_ablation`, objective=`instrcount/oz`, seed=`458`, split_seed=`458`, loop=`wrap`, validation_obj=`0.7974`, test_obj=`0.9507`)

## Top 10

| Rank | Name | Group | Seed | Split | Baseline | Loop | Val Obj | Test Obj | Train Obj | Len | Runtime(s) | Exit |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | feature_lite | feature_ablation | 458 | 458 | oz | wrap | 0.7974 | 0.9507 | 0.7882 | 10 | 914.78 | 0 |
| 2 | feature_lite | feature_ablation | 457 | 457 | oz | wrap | 0.8026 | 0.7789 | 0.8015 | 18 | 6216.26 | 0 |
| 3 | feature_lite | feature_ablation | 456 | 456 | oz | wrap | 0.8159 | 0.8289 | 0.8055 | 16 | 2277.26 | 0 |

## All Rows

| Name | Group | Seed | Split | SelSplit | SearchN | ValN | TestN | Loop | Backend | Baseline | Val Obj | Test Obj | Train Obj | Val Worse | Test Worse | Len | Runtime(s) | Log |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| feature_lite | feature_ablation | 458 | 458 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.7974 | 0.9507 | 0.7882 | 0.0900 | 0.1600 | 10 | 914.78 | /root/exp/RFunipassLab/results/logs/20260510_164201_491950_feature_lite_seed458.log |
| feature_lite | feature_ablation | 457 | 457 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.8026 | 0.7789 | 0.8015 | 0.1200 | 0.1000 | 18 | 6216.26 | /root/exp/RFunipassLab/results/logs/20260510_145825_170219_feature_lite_seed457.log |
| feature_lite | feature_ablation | 456 | 456 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.8159 | 0.8289 | 0.8055 | 0.0900 | 0.1400 | 16 | 2277.26 | /root/exp/RFunipassLab/results/logs/20260510_142027_843602_feature_lite_seed456.log |
