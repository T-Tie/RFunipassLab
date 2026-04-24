# External Validation Report

- Generated at: 2026-04-24 16:07:17
- Mode: instrcount
- Sequence source: /root/exp/RFunipassLab/results/instrcount/summaries/20260423_211628_575222_feature_lite_seed461.json
- Suites: cbench, polybench, csmith
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
  "count": 25,
  "primary_metrics": {
    "count": 25,
    "mean_norm": 0.9190367000495466,
    "median_norm": 1.0021276595744681,
    "improved": 6,
    "tied": 1,
    "worsened": 18,
    "invalid": 11,
    "high_variance": 0,
    "improved_rate": 0.24,
    "tie_rate": 0.04,
    "worsen_rate": 0.72,
    "high_variance_rate": 0.0,
    "len_ratio": 0.15,
    "per_program": {
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/consumer_jpeg_c.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/security_sha.ll": {
        "ratio": 1.0722543352601157,
        "raw_value": 371.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/automotive_bitcount.ll": {
        "ratio": 0.975,
        "raw_value": 390.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/automotive_susan_e.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/automotive_susan_c.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/automotive_susan_s.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/bzip2e.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/consumer_tiff2rgba.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/telecom_adpcm_c.ll": {
        "ratio": 1.0,
        "raw_value": 196.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/office_rsynth.ll": {
        "ratio": 0.9652605459057072,
        "raw_value": 3501.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/2mm.ll": {
        "ratio": 1.0129310344827587,
        "raw_value": 235.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/3mm.ll": {
        "ratio": 1.0077220077220077,
        "raw_value": 261.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/cholesky.ll": {
        "ratio": 1.0043668122270741,
        "raw_value": 230.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/jacobi-2d.ll": {
        "ratio": 0.3877551020408163,
        "raw_value": 76.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/lu.ll": {
        "ratio": 1.0086580086580086,
        "raw_value": 233.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/correlation.ll": {
        "ratio": 0.9424778761061947,
        "raw_value": 213.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/nussinov.ll": {
        "ratio": 1.094972067039106,
        "raw_value": 196.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/symm.ll": {
        "ratio": 0.42346938775510207,
        "raw_value": 83.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/heat-3d.ll": {
        "ratio": 1.004255319148936,
        "raw_value": 236.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/covariance.ll": {
        "ratio": 0.967391304347826,
        "raw_value": 178.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/csmith/trainprogram1.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/csmith/trainprogram2.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/csmith/trainprogram3.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/csmith/trainprogram4.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/csmith/trainprogram5.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      }
    },
    "objective": 1.0270367000495466
  },
  "fixed_baselines": {
    "none": {
      "count": 25,
      "mean_ratio": Infinity,
      "median_ratio": 0.48567870485678705,
      "improved": 14,
      "tied": 0,
      "worsened": 11
    },
    "oz": {
      "count": 25,
      "mean_ratio": Infinity,
      "median_ratio": 1.0722543352601157,
      "improved": 6,
      "tied": 1,
      "worsened": 18
    },
    "o3": {
      "count": 25,
      "mean_ratio": Infinity,
      "median_ratio": 0.7967479674796748,
      "improved": 14,
      "tied": 0,
      "worsened": 11
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
    "mean_norm": 1.0031287202914556,
    "median_norm": 0.9875,
    "improved": 2,
    "tied": 1,
    "worsened": 7,
    "invalid": 6,
    "high_variance": 0,
    "improved_rate": 0.2,
    "tie_rate": 0.1,
    "worsen_rate": 0.7,
    "high_variance_rate": 0.0,
    "len_ratio": 0.15,
    "per_program": {
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/consumer_jpeg_c.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/security_sha.ll": {
        "ratio": 1.0722543352601157,
        "raw_value": 371.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/automotive_bitcount.ll": {
        "ratio": 0.975,
        "raw_value": 390.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/automotive_susan_e.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/automotive_susan_c.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/automotive_susan_s.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/bzip2e.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/consumer_tiff2rgba.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/telecom_adpcm_c.ll": {
        "ratio": 1.0,
        "raw_value": 196.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/office_rsynth.ll": {
        "ratio": 0.9652605459057072,
        "raw_value": 3501.0,
        "status": "ok",
        "variance_pct": 0.0
      }
    },
    "objective": 1.1081287202914556
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
      "universal_status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
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
      "universal": 371.0,
      "none": 750.0,
      "oz": 346.0,
      "o3": 604.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.49466666666666664,
      "ratio_vs_oz": 1.0722543352601157,
      "ratio_vs_o3": 0.6142384105960265
    },
    {
      "suite": "cbench",
      "name": "automotive_bitcount",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/cbench/automotive_bitcount.ll",
      "universal": 390.0,
      "none": 803.0,
      "oz": 400.0,
      "o3": 441.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.48567870485678705,
      "ratio_vs_oz": 0.975,
      "ratio_vs_o3": 0.8843537414965986
    },
    {
      "suite": "cbench",
      "name": "automotive_susan_e",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/cbench/automotive_susan_e.ll",
      "universal": Infinity,
      "none": 12982.0,
      "oz": 5203.0,
      "o3": 6142.0,
      "universal_status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
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
      "universal_status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
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
      "universal_status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
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
      "universal_status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
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
      "universal_status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
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
      "universal": 3501.0,
      "none": 7388.0,
      "oz": 3627.0,
      "o3": 5674.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.47387655657823496,
      "ratio_vs_oz": 0.9652605459057072,
      "ratio_vs_o3": 0.6170250264363765
    }
  ],
  "failures": [
    {
      "suite": "cbench",
      "name": "consumer_jpeg_c",
      "pipeline": "universal",
      "error": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu"
    },
    {
      "suite": "cbench",
      "name": "automotive_susan_e",
      "pipeline": "universal",
      "error": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu"
    },
    {
      "suite": "cbench",
      "name": "automotive_susan_c",
      "pipeline": "universal",
      "error": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu"
    },
    {
      "suite": "cbench",
      "name": "automotive_susan_s",
      "pipeline": "universal",
      "error": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu"
    },
    {
      "suite": "cbench",
      "name": "bzip2e",
      "pipeline": "universal",
      "error": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu"
    },
    {
      "suite": "cbench",
      "name": "consumer_tiff2rgba",
      "pipeline": "universal",
      "error": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu"
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
    "mean_norm": 0.885399891952783,
    "median_norm": 1.0043110656880052,
    "improved": 4,
    "tied": 0,
    "worsened": 6,
    "invalid": 0,
    "high_variance": 0,
    "improved_rate": 0.4,
    "tie_rate": 0.0,
    "worsen_rate": 0.6,
    "high_variance_rate": 0.0,
    "len_ratio": 0.15,
    "per_program": {
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/2mm.ll": {
        "ratio": 1.0129310344827587,
        "raw_value": 235.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/3mm.ll": {
        "ratio": 1.0077220077220077,
        "raw_value": 261.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/cholesky.ll": {
        "ratio": 1.0043668122270741,
        "raw_value": 230.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/jacobi-2d.ll": {
        "ratio": 0.3877551020408163,
        "raw_value": 76.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/lu.ll": {
        "ratio": 1.0086580086580086,
        "raw_value": 233.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/correlation.ll": {
        "ratio": 0.9424778761061947,
        "raw_value": 213.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/nussinov.ll": {
        "ratio": 1.094972067039106,
        "raw_value": 196.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/symm.ll": {
        "ratio": 0.42346938775510207,
        "raw_value": 83.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/heat-3d.ll": {
        "ratio": 1.004255319148936,
        "raw_value": 236.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/covariance.ll": {
        "ratio": 0.967391304347826,
        "raw_value": 178.0,
        "status": "ok",
        "variance_pct": 0.0
      }
    },
    "objective": 0.975399891952783
  },
  "fixed_baselines": {
    "none": {
      "count": 10,
      "mean_ratio": 0.29755567471474215,
      "median_ratio": 0.3250559284116331,
      "improved": 10,
      "tied": 0,
      "worsened": 0
    },
    "oz": {
      "count": 10,
      "mean_ratio": 0.885399891952783,
      "median_ratio": 1.0043110656880052,
      "improved": 4,
      "tied": 0,
      "worsened": 6
    },
    "o3": {
      "count": 10,
      "mean_ratio": 0.5792771958037055,
      "median_ratio": 0.6560357923598503,
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
      "suite": "polybench",
      "name": "3mm",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench/3mm.ll",
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
      "suite": "polybench",
      "name": "cholesky",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench/cholesky.ll",
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
      "suite": "polybench",
      "name": "jacobi-2d",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench/jacobi-2d.ll",
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
      "suite": "polybench",
      "name": "lu",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench/lu.ll",
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
      "suite": "polybench",
      "name": "correlation",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench/correlation.ll",
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
      "suite": "polybench",
      "name": "nussinov",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench/nussinov.ll",
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
      "suite": "polybench",
      "name": "symm",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench/symm.ll",
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
      "suite": "polybench",
      "name": "heat-3d",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench/heat-3d.ll",
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
      "suite": "polybench",
      "name": "covariance",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench/covariance.ll",
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
    "mean_norm": Infinity,
    "median_norm": Infinity,
    "improved": 0,
    "tied": 0,
    "worsened": 5,
    "invalid": 5,
    "high_variance": 0,
    "improved_rate": 0.0,
    "tie_rate": 0.0,
    "worsen_rate": 1.0,
    "high_variance_rate": 0.0,
    "len_ratio": 0.15,
    "per_program": {
      "/root/exp/RFunipassLab/external_datasets/ir/csmith/trainprogram1.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/csmith/trainprogram2.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/csmith/trainprogram3.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/csmith/trainprogram4.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/csmith/trainprogram5.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      }
    },
    "objective": Infinity
  },
  "fixed_baselines": {
    "none": {
      "count": 5,
      "mean_ratio": Infinity,
      "median_ratio": Infinity,
      "improved": 0,
      "tied": 0,
      "worsened": 5
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
      "improved": 0,
      "tied": 0,
      "worsened": 5
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
      "universal_status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
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
      "universal_status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
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
      "universal": Infinity,
      "none": 3005.0,
      "oz": 1043.0,
      "o3": 15371.0,
      "universal_status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": Infinity,
      "ratio_vs_oz": Infinity,
      "ratio_vs_o3": Infinity
    },
    {
      "suite": "csmith",
      "name": "trainprogram4",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/csmith/trainprogram4.ll",
      "universal": Infinity,
      "none": 22695.0,
      "oz": 12962.0,
      "o3": 44156.0,
      "universal_status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
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
      "universal_status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
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
      "error": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu"
    },
    {
      "suite": "csmith",
      "name": "trainprogram2",
      "pipeline": "universal",
      "error": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu"
    },
    {
      "suite": "csmith",
      "name": "trainprogram3",
      "pipeline": "universal",
      "error": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu"
    },
    {
      "suite": "csmith",
      "name": "trainprogram4",
      "pipeline": "universal",
      "error": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu"
    },
    {
      "suite": "csmith",
      "name": "trainprogram5",
      "pipeline": "universal",
      "error": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(inferattrs),function(gvn-sink),module(attributor),module(iroutliner),function(jump-threading),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),module(scc-oz-module-inliner),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu"
    }
  ]
}
```
