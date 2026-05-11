# RFunipassLab Summary

- Generated at: `2026-05-08T08:40:40`
- Row policy: `all-runs`
- Total rows: `5`

## Best Result by Validation Objective

- Best experiment: `feature_lite` (group=`feature_ablation`, objective=`instrcount/oz`, seed=`458`, split_seed=`458`, loop=`wrap`, validation_obj=`0.6740`, test_obj=`0.7870`)

## Top 10

| Rank | Name | Group | Seed | Split | Baseline | Loop | Val Obj | Test Obj | Train Obj | Len | Runtime(s) | Exit |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | feature_lite | feature_ablation | 458 | 458 | oz | wrap | 0.6740 | 0.7870 | 0.6816 | 28 | 3215.57 | 0 |
| 2 | feature_lite | feature_ablation | 459 | 459 | oz | wrap | 0.7122 | 0.7941 | 0.8127 | 18 | 2241.35 | 0 |
| 3 | feature_lite | feature_ablation | 460 | 460 | oz | wrap | 0.7126 | 0.7019 | 0.7018 | 17 | 2724.11 | 0 |
| 4 | feature_lite | feature_ablation | 456 | 456 | oz | wrap | 0.7983 | 0.7703 | 0.7913 | 12 | 1850.66 | 0 |
| 5 | feature_lite | feature_ablation | 457 | 457 | oz | wrap | 0.8106 | 0.8084 | 0.7979 | 18 | 3862.53 | 0 |

## All Rows

| Name | Group | Seed | Split | SelSplit | SearchN | ValN | TestN | Loop | Backend | Baseline | Val Obj | Test Obj | Train Obj | Val Worse | Test Worse | Len | Runtime(s) | Log |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| feature_lite | feature_ablation | 458 | 458 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.6740 | 0.7870 | 0.6816 | 0.0700 | 0.1600 | 28 | 3215.57 | /root/exp/RFunipassLab/results/logs/20260508_062419_524134_feature_lite_seed458.log |
| feature_lite | feature_ablation | 459 | 459 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.7122 | 0.7941 | 0.8127 | 0.0900 | 0.0800 | 18 | 2241.35 | /root/exp/RFunipassLab/results/logs/20260508_071755_151453_feature_lite_seed459.log |
| feature_lite | feature_ablation | 460 | 460 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.7126 | 0.7019 | 0.7018 | 0.0400 | 0.0400 | 17 | 2724.11 | /root/exp/RFunipassLab/results/logs/20260508_075516_560175_feature_lite_seed460.log |
| feature_lite | feature_ablation | 456 | 456 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.7983 | 0.7703 | 0.7913 | 0.0900 | 0.1400 | 12 | 1850.66 | /root/exp/RFunipassLab/results/logs/20260508_044906_220188_feature_lite_seed456.log |
| feature_lite | feature_ablation | 457 | 457 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.8106 | 0.8084 | 0.7979 | 0.1600 | 0.1200 | 18 | 3862.53 | /root/exp/RFunipassLab/results/logs/20260508_051956_934158_feature_lite_seed457.log |
