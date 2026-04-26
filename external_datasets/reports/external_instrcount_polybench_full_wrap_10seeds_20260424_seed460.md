# External Validation Report

- Generated at: 2026-04-24 18:34:27
- Mode: instrcount
- Sequence source: /root/exp/RFunipassLab/results/instrcount/summaries/20260423_205014_703926_feature_lite_seed460.json
- Suites: polybench_full
- Sequence length: 15
- Objective baseline: oz
- Frontend mode: canonical

## Sequence

```text
module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner)
```

## Combined

```json
{
  "count": 30,
  "primary_metrics": {
    "count": 30,
    "mean_norm": 0.5510369946642277,
    "median_norm": 0.49037171229200216,
    "improved": 25,
    "tied": 0,
    "worsened": 5,
    "invalid": 0,
    "high_variance": 0,
    "improved_rate": 0.8333333333333334,
    "tie_rate": 0.0,
    "worsen_rate": 0.16666666666666666,
    "high_variance_rate": 0.0,
    "len_ratio": 0.125,
    "per_program": {
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/correlation.ll": {
        "ratio": 1.0132743362831858,
        "raw_value": 229.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/covariance.ll": {
        "ratio": 0.5054347826086957,
        "raw_value": 93.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/2mm.ll": {
        "ratio": 0.5560344827586207,
        "raw_value": 129.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/3mm.ll": {
        "ratio": 0.5096525096525096,
        "raw_value": 132.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/atax.ll": {
        "ratio": 0.5060975609756098,
        "raw_value": 83.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/bicg.ll": {
        "ratio": 0.4385026737967914,
        "raw_value": 82.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/doitgen.ll": {
        "ratio": 0.705,
        "raw_value": 141.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/mvt.ll": {
        "ratio": 0.3694581280788177,
        "raw_value": 75.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/gemm.ll": {
        "ratio": 0.5947368421052631,
        "raw_value": 113.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/gemver.ll": {
        "ratio": 0.4008810572687225,
        "raw_value": 91.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/gesummv.ll": {
        "ratio": 0.47530864197530864,
        "raw_value": 77.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/symm.ll": {
        "ratio": 0.5255102040816326,
        "raw_value": 103.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/syr2k.ll": {
        "ratio": 0.5425531914893617,
        "raw_value": 102.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/syrk.ll": {
        "ratio": 0.5491329479768786,
        "raw_value": 95.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/trmm.ll": {
        "ratio": 1.0993788819875776,
        "raw_value": 177.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/cholesky.ll": {
        "ratio": 0.31004366812227074,
        "raw_value": 71.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/durbin.ll": {
        "ratio": 0.43902439024390244,
        "raw_value": 72.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/gramschmidt.ll": {
        "ratio": 1.0482456140350878,
        "raw_value": 239.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/lu.ll": {
        "ratio": 0.30735930735930733,
        "raw_value": 71.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/ludcmp.ll": {
        "ratio": 1.0614334470989761,
        "raw_value": 311.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/trisolv.ll": {
        "ratio": 0.348993288590604,
        "raw_value": 52.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/deriche.ll": {
        "ratio": 0.30278884462151395,
        "raw_value": 76.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/floyd-warshall.ll": {
        "ratio": 0.5231788079470199,
        "raw_value": 79.0,
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
        "ratio": 0.3373493975903614,
        "raw_value": 84.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/fdtd-2d.ll": {
        "ratio": 0.3286219081272085,
        "raw_value": 93.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/heat-3d.ll": {
        "ratio": 0.34893617021276596,
        "raw_value": 82.0,
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
        "ratio": 0.3979591836734694,
        "raw_value": 78.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/seidel-2d.ll": {
        "ratio": 0.4251497005988024,
        "raw_value": 71.0,
        "status": "ok",
        "variance_pct": 0.0
      }
    },
    "objective": 0.5760369946642278
  },
  "fixed_baselines": {
    "none": {
      "count": 30,
      "mean_ratio": 0.189898598294409,
      "median_ratio": 0.1726468439027909,
      "improved": 30,
      "tied": 0,
      "worsened": 0
    },
    "oz": {
      "count": 30,
      "mean_ratio": 0.5510369946642277,
      "median_ratio": 0.49037171229200216,
      "improved": 25,
      "tied": 0,
      "worsened": 5
    },
    "o3": {
      "count": 30,
      "mean_ratio": 0.34445777990132687,
      "median_ratio": 0.29190718078965594,
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
    "mean_norm": 0.5510369946642277,
    "median_norm": 0.49037171229200216,
    "improved": 25,
    "tied": 0,
    "worsened": 5,
    "invalid": 0,
    "high_variance": 0,
    "improved_rate": 0.8333333333333334,
    "tie_rate": 0.0,
    "worsen_rate": 0.16666666666666666,
    "high_variance_rate": 0.0,
    "len_ratio": 0.125,
    "per_program": {
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/correlation.ll": {
        "ratio": 1.0132743362831858,
        "raw_value": 229.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/covariance.ll": {
        "ratio": 0.5054347826086957,
        "raw_value": 93.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/2mm.ll": {
        "ratio": 0.5560344827586207,
        "raw_value": 129.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/3mm.ll": {
        "ratio": 0.5096525096525096,
        "raw_value": 132.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/atax.ll": {
        "ratio": 0.5060975609756098,
        "raw_value": 83.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/bicg.ll": {
        "ratio": 0.4385026737967914,
        "raw_value": 82.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/doitgen.ll": {
        "ratio": 0.705,
        "raw_value": 141.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/mvt.ll": {
        "ratio": 0.3694581280788177,
        "raw_value": 75.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/gemm.ll": {
        "ratio": 0.5947368421052631,
        "raw_value": 113.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/gemver.ll": {
        "ratio": 0.4008810572687225,
        "raw_value": 91.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/gesummv.ll": {
        "ratio": 0.47530864197530864,
        "raw_value": 77.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/symm.ll": {
        "ratio": 0.5255102040816326,
        "raw_value": 103.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/syr2k.ll": {
        "ratio": 0.5425531914893617,
        "raw_value": 102.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/syrk.ll": {
        "ratio": 0.5491329479768786,
        "raw_value": 95.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/trmm.ll": {
        "ratio": 1.0993788819875776,
        "raw_value": 177.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/cholesky.ll": {
        "ratio": 0.31004366812227074,
        "raw_value": 71.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/durbin.ll": {
        "ratio": 0.43902439024390244,
        "raw_value": 72.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/gramschmidt.ll": {
        "ratio": 1.0482456140350878,
        "raw_value": 239.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/lu.ll": {
        "ratio": 0.30735930735930733,
        "raw_value": 71.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/ludcmp.ll": {
        "ratio": 1.0614334470989761,
        "raw_value": 311.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/trisolv.ll": {
        "ratio": 0.348993288590604,
        "raw_value": 52.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/deriche.ll": {
        "ratio": 0.30278884462151395,
        "raw_value": 76.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/floyd-warshall.ll": {
        "ratio": 0.5231788079470199,
        "raw_value": 79.0,
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
        "ratio": 0.3373493975903614,
        "raw_value": 84.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/fdtd-2d.ll": {
        "ratio": 0.3286219081272085,
        "raw_value": 93.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/heat-3d.ll": {
        "ratio": 0.34893617021276596,
        "raw_value": 82.0,
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
        "ratio": 0.3979591836734694,
        "raw_value": 78.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/seidel-2d.ll": {
        "ratio": 0.4251497005988024,
        "raw_value": 71.0,
        "status": "ok",
        "variance_pct": 0.0
      }
    },
    "objective": 0.5760369946642278
  },
  "fixed_baselines": {
    "none": {
      "count": 30,
      "mean_ratio": 0.189898598294409,
      "median_ratio": 0.1726468439027909,
      "improved": 30,
      "tied": 0,
      "worsened": 0
    },
    "oz": {
      "count": 30,
      "mean_ratio": 0.5510369946642277,
      "median_ratio": 0.49037171229200216,
      "improved": 25,
      "tied": 0,
      "worsened": 5
    },
    "o3": {
      "count": 30,
      "mean_ratio": 0.34445777990132687,
      "median_ratio": 0.29190718078965594,
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
      "universal": 229.0,
      "none": 677.0,
      "oz": 226.0,
      "o3": 337.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.33825701624815363,
      "ratio_vs_oz": 1.0132743362831858,
      "ratio_vs_o3": 0.6795252225519288
    },
    {
      "suite": "polybench_full",
      "name": "covariance",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/covariance.ll",
      "universal": 93.0,
      "none": 534.0,
      "oz": 184.0,
      "o3": 274.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.17415730337078653,
      "ratio_vs_oz": 0.5054347826086957,
      "ratio_vs_o3": 0.33941605839416056
    },
    {
      "suite": "polybench_full",
      "name": "2mm",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/2mm.ll",
      "universal": 129.0,
      "none": 682.0,
      "oz": 232.0,
      "o3": 343.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.18914956011730205,
      "ratio_vs_oz": 0.5560344827586207,
      "ratio_vs_o3": 0.3760932944606414
    },
    {
      "suite": "polybench_full",
      "name": "3mm",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/3mm.ll",
      "universal": 132.0,
      "none": 761.0,
      "oz": 259.0,
      "o3": 394.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.17345597897503284,
      "ratio_vs_oz": 0.5096525096525096,
      "ratio_vs_o3": 0.3350253807106599
    },
    {
      "suite": "polybench_full",
      "name": "atax",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/atax.ll",
      "universal": 83.0,
      "none": 465.0,
      "oz": 164.0,
      "o3": 273.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.17849462365591398,
      "ratio_vs_oz": 0.5060975609756098,
      "ratio_vs_o3": 0.304029304029304
    },
    {
      "suite": "polybench_full",
      "name": "bicg",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/bicg.ll",
      "universal": 82.0,
      "none": 513.0,
      "oz": 187.0,
      "o3": 284.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.15984405458089668,
      "ratio_vs_oz": 0.4385026737967914,
      "ratio_vs_o3": 0.2887323943661972
    },
    {
      "suite": "polybench_full",
      "name": "doitgen",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/doitgen.ll",
      "universal": 141.0,
      "none": 550.0,
      "oz": 200.0,
      "o3": 356.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.25636363636363635,
      "ratio_vs_oz": 0.705,
      "ratio_vs_o3": 0.3960674157303371
    },
    {
      "suite": "polybench_full",
      "name": "mvt",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/mvt.ll",
      "universal": 75.0,
      "none": 524.0,
      "oz": 203.0,
      "o3": 303.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.1431297709923664,
      "ratio_vs_oz": 0.3694581280788177,
      "ratio_vs_o3": 0.24752475247524752
    },
    {
      "suite": "polybench_full",
      "name": "gemm",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/gemm.ll",
      "universal": 113.0,
      "none": 549.0,
      "oz": 190.0,
      "o3": 305.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.2058287795992714,
      "ratio_vs_oz": 0.5947368421052631,
      "ratio_vs_o3": 0.3704918032786885
    },
    {
      "suite": "polybench_full",
      "name": "gemver",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/gemver.ll",
      "universal": 91.0,
      "none": 689.0,
      "oz": 227.0,
      "o3": 430.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.1320754716981132,
      "ratio_vs_oz": 0.4008810572687225,
      "ratio_vs_o3": 0.2116279069767442
    },
    {
      "suite": "polybench_full",
      "name": "gesummv",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/gesummv.ll",
      "universal": 77.0,
      "none": 490.0,
      "oz": 162.0,
      "o3": 287.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.15714285714285714,
      "ratio_vs_oz": 0.47530864197530864,
      "ratio_vs_o3": 0.2682926829268293
    },
    {
      "suite": "polybench_full",
      "name": "symm",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/symm.ll",
      "universal": 103.0,
      "none": 575.0,
      "oz": 196.0,
      "o3": 378.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.1791304347826087,
      "ratio_vs_oz": 0.5255102040816326,
      "ratio_vs_o3": 0.2724867724867725
    },
    {
      "suite": "polybench_full",
      "name": "syr2k",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/syr2k.ll",
      "universal": 102.0,
      "none": 534.0,
      "oz": 188.0,
      "o3": 371.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.19101123595505617,
      "ratio_vs_oz": 0.5425531914893617,
      "ratio_vs_o3": 0.2749326145552561
    },
    {
      "suite": "polybench_full",
      "name": "syrk",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/syrk.ll",
      "universal": 95.0,
      "none": 481.0,
      "oz": 173.0,
      "o3": 298.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.19750519750519752,
      "ratio_vs_oz": 0.5491329479768786,
      "ratio_vs_o3": 0.3187919463087248
    },
    {
      "suite": "polybench_full",
      "name": "trmm",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/trmm.ll",
      "universal": 177.0,
      "none": 467.0,
      "oz": 161.0,
      "o3": 254.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.37901498929336186,
      "ratio_vs_oz": 1.0993788819875776,
      "ratio_vs_o3": 0.6968503937007874
    },
    {
      "suite": "polybench_full",
      "name": "cholesky",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/cholesky.ll",
      "universal": 71.0,
      "none": 617.0,
      "oz": 229.0,
      "o3": 347.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.11507293354943274,
      "ratio_vs_oz": 0.31004366812227074,
      "ratio_vs_o3": 0.20461095100864554
    },
    {
      "suite": "polybench_full",
      "name": "durbin",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/durbin.ll",
      "universal": 72.0,
      "none": 419.0,
      "oz": 164.0,
      "o3": 244.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.1718377088305489,
      "ratio_vs_oz": 0.43902439024390244,
      "ratio_vs_o3": 0.29508196721311475
    },
    {
      "suite": "polybench_full",
      "name": "gramschmidt",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/gramschmidt.ll",
      "universal": 239.0,
      "none": 643.0,
      "oz": 228.0,
      "o3": 390.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.37169517884914466,
      "ratio_vs_oz": 1.0482456140350878,
      "ratio_vs_o3": 0.6128205128205129
    },
    {
      "suite": "polybench_full",
      "name": "lu",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/lu.ll",
      "universal": 71.0,
      "none": 612.0,
      "oz": 231.0,
      "o3": 345.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.11601307189542484,
      "ratio_vs_oz": 0.30735930735930733,
      "ratio_vs_o3": 0.20579710144927535
    },
    {
      "suite": "polybench_full",
      "name": "ludcmp",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/ludcmp.ll",
      "universal": 311.0,
      "none": 805.0,
      "oz": 293.0,
      "o3": 468.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.38633540372670805,
      "ratio_vs_oz": 1.0614334470989761,
      "ratio_vs_o3": 0.6645299145299145
    },
    {
      "suite": "polybench_full",
      "name": "trisolv",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/trisolv.ll",
      "universal": 52.0,
      "none": 404.0,
      "oz": 149.0,
      "o3": 248.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.12871287128712872,
      "ratio_vs_oz": 0.348993288590604,
      "ratio_vs_o3": 0.20967741935483872
    },
    {
      "suite": "polybench_full",
      "name": "deriche",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/deriche.ll",
      "universal": 76.0,
      "none": 881.0,
      "oz": 251.0,
      "o3": 370.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.08626560726447219,
      "ratio_vs_oz": 0.30278884462151395,
      "ratio_vs_o3": 0.20540540540540542
    },
    {
      "suite": "polybench_full",
      "name": "floyd-warshall",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/floyd-warshall.ll",
      "universal": 79.0,
      "none": 431.0,
      "oz": 151.0,
      "o3": 233.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.18329466357308585,
      "ratio_vs_oz": 0.5231788079470199,
      "ratio_vs_o3": 0.33905579399141633
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
      "universal": 84.0,
      "none": 838.0,
      "oz": 249.0,
      "o3": 417.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.10023866348448687,
      "ratio_vs_oz": 0.3373493975903614,
      "ratio_vs_o3": 0.2014388489208633
    },
    {
      "suite": "polybench_full",
      "name": "fdtd-2d",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/fdtd-2d.ll",
      "universal": 93.0,
      "none": 759.0,
      "oz": 283.0,
      "o3": 477.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.1225296442687747,
      "ratio_vs_oz": 0.3286219081272085,
      "ratio_vs_o3": 0.1949685534591195
    },
    {
      "suite": "polybench_full",
      "name": "heat-3d",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/heat-3d.ll",
      "universal": 82.0,
      "none": 745.0,
      "oz": 235.0,
      "o3": 404.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.11006711409395974,
      "ratio_vs_oz": 0.34893617021276596,
      "ratio_vs_o3": 0.20297029702970298
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
      "universal": 78.0,
      "none": 524.0,
      "oz": 196.0,
      "o3": 338.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.14885496183206107,
      "ratio_vs_oz": 0.3979591836734694,
      "ratio_vs_o3": 0.23076923076923078
    },
    {
      "suite": "polybench_full",
      "name": "seidel-2d",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/seidel-2d.ll",
      "universal": 71.0,
      "none": 456.0,
      "oz": 167.0,
      "o3": 219.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.15570175438596492,
      "ratio_vs_oz": 0.4251497005988024,
      "ratio_vs_o3": 0.3242009132420091
    }
  ],
  "failures": []
}
```
