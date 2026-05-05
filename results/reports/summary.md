# RFunipassLab Summary

- Generated at: `2026-05-05T08:04:49`
- Row policy: `all-runs`
- Total rows: `74`

## Best Result by Validation Objective

- Best experiment: `baseline` (group=`baseline`, objective=`instrcount/oz`, seed=`456`, split_seed=`456`, loop=`wrap`, validation_obj=`0.2258`, test_obj=`1.3107`)

## Top 10

| Rank | Name | Group | Seed | Split | Baseline | Loop | Val Obj | Test Obj | Train Obj | Len | Runtime(s) | Exit |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | baseline | baseline | 456 | 456 | oz | wrap | 0.2258 | 1.3107 | 0.8114 | 4 | 17.09 | 0 |
| 2 | baseline | baseline | 456 | 456 | oz | wrap | 0.2258 | 1.3107 | 0.8114 | 4 | 13.10 | 0 |
| 3 | feature_lite | feature_ablation | 464 | 464 | oz | wrap | 0.6683 | 0.7819 | 0.7163 | 18 | 1246.30 | 0 |
| 4 | feature_lite | feature_ablation | 463 | 463 | oz | wrap | 0.6710 | 0.7132 | 0.6967 | 22 | 3051.24 | 0 |
| 5 | feature_lite | feature_ablation | 462 | 462 | oz | wrap | 0.7036 | 0.6847 | 0.6634 | 22 | 3159.38 | 0 |
| 6 | feature_lite | feature_ablation | 458 | 458 | oz | wrap | 0.7048 | 0.8122 | 0.7044 | 18 | 2738.34 | 0 |
| 7 | feature_lite | feature_ablation | 464 | 464 | oz | wrap | 0.7074 | 0.7349 | 0.6878 | 20 | 27540.04 | 0 |
| 8 | feature_lite | feature_ablation | 458 | 458 | oz | wrap | 0.7087 | 0.7498 | 0.7505 | 16 | 21634.51 | 0 |
| 9 | feature_lite | feature_ablation | 463 | 463 | oz | wrap | 0.7096 | 0.7523 | 0.7183 | 17 | 1232.13 | 0 |
| 10 | feature_lite | feature_ablation | 457 | 457 | oz | wrap | 0.7157 | 0.7689 | 0.8121 | 14 | 24169.05 | 0 |

## All Rows

