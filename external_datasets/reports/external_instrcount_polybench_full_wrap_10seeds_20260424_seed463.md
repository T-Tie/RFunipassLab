# External Validation Report

- Generated at: 2026-04-24 18:35:18
- Mode: instrcount
- Sequence source: /root/exp/RFunipassLab/results/instrcount/summaries/20260423_221353_240005_feature_lite_seed463.json
- Suites: polybench_full
- Sequence length: 22
- Objective baseline: oz
- Frontend mode: canonical

## Sequence

```text
module(elim-avail-extern),module(iroutliner),function(gvn-hoist),function(gvn-sink),module(iroutliner),cgscc(attributor-cgscc),function(dse),function(loop(loop-simplifycfg)),function(newgvn),module(attributor),cgscc(attributor-cgscc),function(newgvn),function(gvn-hoist),cgscc(attributor-cgscc),function(reassociate),module(scc-oz-module-inliner),module(iroutliner),function(gvn-hoist),module(attributor),function(instsimplify),module(globalopt),function(dse)
```

## Combined

```json
{
  "count": 30,
  "primary_metrics": {
    "count": 30,
    "mean_norm": 0.4601972997016689,
    "median_norm": 0.37361512852698797,
    "improved": 28,
    "tied": 0,
    "worsened": 2,
    "invalid": 0,
    "high_variance": 0,
    "improved_rate": 0.9333333333333333,
    "tie_rate": 0.0,
    "worsen_rate": 0.06666666666666667,
    "high_variance_rate": 0.0,
    "len_ratio": 0.18333333333333332,
    "per_program": {
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/correlation.ll": {
        "ratio": 0.3584070796460177,
        "raw_value": 81.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/covariance.ll": {
        "ratio": 0.33152173913043476,
        "raw_value": 61.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/2mm.ll": {
        "ratio": 0.5905172413793104,
        "raw_value": 137.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/3mm.ll": {
        "ratio": 0.5173745173745173,
        "raw_value": 134.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/atax.ll": {
        "ratio": 0.47560975609756095,
        "raw_value": 78.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/bicg.ll": {
        "ratio": 0.40641711229946526,
        "raw_value": 76.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/doitgen.ll": {
        "ratio": 0.725,
        "raw_value": 145.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/mvt.ll": {
        "ratio": 0.33004926108374383,
        "raw_value": 67.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/gemm.ll": {
        "ratio": 0.6105263157894737,
        "raw_value": 116.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/gemver.ll": {
        "ratio": 0.4933920704845815,
        "raw_value": 112.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/gesummv.ll": {
        "ratio": 0.36419753086419754,
        "raw_value": 59.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/symm.ll": {
        "ratio": 0.40816326530612246,
        "raw_value": 80.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/syr2k.ll": {
        "ratio": 0.5,
        "raw_value": 94.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/syrk.ll": {
        "ratio": 0.49710982658959535,
        "raw_value": 86.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/trmm.ll": {
        "ratio": 0.4409937888198758,
        "raw_value": 71.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/cholesky.ll": {
        "ratio": 0.30131004366812225,
        "raw_value": 69.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/durbin.ll": {
        "ratio": 0.3170731707317073,
        "raw_value": 52.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/gramschmidt.ll": {
        "ratio": 0.36403508771929827,
        "raw_value": 83.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/lu.ll": {
        "ratio": 0.2987012987012987,
        "raw_value": 69.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/ludcmp.ll": {
        "ratio": 1.0546075085324231,
        "raw_value": 309.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/trisolv.ll": {
        "ratio": 0.3691275167785235,
        "raw_value": 55.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/deriche.ll": {
        "ratio": 0.3705179282868526,
        "raw_value": 93.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/floyd-warshall.ll": {
        "ratio": 0.47019867549668876,
        "raw_value": 71.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/nussinov.ll": {
        "ratio": 1.1843575418994414,
        "raw_value": 212.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/adi.ll": {
        "ratio": 0.321285140562249,
        "raw_value": 80.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/fdtd-2d.ll": {
        "ratio": 0.33568904593639576,
        "raw_value": 95.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/heat-3d.ll": {
        "ratio": 0.32340425531914896,
        "raw_value": 76.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/jacobi-1d.ll": {
        "ratio": 0.3767123287671233,
        "raw_value": 55.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/jacobi-2d.ll": {
        "ratio": 0.3163265306122449,
        "raw_value": 62.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/seidel-2d.ll": {
        "ratio": 0.3532934131736527,
        "raw_value": 59.0,
        "status": "ok",
        "variance_pct": 0.0
      }
    },
    "objective": 0.4701972997016689
  },
  "fixed_baselines": {
    "none": {
      "count": 30,
      "mean_ratio": 0.1580883802904371,
      "median_ratio": 0.1376345243219974,
      "improved": 30,
      "tied": 0,
      "worsened": 0
    },
    "oz": {
      "count": 30,
      "mean_ratio": 0.4601972997016689,
      "median_ratio": 0.37361512852698797,
      "improved": 28,
      "tied": 0,
      "worsened": 2
    },
    "o3": {
      "count": 30,
      "mean_ratio": 0.2873704121709738,
      "median_ratio": 0.24585371721870236,
      "improved": 30,
      "tied": 0,
      "worsened": 0
    }
  }
}
```

