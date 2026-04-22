# External Validation Report

- Generated at: 2026-04-22 14:10:16
- Mode: instrcount
- Sequence source: inline
- Suites: cbench, polybench, csmith
- Sequence length: 11

## Sequence

```text
module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner)
```

## Combined

```json
{
  "count": 25,
  "primary_metrics": {
    "count": 25,
    "mean_norm": 1.0624368870520164,
    "median_norm": 1.089082395465374,
    "improved": 2,
    "tied": 1,
    "worsened": 22,
    "invalid": 7,
    "high_variance": 0,
    "improved_rate": 0.08,
    "tie_rate": 0.04,
    "worsen_rate": 0.88,
    "high_variance_rate": 0.0,
    "len_ratio": 0.09166666666666666,
    "per_program": {
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/consumer_jpeg_c.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/security_sha.ll": {
        "ratio": 0.9942196531791907,
        "raw_value": 344.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/automotive_bitcount.ll": {
        "ratio": 0.9875,
        "raw_value": 395.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/automotive_susan_e.ll": {
        "ratio": 1.0088410532385161,
        "raw_value": 5249.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/automotive_susan_c.ll": {
        "ratio": 1.0088410532385161,
        "raw_value": 5249.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/automotive_susan_s.ll": {
        "ratio": 1.0088410532385161,
        "raw_value": 5249.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/bzip2e.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/consumer_tiff2rgba.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/telecom_adpcm_c.ll": {
        "ratio": 1.0,
        "raw_value": 196.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/office_rsynth.ll": {
        "ratio": 1.002757099531293,
        "raw_value": 3637.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/2mm.ll": {
        "ratio": 1.0991379310344827,
        "raw_value": 255.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/3mm.ll": {
        "ratio": 1.0888030888030888,
        "raw_value": 282.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/cholesky.ll": {
        "ratio": 1.091703056768559,
        "raw_value": 250.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/jacobi-2d.ll": {
        "ratio": 1.086734693877551,
        "raw_value": 213.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/lu.ll": {
        "ratio": 1.0909090909090908,
        "raw_value": 252.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/correlation.ll": {
        "ratio": 1.092920353982301,
        "raw_value": 247.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/nussinov.ll": {
        "ratio": 1.111731843575419,
        "raw_value": 199.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/symm.ll": {
        "ratio": 1.1122448979591837,
        "raw_value": 218.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/heat-3d.ll": {
        "ratio": 1.0893617021276596,
        "raw_value": 256.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/covariance.ll": {
        "ratio": 1.1141304347826086,
        "raw_value": 205.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/csmith/trainprogram1.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/csmith/trainprogram2.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/csmith/trainprogram3.ll": {
        "ratio": 1.1351869606903164,
        "raw_value": 1184.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/csmith/trainprogram4.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/csmith/trainprogram5.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      }
    },
    "objective": 1.1944368870520163
  },
  "fixed_baselines": {
    "none": {
      "count": 25,
      "mean_ratio": Infinity,
      "median_ratio": 0.4051863857374392,
      "improved": 18,
      "tied": 0,
      "worsened": 7
    },
    "oz": {
      "count": 25,
      "mean_ratio": Infinity,
      "median_ratio": 1.092920353982301,
      "improved": 2,
      "tied": 1,
      "worsened": 22
    },
    "o3": {
      "count": 25,
      "mean_ratio": Infinity,
      "median_ratio": 0.7481751824817519,
      "improved": 18,
      "tied": 0,
      "worsened": 7
    }
  }
}
```

## Per Suite

### cbench