| Name | Group | Seed | Split | SelSplit | SearchN | ValN | TestN | Loop | Backend | Baseline | Val Obj | Test Obj | Train Obj | Val Worse | Test Worse | Len | Runtime(s) | Log |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| baseline | baseline | 456 | 456 | validation | 3 | 1 | 1 | wrap | -O0 | oz | 0.2258 | 1.3107 | 0.8114 | 0.0000 | 1.0000 | 4 | 17.09 | /root/exp/RFunipassLab/results/logs/20260503_230021_786396_baseline_rf_explain_validation_preload.log |
| baseline | baseline | 456 | 456 | validation | 3 | 1 | 1 | wrap | -O0 | oz | 0.2258 | 1.3107 | 0.8114 | 0.0000 | 1.0000 | 4 | 13.10 | /root/exp/RFunipassLab/results/logs/20260503_230124_601905_baseline_rf_explain_validation_off_preload.log |
| feature_lite | feature_ablation | 464 | 464 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.6683 | 0.7819 | 0.7163 | 0.0800 | 0.1000 | 18 | 1246.30 | /root/exp/RFunipassLab/results/logs/20260505_072024_540076_feature_lite_seed464.log |
| feature_lite | feature_ablation | 463 | 463 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.6710 | 0.7132 | 0.6967 | 0.0500 | 0.0200 | 22 | 3051.24 | /root/exp/RFunipassLab/results/logs/20260423_221353_240005_feature_lite_seed463.log |
| feature_lite | feature_ablation | 462 | 462 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.7036 | 0.6847 | 0.6634 | 0.0900 | 0.0800 | 22 | 3159.38 | /root/exp/RFunipassLab/results/logs/20260505_060712_941720_feature_lite_seed462.log |
| feature_lite | feature_ablation | 458 | 458 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.7048 | 0.8122 | 0.7044 | 0.0600 | 0.1800 | 18 | 2738.34 | /root/exp/RFunipassLab/results/logs/20260505_041238_090656_feature_lite_seed458.log |
| feature_lite | feature_ablation | 464 | 464 | validation | 200 | 100 | 4717 | wrap | -O0 | oz | 0.7074 | 0.7349 | 0.6878 | 0.0900 | 0.0801 | 20 | 27540.04 | /root/exp/RFunipassLab/results/logs/20260504_024750_857326_feature_lite_seed464.log |
| feature_lite | feature_ablation | 458 | 458 | validation | 200 | 100 | 4717 | wrap | -O0 | oz | 0.7087 | 0.7498 | 0.7505 | 0.0700 | 0.0912 | 16 | 21634.51 | /root/exp/RFunipassLab/results/logs/20260502_121001_156650_feature_lite_seed458.log |
| feature_lite | feature_ablation | 463 | 463 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.7096 | 0.7523 | 0.7183 | 0.0500 | 0.0400 | 17 | 1232.13 | /root/exp/RFunipassLab/results/logs/20260505_065952_368025_feature_lite_seed463.log |
| feature_lite | feature_ablation | 457 | 457 | validation | 200 | 100 | 4717 | wrap | -O0 | oz | 0.7157 | 0.7689 | 0.8121 | 0.0700 | 0.0859 | 14 | 24169.05 | /root/exp/RFunipassLab/results/logs/20260502_052709_230208_feature_lite_seed457.log |
| feature_lite | feature_ablation | 460 | 460 | validation | 200 | 100 | 4717 | wrap | -O0 | oz | 0.7218 | 0.7610 | 0.7449 | 0.0300 | 0.0831 | 14 | 15604.23 | /root/exp/RFunipassLab/results/logs/20260503_025507_603437_feature_lite_seed460.log |
| feature_lite | feature_ablation | 463 | 463 | validation | 200 | 100 | 4717 | wrap | -O0 | oz | 0.7242 | 0.7322 | 0.7023 | 0.1100 | 0.0920 | 18 | 26423.82 | /root/exp/RFunipassLab/results/logs/20260503_192724_209392_feature_lite_seed463.log |
| feature_lite | feature_ablation | 460 | 460 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.7295 | 0.7257 | 0.7275 | 0.0400 | 0.0600 | 15 | 1573.83 | /root/exp/RFunipassLab/results/logs/20260423_205014_703926_feature_lite_seed460.log |
| orig_boca | reproduce | NA | NA | validation | NA | NA | NA | None | None | oz | 0.7300 | 0.7169 | 0.7372 | 0.0800 | 0.1600 | 27 | 7921.28 | /root/exp/RFunipassLab/results/logs/20260409_211100_950496_orig_boca.log |
| feature_lite | feature_ablation | 462 | 462 | validation | 200 | 100 | 4717 | wrap | -O0 | oz | 0.7344 | 0.7652 | 0.7375 | 0.0900 | 0.1039 | 15 | 27750.80 | /root/exp/RFunipassLab/results/logs/20260503_114450_271532_feature_lite_seed462.log |
| feature_lite | feature_ablation | 459 | 459 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.7349 | 0.8333 | 0.8202 | 0.0900 | 0.1200 | 11 | 1079.02 | /root/exp/RFunipassLab/results/logs/20260505_045816_489909_feature_lite_seed459.log |
| feature_lite | feature_ablation | 461 | 461 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.7353 | 0.8808 | 0.7123 | 0.0400 | 0.1400 | 18 | 1484.74 | /root/exp/RFunipassLab/results/logs/20260423_211628_575222_feature_lite_seed461.log |
| feature_lite | feature_ablation | 460 | 460 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.7418 | 0.7330 | 0.7346 | 0.0500 | 0.0600 | 16 | 1812.41 | /root/exp/RFunipassLab/results/logs/20260505_051615_556780_feature_lite_seed460.log |
| feature_lite | feature_ablation | 458 | 458 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.7432 | 0.8222 | 0.7315 | 0.0700 | 0.1800 | 20 | 3635.99 | /root/exp/RFunipassLab/results/logs/20260423_193326_468019_feature_lite_seed458.log |
| feature_lite | feature_ablation | 462 | 462 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.7448 | 0.7195 | 0.6932 | 0.0600 | 0.0600 | 14 | 1959.84 | /root/exp/RFunipassLab/results/logs/20260423_214113_355045_feature_lite_seed462.log |
| feature_lite | feature_ablation | 456 | 456 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.7518 | 0.7477 | 0.7470 | 0.0800 | 0.1400 | 18 | 2854.40 | /root/exp/RFunipassLab/results/logs/20260503_231940_897729_feature_lite_rf_explain_formal.log |
| feature_lite | feature_ablation | 465 | 465 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.7590 | 0.7551 | 0.7950 | 0.0900 | 0.0200 | 9 | 1418.82 | /root/exp/RFunipassLab/results/logs/20260505_074110_879129_feature_lite_seed465.log |
| feature_lite | feature_ablation | NA | NA | validation | NA | NA | NA | None | None | oz | 0.7637 | 0.7567 | 0.7645 | 0.0900 | 0.1400 | 15 | 2729.82 | /root/exp/RFunipassLab/results/logs/20260410_220829_909630_feature_lite.log |
| feature_lite | feature_ablation | 465 | 465 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.7642 | 0.7487 | 0.7858 | 0.0900 | 0.0200 | 14 | 1356.55 | /root/exp/RFunipassLab/results/logs/20260423_231957_016941_feature_lite_seed465.log |
| feature_lite | feature_ablation | 456 | 456 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.7677 | 0.7693 | 0.7644 | 0.0900 | 0.1600 | 15 | 2779.78 | /root/exp/RFunipassLab/results/logs/20260505_021422_538513_feature_lite_seed456.log |
| feature_lite | feature_ablation | 461 | 461 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.7716 | 0.8653 | 0.7633 | 0.0500 | 0.1200 | 11 | 1244.89 | /root/exp/RFunipassLab/results/logs/20260505_054628_012709_feature_lite_seed461.log |
| feature_lite | feature_ablation | 459 | 459 | validation | 200 | 100 | 4717 | wrap | -O0 | oz | 0.7742 | 0.7746 | 0.7671 | 0.0800 | 0.0869 | 16 | 31466.25 | /root/exp/RFunipassLab/results/logs/20260502_181038_499247_feature_lite_seed459.log |
| feature_lite | feature_ablation | 461 | 461 | validation | 200 | 100 | 4717 | wrap | -O0 | oz | 0.7749 | 0.8183 | 0.7963 | 0.0800 | 0.1143 | 11 | 16172.80 | /root/exp/RFunipassLab/results/logs/20260503_071514_660832_feature_lite_seed461.log |
| feature_lite | feature_ablation | NA | NA | validation | NA | NA | NA | None | -O0 | oz | 0.7770 | 0.7587 | 0.8050 | 0.0900 | 0.1400 | NA | 2891.82 | /root/exp/RFunipassLab/results/logs/20260422_225813_437837_feature_lite.log |
| feature_lite | feature_ablation | 456 | 456 | validation | 200 | 100 | 4717 | wrap | -O0 | oz | 0.7792 | 0.8255 | 0.8343 | 0.0300 | 0.1073 | 9 | 20886.69 | /root/exp/RFunipassLab/results/logs/20260501_233859_100728_feature_lite_seed456.log |
| feature_lite | feature_ablation | 465 | 465 | validation | 200 | 100 | 4717 | wrap | -O0 | oz | 0.7802 | 0.7668 | 0.7626 | 0.1000 | 0.0893 | 13 | 17013.14 | /root/exp/RFunipassLab/results/logs/20260504_102653_764521_feature_lite_seed465.log |
| feature_lite | feature_ablation | 459 | 459 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.7846 | 0.8470 | 0.8781 | 0.1100 | 0.1200 | 11 | 972.14 | /root/exp/RFunipassLab/results/logs/20260423_203402_518521_feature_lite_seed459.log |
| feature_lite | feature_ablation | 457 | 457 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.7903 | 0.7945 | 0.8160 | 0.1600 | 0.1000 | 15 | 4315.65 | /root/exp/RFunipassLab/results/logs/20260505_030042_375448_feature_lite_seed457.log |
| baseline | baseline | NA | NA | validation | NA | NA | NA | None | None | oz | 0.7914 | 0.9275 | 0.8476 | 0.0000 | 0.0000 | 1 | 13.21 | /root/exp/RFunipassLab/results/logs/20260408_220004_316645_baseline.log |
| feature_lite | feature_ablation | NA | NA | validation | NA | NA | NA | None | -O0 | oz | 0.7925 | 0.7795 | 0.7508 | 0.0900 | 0.1800 | NA | 1834.10 | /root/exp/RFunipassLab/results/logs/20260423_121734_195330_feature_lite.log |
| feature_lite | feature_ablation | 464 | 464 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.7952 | 0.8518 | 0.8189 | 0.1200 | 0.1000 | 8 | 912.44 | /root/exp/RFunipassLab/results/logs/20260423_230444_536999_feature_lite_seed464.log |
| feature_lite | feature_ablation | NA | NA | validation | NA | NA | NA | None | -O0 | oz | 0.8053 | 0.7837 | 0.7643 | 0.1000 | 0.1400 | NA | 2482.87 | /root/exp/RFunipassLab/results/logs/20260422_193238_282861_feature_lite.log |
| feature_lite | feature_ablation | 457 | 457 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.8134 | 0.7517 | 0.7781 | 0.1700 | 0.0800 | 15 | 2715.27 | /root/exp/RFunipassLab/results/logs/20260423_184811_146360_feature_lite_seed457.log |
| feature_lite | feature_ablation | 456 | 456 | validation | 100 | 100 | 50 | wrap | -O0 | oz | 0.8300 | 0.8170 | 0.8100 | 0.1100 | 0.1600 | 11 | 1764.74 | /root/exp/RFunipassLab/results/logs/20260423_181846_349217_feature_lite_seed456.log |
| runtime_baseline | runtime | NA | NA | validation | NA | NA | NA | None | -O0 | oz | 0.8327 | 1.0962 | 1.0040 | 0.1800 | 0.5600 | 29 | 32293.11 | /root/exp/RFunipassLab/results/logs/20260411_182810_593755_runtime_baseline.log |
| baseline | baseline | NA | NA | validation | NA | NA | NA | None | None | oz | 0.8551 | 0.7862 | 0.8419 | 0.1667 | 0.1000 | 6 | 58.62 | /root/exp/RFunipassLab/results/logs/20260409_201324_016925_baseline.log |
| feature_lite | feature_ablation | NA | NA | validation | NA | NA | NA | None | None | oz | 0.8551 | 0.7862 | 0.8419 | 0.1667 | 0.1000 | 6 | 54.94 | /root/exp/RFunipassLab/results/logs/20260410_220355_585040_feature_lite.log |
| runtime_feature_lite | runtime_feature_ablation | NA | NA | validation | NA | NA | NA | None | -O0 | oz | 0.9452 | 0.9763 | 0.9521 | 0.1200 | 0.1600 | 28 | 30426.65 | /root/exp/RFunipassLab/results/logs/20260413_222129_558671_runtime_feature_lite.log |
| runtime_feature_lite | runtime_feature_ablation | NA | NA | validation | NA | NA | NA | None | -O0 | oz | 0.9899 | 1.0829 | 1.0436 | 0.3200 | 0.5000 | 18 | 1390.63 | /root/exp/RFunipassLab/results/logs/20260413_201615_919211_runtime_feature_lite.log |
| runtime_feature_lite | runtime_feature_ablation | NA | NA | validation | NA | NA | NA | None | -O0 | oz | 0.9994 | 1.0660 | 1.0255 | 0.2100 | 0.4200 | 10 | 32540.26 | /root/exp/RFunipassLab/results/logs/20260413_221921_490713_runtime_feature_lite.log |
| runtime_baseline | runtime | NA | NA | validation | NA | NA | NA | None | -O0 | oz | 1.0002 | 1.0165 | 1.0169 | 0.2400 | 0.3000 | 44 | 32650.50 | /root/exp/RFunipassLab/results/logs/20260413_222233_545217_runtime_baseline.log |
| runtime_baseline | runtime | NA | NA | validation | NA | NA | NA | None | -O0 | o3 | 1.2604 | 1.3441 | 1.2973 | 0.5800 | 0.7400 | 8 | 26748.27 | /root/exp/RFunipassLab/results/logs/20260414_151923_015709_runtime_baseline.log |
| runtime_feature_lite | runtime_feature_ablation | NA | NA | validation | NA | NA | NA | None | -O0 | o3 | 1.3368 | 1.3130 | 1.2470 | 0.7200 | 0.7800 | 17 | 26977.37 | /root/exp/RFunipassLab/results/logs/20260414_152009_809370_runtime_feature_lite.log |
| runtime_feature_lite | runtime_feature_ablation | NA | NA | validation | NA | NA | NA | None | -O0 | o3 | 1.3786 | 1.3749 | 1.3778 | 0.6700 | 0.7800 | 12 | 19729.65 | /root/exp/RFunipassLab/results/logs/20260415_140602_990467_runtime_feature_lite.log |
| baseline | baseline | NA | NA | None | NA | NA | NA | None | None | oz | NA | NA | NA | NA | NA | NA | 0.00 | /root/exp/RFunipassLab/results/logs/20260408_164434_858690_baseline.log |
| baseline | baseline | NA | NA | None | NA | NA | NA | None | None | oz | NA | NA | NA | NA | NA | NA | 0.00 | /root/exp/RFunipassLab/results/logs/20260408_164434_863304_baseline.log |
| baseline | baseline | NA | NA | None | NA | NA | NA | None | None | oz | NA | NA | NA | NA | NA | NA | 0.00 | /root/exp/RFunipassLab/results/logs/20260408_171905_344228_baseline.log |
| baseline | baseline | NA | NA | None | NA | NA | NA | None | None | oz | NA | NA | NA | NA | NA | NA | 0.00 | /root/exp/RFunipassLab/results/logs/20260408_171908_164361_baseline.log |
| baseline | baseline | NA | NA | None | NA | NA | NA | None | None | oz | NA | NA | NA | NA | NA | NA | 0.00 | /root/exp/RFunipassLab/results/logs/20260408_202440_361545_baseline.log |
| baseline | baseline | NA | NA | None | NA | NA | NA | None | None | oz | NA | NA | NA | NA | NA | NA | 0.00 | /root/exp/RFunipassLab/results/logs/20260408_204845_830118_baseline.log |
| baseline | baseline | NA | NA | None | NA | NA | NA | None | None | oz | NA | NA | NA | NA | NA | NA | 0.00 | /root/exp/RFunipassLab/results/logs/20260408_212956_360061_baseline.log |
| baseline | baseline | NA | NA | None | NA | NA | NA | None | None | oz | NA | NA | NA | NA | NA | NA | 0.24 | /root/exp/RFunipassLab/results/logs/20260408_214216_965311_baseline.log |
| baseline | baseline | NA | NA | None | NA | NA | NA | None | None | oz | NA | NA | NA | NA | NA | NA | 6.93 | /root/exp/RFunipassLab/results/logs/20260408_214533_305073_baseline.log |
| baseline | baseline | NA | NA | None | NA | NA | NA | None | -O0 | oz | NA | NA | NA | NA | NA | NA | 0.00 | /root/exp/RFunipassLab/results/logs/20260411_171950_890870_baseline.log |
| feature_lite | feature_ablation | NA | NA | None | NA | NA | NA | None | None | oz | NA | NA | NA | NA | NA | NA | 0.00 | /root/exp/RFunipassLab/results/logs/20260410_175349_759808_feature_lite.log |
| feature_lite | feature_ablation | NA | NA | None | NA | NA | NA | None | -O0 | oz | NA | NA | NA | NA | NA | NA | 0.51 | /root/exp/RFunipassLab/results/logs/20260422_191944_815660_feature_lite.log |
| feature_lite | feature_ablation | NA | NA | None | NA | NA | NA | None | -O0 | oz | NA | NA | NA | NA | NA | NA | 623.73 | /root/exp/RFunipassLab/results/logs/20260422_192017_801913_feature_lite.log |
| feature_lite | feature_ablation | NA | NA | None | NA | NA | NA | wrap | -O0 | oz | NA | NA | NA | NA | NA | NA | 0.00 | /root/exp/RFunipassLab/results/logs/20260423_164406_363717_feature_lite.log |
| feature_lite | feature_ablation | NA | NA | None | NA | NA | NA | wrap | -O0 | oz | NA | NA | NA | NA | NA | NA | 0.00 | /root/exp/RFunipassLab/results/logs/20260423_164505_093662_feature_lite.log |
| feature_lite | feature_ablation | NA | NA | None | NA | NA | NA | wrap | -O0 | oz | NA | NA | NA | NA | NA | NA | 0.00 | /root/exp/RFunipassLab/results/logs/20260423_164602_380749_feature_lite.log |
| feature_lite | feature_ablation | NA | NA | None | NA | NA | NA | wrap | -O0 | oz | NA | NA | NA | NA | NA | NA | 0.00 | /root/exp/RFunipassLab/results/logs/20260423_164710_954768_feature_lite.log |
| objw_000 | objective | NA | NA | None | NA | NA | NA | None | None | oz | NA | NA | NA | NA | NA | NA | 0.00 | /root/exp/RFunipassLab/results/logs/20260408_171905_344719_objw_000.log |
| orig_boca | reproduce | NA | NA | None | NA | NA | NA | None | None | oz | NA | NA | NA | NA | NA | NA | 0.49 | /root/exp/RFunipassLab/results/logs/20260409_150335_979076_orig_boca.log |
| runtime_baseline | runtime | NA | NA | None | NA | NA | NA | None | -O0 | oz | NA | NA | NA | NA | NA | NA | 0.00 | /root/exp/RFunipassLab/results/logs/20260411_171948_238357_runtime_baseline.log |
| runtime_baseline | runtime | NA | NA | None | NA | NA | NA | None | -O0 | oz | NA | NA | NA | NA | NA | NA | 271.73 | /root/exp/RFunipassLab/results/logs/20260411_180633_210924_runtime_baseline.log |
| runtime_baseline | runtime | NA | NA | None | NA | NA | NA | None | -O0 | o3 | NA | NA | NA | NA | NA | NA | 4088.41 | /root/exp/RFunipassLab/results/logs/20260415_154027_060050_runtime_baseline.log |
| runtime_feature_lite | runtime_feature_ablation | NA | NA | None | NA | NA | NA | None | -O0 | oz | NA | NA | NA | NA | NA | NA | 0.00 | /root/exp/RFunipassLab/results/logs/20260413_163035_982701_runtime_feature_lite.log |
| runtime_feature_lite | runtime_feature_ablation | NA | NA | None | NA | NA | NA | None | -O0 | oz | NA | NA | NA | NA | NA | NA | 1575.73 | /root/exp/RFunipassLab/results/logs/20260413_193344_284829_runtime_feature_lite.log |
| valratio_020 | validation_split | NA | NA | None | NA | NA | NA | None | None | oz | NA | NA | NA | NA | NA | NA | 0.00 | /root/exp/RFunipassLab/results/logs/20260408_164434_859078_valratio_020.log |
