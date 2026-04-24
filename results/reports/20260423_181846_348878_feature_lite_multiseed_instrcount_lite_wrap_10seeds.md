# RFunipassLab Summary

- Generated at: `2026-04-23T23:42:33`
- Row policy: `all-runs`
- Total rows: `10`

## Best Result by Validation Objective

- Best experiment: `feature_lite` (group=`feature_ablation`, objective=`instrcount/oz`, seed=`463`, split_seed=`463`, loop=`wrap`, validation_obj=`0.6710`, test_obj=`0.7132`)

## Top 10

| Rank | Name | Group | Seed | Split | Baseline | Loop | Val Obj | Test Obj | Train Obj | Len | Runtime(s) | Exit |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | feature_lite | feature_ablation | 463 | 463 | oz | wrap | 0.6710 | 0.7132 | 0.6967 | 22 | 3051.24 | 0 |
| 2 | feature_lite | feature_ablation | 460 | 460 | oz | wrap | 0.7295 | 0.7257 | 0.7275 | 15 | 1573.83 | 0 |
| 3 | feature_lite | feature_ablation | 461 | 461 | oz | wrap | 0.7353 | 0.8808 | 0.7123 | 18 | 1484.74 | 0 |
| 4 | feature_lite | feature_ablation | 458 | 458 | oz | wrap | 0.7432 | 0.8222 | 0.7315 | 20 | 3635.99 | 0 |
| 5 | feature_lite | feature_ablation | 462 | 462 | oz | wrap | 0.7448 | 0.7195 | 0.6932 | 14 | 1959.84 | 0 |
| 6 | feature_lite | feature_ablation | 465 | 465 | oz | wrap | 0.7642 | 0.7487 | 0.7858 | 14 | 1356.55 | 0 |
| 7 | feature_lite | feature_ablation | 459 | 459 | oz | wrap | 0.7846 | 0.8470 | 0.8781 | 11 | 972.14 | 0 |
| 8 | feature_lite | feature_ablation | 464 | 464 | oz | wrap | 0.7952 | 0.8518 | 0.8189 | 8 | 912.44 | 0 |
| 9 | feature_lite | feature_ablation | 457 | 457 | oz | wrap | 0.8134 | 0.7517 | 0.7781 | 15 | 2715.27 | 0 |
| 10 | feature_lite | feature_ablation | 456 | 456 | oz | wrap | 0.8300 | 0.8170 | 0.8100 | 11 | 1764.74 | 0 |

## All Rows

| Name | Group | Seed | Split | SelSplit | SearchN | ValN | TestN | Loop | Backend | Baseline | Val Obj | Test Obj | Train Obj | Val Worse | Test Worse | Len | Runtime(s) | Log |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| feature_lite | feature_ablation | 463 | 463 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.6710 | 0.7132 | 0.6967 | 0.0500 | 0.0200 | 22 | 3051.24 | /root/exp/RFunipassLab/results/logs/20260423_221353_240005_feature_lite_seed463.log |
| feature_lite | feature_ablation | 460 | 460 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.7295 | 0.7257 | 0.7275 | 0.0400 | 0.0600 | 15 | 1573.83 | /root/exp/RFunipassLab/results/logs/20260423_205014_703926_feature_lite_seed460.log |
| feature_lite | feature_ablation | 461 | 461 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.7353 | 0.8808 | 0.7123 | 0.0400 | 0.1400 | 18 | 1484.74 | /root/exp/RFunipassLab/results/logs/20260423_211628_575222_feature_lite_seed461.log |
| feature_lite | feature_ablation | 458 | 458 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.7432 | 0.8222 | 0.7315 | 0.0700 | 0.1800 | 20 | 3635.99 | /root/exp/RFunipassLab/results/logs/20260423_193326_468019_feature_lite_seed458.log |
| feature_lite | feature_ablation | 462 | 462 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.7448 | 0.7195 | 0.6932 | 0.0600 | 0.0600 | 14 | 1959.84 | /root/exp/RFunipassLab/results/logs/20260423_214113_355045_feature_lite_seed462.log |
| feature_lite | feature_ablation | 465 | 465 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.7642 | 0.7487 | 0.7858 | 0.0900 | 0.0200 | 14 | 1356.55 | /root/exp/RFunipassLab/results/logs/20260423_231957_016941_feature_lite_seed465.log |
| feature_lite | feature_ablation | 459 | 459 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.7846 | 0.8470 | 0.8781 | 0.1100 | 0.1200 | 11 | 972.14 | /root/exp/RFunipassLab/results/logs/20260423_203402_518521_feature_lite_seed459.log |
| feature_lite | feature_ablation | 464 | 464 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.7952 | 0.8518 | 0.8189 | 0.1200 | 0.1000 | 8 | 912.44 | /root/exp/RFunipassLab/results/logs/20260423_230444_536999_feature_lite_seed464.log |
| feature_lite | feature_ablation | 457 | 457 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.8134 | 0.7517 | 0.7781 | 0.1700 | 0.0800 | 15 | 2715.27 | /root/exp/RFunipassLab/results/logs/20260423_184811_146360_feature_lite_seed457.log |
| feature_lite | feature_ablation | 456 | 456 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.8300 | 0.8170 | 0.8100 | 0.1100 | 0.1600 | 11 | 1764.74 | /root/exp/RFunipassLab/results/logs/20260423_181846_349217_feature_lite_seed456.log |
