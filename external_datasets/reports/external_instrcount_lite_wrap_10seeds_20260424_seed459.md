# External Validation Report

- Generated at: 2026-04-24 15:54:52
- Mode: instrcount
- Sequence source: /root/exp/RFunipassLab/results/instrcount/summaries/20260423_203402_518521_feature_lite_seed459.json
- Suites: cbench, polybench, csmith
- Sequence length: 11
- Objective baseline: oz
- Frontend mode: canonical

## Sequence

```text
module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink)
```

## Combined

```json
{
  "count": 25,
  "primary_metrics": {
    "count": 25,
    "mean_norm": 0.8532870214857885,
    "median_norm": 1.0,
    "improved": 7,
    "tied": 1,
    "worsened": 17,
    "invalid": 10,
    "high_variance": 0,
    "improved_rate": 0.28,
    "tie_rate": 0.04,
    "worsen_rate": 0.68,
    "high_variance_rate": 0.0,
    "len_ratio": 0.09166666666666666,
    "per_program": {
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/consumer_jpeg_c.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/security_sha.ll": {
        "ratio": 1.1184971098265897,
        "raw_value": 387.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/automotive_bitcount.ll": {
        "ratio": 0.995,
        "raw_value": 398.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/automotive_susan_e.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/automotive_susan_c.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/automotive_susan_s.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/bzip2e.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/consumer_tiff2rgba.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/telecom_adpcm_c.ll": {
        "ratio": 1.0,
        "raw_value": 196.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/office_rsynth.ll": {
        "ratio": 0.9922801213123794,
        "raw_value": 3599.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/2mm.ll": {
        "ratio": 1.081896551724138,
        "raw_value": 251.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/3mm.ll": {
        "ratio": 1.0694980694980696,
        "raw_value": 277.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/cholesky.ll": {
        "ratio": 0.388646288209607,
        "raw_value": 89.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/jacobi-2d.ll": {
        "ratio": 0.49489795918367346,
        "raw_value": 97.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/lu.ll": {
        "ratio": 0.3852813852813853,
        "raw_value": 89.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/correlation.ll": {
        "ratio": 1.0398230088495575,
        "raw_value": 235.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/nussinov.ll": {
        "ratio": 1.089385474860335,
        "raw_value": 195.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/symm.ll": {
        "ratio": 0.5255102040816326,
        "raw_value": 103.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/heat-3d.ll": {
        "ratio": 0.425531914893617,
        "raw_value": 100.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/covariance.ll": {
        "ratio": 1.076086956521739,
        "raw_value": 198.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/csmith/trainprogram1.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/csmith/trainprogram2.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/csmith/trainprogram3.ll": {
        "ratio": 1.1169702780441035,
        "raw_value": 1165.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/csmith/trainprogram4.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/csmith/trainprogram5.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      }
    },
    "objective": 0.9552870214857885
  },
  "fixed_baselines": {
    "none": {
      "count": 25,
      "mean_ratio": Infinity,
      "median_ratio": 0.48714131023281,
      "improved": 15,
      "tied": 0,
      "worsened": 10
    },
    "oz": {
      "count": 25,
      "mean_ratio": Infinity,
      "median_ratio": 1.089385474860335,
      "improved": 7,
      "tied": 1,
      "worsened": 17
    },
    "o3": {
      "count": 25,
      "mean_ratio": Infinity,
      "median_ratio": 0.7317784256559767,
      "improved": 15,
      "tied": 0,
      "worsened": 10
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
    "mean_norm": 1.0264443077847423,
    "median_norm": 0.9975,
    "improved": 2,
    "tied": 1,
    "worsened": 7,
    "invalid": 6,
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
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/security_sha.ll": {
        "ratio": 1.1184971098265897,
        "raw_value": 387.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/automotive_bitcount.ll": {
        "ratio": 0.995,
        "raw_value": 398.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/automotive_susan_e.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/automotive_susan_c.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/automotive_susan_s.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/bzip2e.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/consumer_tiff2rgba.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/telecom_adpcm_c.ll": {
        "ratio": 1.0,
        "raw_value": 196.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/office_rsynth.ll": {
        "ratio": 0.9922801213123794,
        "raw_value": 3599.0,
        "status": "ok",
        "variance_pct": 0.0
      }
    },
    "objective": 1.1314443077847423
  },
  "fixed_baselines": {
    "none": {
      "count": 10,
      "mean_ratio": Infinity,
      "median_ratio": Infinity,
      "improved": 4,
      "tied": 0,
      "worsened": 6
    },
    "oz": {
      "count": 10,
      "mean_ratio": Infinity,
      "median_ratio": Infinity,
      "improved": 2,
      "tied": 1,
      "worsened": 7
    },
    "o3": {
      "count": 10,
      "mean_ratio": Infinity,
      "median_ratio": Infinity,
      "improved": 4,
      "tied": 0,
      "worsened": 6
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
      "universal_status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink) --mtriple=x86_64-unknown-linux-gnu",
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
      "universal": 387.0,
      "none": 750.0,
      "oz": 346.0,
      "o3": 604.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.516,
      "ratio_vs_oz": 1.1184971098265897,
      "ratio_vs_o3": 0.640728476821192
    },
    {
      "suite": "cbench",
      "name": "automotive_bitcount",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/cbench/automotive_bitcount.ll",
      "universal": 398.0,
      "none": 803.0,
      "oz": 400.0,
      "o3": 441.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.49564134495641343,
      "ratio_vs_oz": 0.995,
      "ratio_vs_o3": 0.9024943310657596
    },
    {
      "suite": "cbench",
      "name": "automotive_susan_e",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/cbench/automotive_susan_e.ll",
      "universal": Infinity,
      "none": 12982.0,
      "oz": 5203.0,
      "o3": 6142.0,
      "universal_status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink) --mtriple=x86_64-unknown-linux-gnu",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": Infinity,
      "ratio_vs_oz": Infinity,
      "ratio_vs_o3": Infinity
    },
    {
      "suite": "cbench",
      "name": "automotive_susan_c",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/cbench/automotive_susan_c.ll",
      "universal": Infinity,
      "none": 12982.0,
      "oz": 5203.0,
      "o3": 6142.0,
      "universal_status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink) --mtriple=x86_64-unknown-linux-gnu",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": Infinity,
      "ratio_vs_oz": Infinity,
      "ratio_vs_o3": Infinity
    },
    {
      "suite": "cbench",
      "name": "automotive_susan_s",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/cbench/automotive_susan_s.ll",
      "universal": Infinity,
      "none": 12982.0,
      "oz": 5203.0,
      "o3": 6142.0,
      "universal_status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink) --mtriple=x86_64-unknown-linux-gnu",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": Infinity,
      "ratio_vs_oz": Infinity,
      "ratio_vs_o3": Infinity
    },
    {
      "suite": "cbench",
      "name": "bzip2e",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/cbench/bzip2e.ll",
      "universal": Infinity,
      "none": 27805.0,
      "oz": 15768.0,
      "o3": 18913.0,
      "universal_status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink) --mtriple=x86_64-unknown-linux-gnu",
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
      "universal_status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink) --mtriple=x86_64-unknown-linux-gnu",
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
      "universal": 3599.0,
      "none": 7388.0,
      "oz": 3627.0,
      "o3": 5674.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.48714131023281,
      "ratio_vs_oz": 0.9922801213123794,
      "ratio_vs_o3": 0.6342967923863235
    }
  ],
  "failures": [
    {
      "suite": "cbench",
      "name": "consumer_jpeg_c",
      "pipeline": "universal",
      "error": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink) --mtriple=x86_64-unknown-linux-gnu"
    },
    {
      "suite": "cbench",
      "name": "automotive_susan_e",
      "pipeline": "universal",
      "error": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink) --mtriple=x86_64-unknown-linux-gnu"
    },
    {
      "suite": "cbench",
      "name": "automotive_susan_c",
      "pipeline": "universal",
      "error": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink) --mtriple=x86_64-unknown-linux-gnu"
    },
    {
      "suite": "cbench",
      "name": "automotive_susan_s",
      "pipeline": "universal",
      "error": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink) --mtriple=x86_64-unknown-linux-gnu"
    },
    {
      "suite": "cbench",
      "name": "bzip2e",
      "pipeline": "universal",
      "error": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink) --mtriple=x86_64-unknown-linux-gnu"
    },
    {
      "suite": "cbench",
      "name": "consumer_tiff2rgba",
      "pipeline": "universal",
      "error": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink) --mtriple=x86_64-unknown-linux-gnu"
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
    "mean_norm": 0.7576557813103755,
    "median_norm": 0.782666606465595,
    "improved": 5,
    "tied": 0,
    "worsened": 5,
    "invalid": 0,
    "high_variance": 0,
    "improved_rate": 0.5,
    "tie_rate": 0.0,
    "worsen_rate": 0.5,
    "high_variance_rate": 0.0,
    "len_ratio": 0.09166666666666666,
    "per_program": {
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/2mm.ll": {
        "ratio": 1.081896551724138,
        "raw_value": 251.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/3mm.ll": {
        "ratio": 1.0694980694980696,
        "raw_value": 277.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/cholesky.ll": {
        "ratio": 0.388646288209607,
        "raw_value": 89.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/jacobi-2d.ll": {
        "ratio": 0.49489795918367346,
        "raw_value": 97.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/lu.ll": {
        "ratio": 0.3852813852813853,
        "raw_value": 89.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/correlation.ll": {
        "ratio": 1.0398230088495575,
        "raw_value": 235.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/nussinov.ll": {
        "ratio": 1.089385474860335,
        "raw_value": 195.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/symm.ll": {
        "ratio": 0.5255102040816326,
        "raw_value": 103.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/heat-3d.ll": {
        "ratio": 0.425531914893617,
        "raw_value": 100.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/covariance.ll": {
        "ratio": 1.076086956521739,
        "raw_value": 198.0,
        "status": "ok",
        "variance_pct": 0.0
      }
    },
    "objective": 0.8326557813103754
  },
  "fixed_baselines": {
    "none": {
      "count": 10,
      "mean_ratio": 0.25170503702470576,
      "median_ratio": 0.23204223044916947,
      "improved": 10,
      "tied": 0,
      "worsened": 0
    },
    "oz": {
      "count": 10,
      "mean_ratio": 0.7576557813103755,
      "median_ratio": 0.782666606465595,
      "improved": 5,
      "tied": 0,
      "worsened": 5
    },
    "o3": {
      "count": 10,
      "mean_ratio": 0.49689130896767014,
      "median_ratio": 0.49215581268765474,
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
      "universal": 251.0,
      "none": 682.0,
      "oz": 232.0,
      "o3": 343.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.3680351906158358,
      "ratio_vs_oz": 1.081896551724138,
      "ratio_vs_o3": 0.7317784256559767
    },
    {
      "suite": "polybench",
      "name": "3mm",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench/3mm.ll",
      "universal": 277.0,
      "none": 761.0,
      "oz": 259.0,
      "o3": 394.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.3639947437582129,
      "ratio_vs_oz": 1.0694980694980696,
      "ratio_vs_o3": 0.7030456852791879
    },
    {
      "suite": "polybench",
      "name": "cholesky",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench/cholesky.ll",
      "universal": 89.0,
      "none": 617.0,
      "oz": 229.0,
      "o3": 347.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.14424635332252836,
      "ratio_vs_oz": 0.388646288209607,
      "ratio_vs_o3": 0.2564841498559078
    },
    {
      "suite": "polybench",
      "name": "jacobi-2d",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench/jacobi-2d.ll",
      "universal": 97.0,
      "none": 524.0,
      "oz": 196.0,
      "o3": 338.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.1851145038167939,
      "ratio_vs_oz": 0.49489795918367346,
      "ratio_vs_o3": 0.2869822485207101
    },
    {
      "suite": "polybench",
      "name": "lu",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench/lu.ll",
      "universal": 89.0,
      "none": 612.0,
      "oz": 231.0,
      "o3": 345.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.1454248366013072,
      "ratio_vs_oz": 0.3852813852813853,
      "ratio_vs_o3": 0.2579710144927536
    },
    {
      "suite": "polybench",
      "name": "correlation",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench/correlation.ll",
      "universal": 235.0,
      "none": 677.0,
      "oz": 226.0,
      "o3": 337.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.34711964549483015,
      "ratio_vs_oz": 1.0398230088495575,
      "ratio_vs_o3": 0.6973293768545994
    },
    {
      "suite": "polybench",
      "name": "nussinov",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench/nussinov.ll",
      "universal": 195.0,
      "none": 699.0,
      "oz": 179.0,
      "o3": 246.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.27896995708154504,
      "ratio_vs_oz": 1.089385474860335,
      "ratio_vs_o3": 0.7926829268292683
    },
    {
      "suite": "polybench",
      "name": "symm",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench/symm.ll",
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
      "suite": "polybench",
      "name": "heat-3d",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench/heat-3d.ll",
      "universal": 100.0,
      "none": 745.0,
      "oz": 235.0,
      "o3": 404.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.1342281879194631,
      "ratio_vs_oz": 0.425531914893617,
      "ratio_vs_o3": 0.24752475247524752
    },
    {
      "suite": "polybench",
      "name": "covariance",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench/covariance.ll",
      "universal": 198.0,
      "none": 534.0,
      "oz": 184.0,
      "o3": 274.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.3707865168539326,
      "ratio_vs_oz": 1.076086956521739,
      "ratio_vs_o3": 0.7226277372262774
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
    "mean_norm": 1.1169702780441035,
    "median_norm": 1.1169702780441035,
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
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/csmith/trainprogram2.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/csmith/trainprogram3.ll": {
        "ratio": 1.1169702780441035,
        "raw_value": 1165.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/csmith/trainprogram4.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/csmith/trainprogram5.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      }
    },
    "objective": 1.2669702780441034
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
      "universal_status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink) --mtriple=x86_64-unknown-linux-gnu",
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
      "universal_status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink) --mtriple=x86_64-unknown-linux-gnu",
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
      "universal": 1165.0,
      "none": 3005.0,
      "oz": 1043.0,
      "o3": 15371.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.3876871880199667,
      "ratio_vs_oz": 1.1169702780441035,
      "ratio_vs_o3": 0.07579207598724871
    },
    {
      "suite": "csmith",
      "name": "trainprogram4",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/csmith/trainprogram4.ll",
      "universal": Infinity,
      "none": 22695.0,
      "oz": 12962.0,
      "o3": 44156.0,
      "universal_status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink) --mtriple=x86_64-unknown-linux-gnu",
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
      "universal_status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink) --mtriple=x86_64-unknown-linux-gnu",
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
      "error": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink) --mtriple=x86_64-unknown-linux-gnu"
    },
    {
      "suite": "csmith",
      "name": "trainprogram2",
      "pipeline": "universal",
      "error": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink) --mtriple=x86_64-unknown-linux-gnu"
    },
    {
      "suite": "csmith",
      "name": "trainprogram4",
      "pipeline": "universal",
      "error": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink) --mtriple=x86_64-unknown-linux-gnu"
    },
    {
      "suite": "csmith",
      "name": "trainprogram5",
      "pipeline": "universal",
      "error": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(jump-threading),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),module(iroutliner),function(gvn-sink) --mtriple=x86_64-unknown-linux-gnu"
    }
  ]
}
```
