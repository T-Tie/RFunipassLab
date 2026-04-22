# External Validation Report

- Generated at: 2026-04-22 11:33:15
- Mode: runtime
- Sequence source: /root/exp/RFunipassLab/results/runtime/summaries/runtime_smoke_fix_20260411_182259.json
- Suites: polybench
- Sequence length: 6

## Sequence

```text
module(scc-oz-module-inliner),function(newgvn),function(gvn-hoist),function(memcpyopt),module(attributor),module(scc-oz-module-inliner)
```

## Combined

```json
{
  "count": 1,
  "fixed_baselines": {
    "none": {
      "count": 1,
      "mean_ratio": 1.0000480876740203,
      "median_ratio": 1.0000480876740203,
      "improved": 0,
      "tied": 0,
      "worsened": 1
    },
    "oz": {
      "count": 1,
      "mean_ratio": 0.9833640581859877,
      "median_ratio": 0.9833640581859877,
      "improved": 1,
      "tied": 0,
      "worsened": 0
    },
    "o3": {
      "count": 1,
      "mean_ratio": 0.9999898813922093,
      "median_ratio": 0.9999898813922093,
      "improved": 1,
      "tied": 0,
      "worsened": 0
    }
  }
}
```

## Per Suite

### polybench

```json
{
  "count": 1,
  "selected_names": [
    "2mm"
  ],
  "pipeline_defs": {
    "universal": "module(scc-oz-module-inliner),function(newgvn),function(gvn-hoist),function(memcpyopt),module(attributor),module(scc-oz-module-inliner)",
    "none": "",
    "oz": "default<Oz>",
    "o3": "default<O3>"
  },
  "per_benchmark": [
    {
      "suite": "polybench",
      "name": "2mm",
      "universal": 5.922197282001434,
      "none": 5.921912511003029,
      "oz": 6.022385333999409,
      "o3": 5.9222572069993475,
      "ratio_vs_none": 1.0000480876740203,
      "ratio_vs_oz": 0.9833640581859877,
      "ratio_vs_o3": 0.9999898813922093
    }
  ],
  "fixed_baselines": {
    "none": {
      "count": 1,
      "mean_ratio": 1.0000480876740203,
      "median_ratio": 1.0000480876740203,
      "improved": 0,
      "tied": 0,
      "worsened": 1
    },
    "oz": {
      "count": 1,
      "mean_ratio": 0.9833640581859877,
      "median_ratio": 0.9833640581859877,
      "improved": 1,
      "tied": 0,
      "worsened": 0
    },
    "o3": {
      "count": 1,
      "mean_ratio": 0.9999898813922093,
      "median_ratio": 0.9999898813922093,
      "improved": 1,
      "tied": 0,
      "worsened": 0
    }
  },
  "failures": []
}
```