```json
{
  "count": 10,
  "selected_names": [
    "consumer_jpeg_c",
    "security_sha",
    "automotive_bitcount",
    "automotive_susan_e",
    "automotive_susan_c",
    "automotive_susan_s",
    "bzip2e",
    "consumer_tiff2rgba",
    "telecom_adpcm_c",
    "office_rsynth"
  ],
  "primary_metrics": {
    "count": 10,
    "mean_norm": 1.0015714160608618,
    "median_norm": 1.002757099531293,
    "improved": 2,
    "tied": 1,
    "worsened": 7,
    "invalid": 3,
    "high_variance": 0,
    "improved_rate": 0.2,
    "tie_rate": 0.1,
    "worsen_rate": 0.7,
    "high_variance_rate": 0.0,
    "len_ratio": 0.09166666666666666,
    "per_program": {
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/consumer_jpeg_c.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/security_sha.ll": {
        "ratio": 0.9942196531791907,
        "raw_value": 344.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/automotive_bitcount.ll": {
        "ratio": 0.9875,
        "raw_value": 395.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/automotive_susan_e.ll": {
        "ratio": 1.0088410532385161,
        "raw_value": 5249.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/automotive_susan_c.ll": {
        "ratio": 1.0088410532385161,
        "raw_value": 5249.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/automotive_susan_s.ll": {
        "ratio": 1.0088410532385161,
        "raw_value": 5249.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/bzip2e.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/consumer_tiff2rgba.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/telecom_adpcm_c.ll": {
        "ratio": 1.0,
        "raw_value": 196.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/office_rsynth.ll": {
        "ratio": 1.002757099531293,
        "raw_value": 3637.0,
        "status": "ok",
        "variance_pct": 0.0
      }
    },
    "objective": 1.1065714160608617
  },
  "fixed_baselines": {
    "none": {
      "count": 10,
      "mean_ratio": Infinity,
      "median_ratio": 0.47528601079286015,
      "improved": 7,
      "tied": 0,
      "worsened": 3
    },
    "oz": {
      "count": 10,
      "mean_ratio": Infinity,
      "median_ratio": 1.0088410532385161,
      "improved": 2,
      "tied": 1,
      "worsened": 7
    },
    "o3": {
      "count": 10,
      "mean_ratio": Infinity,
      "median_ratio": 0.8546076196678606,
      "improved": 7,
      "tied": 0,
      "worsened": 3
    }
  },
  "per_program": [
    {
      "suite": "cbench",
      "name": "consumer_jpeg_c",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/cbench/consumer_jpeg_c.ll",
      "universal": Infinity,
      "none": 57914.0,
      "oz": 27748.0,
      "o3": 37087.0,
      "universal_status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": Infinity,
      "ratio_vs_oz": Infinity,
      "ratio_vs_o3": Infinity
    },
    {
      "suite": "cbench",
      "name": "security_sha",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/cbench/security_sha.ll",
      "universal": 344.0,
      "none": 750.0,
      "oz": 346.0,
      "o3": 604.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.45866666666666667,
      "ratio_vs_oz": 0.9942196531791907,
      "ratio_vs_o3": 0.5695364238410596
    },
    {
      "suite": "cbench",
      "name": "automotive_bitcount",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/cbench/automotive_bitcount.ll",
      "universal": 395.0,
      "none": 803.0,
      "oz": 400.0,
      "o3": 441.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.4919053549190536,
      "ratio_vs_oz": 0.9875,
      "ratio_vs_o3": 0.8956916099773242
    },
    {
      "suite": "cbench",
      "name": "automotive_susan_e",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/cbench/automotive_susan_e.ll",
      "universal": 5249.0,
      "none": 12982.0,
      "oz": 5203.0,
      "o3": 6142.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.40432907102141424,
      "ratio_vs_oz": 1.0088410532385161,
      "ratio_vs_o3": 0.8546076196678606
    },
    {
      "suite": "cbench",
      "name": "automotive_susan_c",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/cbench/automotive_susan_c.ll",
      "universal": 5249.0,
      "none": 12982.0,
      "oz": 5203.0,
      "o3": 6142.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.40432907102141424,
      "ratio_vs_oz": 1.0088410532385161,
      "ratio_vs_o3": 0.8546076196678606
    },
    {
      "suite": "cbench",
      "name": "automotive_susan_s",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/cbench/automotive_susan_s.ll",
      "universal": 5249.0,
      "none": 12982.0,
      "oz": 5203.0,
      "o3": 6142.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.40432907102141424,
      "ratio_vs_oz": 1.0088410532385161,
      "ratio_vs_o3": 0.8546076196678606
    },
    {
      "suite": "cbench",
      "name": "bzip2e",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/cbench/bzip2e.ll",
      "universal": Infinity,
      "none": 27805.0,
      "oz": 15768.0,
      "o3": 18913.0,
      "universal_status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": Infinity,
      "ratio_vs_oz": Infinity,
      "ratio_vs_o3": Infinity
    },
    {
      "suite": "cbench",
      "name": "consumer_tiff2rgba",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/cbench/consumer_tiff2rgba.ll",
      "universal": Infinity,
      "none": 55593.0,
      "oz": 28920.0,
      "o3": 37352.0,
      "universal_status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": Infinity,
      "ratio_vs_oz": Infinity,
      "ratio_vs_o3": Infinity
    },
    {
      "suite": "cbench",
      "name": "telecom_adpcm_c",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/cbench/telecom_adpcm_c.ll",
      "universal": 196.0,
      "none": 511.0,
      "oz": 196.0,
      "o3": 303.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.3835616438356164,
      "ratio_vs_oz": 1.0,
      "ratio_vs_o3": 0.6468646864686468
    },
    {
      "suite": "cbench",
      "name": "office_rsynth",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/cbench/office_rsynth.ll",
      "universal": 3637.0,
      "none": 7388.0,
      "oz": 3627.0,
      "o3": 5674.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.49228478613968596,
      "ratio_vs_oz": 1.002757099531293,
      "ratio_vs_o3": 0.6409940077546704
    }
  ],
  "failures": [
    {
      "suite": "cbench",
      "name": "consumer_jpeg_c",
      "pipeline": "universal",
      "error": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu"
    },
    {
      "suite": "cbench",
      "name": "bzip2e",
      "pipeline": "universal",
      "error": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu"
    },
    {
      "suite": "cbench",
      "name": "consumer_tiff2rgba",
      "pipeline": "universal",
      "error": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu"
    }
  ]
}
```

