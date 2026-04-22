# External Validation Report

- Generated at: 2026-04-22 11:33:48
- Mode: runtime
- Sequence source: /root/exp/RFunipassLab/results/runtime/summaries/runtime_smoke_fix_20260411_182259.json
- Suites: cbench
- Sequence length: 6

## Sequence

```text
module(scc-oz-module-inliner),function(newgvn),function(gvn-hoist),function(memcpyopt),module(attributor),module(scc-oz-module-inliner)
```

## Combined

```json
{
  "count": 0,
  "fixed_baselines": {
    "none": {
      "count": 0,
      "mean_ratio": Infinity,
      "median_ratio": Infinity,
      "improved": 0,
      "tied": 0,
      "worsened": 0
    },
    "oz": {
      "count": 0,
      "mean_ratio": Infinity,
      "median_ratio": Infinity,
      "improved": 0,
      "tied": 0,
      "worsened": 0
    },
    "o3": {
      "count": 0,
      "mean_ratio": Infinity,
      "median_ratio": Infinity,
      "improved": 0,
      "tied": 0,
      "worsened": 0
    }
  }
}
```

## Per Suite

### cbench

```json
{
  "count": 0,
  "selected_names": [
    "security_sha"
  ],
  "pipeline_defs": {
    "universal": "module(scc-oz-module-inliner),function(newgvn),function(gvn-hoist),function(memcpyopt),module(attributor),module(scc-oz-module-inliner)",
    "none": "",
    "oz": "default<Oz>",
    "o3": "default<O3>"
  },
  "per_benchmark": [],
  "fixed_baselines": {
    "none": {
      "count": 0,
      "mean_ratio": Infinity,
      "median_ratio": Infinity,
      "improved": 0,
      "tied": 0,
      "worsened": 0
    },
    "oz": {
      "count": 0,
      "mean_ratio": Infinity,
      "median_ratio": Infinity,
      "improved": 0,
      "tied": 0,
      "worsened": 0
    },
    "o3": {
      "count": 0,
      "mean_ratio": Infinity,
      "median_ratio": Infinity,
      "improved": 0,
      "tied": 0,
      "worsened": 0
    }
  },
  "failures": [
    {
      "suite": "cbench",
      "pipeline_label": "universal",
      "benchmark": "security_sha",
      "error": "benchmark execution failed\ncwd: /root/exp/RFunipassLab/external_datasets/build/runtime/cbench/universal/cbench/security_sha/runs/run_01\ncommand: '/root/exp/RFunipassLab/external_datasets/build/runtime/cbench/universal/cbench/security_sha/build/a.out' ../../office_data/1.txt > ftmp_out\nreturncode: 1\nstdout: /root/exp/RFunipassLab/external_datasets/build/runtime/cbench/universal/cbench/security_sha/runs/run_01/stdout.txt\nstderr: /root/exp/RFunipassLab/external_datasets/build/runtime/cbench/universal/cbench/security_sha/runs/run_01/stderr.txt"
    },
    {
      "suite": "cbench",
      "pipeline_label": "none",
      "benchmark": "security_sha",
      "error": "benchmark execution failed\ncwd: /root/exp/RFunipassLab/external_datasets/build/runtime/cbench/none/cbench/security_sha/runs/run_01\ncommand: '/root/exp/RFunipassLab/external_datasets/build/runtime/cbench/none/cbench/security_sha/build/a.out' ../../office_data/1.txt > ftmp_out\nreturncode: 1\nstdout: /root/exp/RFunipassLab/external_datasets/build/runtime/cbench/none/cbench/security_sha/runs/run_01/stdout.txt\nstderr: /root/exp/RFunipassLab/external_datasets/build/runtime/cbench/none/cbench/security_sha/runs/run_01/stderr.txt"
    },
    {
      "suite": "cbench",
      "pipeline_label": "oz",
      "benchmark": "security_sha",
      "error": "benchmark execution failed\ncwd: /root/exp/RFunipassLab/external_datasets/build/runtime/cbench/oz/cbench/security_sha/runs/run_01\ncommand: '/root/exp/RFunipassLab/external_datasets/build/runtime/cbench/oz/cbench/security_sha/build/a.out' ../../office_data/1.txt > ftmp_out\nreturncode: 1\nstdout: /root/exp/RFunipassLab/external_datasets/build/runtime/cbench/oz/cbench/security_sha/runs/run_01/stdout.txt\nstderr: /root/exp/RFunipassLab/external_datasets/build/runtime/cbench/oz/cbench/security_sha/runs/run_01/stderr.txt"
    },
    {
      "suite": "cbench",
      "pipeline_label": "o3",
      "benchmark": "security_sha",
      "error": "benchmark execution failed\ncwd: /root/exp/RFunipassLab/external_datasets/build/runtime/cbench/o3/cbench/security_sha/runs/run_01\ncommand: '/root/exp/RFunipassLab/external_datasets/build/runtime/cbench/o3/cbench/security_sha/build/a.out' ../../office_data/1.txt > ftmp_out\nreturncode: 1\nstdout: /root/exp/RFunipassLab/external_datasets/build/runtime/cbench/o3/cbench/security_sha/runs/run_01/stdout.txt\nstderr: /root/exp/RFunipassLab/external_datasets/build/runtime/cbench/o3/cbench/security_sha/runs/run_01/stderr.txt"
    }
  ]
}
```
