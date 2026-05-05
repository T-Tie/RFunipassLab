# RFunipassLab Summary

- Generated at: `2026-05-04T15:10:29`
- Row policy: `all-runs`
- Total rows: `10`

## Best Result by Validation Objective

- Best experiment: `feature_lite` (group=`feature_ablation`, objective=`instrcount/oz`, seed=`464`, split_seed=`464`, loop=`wrap`, validation_obj=`0.7074`, test_obj=`0.7349`)

## Top 10

| Rank | Name | Group | Seed | Split | Baseline | Loop | Val Obj | Test Obj | Train Obj | Len | Runtime(s) | Exit |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | feature_lite | feature_ablation | 464 | 464 | oz | wrap | 0.7074 | 0.7349 | 0.6878 | 20 | 27540.04 | 0 |
| 2 | feature_lite | feature_ablation | 458 | 458 | oz | wrap | 0.7087 | 0.7498 | 0.7505 | 16 | 21634.51 | 0 |
| 3 | feature_lite | feature_ablation | 457 | 457 | oz | wrap | 0.7157 | 0.7689 | 0.8121 | 14 | 24169.05 | 0 |
| 4 | feature_lite | feature_ablation | 460 | 460 | oz | wrap | 0.7218 | 0.7610 | 0.7449 | 14 | 15604.23 | 0 |
| 5 | feature_lite | feature_ablation | 463 | 463 | oz | wrap | 0.7242 | 0.7322 | 0.7023 | 18 | 26423.82 | 0 |
| 6 | feature_lite | feature_ablation | 462 | 462 | oz | wrap | 0.7344 | 0.7652 | 0.7375 | 15 | 27750.80 | 0 |
| 7 | feature_lite | feature_ablation | 459 | 459 | oz | wrap | 0.7742 | 0.7746 | 0.7671 | 16 | 31466.25 | 0 |
| 8 | feature_lite | feature_ablation | 461 | 461 | oz | wrap | 0.7749 | 0.8183 | 0.7963 | 11 | 16172.80 | 0 |
| 9 | feature_lite | feature_ablation | 456 | 456 | oz | wrap | 0.7792 | 0.8255 | 0.8343 | 9 | 20886.69 | 0 |
| 10 | feature_lite | feature_ablation | 465 | 465 | oz | wrap | 0.7802 | 0.7668 | 0.7626 | 13 | 17013.14 | 0 |

## All Rows

| Name | Group | Seed | Split | SelSplit | SearchN | ValN | TestN | Loop | Backend | Baseline | Val Obj | Test Obj | Train Obj | Val Worse | Test Worse | Len | Runtime(s) | Log |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| feature_lite | feature_ablation | 464 | 464 | validation | 200 | 100 | 4717 | wrap | -O0 | oz | 0.7074 | 0.7349 | 0.6878 | 0.0900 | 0.0801 | 20 | 27540.04 | /root/exp/RFunipassLab/results/logs/20260504_024750_857326_feature_lite_seed464.log |
| feature_lite | feature_ablation | 458 | 458 | validation | 200 | 100 | 4717 | wrap | -O0 | oz | 0.7087 | 0.7498 | 0.7505 | 0.0700 | 0.0912 | 16 | 21634.51 | /root/exp/RFunipassLab/results/logs/20260502_121001_156650_feature_lite_seed458.log |
| feature_lite | feature_ablation | 457 | 457 | validation | 200 | 100 | 4717 | wrap | -O0 | oz | 0.7157 | 0.7689 | 0.8121 | 0.0700 | 0.0859 | 14 | 24169.05 | /root/exp/RFunipassLab/results/logs/20260502_052709_230208_feature_lite_seed457.log |
| feature_lite | feature_ablation | 460 | 460 | validation | 200 | 100 | 4717 | wrap | -O0 | oz | 0.7218 | 0.7610 | 0.7449 | 0.0300 | 0.0831 | 14 | 15604.23 | /root/exp/RFunipassLab/results/logs/20260503_025507_603437_feature_lite_seed460.log |
| feature_lite | feature_ablation | 463 | 463 | validation | 200 | 100 | 4717 | wrap | -O0 | oz | 0.7242 | 0.7322 | 0.7023 | 0.1100 | 0.0920 | 18 | 26423.82 | /root/exp/RFunipassLab/results/logs/20260503_192724_209392_feature_lite_seed463.log |
| feature_lite | feature_ablation | 462 | 462 | validation | 200 | 100 | 4717 | wrap | -O0 | oz | 0.7344 | 0.7652 | 0.7375 | 0.0900 | 0.1039 | 15 | 27750.80 | /root/exp/RFunipassLab/results/logs/20260503_114450_271532_feature_lite_seed462.log |
| feature_lite | feature_ablation | 459 | 459 | validation | 200 | 100 | 4717 | wrap | -O0 | oz | 0.7742 | 0.7746 | 0.7671 | 0.0800 | 0.0869 | 16 | 31466.25 | /root/exp/RFunipassLab/results/logs/20260502_181038_499247_feature_lite_seed459.log |
| feature_lite | feature_ablation | 461 | 461 | validation | 200 | 100 | 4717 | wrap | -O0 | oz | 0.7749 | 0.8183 | 0.7963 | 0.0800 | 0.1143 | 11 | 16172.80 | /root/exp/RFunipassLab/results/logs/20260503_071514_660832_feature_lite_seed461.log |
| feature_lite | feature_ablation | 456 | 456 | validation | 200 | 100 | 4717 | wrap | -O0 | oz | 0.7792 | 0.8255 | 0.8343 | 0.0300 | 0.1073 | 9 | 20886.69 | /root/exp/RFunipassLab/results/logs/20260501_233859_100728_feature_lite_seed456.log |
| feature_lite | feature_ablation | 465 | 465 | validation | 200 | 100 | 4717 | wrap | -O0 | oz | 0.7802 | 0.7668 | 0.7626 | 0.1000 | 0.0893 | 13 | 17013.14 | /root/exp/RFunipassLab/results/logs/20260504_102653_764521_feature_lite_seed465.log |
