# External Validation Report

- Generated at: 2026-04-22 19:07:31
- Mode: binarysize
- Sequence source: inline
- Suites: polybench
- Sequence length: 2
- Objective baseline: oz
- Frontend mode: canonical
- Size metric: stripped_file_bytes

## Sequence

```text
module(globalopt),function(instcombine)
```

## Combined

```json
{
  "count": 1,
  "metric_name": "stripped_file_bytes",
  "metric_display_name": "strip 后可执行文件大小",
  "primary_metrics": {
    "count": 1,
    "mean_norm": 1.0011160714285714,
    "median_norm": 1.0011160714285714,
    "improved": 0,
    "tied": 0,
    "worsened": 1,
    "invalid": 0,
    "high_variance": 0,
    "improved_rate": 0.0,
    "tie_rate": 0.0,
    "worsen_rate": 1.0,
    "high_variance_rate": 0.0,
    "len_ratio": 0.016666666666666666,
    "per_program": {
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/2mm.ll": {
        "ratio": 1.0011160714285714,
        "raw_value": 14352.0,
        "status": "ok",
        "variance_pct": 0.0,
        "metric_name": "stripped_file_bytes"
      }
    },
    "objective": 1.1511160714285713,
    "metric_name": "stripped_file_bytes",
    "metric_display_name": "strip 后可执行文件大小"
  },
  "fixed_baselines": {
    "none": {
      "count": 1,
      "mean_ratio": 1.0005577244841048,
      "median_ratio": 1.0005577244841048,
      "improved": 0,
      "tied": 0,
      "worsened": 1
    },
    "oz": {
      "count": 1,
      "mean_ratio": 1.0011160714285714,
      "median_ratio": 1.0011160714285714,
      "improved": 0,
      "tied": 0,
      "worsened": 1
    },
    "o3": {
      "count": 1,
      "mean_ratio": 1.0011160714285714,
      "median_ratio": 1.0011160714285714,
      "improved": 0,
      "tied": 0,
      "worsened": 1
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
  "metric_name": "stripped_file_bytes",
  "metric_display_name": "strip 后可执行文件大小",
  "primary_metrics": {
    "count": 1,
    "mean_norm": 1.0011160714285714,
    "median_norm": 1.0011160714285714,
    "improved": 0,
    "tied": 0,
    "worsened": 1,
    "invalid": 0,
    "high_variance": 0,
    "improved_rate": 0.0,
    "tie_rate": 0.0,
    "worsen_rate": 1.0,
    "high_variance_rate": 0.0,
    "len_ratio": 0.016666666666666666,
    "per_program": {
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/2mm.ll": {
        "ratio": 1.0011160714285714,
        "raw_value": 14352.0,
        "status": "ok",
        "variance_pct": 0.0,
        "metric_name": "stripped_file_bytes"
      }
    },
    "objective": 1.1511160714285713,
    "metric_name": "stripped_file_bytes",
    "metric_display_name": "strip 后可执行文件大小"
  },
  "fixed_baselines": {
    "none": {
      "count": 1,
      "mean_ratio": 1.0005577244841048,
      "median_ratio": 1.0005577244841048,
      "improved": 0,
      "tied": 0,
      "worsened": 1
    },
    "oz": {
      "count": 1,
      "mean_ratio": 1.0011160714285714,
      "median_ratio": 1.0011160714285714,
      "improved": 0,
      "tied": 0,
      "worsened": 1
    },
    "o3": {
      "count": 1,
      "mean_ratio": 1.0011160714285714,
      "median_ratio": 1.0011160714285714,
      "improved": 0,
      "tied": 0,
      "worsened": 1
    }
  },
  "per_program": [
    {
      "suite": "polybench",
      "name": "2mm",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench/2mm.ll",
      "universal": 14352.0,
      "none": 14344.0,
      "oz": 14336.0,
      "o3": 14336.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 1.0005577244841048,
      "ratio_vs_oz": 1.0011160714285714,
      "ratio_vs_o3": 1.0011160714285714,
      "universal_sizes": {
        "status": "ok",
        "value": 14352.0,
        "file_bytes": 17320,
        "stripped_file_bytes": 14352,
        "text_bytes": 5325,
        "data_bytes": 712,
        "bss_bytes": 64,
        "dec_bytes": 6101,
        "binary_path": "/root/exp/RFunipassLab/external_datasets/build/binarysize/universal/polybench/2mm/a.out"
      },
      "none_sizes": {
        "status": "ok",
        "value": 14344.0,
        "file_bytes": 17264,
        "stripped_file_bytes": 14344,
        "text_bytes": 5156,
        "data_bytes": 704,
        "bss_bytes": 64,
        "dec_bytes": 5924,
        "binary_path": "/root/exp/RFunipassLab/external_datasets/build/binarysize/none/polybench/2mm/a.out"
      },
      "oz_sizes": {
        "status": "ok",
        "value": 14336.0,
        "file_bytes": 17048,
        "stripped_file_bytes": 14336,
        "text_bytes": 4840,
        "data_bytes": 696,
        "bss_bytes": 56,
        "dec_bytes": 5592,
        "binary_path": "/root/exp/RFunipassLab/external_datasets/build/binarysize/oz/polybench/2mm/a.out"
      },
      "o3_sizes": {
        "status": "ok",
        "value": 14336.0,
        "file_bytes": 17016,
        "stripped_file_bytes": 14336,
        "text_bytes": 6040,
        "data_bytes": 696,
        "bss_bytes": 56,
        "dec_bytes": 6792,
        "binary_path": "/root/exp/RFunipassLab/external_datasets/build/binarysize/o3/polybench/2mm/a.out"
      }
    }
  ],
  "failures": []
}
```
