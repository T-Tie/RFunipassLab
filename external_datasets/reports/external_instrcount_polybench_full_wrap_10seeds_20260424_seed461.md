# External Validation Report

- Generated at: 2026-04-24 18:34:45
- Mode: instrcount
- Sequence source: /root/exp/RFunipassLab/results/instrcount/summaries/20260423_211628_575222_feature_lite_seed461.json
- Suites: polybench_full
- Sequence length: 18
- Objective baseline: oz
- Frontend mode: canonical

## Sequence

```text
module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner)
```

## Combined

```json
{
  "count": 30,
  "primary_metrics": {
    "count": 30,
    "mean_norm": 0.7948752190136532,
    "median_norm": 0.9894971526807779,
    "improved": 17,
    "tied": 2,
    "worsened": 11,
    "invalid": 0,
    "high_variance": 0,
    "improved_rate": 0.5666666666666667,
    "tie_rate": 0.06666666666666667,
    "worsen_rate": 0.36666666666666664,
    "high_variance_rate": 0.0,
    "len_ratio": 0.15,
    "per_program": {
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/correlation.ll": {
        "ratio": 0.9424778761061947,
        "raw_value": 213.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/covariance.ll": {
        "ratio": 0.967391304347826,
        "raw_value": 178.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/2mm.ll": {
        "ratio": 1.0129310344827587,
        "raw_value": 235.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/3mm.ll": {
        "ratio": 1.0077220077220077,
        "raw_value": 261.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/atax.ll": {
        "ratio": 0.9878048780487805,
        "raw_value": 162.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/bicg.ll": {
        "ratio": 0.7700534759358288,
        "raw_value": 144.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/doitgen.ll": {
        "ratio": 1.005,
        "raw_value": 201.0,
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
        "ratio": 1.0263157894736843,
        "raw_value": 195.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/gemver.ll": {
        "ratio": 0.9911894273127754,
        "raw_value": 225.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/gesummv.ll": {
        "ratio": 0.5246913580246914,
        "raw_value": 85.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/symm.ll": {
        "ratio": 0.42346938775510207,
        "raw_value": 83.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/syr2k.ll": {
        "ratio": 1.0,
        "raw_value": 188.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/syrk.ll": {
        "ratio": 1.0,
        "raw_value": 173.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/trmm.ll": {
        "ratio": 0.9937888198757764,
        "raw_value": 160.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/cholesky.ll": {
        "ratio": 1.0043668122270741,
        "raw_value": 230.0,
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
        "ratio": 0.3684210526315789,
        "raw_value": 84.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/lu.ll": {
        "ratio": 1.0086580086580086,
        "raw_value": 233.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/ludcmp.ll": {
        "ratio": 1.006825938566553,
        "raw_value": 295.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/trisolv.ll": {
        "ratio": 0.9865771812080537,
        "raw_value": 147.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/deriche.ll": {
        "ratio": 1.0119521912350598,
        "raw_value": 254.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/floyd-warshall.ll": {
        "ratio": 0.5099337748344371,
        "raw_value": 77.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/nussinov.ll": {
        "ratio": 1.094972067039106,
        "raw_value": 196.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/adi.ll": {
        "ratio": 0.3293172690763052,
        "raw_value": 82.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/fdtd-2d.ll": {
        "ratio": 1.017667844522968,
        "raw_value": 288.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/heat-3d.ll": {
        "ratio": 1.004255319148936,
        "raw_value": 236.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/jacobi-1d.ll": {
        "ratio": 0.363013698630137,
        "raw_value": 53.0,
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
        "ratio": 0.41317365269461076,
        "raw_value": 69.0,
        "status": "ok",
        "variance_pct": 0.0
      }
    },
    "objective": 0.8498752190136531
  },
  "fixed_baselines": {
    "none": {
      "count": 30,
      "mean_ratio": 0.27469124492755764,
      "median_ratio": 0.3216693778552713,
      "improved": 30,
      "tied": 0,
      "worsened": 0
    },
    "oz": {
      "count": 30,
      "mean_ratio": 0.7948752190136532,
      "median_ratio": 0.9894971526807779,
      "improved": 17,
      "tied": 2,
      "worsened": 11
    },
    "o3": {
      "count": 30,
      "mean_ratio": 0.49529245117861515,
      "median_ratio": 0.582347664296631,
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
    "mean_norm": 0.7948752190136532,
    "median_norm": 0.9894971526807779,
    "improved": 17,
    "tied": 2,
    "worsened": 11,
    "invalid": 0,
    "high_variance": 0,
    "improved_rate": 0.5666666666666667,
    "tie_rate": 0.06666666666666667,
    "worsen_rate": 0.36666666666666664,
    "high_variance_rate": 0.0,
    "len_ratio": 0.15,
    "per_program": {
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/correlation.ll": {
        "ratio": 0.9424778761061947,
        "raw_value": 213.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/covariance.ll": {
        "ratio": 0.967391304347826,
        "raw_value": 178.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/2mm.ll": {
        "ratio": 1.0129310344827587,
        "raw_value": 235.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/3mm.ll": {
        "ratio": 1.0077220077220077,
        "raw_value": 261.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/atax.ll": {
        "ratio": 0.9878048780487805,
        "raw_value": 162.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/bicg.ll": {
        "ratio": 0.7700534759358288,
        "raw_value": 144.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/doitgen.ll": {
        "ratio": 1.005,
        "raw_value": 201.0,
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
        "ratio": 1.0263157894736843,
        "raw_value": 195.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/gemver.ll": {
        "ratio": 0.9911894273127754,
        "raw_value": 225.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/gesummv.ll": {
        "ratio": 0.5246913580246914,
        "raw_value": 85.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/symm.ll": {
        "ratio": 0.42346938775510207,
        "raw_value": 83.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/syr2k.ll": {
        "ratio": 1.0,
        "raw_value": 188.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/syrk.ll": {
        "ratio": 1.0,
        "raw_value": 173.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/trmm.ll": {
        "ratio": 0.9937888198757764,
        "raw_value": 160.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/cholesky.ll": {
        "ratio": 1.0043668122270741,
        "raw_value": 230.0,
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
        "ratio": 0.3684210526315789,
        "raw_value": 84.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/lu.ll": {
        "ratio": 1.0086580086580086,
        "raw_value": 233.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/ludcmp.ll": {
        "ratio": 1.006825938566553,
        "raw_value": 295.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/trisolv.ll": {
        "ratio": 0.9865771812080537,
        "raw_value": 147.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/deriche.ll": {
        "ratio": 1.0119521912350598,
        "raw_value": 254.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/floyd-warshall.ll": {
        "ratio": 0.5099337748344371,
        "raw_value": 77.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/nussinov.ll": {
        "ratio": 1.094972067039106,
        "raw_value": 196.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/adi.ll": {
        "ratio": 0.3293172690763052,
        "raw_value": 82.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/fdtd-2d.ll": {
        "ratio": 1.017667844522968,
        "raw_value": 288.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/heat-3d.ll": {
        "ratio": 1.004255319148936,
        "raw_value": 236.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/jacobi-1d.ll": {
        "ratio": 0.363013698630137,
        "raw_value": 53.0,
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
        "ratio": 0.41317365269461076,
        "raw_value": 69.0,
        "status": "ok",
        "variance_pct": 0.0
      }
    },
    "objective": 0.8498752190136531
  },
  "fixed_baselines": {
    "none": {
      "count": 30,
      "mean_ratio": 0.27469124492755764,
      "median_ratio": 0.3216693778552713,
      "improved": 30,
      "tied": 0,
      "worsened": 0
    },
    "oz": {
      "count": 30,
      "mean_ratio": 0.7948752190136532,
      "median_ratio": 0.9894971526807779,
      "improved": 17,
      "tied": 2,
      "worsened": 11
    },
    "o3": {
      "count": 30,
      "mean_ratio": 0.49529245117861515,
      "median_ratio": 0.582347664296631,
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
      "universal": 213.0,
      "none": 677.0,
      "oz": 226.0,
      "o3": 337.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.31462333825701627,
      "ratio_vs_oz": 0.9424778761061947,
      "ratio_vs_o3": 0.6320474777448071
    },
    {
      "suite": "polybench_full",
      "name": "covariance",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/covariance.ll",
      "universal": 178.0,
      "none": 534.0,
      "oz": 184.0,
      "o3": 274.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.3333333333333333,
      "ratio_vs_oz": 0.967391304347826,
      "ratio_vs_o3": 0.6496350364963503
    },
    {
      "suite": "polybench_full",
      "name": "2mm",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/2mm.ll",
      "universal": 235.0,
      "none": 682.0,
      "oz": 232.0,
      "o3": 343.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.34457478005865105,
      "ratio_vs_oz": 1.0129310344827587,
      "ratio_vs_o3": 0.685131195335277
    },
    {
      "suite": "polybench_full",
      "name": "3mm",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/3mm.ll",
      "universal": 261.0,
      "none": 761.0,
      "oz": 259.0,
      "o3": 394.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.34296977660972405,
      "ratio_vs_oz": 1.0077220077220077,
      "ratio_vs_o3": 0.6624365482233503
    },
    {
      "suite": "polybench_full",
      "name": "atax",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/atax.ll",
      "universal": 162.0,
      "none": 465.0,
      "oz": 164.0,
      "o3": 273.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.34838709677419355,
      "ratio_vs_oz": 0.9878048780487805,
      "ratio_vs_o3": 0.5934065934065934
    },
    {
      "suite": "polybench_full",
      "name": "bicg",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/bicg.ll",
      "universal": 144.0,
      "none": 513.0,
      "oz": 187.0,
      "o3": 284.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.2807017543859649,
      "ratio_vs_oz": 0.7700534759358288,
      "ratio_vs_o3": 0.5070422535211268
    },
    {
      "suite": "polybench_full",
      "name": "doitgen",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/doitgen.ll",
      "universal": 201.0,
      "none": 550.0,
      "oz": 200.0,
      "o3": 356.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.3654545454545455,
      "ratio_vs_oz": 1.005,
      "ratio_vs_o3": 0.5646067415730337
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
      "universal": 195.0,
      "none": 549.0,
      "oz": 190.0,
      "o3": 305.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.3551912568306011,
      "ratio_vs_oz": 1.0263157894736843,
      "ratio_vs_o3": 0.639344262295082
    },
    {
      "suite": "polybench_full",
      "name": "gemver",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/gemver.ll",
      "universal": 225.0,
      "none": 689.0,
      "oz": 227.0,
      "o3": 430.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.3265602322206096,
      "ratio_vs_oz": 0.9911894273127754,
      "ratio_vs_o3": 0.5232558139534884
    },
    {
      "suite": "polybench_full",
      "name": "gesummv",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/gesummv.ll",
      "universal": 85.0,
      "none": 490.0,
      "oz": 162.0,
      "o3": 287.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.17346938775510204,
      "ratio_vs_oz": 0.5246913580246914,
      "ratio_vs_o3": 0.2961672473867596
    },
    {
      "suite": "polybench_full",
      "name": "symm",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/symm.ll",
      "universal": 83.0,
      "none": 575.0,
      "oz": 196.0,
      "o3": 378.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.1443478260869565,
      "ratio_vs_oz": 0.42346938775510207,
      "ratio_vs_o3": 0.21957671957671956
    },
    {
      "suite": "polybench_full",
      "name": "syr2k",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/syr2k.ll",
      "universal": 188.0,
      "none": 534.0,
      "oz": 188.0,
      "o3": 371.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.352059925093633,
      "ratio_vs_oz": 1.0,
      "ratio_vs_o3": 0.5067385444743935
    },
    {
      "suite": "polybench_full",
      "name": "syrk",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/syrk.ll",
      "universal": 173.0,
      "none": 481.0,
      "oz": 173.0,
      "o3": 298.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.3596673596673597,
      "ratio_vs_oz": 1.0,
      "ratio_vs_o3": 0.5805369127516778
    },
    {
      "suite": "polybench_full",
      "name": "trmm",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/trmm.ll",
      "universal": 160.0,
      "none": 467.0,
      "oz": 161.0,
      "o3": 254.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.3426124197002141,
      "ratio_vs_oz": 0.9937888198757764,
      "ratio_vs_o3": 0.6299212598425197
    },
    {
      "suite": "polybench_full",
      "name": "cholesky",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/cholesky.ll",
      "universal": 230.0,
      "none": 617.0,
      "oz": 229.0,
      "o3": 347.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.3727714748784441,
      "ratio_vs_oz": 1.0043668122270741,
      "ratio_vs_o3": 0.6628242074927954
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
      "universal": 84.0,
      "none": 643.0,
      "oz": 228.0,
      "o3": 390.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.13063763608087092,
      "ratio_vs_oz": 0.3684210526315789,
      "ratio_vs_o3": 0.2153846153846154
    },
    {
      "suite": "polybench_full",
      "name": "lu",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/lu.ll",
      "universal": 233.0,
      "none": 612.0,
      "oz": 231.0,
      "o3": 345.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.380718954248366,
      "ratio_vs_oz": 1.0086580086580086,
      "ratio_vs_o3": 0.6753623188405797
    },
    {
      "suite": "polybench_full",
      "name": "ludcmp",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/ludcmp.ll",
      "universal": 295.0,
      "none": 805.0,
      "oz": 293.0,
      "o3": 468.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.36645962732919257,
      "ratio_vs_oz": 1.006825938566553,
      "ratio_vs_o3": 0.6303418803418803
    },
    {
      "suite": "polybench_full",
      "name": "trisolv",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/trisolv.ll",
      "universal": 147.0,
      "none": 404.0,
      "oz": 149.0,
      "o3": 248.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.36386138613861385,
      "ratio_vs_oz": 0.9865771812080537,
      "ratio_vs_o3": 0.592741935483871
    },
    {
      "suite": "polybench_full",
      "name": "deriche",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/deriche.ll",
      "universal": 254.0,
      "none": 881.0,
      "oz": 251.0,
      "o3": 370.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.2883087400681044,
      "ratio_vs_oz": 1.0119521912350598,
      "ratio_vs_o3": 0.6864864864864865
    },
    {
      "suite": "polybench_full",
      "name": "floyd-warshall",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/floyd-warshall.ll",
      "universal": 77.0,
      "none": 431.0,
      "oz": 151.0,
      "o3": 233.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.17865429234338748,
      "ratio_vs_oz": 0.5099337748344371,
      "ratio_vs_o3": 0.33047210300429186
    },
    {
      "suite": "polybench_full",
      "name": "nussinov",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/nussinov.ll",
      "universal": 196.0,
      "none": 699.0,
      "oz": 179.0,
      "o3": 246.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.2804005722460658,
      "ratio_vs_oz": 1.094972067039106,
      "ratio_vs_o3": 0.7967479674796748
    },
    {
      "suite": "polybench_full",
      "name": "adi",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/adi.ll",
      "universal": 82.0,
      "none": 838.0,
      "oz": 249.0,
      "o3": 417.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.09785202863961814,
      "ratio_vs_oz": 0.3293172690763052,
      "ratio_vs_o3": 0.19664268585131894
    },
    {
      "suite": "polybench_full",
      "name": "fdtd-2d",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/fdtd-2d.ll",
      "universal": 288.0,
      "none": 759.0,
      "oz": 283.0,
      "o3": 477.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.3794466403162055,
      "ratio_vs_oz": 1.017667844522968,
      "ratio_vs_o3": 0.6037735849056604
    },
    {
      "suite": "polybench_full",
      "name": "heat-3d",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/heat-3d.ll",
      "universal": 236.0,
      "none": 745.0,
      "oz": 235.0,
      "o3": 404.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.3167785234899329,
      "ratio_vs_oz": 1.004255319148936,
      "ratio_vs_o3": 0.5841584158415841
    },
    {
      "suite": "polybench_full",
      "name": "jacobi-1d",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench_full/jacobi-1d.ll",
      "universal": 53.0,
      "none": 386.0,
      "oz": 146.0,
      "o3": 274.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.13730569948186527,
      "ratio_vs_oz": 0.363013698630137,
      "ratio_vs_o3": 0.19343065693430658
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
      "universal": 69.0,
      "none": 456.0,
      "oz": 167.0,
      "o3": 219.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.1513157894736842,
      "ratio_vs_oz": 0.41317365269461076,
      "ratio_vs_o3": 0.3150684931506849
    }
  ],
  "failures": []
}
```
