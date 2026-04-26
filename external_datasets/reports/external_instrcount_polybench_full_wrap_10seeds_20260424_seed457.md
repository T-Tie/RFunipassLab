# External Validation Report

- Generated at: 2026-04-24 18:33:38
- Mode: instrcount
- Sequence source: /root/exp/RFunipassLab/results/instrcount/summaries/20260423_184811_146360_feature_lite_seed457.json
- Suites: polybench_full
- Sequence length: 15
- Objective baseline: oz
- Frontend mode: canonical

## Sequence

```text
module(attributor),module(elim-avail-extern),module(iroutliner),function(gvn-hoist),module(attributor),function(gvn-hoist),module(iroutliner),function(jump-threading),module(globalopt),module(inferattrs),function(newgvn),module(attributor),module(iroutliner),module(scc-oz-module-inliner),module(attributor)
```

## Combined

```json
{
  "count": 30,
  "primary_metrics": {
    "count": 30,
    "mean_norm": 0.46216868874296324,
    "median_norm": 0.4078611070541843,
    "improved": 29,
    "tied": 0,
    "worsened": 1,
    "invalid": 0,
    "high_variance": 0,
    "improved_rate": 0.9666666666666667,
    "tie_rate": 0.0,
    "worsen_rate": 0.03333333333333333,
    "high_variance_rate": 0.0,
    "len_ratio": 0.125,
    "per_program": {
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/correlation.ll": {
        "ratio": 0.9734513274336283,
        "raw_value": 220.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/covariance.ll": {
        "ratio": 0.5489130434782609,
        "raw_value": 101.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/2mm.ll": {
        "ratio": 0.5474137931034483,
        "raw_value": 127.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/3mm.ll": {
        "ratio": 0.5019305019305019,
        "raw_value": 130.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/atax.ll": {
        "ratio": 0.40853658536585363,
        "raw_value": 67.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/bicg.ll": {
        "ratio": 0.37433155080213903,
        "raw_value": 70.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/doitgen.ll": {
        "ratio": 0.6,
        "raw_value": 120.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/mvt.ll": {
        "ratio": 0.35467980295566504,
        "raw_value": 72.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/gemm.ll": {
        "ratio": 0.5578947368421052,
        "raw_value": 106.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/gemver.ll": {
        "ratio": 0.44933920704845814,
        "raw_value": 102.0,
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
        "ratio": 0.4336734693877551,
        "raw_value": 85.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/syr2k.ll": {
        "ratio": 0.4574468085106383,
        "raw_value": 86.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/syrk.ll": {
        "ratio": 0.4508670520231214,
        "raw_value": 78.0,
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
        "ratio": 0.2445414847161572,
        "raw_value": 56.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/durbin.ll": {
        "ratio": 0.32926829268292684,
        "raw_value": 54.0,
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
        "ratio": 0.24242424242424243,
        "raw_value": 56.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/ludcmp.ll": {
        "ratio": 1.0034129692832765,
        "raw_value": 294.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/trisolv.ll": {
        "ratio": 0.3624161073825503,
        "raw_value": 54.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/deriche.ll": {
        "ratio": 0.2948207171314741,
        "raw_value": 74.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/floyd-warshall.ll": {
        "ratio": 0.5033112582781457,
        "raw_value": 76.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/nussinov.ll": {
        "ratio": 0.994413407821229,
        "raw_value": 178.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/adi.ll": {
        "ratio": 0.3092369477911647,
        "raw_value": 77.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/fdtd-2d.ll": {
        "ratio": 0.3215547703180212,
        "raw_value": 91.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/heat-3d.ll": {
        "ratio": 0.28085106382978725,
        "raw_value": 66.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/jacobi-1d.ll": {
        "ratio": 0.3561643835616438,
        "raw_value": 52.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/jacobi-2d.ll": {
        "ratio": 0.3877551020408163,
        "raw_value": 76.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/seidel-2d.ll": {
        "ratio": 0.40718562874251496,
        "raw_value": 68.0,
        "status": "ok",
        "variance_pct": 0.0
      }
    },
    "objective": 0.46716868874296325
  },
  "fixed_baselines": {
    "none": {
      "count": 30,
      "mean_ratio": 0.15917338990833935,
      "median_ratio": 0.14643212744772652,
      "improved": 30,
      "tied": 0,
      "worsened": 0
    },
    "oz": {
      "count": 30,
      "mean_ratio": 0.46216868874296324,
      "median_ratio": 0.4078611070541843,
      "improved": 29,
      "tied": 0,
      "worsened": 1
    },
    "o3": {
      "count": 30,
      "mean_ratio": 0.2897995338036996,
      "median_ratio": 0.2374165323509095,
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
    "mean_norm": 0.46216868874296324,
    "median_norm": 0.4078611070541843,
    "improved": 29,
    "tied": 0,
    "worsened": 1,
    "invalid": 0,
    "high_variance": 0,
    "improved_rate": 0.9666666666666667,
    "tie_rate": 0.0,
    "worsen_rate": 0.03333333333333333,
    "high_variance_rate": 0.0,
    "len_ratio": 0.125,
    "per_program": {
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/correlation.ll": {
        "ratio": 0.9734513274336283,
        "raw_value": 220.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/covariance.ll": {
        "ratio": 0.5489130434782609,
        "raw_value": 101.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/2mm.ll": {
        "ratio": 0.5474137931034483,
        "raw_value": 127.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/3mm.ll": {
        "ratio": 0.5019305019305019,
        "raw_value": 130.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/atax.ll": {
        "ratio": 0.40853658536585363,
        "raw_value": 67.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/bicg.ll": {
        "ratio": 0.37433155080213903,
        "raw_value": 70.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/doitgen.ll": {
        "ratio": 0.6,
        "raw_value": 120.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/mvt.ll": {
        "ratio": 0.35467980295566504,
        "raw_value": 72.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/gemm.ll": {
        "ratio": 0.5578947368421052,
        "raw_value": 106.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/gemver.ll": {
        "ratio": 0.44933920704845814,
        "raw_value": 102.0,
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
        "ratio": 0.4336734693877551,
        "raw_value": 85.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/syr2k.ll": {
        "ratio": 0.4574468085106383,
        "raw_value": 86.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/syrk.ll": {
        "ratio": 0.4508670520231214,
        "raw_value": 78.0,
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
        "ratio": 0.2445414847161572,
        "raw_value": 56.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/durbin.ll": {
        "ratio": 0.32926829268292684,
        "raw_value": 54.0,
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
        "ratio": 0.24242424242424243,
        "raw_value": 56.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/ludcmp.ll": {
        "ratio": 1.0034129692832765,
        "raw_value": 294.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/trisolv.ll": {
        "ratio": 0.3624161073825503,
        "raw_value": 54.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/deriche.ll": {
        "ratio": 0.2948207171314741,
        "raw_value": 74.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/floyd-warshall.ll": {
        "ratio": 0.5033112582781457,
        "raw_value": 76.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/nussinov.ll": {
        "ratio": 0.994413407821229,
        "raw_value": 178.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/adi.ll": {
        "ratio": 0.3092369477911647,
        "raw_value": 77.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/fdtd-2d.ll": {
        "ratio": 0.3215547703180212,
        "raw_value": 91.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/heat-3d.ll": {
        "ratio": 0.28085106382978725,
        "raw_value": 66.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/jacobi-1d.ll": {
        "ratio": 0.3561643835616438,
        "raw_value": 52.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/jacobi-2d.ll": {
        "ratio": 0.3877551020408163,
        "raw_value": 76.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/seidel-2d.ll": {
        "ratio": 0.40718562874251496,
        "raw_value": 68.0,
        "status": "ok",
        "variance_pct": 0.0
      }
    },
    "objective": 0.46716868874296325
  },
  "fixed_baselines": {
    "none": {
      "count": 30,
      "mean_ratio": 0.15917338990833935,
      "median_ratio": 0.14643212744772652,
      "improved": 30,
      "tied": 0,
      "worsened": 0
    },
    "oz": {
      "count": 30,
      "mean_ratio": 0.46216868874296324,
      "median_ratio": 0.4078611070541843,
      "improved": 29,
      "tied": 0,
      "worsened": 1
    },
    "o3": {
      "count": 30,
      "mean_ratio": 0.2897995338036996,
      "median_ratio": 0.2374165323509095,
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
      "universal": 220.0,
      "none": 677.0,
      "oz": 226.0,
      "o3": 337.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.3249630723781389,
      "ratio_vs_oz": 0.9734513274336283,
      "ratio_vs_o3": 0.6528189910979229
    },
    {
      "suite": "polybench_full",
      "name": "covariance",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/covariance.ll",
      "universal": 101.0,
      "none": 534.0,
      "oz": 184.0,
      "o3": 274.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.1891385767790262,
      "ratio_vs_oz": 0.5489130434782609,
      "ratio_vs_o3": 0.3686131386861314
    },
    {
      "suite": "polybench_full",
      "name": "2mm",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/2mm.ll",
      "universal": 127.0,
      "none": 682.0,
      "oz": 232.0,
      "o3": 343.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.18621700879765396,
      "ratio_vs_oz": 0.5474137931034483,
      "ratio_vs_o3": 0.37026239067055394
    },
    {
      "suite": "polybench_full",
      "name": "3mm",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/3mm.ll",
      "universal": 130.0,
      "none": 761.0,
      "oz": 259.0,
      "o3": 394.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.17082785808147175,
      "ratio_vs_oz": 0.5019305019305019,
      "ratio_vs_o3": 0.3299492385786802
    },
    {
      "suite": "polybench_full",
      "name": "atax",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/atax.ll",
      "universal": 67.0,
      "none": 465.0,
      "oz": 164.0,
      "o3": 273.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.14408602150537633,
      "ratio_vs_oz": 0.40853658536585363,
      "ratio_vs_o3": 0.2454212454212454
    },
    {
      "suite": "polybench_full",
      "name": "bicg",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/bicg.ll",
      "universal": 70.0,
      "none": 513.0,
      "oz": 187.0,
      "o3": 284.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.1364522417153996,
      "ratio_vs_oz": 0.37433155080213903,
      "ratio_vs_o3": 0.24647887323943662
    },
    {
      "suite": "polybench_full",
      "name": "doitgen",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/doitgen.ll",
      "universal": 120.0,
      "none": 550.0,
      "oz": 200.0,
      "o3": 356.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.21818181818181817,
      "ratio_vs_oz": 0.6,
      "ratio_vs_o3": 0.33707865168539325
    },
    {
      "suite": "polybench_full",
      "name": "mvt",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/mvt.ll",
      "universal": 72.0,
      "none": 524.0,
      "oz": 203.0,
      "o3": 303.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.13740458015267176,
      "ratio_vs_oz": 0.35467980295566504,
      "ratio_vs_o3": 0.2376237623762376
    },
    {
      "suite": "polybench_full",
      "name": "gemm",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/gemm.ll",
      "universal": 106.0,
      "none": 549.0,
      "oz": 190.0,
      "o3": 305.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.1930783242258652,
      "ratio_vs_oz": 0.5578947368421052,
      "ratio_vs_o3": 0.3475409836065574
    },
    {
      "suite": "polybench_full",
      "name": "gemver",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/gemver.ll",
      "universal": 102.0,
      "none": 689.0,
      "oz": 227.0,
      "o3": 430.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.14804063860667635,
      "ratio_vs_oz": 0.44933920704845814,
      "ratio_vs_o3": 0.2372093023255814
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
      "universal": 85.0,
      "none": 575.0,
      "oz": 196.0,
      "o3": 378.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.14782608695652175,
      "ratio_vs_oz": 0.4336734693877551,
      "ratio_vs_o3": 0.22486772486772486
    },
    {
      "suite": "polybench_full",
      "name": "syr2k",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/syr2k.ll",
      "universal": 86.0,
      "none": 534.0,
      "oz": 188.0,
      "o3": 371.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.16104868913857678,
      "ratio_vs_oz": 0.4574468085106383,
      "ratio_vs_o3": 0.23180592991913745
    },
    {
      "suite": "polybench_full",
      "name": "syrk",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/syrk.ll",
      "universal": 78.0,
      "none": 481.0,
      "oz": 173.0,
      "o3": 298.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.16216216216216217,
      "ratio_vs_oz": 0.4508670520231214,
      "ratio_vs_o3": 0.26174496644295303
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
      "universal": 56.0,
      "none": 617.0,
      "oz": 229.0,
      "o3": 347.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.09076175040518639,
      "ratio_vs_oz": 0.2445414847161572,
      "ratio_vs_o3": 0.16138328530259366
    },
    {
      "suite": "polybench_full",
      "name": "durbin",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/durbin.ll",
      "universal": 54.0,
      "none": 419.0,
      "oz": 164.0,
      "o3": 244.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.1288782816229117,
      "ratio_vs_oz": 0.32926829268292684,
      "ratio_vs_o3": 0.22131147540983606
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
      "universal": 56.0,
      "none": 612.0,
      "oz": 231.0,
      "o3": 345.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.0915032679738562,
      "ratio_vs_oz": 0.24242424242424243,
      "ratio_vs_o3": 0.16231884057971013
    },
    {
      "suite": "polybench_full",
      "name": "ludcmp",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/ludcmp.ll",
      "universal": 294.0,
      "none": 805.0,
      "oz": 293.0,
      "o3": 468.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.3652173913043478,
      "ratio_vs_oz": 1.0034129692832765,
      "ratio_vs_o3": 0.6282051282051282
    },
    {
      "suite": "polybench_full",
      "name": "trisolv",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/trisolv.ll",
      "universal": 54.0,
      "none": 404.0,
      "oz": 149.0,
      "o3": 248.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.13366336633663367,
      "ratio_vs_oz": 0.3624161073825503,
      "ratio_vs_o3": 0.21774193548387097
    },
    {
      "suite": "polybench_full",
      "name": "deriche",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/deriche.ll",
      "universal": 74.0,
      "none": 881.0,
      "oz": 251.0,
      "o3": 370.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.08399545970488081,
      "ratio_vs_oz": 0.2948207171314741,
      "ratio_vs_o3": 0.2
    },
    {
      "suite": "polybench_full",
      "name": "floyd-warshall",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/floyd-warshall.ll",
      "universal": 76.0,
      "none": 431.0,
      "oz": 151.0,
      "o3": 233.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.17633410672853828,
      "ratio_vs_oz": 0.5033112582781457,
      "ratio_vs_o3": 0.3261802575107296
    },
    {
      "suite": "polybench_full",
      "name": "nussinov",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/nussinov.ll",
      "universal": 178.0,
      "none": 699.0,
      "oz": 179.0,
      "o3": 246.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.25464949928469244,
      "ratio_vs_oz": 0.994413407821229,
      "ratio_vs_o3": 0.7235772357723578
    },
    {
      "suite": "polybench_full",
      "name": "adi",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/adi.ll",
      "universal": 77.0,
      "none": 838.0,
      "oz": 249.0,
      "o3": 417.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.09188544152744631,
      "ratio_vs_oz": 0.3092369477911647,
      "ratio_vs_o3": 0.18465227817745802
    },
    {
      "suite": "polybench_full",
      "name": "fdtd-2d",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/fdtd-2d.ll",
      "universal": 91.0,
      "none": 759.0,
      "oz": 283.0,
      "o3": 477.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.11989459815546773,
      "ratio_vs_oz": 0.3215547703180212,
      "ratio_vs_o3": 0.19077568134171907
    },
    {
      "suite": "polybench_full",
      "name": "heat-3d",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/heat-3d.ll",
      "universal": 66.0,
      "none": 745.0,
      "oz": 235.0,
      "o3": 404.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.08859060402684564,
      "ratio_vs_oz": 0.28085106382978725,
      "ratio_vs_o3": 0.16336633663366337
    },
    {
      "suite": "polybench_full",
      "name": "jacobi-1d",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/jacobi-1d.ll",
      "universal": 52.0,
      "none": 386.0,
      "oz": 146.0,
      "o3": 274.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.13471502590673576,
      "ratio_vs_oz": 0.3561643835616438,
      "ratio_vs_o3": 0.1897810218978102
    },
    {
      "suite": "polybench_full",
      "name": "jacobi-2d",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/jacobi-2d.ll",
      "universal": 76.0,
      "none": 524.0,
      "oz": 196.0,
      "o3": 338.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.1450381679389313,
      "ratio_vs_oz": 0.3877551020408163,
      "ratio_vs_o3": 0.22485207100591717
    },
    {
      "suite": "polybench_full",
      "name": "seidel-2d",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/seidel-2d.ll",
      "universal": 68.0,
      "none": 456.0,
      "oz": 167.0,
      "o3": 219.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.14912280701754385,
      "ratio_vs_oz": 0.40718562874251496,
      "ratio_vs_o3": 0.3105022831050228
    }
  ],
  "failures": []
}
```
