# External Validation Report

- Generated at: 2026-04-24 16:00:53
- Mode: instrcount
- Sequence source: /root/exp/RFunipassLab/results/instrcount/summaries/20260423_205014_703926_feature_lite_seed460.json
- Suites: cbench, polybench, csmith
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
  "count": 25,
  "primary_metrics": {
    "count": 25,
    "mean_norm": 0.602862278727352,
    "median_norm": 0.5096525096525096,
    "improved": 11,
    "tied": 1,
    "worsened": 13,
    "invalid": 10,
    "high_variance": 0,
    "improved_rate": 0.44,
    "tie_rate": 0.04,
    "worsen_rate": 0.52,
    "high_variance_rate": 0.0,
    "len_ratio": 0.125,
    "per_program": {
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/consumer_jpeg_c.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/security_sha.ll": {
        "ratio": 0.4046242774566474,
        "raw_value": 140.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/automotive_bitcount.ll": {
        "ratio": 1.0025,
        "raw_value": 401.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/automotive_susan_e.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/automotive_susan_c.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/automotive_susan_s.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/bzip2e.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/consumer_tiff2rgba.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/telecom_adpcm_c.ll": {
        "ratio": 1.0,
        "raw_value": 196.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/office_rsynth.ll": {
        "ratio": 0.9762889440308795,
        "raw_value": 3541.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/2mm.ll": {
        "ratio": 0.5560344827586207,
        "raw_value": 129.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/3mm.ll": {
        "ratio": 0.5096525096525096,
        "raw_value": 132.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/cholesky.ll": {
        "ratio": 0.31004366812227074,
        "raw_value": 71.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/jacobi-2d.ll": {
        "ratio": 0.3979591836734694,
        "raw_value": 78.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/lu.ll": {
        "ratio": 0.30735930735930733,
        "raw_value": 71.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/correlation.ll": {
        "ratio": 1.0132743362831858,
        "raw_value": 229.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/nussinov.ll": {
        "ratio": 1.1843575418994414,
        "raw_value": 212.0,
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
        "ratio": 0.34893617021276596,
        "raw_value": 82.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/covariance.ll": {
        "ratio": 0.5054347826086957,
        "raw_value": 93.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/csmith/trainprogram1.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/csmith/trainprogram2.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/csmith/trainprogram3.ll": {
        "ratio": 0.0009587727708533077,
        "raw_value": 1.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/csmith/trainprogram4.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/csmith/trainprogram5.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      }
    },
    "objective": 0.6808622787273519
  },
  "fixed_baselines": {
    "none": {
      "count": 25,
      "mean_ratio": Infinity,
      "median_ratio": 0.3835616438356164,
      "improved": 15,
      "tied": 0,
      "worsened": 10
    },
    "oz": {
      "count": 25,
      "mean_ratio": Infinity,
      "median_ratio": 1.0025,
      "improved": 11,
      "tied": 1,
      "worsened": 13
    },
    "o3": {
      "count": 25,
      "mean_ratio": Infinity,
      "median_ratio": 0.6795252225519288,
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
    "mean_norm": 0.8458533053718817,
    "median_norm": 0.9881444720154398,
    "improved": 2,
    "tied": 1,
    "worsened": 7,
    "invalid": 6,
    "high_variance": 0,
    "improved_rate": 0.2,
    "tie_rate": 0.1,
    "worsen_rate": 0.7,
    "high_variance_rate": 0.0,
    "len_ratio": 0.125,
    "per_program": {
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/consumer_jpeg_c.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/security_sha.ll": {
        "ratio": 0.4046242774566474,
        "raw_value": 140.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/automotive_bitcount.ll": {
        "ratio": 1.0025,
        "raw_value": 401.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/automotive_susan_e.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/automotive_susan_c.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/automotive_susan_s.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/bzip2e.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/consumer_tiff2rgba.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/telecom_adpcm_c.ll": {
        "ratio": 1.0,
        "raw_value": 196.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/office_rsynth.ll": {
        "ratio": 0.9762889440308795,
        "raw_value": 3541.0,
        "status": "ok",
        "variance_pct": 0.0
      }
    },
    "objective": 0.9508533053718817
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
      "universal_status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
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
      "universal": 140.0,
      "none": 750.0,
      "oz": 346.0,
      "o3": 604.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.18666666666666668,
      "ratio_vs_oz": 0.4046242774566474,
      "ratio_vs_o3": 0.23178807947019867
    },
    {
      "suite": "cbench",
      "name": "automotive_bitcount",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/cbench/automotive_bitcount.ll",
      "universal": 401.0,
      "none": 803.0,
      "oz": 400.0,
      "o3": 441.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.49937733499377335,
      "ratio_vs_oz": 1.0025,
      "ratio_vs_o3": 0.909297052154195
    },
    {
      "suite": "cbench",
      "name": "automotive_susan_e",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/cbench/automotive_susan_e.ll",
      "universal": Infinity,
      "none": 12982.0,
      "oz": 5203.0,
      "o3": 6142.0,
      "universal_status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
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
      "universal_status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
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
      "universal_status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
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
      "universal_status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
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
      "universal_status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
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
      "universal": 3541.0,
      "none": 7388.0,
      "oz": 3627.0,
      "o3": 5674.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.4792907417433676,
      "ratio_vs_oz": 0.9762889440308795,
      "ratio_vs_o3": 0.62407472682411
    }
  ],
  "failures": [
    {
      "suite": "cbench",
      "name": "consumer_jpeg_c",
      "pipeline": "universal",
      "error": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu"
    },
    {
      "suite": "cbench",
      "name": "automotive_susan_e",
      "pipeline": "universal",
      "error": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu"
    },
    {
      "suite": "cbench",
      "name": "automotive_susan_c",
      "pipeline": "universal",
      "error": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu"
    },
    {
      "suite": "cbench",
      "name": "automotive_susan_s",
      "pipeline": "universal",
      "error": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu"
    },
    {
      "suite": "cbench",
      "name": "bzip2e",
      "pipeline": "universal",
      "error": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu"
    },
    {
      "suite": "cbench",
      "name": "consumer_tiff2rgba",
      "pipeline": "universal",
      "error": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu"
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
    "mean_norm": 0.5658562186651899,
    "median_norm": 0.5075436461306027,
    "improved": 8,
    "tied": 0,
    "worsened": 2,
    "invalid": 0,
    "high_variance": 0,
    "improved_rate": 0.8,
    "tie_rate": 0.0,
    "worsen_rate": 0.2,
    "high_variance_rate": 0.0,
    "len_ratio": 0.125,
    "per_program": {
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/2mm.ll": {
        "ratio": 0.5560344827586207,
        "raw_value": 129.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/3mm.ll": {
        "ratio": 0.5096525096525096,
        "raw_value": 132.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/cholesky.ll": {
        "ratio": 0.31004366812227074,
        "raw_value": 71.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/jacobi-2d.ll": {
        "ratio": 0.3979591836734694,
        "raw_value": 78.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/lu.ll": {
        "ratio": 0.30735930735930733,
        "raw_value": 71.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/correlation.ll": {
        "ratio": 1.0132743362831858,
        "raw_value": 229.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/nussinov.ll": {
        "ratio": 1.1843575418994414,
        "raw_value": 212.0,
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
        "ratio": 0.34893617021276596,
        "raw_value": 82.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/covariance.ll": {
        "ratio": 0.5054347826086957,
        "raw_value": 93.0,
        "status": "ok",
        "variance_pct": 0.0
      }
    },
    "objective": 0.5958562186651899
  },
  "fixed_baselines": {
    "none": {
      "count": 10,
      "mean_ratio": 0.18474487897431596,
      "median_ratio": 0.17380664117290967,
      "improved": 10,
      "tied": 0,
      "worsened": 0
    },
    "oz": {
      "count": 10,
      "mean_ratio": 0.5658562186651899,
      "median_ratio": 0.5075436461306027,
      "improved": 8,
      "tied": 0,
      "worsened": 2
    },
    "o3": {
      "count": 10,
      "mean_ratio": 0.3708482926747197,
      "median_ratio": 0.3037560765987162,
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
      "suite": "polybench",
      "name": "3mm",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench/3mm.ll",
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
      "suite": "polybench",
      "name": "cholesky",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench/cholesky.ll",
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
      "suite": "polybench",
      "name": "jacobi-2d",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench/jacobi-2d.ll",
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
      "suite": "polybench",
      "name": "lu",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench/lu.ll",
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
      "suite": "polybench",
      "name": "correlation",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench/correlation.ll",
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
      "suite": "polybench",
      "name": "nussinov",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench/nussinov.ll",
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
      "suite": "polybench",
      "name": "covariance",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench/covariance.ll",
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
    "mean_norm": 0.0009587727708533077,
    "median_norm": 0.0009587727708533077,
    "improved": 1,
    "tied": 0,
    "worsened": 4,
    "invalid": 4,
    "high_variance": 0,
    "improved_rate": 0.2,
    "tie_rate": 0.0,
    "worsen_rate": 0.8,
    "high_variance_rate": 0.0,
    "len_ratio": 0.125,
    "per_program": {
      "/root/exp/RFunipassLab/external_datasets/ir/csmith/trainprogram1.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/csmith/trainprogram2.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/csmith/trainprogram3.ll": {
        "ratio": 0.0009587727708533077,
        "raw_value": 1.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/csmith/trainprogram4.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/csmith/trainprogram5.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      }
    },
    "objective": 0.1209587727708533
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
      "improved": 1,
      "tied": 0,
      "worsened": 4
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
      "universal_status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
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
      "universal_status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
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
      "universal": 1.0,
      "none": 3005.0,
      "oz": 1043.0,
      "o3": 15371.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.00033277870216306157,
      "ratio_vs_oz": 0.0009587727708533077,
      "ratio_vs_o3": 6.505757595471992e-05
    },
    {
      "suite": "csmith",
      "name": "trainprogram4",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/csmith/trainprogram4.ll",
      "universal": Infinity,
      "none": 22695.0,
      "oz": 12962.0,
      "o3": 44156.0,
      "universal_status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
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
      "universal_status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
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
      "error": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu"
    },
    {
      "suite": "csmith",
      "name": "trainprogram2",
      "pipeline": "universal",
      "error": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu"
    },
    {
      "suite": "csmith",
      "name": "trainprogram4",
      "pipeline": "universal",
      "error": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu"
    },
    {
      "suite": "csmith",
      "name": "trainprogram5",
      "pipeline": "universal",
      "error": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(globalopt),module(attributor),module(iroutliner),function(dse),cgscc(attributor-cgscc),module(attributor),function(mem2reg),function(gvn-sink),module(attributor),module(scc-oz-module-inliner),module(iroutliner),module(attributor),function(gvn-sink),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu"
    }
  ]
}
```