## Per Suite

### polybench_full

```json
{
  "count": 30,
  "selected_names": [
    "correlation",
    "covariance",
    "2mm",
    "3mm",
    "atax",
    "bicg",
    "doitgen",
    "mvt",
    "gemm",
    "gemver",
    "gesummv",
    "symm",
    "syr2k",
    "syrk",
    "trmm",
    "cholesky",
    "durbin",
    "gramschmidt",
    "lu",
    "ludcmp",
    "trisolv",
    "deriche",
    "floyd-warshall",
    "nussinov",
    "adi",
    "fdtd-2d",
    "heat-3d",
    "jacobi-1d",
    "jacobi-2d",
    "seidel-2d"
  ],
  "primary_metrics": {
    "count": 30,
    "mean_norm": 0.4601972997016689,
    "median_norm": 0.37361512852698797,
    "improved": 28,
    "tied": 0,
    "worsened": 2,
    "invalid": 0,
    "high_variance": 0,
    "improved_rate": 0.9333333333333333,
    "tie_rate": 0.0,
    "worsen_rate": 0.06666666666666667,
    "high_variance_rate": 0.0,
    "len_ratio": 0.18333333333333332,
    "per_program": {
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/correlation.ll": {
        "ratio": 0.3584070796460177,
        "raw_value": 81.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/covariance.ll": {
        "ratio": 0.33152173913043476,
        "raw_value": 61.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/2mm.ll": {
        "ratio": 0.5905172413793104,
        "raw_value": 137.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/3mm.ll": {
        "ratio": 0.5173745173745173,
        "raw_value": 134.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/atax.ll": {
        "ratio": 0.47560975609756095,
        "raw_value": 78.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/bicg.ll": {
        "ratio": 0.40641711229946526,
        "raw_value": 76.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/doitgen.ll": {
        "ratio": 0.725,
        "raw_value": 145.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/mvt.ll": {
        "ratio": 0.33004926108374383,
        "raw_value": 67.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/gemm.ll": {
        "ratio": 0.6105263157894737,
        "raw_value": 116.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/gemver.ll": {
        "ratio": 0.4933920704845815,
        "raw_value": 112.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/gesummv.ll": {
        "ratio": 0.36419753086419754,
        "raw_value": 59.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/symm.ll": {
        "ratio": 0.40816326530612246,
        "raw_value": 80.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/syr2k.ll": {
        "ratio": 0.5,
        "raw_value": 94.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/syrk.ll": {
        "ratio": 0.49710982658959535,
        "raw_value": 86.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/trmm.ll": {
        "ratio": 0.4409937888198758,
        "raw_value": 71.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/cholesky.ll": {
        "ratio": 0.30131004366812225,
        "raw_value": 69.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/durbin.ll": {
        "ratio": 0.3170731707317073,
        "raw_value": 52.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/gramschmidt.ll": {
        "ratio": 0.36403508771929827,
        "raw_value": 83.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/lu.ll": {
        "ratio": 0.2987012987012987,
        "raw_value": 69.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/ludcmp.ll": {
        "ratio": 1.0546075085324231,
        "raw_value": 309.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/trisolv.ll": {
        "ratio": 0.3691275167785235,
        "raw_value": 55.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/deriche.ll": {
        "ratio": 0.3705179282868526,
        "raw_value": 93.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/floyd-warshall.ll": {
        "ratio": 0.47019867549668876,
        "raw_value": 71.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/nussinov.ll": {
        "ratio": 1.1843575418994414,
        "raw_value": 212.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/adi.ll": {
        "ratio": 0.321285140562249,
        "raw_value": 80.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/fdtd-2d.ll": {
        "ratio": 0.33568904593639576,
        "raw_value": 95.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/heat-3d.ll": {
        "ratio": 0.32340425531914896,
        "raw_value": 76.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/jacobi-1d.ll": {
        "ratio": 0.3767123287671233,
        "raw_value": 55.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/jacobi-2d.ll": {
        "ratio": 0.3163265306122449,
        "raw_value": 62.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/seidel-2d.ll": {
        "ratio": 0.3532934131736527,
        "raw_value": 59.0,
        "status": "ok",
        "variance_pct": 0.0
      }
    },
    "objective": 0.4701972997016689
  },
  "fixed_baselines": {
    "none": {
      "count": 30,
      "mean_ratio": 0.1580883802904371,
      "median_ratio": 0.1376345243219974,
      "improved": 30,
      "tied": 0,
      "worsened": 0
    },
    "oz": {
      "count": 30,
      "mean_ratio": 0.4601972997016689,
      "median_ratio": 0.37361512852698797,
      "improved": 28,
      "tied": 0,
      "worsened": 2
    },
    "o3": {
      "count": 30,
      "mean_ratio": 0.2873704121709738,
      "median_ratio": 0.24585371721870236,
      "improved": 30,
      "tied": 0,
      "worsened": 0
    }
  },
  "per_program": [
    {
      "suite": "polybench_full",
      "name": "correlation",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/correlation.ll",
      "universal": 81.0,
      "none": 677.0,
      "oz": 226.0,
      "o3": 337.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.11964549483013294,
      "ratio_vs_oz": 0.3584070796460177,
      "ratio_vs_o3": 0.2403560830860534
    },
    {
      "suite": "polybench_full",
      "name": "covariance",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/covariance.ll",
      "universal": 61.0,
      "none": 534.0,
      "oz": 184.0,
      "o3": 274.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.11423220973782772,
      "ratio_vs_oz": 0.33152173913043476,
      "ratio_vs_o3": 0.22262773722627738
    },
    {
      "suite": "polybench_full",
      "name": "2mm",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/2mm.ll",
      "universal": 137.0,
      "none": 682.0,
      "oz": 232.0,
      "o3": 343.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.20087976539589442,
      "ratio_vs_oz": 0.5905172413793104,
      "ratio_vs_o3": 0.39941690962099125
    },
    {
      "suite": "polybench_full",
      "name": "3mm",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/3mm.ll",
      "universal": 134.0,
      "none": 761.0,
      "oz": 259.0,
      "o3": 394.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.17608409986859397,
      "ratio_vs_oz": 0.5173745173745173,
      "ratio_vs_o3": 0.3401015228426396
    },
    {
      "suite": "polybench_full",
      "name": "atax",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/atax.ll",
      "universal": 78.0,
      "none": 465.0,
      "oz": 164.0,
      "o3": 273.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.16774193548387098,
      "ratio_vs_oz": 0.47560975609756095,
      "ratio_vs_o3": 0.2857142857142857
    },
    {
      "suite": "polybench_full",
      "name": "bicg",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/bicg.ll",
      "universal": 76.0,
      "none": 513.0,
      "oz": 187.0,
      "o3": 284.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.14814814814814814,
      "ratio_vs_oz": 0.40641711229946526,
      "ratio_vs_o3": 0.2676056338028169
    },
    {
      "suite": "polybench_full",
      "name": "doitgen",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/doitgen.ll",
      "universal": 145.0,
      "none": 550.0,
      "oz": 200.0,
      "o3": 356.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.2636363636363636,
      "ratio_vs_oz": 0.725,
      "ratio_vs_o3": 0.40730337078651685
    },
    {
      "suite": "polybench_full",
      "name": "mvt",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/mvt.ll",
      "universal": 67.0,
      "none": 524.0,
      "oz": 203.0,
      "o3": 303.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.12786259541984732,
      "ratio_vs_oz": 0.33004926108374383,
      "ratio_vs_o3": 0.22112211221122113
    },
    {
      "suite": "polybench_full",
      "name": "gemm",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/gemm.ll",
      "universal": 116.0,
      "none": 549.0,
      "oz": 190.0,
      "o3": 305.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.21129326047358835,
      "ratio_vs_oz": 0.6105263157894737,
      "ratio_vs_o3": 0.380327868852459
    },
    {
      "suite": "polybench_full",
      "name": "gemver",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/gemver.ll",
      "universal": 112.0,
      "none": 689.0,
      "oz": 227.0,
      "o3": 430.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.1625544267053701,
      "ratio_vs_oz": 0.4933920704845815,
      "ratio_vs_o3": 0.26046511627906976
    },
    {
      "suite": "polybench_full",
      "name": "gesummv",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/gesummv.ll",
      "universal": 59.0,
      "none": 490.0,
      "oz": 162.0,
      "o3": 287.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.12040816326530612,
      "ratio_vs_oz": 0.36419753086419754,
      "ratio_vs_o3": 0.20557491289198607
    },
    {
      "suite": "polybench_full",
      "name": "symm",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/symm.ll",
      "universal": 80.0,
      "none": 575.0,
      "oz": 196.0,
      "o3": 378.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.1391304347826087,
      "ratio_vs_oz": 0.40816326530612246,
      "ratio_vs_o3": 0.21164021164021163
    },
    {
      "suite": "polybench_full",
      "name": "syr2k",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/syr2k.ll",
      "universal": 94.0,
      "none": 534.0,
      "oz": 188.0,
      "o3": 371.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.1760299625468165,
      "ratio_vs_oz": 0.5,
      "ratio_vs_o3": 0.25336927223719674
    },
    {
      "suite": "polybench_full",
      "name": "syrk",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/syrk.ll",
      "universal": 86.0,
      "none": 481.0,
      "oz": 173.0,
      "o3": 298.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.1787941787941788,
      "ratio_vs_oz": 0.49710982658959535,
      "ratio_vs_o3": 0.28859060402684567
    },
    {
      "suite": "polybench_full",
      "name": "trmm",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/trmm.ll",
      "universal": 71.0,
      "none": 467.0,
      "oz": 161.0,
      "o3": 254.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.15203426124197003,
      "ratio_vs_oz": 0.4409937888198758,
      "ratio_vs_o3": 0.2795275590551181
    },
    {
      "suite": "polybench_full",
      "name": "cholesky",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/cholesky.ll",
      "universal": 69.0,
      "none": 617.0,
      "oz": 229.0,
      "o3": 347.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.11183144246353323,
      "ratio_vs_oz": 0.30131004366812225,
      "ratio_vs_o3": 0.1988472622478386
    },
    {
      "suite": "polybench_full",
      "name": "durbin",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/durbin.ll",
      "universal": 52.0,
      "none": 419.0,
      "oz": 164.0,
      "o3": 244.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.12410501193317422,
      "ratio_vs_oz": 0.3170731707317073,
      "ratio_vs_o3": 0.21311475409836064
    },
    {
      "suite": "polybench_full",
      "name": "gramschmidt",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/gramschmidt.ll",
      "universal": 83.0,
      "none": 643.0,
      "oz": 228.0,
      "o3": 390.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.1290824261275272,
      "ratio_vs_oz": 0.36403508771929827,
      "ratio_vs_o3": 0.2128205128205128
    },
    {
      "suite": "polybench_full",
      "name": "lu",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/lu.ll",
      "universal": 69.0,
      "none": 612.0,
      "oz": 231.0,
      "o3": 345.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.11274509803921569,
      "ratio_vs_oz": 0.2987012987012987,
      "ratio_vs_o3": 0.2
    },
    {
      "suite": "polybench_full",
      "name": "ludcmp",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/ludcmp.ll",
      "universal": 309.0,
      "none": 805.0,
      "oz": 293.0,
      "o3": 468.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.3838509316770186,
      "ratio_vs_oz": 1.0546075085324231,
      "ratio_vs_o3": 0.6602564102564102
    },
    {
      "suite": "polybench_full",
      "name": "trisolv",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/trisolv.ll",
      "universal": 55.0,
      "none": 404.0,
      "oz": 149.0,
      "o3": 248.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.13613861386138615,
      "ratio_vs_oz": 0.3691275167785235,
      "ratio_vs_o3": 0.2217741935483871
    },
    {
      "suite": "polybench_full",
      "name": "deriche",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/deriche.ll",
      "universal": 93.0,
      "none": 881.0,
      "oz": 251.0,
      "o3": 370.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.10556186152099886,
      "ratio_vs_oz": 0.3705179282868526,
      "ratio_vs_o3": 0.25135135135135134
    },
    {
      "suite": "polybench_full",
      "name": "floyd-warshall",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/floyd-warshall.ll",
      "universal": 71.0,
      "none": 431.0,
      "oz": 151.0,
      "o3": 233.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.16473317865429235,
      "ratio_vs_oz": 0.47019867549668876,
      "ratio_vs_o3": 0.30472103004291845
    },
    {
      "suite": "polybench_full",
      "name": "nussinov",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/nussinov.ll",
      "universal": 212.0,
      "none": 699.0,
      "oz": 179.0,
      "o3": 246.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.3032904148783977,
      "ratio_vs_oz": 1.1843575418994414,
      "ratio_vs_o3": 0.8617886178861789
    },
    {
      "suite": "polybench_full",
      "name": "adi",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/adi.ll",
      "universal": 80.0,
      "none": 838.0,
      "oz": 249.0,
      "o3": 417.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.0954653937947494,
      "ratio_vs_oz": 0.321285140562249,
      "ratio_vs_o3": 0.19184652278177458
    },
    {
      "suite": "polybench_full",
      "name": "fdtd-2d",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/fdtd-2d.ll",
      "universal": 95.0,
      "none": 759.0,
      "oz": 283.0,
      "o3": 477.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.1251646903820817,
      "ratio_vs_oz": 0.33568904593639576,
      "ratio_vs_o3": 0.19916142557651992
    },
    {
      "suite": "polybench_full",
      "name": "heat-3d",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/heat-3d.ll",
      "universal": 76.0,
      "none": 745.0,
      "oz": 235.0,
      "o3": 404.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.10201342281879194,
      "ratio_vs_oz": 0.32340425531914896,
      "ratio_vs_o3": 0.18811881188118812
    },
    {
      "suite": "polybench_full",
      "name": "jacobi-1d",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/jacobi-1d.ll",
      "universal": 55.0,
      "none": 386.0,
      "oz": 146.0,
      "o3": 274.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.14248704663212436,
      "ratio_vs_oz": 0.3767123287671233,
      "ratio_vs_o3": 0.20072992700729927
    },
    {
      "suite": "polybench_full",
      "name": "jacobi-2d",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/jacobi-2d.ll",
      "universal": 62.0,
      "none": 524.0,
      "oz": 196.0,
      "o3": 338.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.1183206106870229,
      "ratio_vs_oz": 0.3163265306122449,
      "ratio_vs_o3": 0.1834319526627219
    },
    {
      "suite": "polybench_full",
      "name": "seidel-2d",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/seidel-2d.ll",
      "universal": 59.0,
      "none": 456.0,
      "oz": 167.0,
      "o3": 219.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.12938596491228072,
      "ratio_vs_oz": 0.3532934131736527,
      "ratio_vs_o3": 0.2694063926940639
    }
  ],
  "failures": []
}
```
