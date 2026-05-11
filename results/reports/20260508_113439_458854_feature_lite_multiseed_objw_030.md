# RFunipassLab Summary

- Generated at: `2026-05-08T14:52:52`
- Row policy: `all-runs`
- Total rows: `5`

## Best Result by Validation Objective

- Best experiment: `feature_lite` (group=`feature_ablation`, objective=`instrcount/oz`, seed=`460`, split_seed=`460`, loop=`wrap`, validation_obj=`0.7138`, test_obj=`0.7096`)

## Top 10

| Rank | Name | Group | Seed | Split | Baseline | Loop | Val Obj | Test Obj | Train Obj | Len | Runtime(s) | Exit |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | feature_lite | feature_ablation | 460 | 460 | oz | wrap | 0.7138 | 0.7096 | 0.7085 | 19 | 1379.53 | 0 |
| 2 | feature_lite | feature_ablation | 459 | 459 | oz | wrap | 0.7285 | 0.8125 | 0.8241 | 14 | 1430.74 | 0 |
| 3 | feature_lite | feature_ablation | 458 | 458 | oz | wrap | 0.7568 | 0.8465 | 0.7335 | 16 | 1474.19 | 0 |
| 4 | feature_lite | feature_ablation | 456 | 456 | oz | wrap | 0.7638 | 0.7249 | 0.7551 | 27 | 4252.74 | 0 |
| 5 | feature_lite | feature_ablation | 457 | 457 | oz | wrap | 0.8300 | 0.8357 | 0.8166 | 17 | 3355.55 | 0 |

## All Rows

| Name | Group | Seed | Split | SelSplit | SearchN | ValN | TestN | Loop | Backend | Baseline | Val Obj | Test Obj | Train Obj | Val Worse | Test Worse | Len | Runtime(s) | Log |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| feature_lite | feature_ablation | 460 | 460 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.7138 | 0.7096 | 0.7085 | 0.0300 | 0.0400 | 19 | 1379.53 | /root/exp/RFunipassLab/results/logs/20260508_142952_889629_feature_lite_seed460.log |
| feature_lite | feature_ablation | 459 | 459 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.7285 | 0.8125 | 0.8241 | 0.1000 | 0.0800 | 14 | 1430.74 | /root/exp/RFunipassLab/results/logs/20260508_140602_102606_feature_lite_seed459.log |
| feature_lite | feature_ablation | 458 | 458 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.7568 | 0.8465 | 0.7335 | 0.0700 | 0.1600 | 16 | 1474.19 | /root/exp/RFunipassLab/results/logs/20260508_134127_858741_feature_lite_seed458.log |
| feature_lite | feature_ablation | 456 | 456 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.7638 | 0.7249 | 0.7551 | 0.0900 | 0.1400 | 27 | 4252.74 | /root/exp/RFunipassLab/results/logs/20260508_113439_459141_feature_lite_seed456.log |
| feature_lite | feature_ablation | 457 | 457 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.8300 | 0.8357 | 0.8166 | 0.1500 | 0.1400 | 17 | 3355.55 | /root/exp/RFunipassLab/results/logs/20260508_124532_262734_feature_lite_seed457.log |