### polybench

```json
{
  "count": 10,
  "selected_names": [
    "2mm",
    "3mm",
    "cholesky",
    "jacobi-2d",
    "lu",
    "correlation",
    "nussinov",
    "symm",
    "heat-3d",
    "covariance"
  ],
  "primary_metrics": {
    "count": 10,
    "mean_norm": 1.0977677093819944,
    "median_norm": 1.09231170537543,
    "improved": 0,
    "tied": 0,
    "worsened": 10,
    "invalid": 0,
    "high_variance": 0,
    "improved_rate": 0.0,
    "tie_rate": 0.0,
    "worsen_rate": 1.0,
    "high_variance_rate": 0.0,
    "len_ratio": 0.09166666666666666,
    "per_program": {
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/2mm.ll": {
        "ratio": 1.0991379310344827,
        "raw_value": 255.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/3mm.ll": {
        "ratio": 1.0888030888030888,
        "raw_value": 282.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/cholesky.ll": {
        "ratio": 1.091703056768559,
        "raw_value": 250.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/jacobi-2d.ll": {
        "ratio": 1.086734693877551,
        "raw_value": 213.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/lu.ll": {
        "ratio": 1.0909090909090908,
        "raw_value": 252.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/correlation.ll": {
        "ratio": 1.092920353982301,
        "raw_value": 247.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/nussinov.ll": {
        "ratio": 1.111731843575419,
        "raw_value": 199.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/symm.ll": {
        "ratio": 1.1122448979591837,
        "raw_value": 218.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/heat-3d.ll": {
        "ratio": 1.0893617021276596,
        "raw_value": 256.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/covariance.ll": {
        "ratio": 1.1141304347826086,
        "raw_value": 205.0,
        "status": "ok",
        "variance_pct": 0.0
      }
    },
    "objective": 1.2477677093819943
  },
  "fixed_baselines": {
    "none": {
      "count": 10,
      "mean_ratio": 0.37240920291557483,
      "median_ratio": 0.3765153640188703,
      "improved": 10,
      "tied": 0,
      "worsened": 0
    },
    "oz": {
      "count": 10,
      "mean_ratio": 1.0977677093819944,
      "median_ratio": 1.09231170537543,
      "improved": 0,
      "tied": 0,
      "worsened": 10
    },
    "o3": {
      "count": 10,
      "mean_ratio": 0.7040688566776545,
      "median_ratio": 0.7254479388547801,
      "improved": 10,
      "tied": 0,
      "worsened": 0
    }
  },
  "per_program": [
    {
      "suite": "polybench",
      "name": "2mm",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench/2mm.ll",
      "universal": 255.0,
      "none": 682.0,
      "oz": 232.0,
      "o3": 343.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.37390029325513197,
      "ratio_vs_oz": 1.0991379310344827,
      "ratio_vs_o3": 0.7434402332361516
    },
    {
      "suite": "polybench",
      "name": "3mm",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench/3mm.ll",
      "universal": 282.0,
      "none": 761.0,
      "oz": 259.0,
      "o3": 394.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.37056504599211565,
      "ratio_vs_oz": 1.0888030888030888,
      "ratio_vs_o3": 0.7157360406091371
    },
    {
      "suite": "polybench",
      "name": "cholesky",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench/cholesky.ll",
      "universal": 250.0,
      "none": 617.0,
      "oz": 229.0,
      "o3": 347.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.4051863857374392,
      "ratio_vs_oz": 1.091703056768559,
      "ratio_vs_o3": 0.7204610951008645
    },
    {
      "suite": "polybench",
      "name": "jacobi-2d",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench/jacobi-2d.ll",
      "universal": 213.0,
      "none": 524.0,
      "oz": 196.0,
      "o3": 338.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.4064885496183206,
      "ratio_vs_oz": 1.086734693877551,
      "ratio_vs_o3": 0.6301775147928994
    },
    {
      "suite": "polybench",
      "name": "lu",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench/lu.ll",
      "universal": 252.0,
      "none": 612.0,
      "oz": 231.0,
      "o3": 345.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.4117647058823529,
      "ratio_vs_oz": 1.0909090909090908,
      "ratio_vs_o3": 0.7304347826086957
    },
    {
      "suite": "polybench",
      "name": "correlation",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench/correlation.ll",
      "universal": 247.0,
      "none": 677.0,
      "oz": 226.0,
      "o3": 337.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.36484490398818314,
      "ratio_vs_oz": 1.092920353982301,
      "ratio_vs_o3": 0.7329376854599406
    },
    {
      "suite": "polybench",
      "name": "nussinov",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench/nussinov.ll",
      "universal": 199.0,
      "none": 699.0,
      "oz": 179.0,
      "o3": 246.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.28469241773962806,
      "ratio_vs_oz": 1.111731843575419,
      "ratio_vs_o3": 0.8089430894308943
    },
    {
      "suite": "polybench",
      "name": "symm",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench/symm.ll",
      "universal": 218.0,
      "none": 575.0,
      "oz": 196.0,
      "o3": 378.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.3791304347826087,
      "ratio_vs_oz": 1.1122448979591837,
      "ratio_vs_o3": 0.5767195767195767
    },
    {
      "suite": "polybench",
      "name": "heat-3d",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench/heat-3d.ll",
      "universal": 256.0,
      "none": 745.0,
      "oz": 235.0,
      "o3": 404.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.3436241610738255,
      "ratio_vs_oz": 1.0893617021276596,
      "ratio_vs_o3": 0.6336633663366337
    },
    {
      "suite": "polybench",
      "name": "covariance",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench/covariance.ll",
      "universal": 205.0,
      "none": 534.0,
      "oz": 184.0,
      "o3": 274.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.3838951310861423,
      "ratio_vs_oz": 1.1141304347826086,
      "ratio_vs_o3": 0.7481751824817519
    }
  ],
  "failures": []
}
```

### csmith

```json
{
  "count": 5,
  "selected_names": [
    "trainprogram1",
    "trainprogram2",
    "trainprogram3",
    "trainprogram4",
    "trainprogram5"
  ],
  "primary_metrics": {
    "count": 5,
    "mean_norm": 1.1351869606903164,
    "median_norm": 1.1351869606903164,
    "improved": 0,
    "tied": 0,
    "worsened": 5,
    "invalid": 4,
    "high_variance": 0,
    "improved_rate": 0.0,
    "tie_rate": 0.0,
    "worsen_rate": 1.0,
    "high_variance_rate": 0.0,
    "len_ratio": 0.09166666666666666,
    "per_program": {
      "/root/exp/RFunipassLab/external_datasets/ir/csmith/trainprogram1.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/csmith/trainprogram2.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/csmith/trainprogram3.ll": {
        "ratio": 1.1351869606903164,
        "raw_value": 1184.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/csmith/trainprogram4.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/csmith/trainprogram5.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      }
    },
    "objective": 1.2851869606903163
  },
  "fixed_baselines": {
    "none": {
      "count": 5,
      "mean_ratio": Infinity,
      "median_ratio": Infinity,
      "improved": 1,
      "tied": 0,
      "worsened": 4
    },
    "oz": {
      "count": 5,
      "mean_ratio": Infinity,
      "median_ratio": Infinity,
      "improved": 0,
      "tied": 0,
      "worsened": 5
    },
    "o3": {
      "count": 5,
      "mean_ratio": Infinity,
      "median_ratio": Infinity,
      "improved": 1,
      "tied": 0,
      "worsened": 4
    }
  },
  "per_program": [
    {
      "suite": "csmith",
      "name": "trainprogram1",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/csmith/trainprogram1.ll",
      "universal": Infinity,
      "none": 26772.0,
      "oz": 1551.0,
      "o3": 4755.0,
      "universal_status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": Infinity,
      "ratio_vs_oz": Infinity,
      "ratio_vs_o3": Infinity
    },
    {
      "suite": "csmith",
      "name": "trainprogram2",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/csmith/trainprogram2.ll",
      "universal": Infinity,
      "none": 15618.0,
      "oz": 3400.0,
      "o3": 19915.0,
      "universal_status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": Infinity,
      "ratio_vs_oz": Infinity,
      "ratio_vs_o3": Infinity
    },
    {
      "suite": "csmith",
      "name": "trainprogram3",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/csmith/trainprogram3.ll",
      "universal": 1184.0,
      "none": 3005.0,
      "oz": 1043.0,
      "o3": 15371.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.3940099833610649,
      "ratio_vs_oz": 1.1351869606903164,
      "ratio_vs_o3": 0.0770281699303884
    },
    {
      "suite": "csmith",
      "name": "trainprogram4",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/csmith/trainprogram4.ll",
      "universal": Infinity,
      "none": 22695.0,
      "oz": 12962.0,
      "o3": 44156.0,
      "universal_status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": Infinity,
      "ratio_vs_oz": Infinity,
      "ratio_vs_o3": Infinity
    },
    {
      "suite": "csmith",
      "name": "trainprogram5",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/csmith/trainprogram5.ll",
      "universal": Infinity,
      "none": 19257.0,
      "oz": 7083.0,
      "o3": 29463.0,
      "universal_status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": Infinity,
      "ratio_vs_oz": Infinity,
      "ratio_vs_o3": Infinity
    }
  ],
  "failures": [
    {
      "suite": "csmith",
      "name": "trainprogram1",
      "pipeline": "universal",
      "error": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu"
    },
    {
      "suite": "csmith",
      "name": "trainprogram2",
      "pipeline": "universal",
      "error": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu"
    },
    {
      "suite": "csmith",
      "name": "trainprogram4",
      "pipeline": "universal",
      "error": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu"
    },
    {
      "suite": "csmith",
      "name": "trainprogram5",
      "pipeline": "universal",
      "error": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu"
    }
  ]
}
```
