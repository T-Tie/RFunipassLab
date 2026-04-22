# External Validation Report

- Generated at: 2026-04-22 13:55:23
- Mode: instrcount
- Sequence source: inline
- Suites: cbench, polybench, csmith
- Sequence length: 12

## Sequence

```text
module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner)
```

## Combined

```json
{
  "count": 25,
  "primary_metrics": {
    "count": 25,
    "mean_norm": 0.691114453749198,
    "median_norm": 0.7515229409695483,
    "improved": 14,
    "tied": 1,
    "worsened": 10,
    "invalid": 7,
    "high_variance": 0,
    "improved_rate": 0.56,
    "tie_rate": 0.04,
    "worsen_rate": 0.4,
    "high_variance_rate": 0.0,
    "len_ratio": 0.1,
    "per_program": {
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/consumer_jpeg_c.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt failed for pipeline='module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, returncode=-6, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu\nopt: /root/llvm/llvm-project-21/llvm/lib/Transforms/IPO/AttributorAttributes.cpp:12853: virtual void {anonymous}::AAInvariantLoadPointerCallSiteReturned::initialize(llvm::Attributor&): Assertion `F && \"no associated function for return from call\"' failed.\nPLEASE submit a bug report to https://github.com/llvm/llvm-project/issues/ and include the crash backtrace.\nStack dump:\n0.\tProgram arguments: /root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu\n1.\tRunning pass \"attributor\" on module \"<stdin>\"\n #0 0x0000643348beedd0 llvm::sys::PrintStackTrace(llvm::raw_ostream&, int) /root/llvm/llvm-project-21/llvm/lib/Support/Unix/Signals.inc:834:22\n #1 0x0000643348bef259 PrintStackTraceSignalHandler(void*) /root/llvm/llvm-project-21/llvm/lib/Support/Unix/Signals.inc:918:1\n #2 0x0000643348bec3c9 llvm::sys::RunSignalHandlers() /root/llvm/llvm-project-21/llvm/lib/Support/Signals.cpp:104:20\n #3 0x0000643348bee60d SignalHandler(int, siginfo_t*, void*) /root/llvm/llvm-project-21/llvm/lib/Support/Unix/Signals.inc:426:14\n #4 0x000074b69268f330 (/usr/lib/x86_64-linux-gnu/libc.so.6+0x45330)\n #5 0x000074b6926e8b2c __pthread_kill_implementation ./nptl/pthread_kill.c:44:76\n #6 0x000074b6926e8b2c __pthread_kill_internal ./nptl/pthread_kill.c:78:10\n #7 0x000074b6926e8b2c pthread_kill ./nptl/pthread_kill.c:89:10\n #8 0x000074b69268f27e raise ./signal/../sysdeps/posix/raise.c:27:6\n #9 0x000074b6926728ff abort ./stdlib/abort.c:81:7\n#10 0x000074b69267281b _nl_load_domain ./intl/loadmsgcat.c:1177:9\n#11 0x000074b692685517 (/usr/lib/x86_64-linux-gnu/libc.so.6+0x3b517)\n#12 0x000064334519dca7 (anonymous namespace)::AAInvariantLoadPointerCallSiteReturned::initialize(llvm::Attributor&) /root/llvm/llvm-project-21/llvm/lib/Transforms/IPO/AttributorAttributes.cpp:12855:26\n#13 0x000064334512ddfe llvm::AAInvariantLoadPointer const* llvm::Attributor::getOrCreateAAFor<llvm::AAInvariantLoadPointer>(llvm::IRPosition, llvm::AbstractAttribute const*, llvm::DepClassTy, bool, bool) /root/llvm/llvm-project-21/llvm/include/llvm/Transforms/IPO/Attributor.h:1633:9\n#14 0x000064334519d7b1 (anonymous namespace)::AAInvariantLoadPointerImpl::updateLocalInvariance(llvm::Attributor&)::'lambda'(llvm::Value const&)::operator()(llvm::Value const&) const /root/llvm/llvm-project-21/llvm/lib/Transforms/IPO/AttributorAttributes.cpp:12795:53",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/security_sha.ll": {
        "ratio": 0.41040462427745666,
        "raw_value": 142.0,
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
        "ratio": 0.9590620795694792,
        "raw_value": 4990.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/automotive_susan_c.ll": {
        "ratio": 0.9590620795694792,
        "raw_value": 4990.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/automotive_susan_s.ll": {
        "ratio": 0.9590620795694792,
        "raw_value": 4990.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/bzip2e.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/consumer_tiff2rgba.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/telecom_adpcm_c.ll": {
        "ratio": 1.0,
        "raw_value": 196.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/office_rsynth.ll": {
        "ratio": 0.7918389853873725,
        "raw_value": 2872.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/2mm.ll": {
        "ratio": 0.7112068965517241,
        "raw_value": 165.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/3mm.ll": {
        "ratio": 0.6486486486486487,
        "raw_value": 168.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/cholesky.ll": {
        "ratio": 0.30131004366812225,
        "raw_value": 69.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/jacobi-2d.ll": {
        "ratio": 0.3163265306122449,
        "raw_value": 62.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/lu.ll": {
        "ratio": 0.2987012987012987,
        "raw_value": 69.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/correlation.ll": {
        "ratio": 1.084070796460177,
        "raw_value": 245.0,
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
        "ratio": 0.49489795918367346,
        "raw_value": 97.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/heat-3d.ll": {
        "ratio": 0.32340425531914896,
        "raw_value": 76.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/covariance.ll": {
        "ratio": 1.1032608695652173,
        "raw_value": 203.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/csmith/trainprogram1.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/csmith/trainprogram2.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/csmith/trainprogram3.ll": {
        "ratio": 0.0019175455417066154,
        "raw_value": 2.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/csmith/trainprogram4.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/csmith/trainprogram5.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      }
    },
    "objective": 0.751114453749198
  },
  "fixed_baselines": {
    "none": {
      "count": 25,
      "mean_ratio": Infinity,
      "median_ratio": 0.3835616438356164,
      "improved": 18,
      "tied": 0,
      "worsened": 7
    },
    "oz": {
      "count": 25,
      "mean_ratio": Infinity,
      "median_ratio": 0.9590620795694792,
      "improved": 14,
      "tied": 1,
      "worsened": 10
    },
    "o3": {
      "count": 25,
      "mean_ratio": Infinity,
      "median_ratio": 0.7408759124087592,
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
    "mean_norm": 0.8667042640533238,
    "median_norm": 0.9590620795694792,
    "improved": 6,
    "tied": 1,
    "worsened": 3,
    "invalid": 3,
    "high_variance": 0,
    "improved_rate": 0.6,
    "tie_rate": 0.1,
    "worsen_rate": 0.3,
    "high_variance_rate": 0.0,
    "len_ratio": 0.1,
    "per_program": {
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/consumer_jpeg_c.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt failed for pipeline='module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, returncode=-6, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu\nopt: /root/llvm/llvm-project-21/llvm/lib/Transforms/IPO/AttributorAttributes.cpp:12853: virtual void {anonymous}::AAInvariantLoadPointerCallSiteReturned::initialize(llvm::Attributor&): Assertion `F && \"no associated function for return from call\"' failed.\nPLEASE submit a bug report to https://github.com/llvm/llvm-project/issues/ and include the crash backtrace.\nStack dump:\n0.\tProgram arguments: /root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu\n1.\tRunning pass \"attributor\" on module \"<stdin>\"\n #0 0x0000643348beedd0 llvm::sys::PrintStackTrace(llvm::raw_ostream&, int) /root/llvm/llvm-project-21/llvm/lib/Support/Unix/Signals.inc:834:22\n #1 0x0000643348bef259 PrintStackTraceSignalHandler(void*) /root/llvm/llvm-project-21/llvm/lib/Support/Unix/Signals.inc:918:1\n #2 0x0000643348bec3c9 llvm::sys::RunSignalHandlers() /root/llvm/llvm-project-21/llvm/lib/Support/Signals.cpp:104:20\n #3 0x0000643348bee60d SignalHandler(int, siginfo_t*, void*) /root/llvm/llvm-project-21/llvm/lib/Support/Unix/Signals.inc:426:14\n #4 0x000074b69268f330 (/usr/lib/x86_64-linux-gnu/libc.so.6+0x45330)\n #5 0x000074b6926e8b2c __pthread_kill_implementation ./nptl/pthread_kill.c:44:76\n #6 0x000074b6926e8b2c __pthread_kill_internal ./nptl/pthread_kill.c:78:10\n #7 0x000074b6926e8b2c pthread_kill ./nptl/pthread_kill.c:89:10\n #8 0x000074b69268f27e raise ./signal/../sysdeps/posix/raise.c:27:6\n #9 0x000074b6926728ff abort ./stdlib/abort.c:81:7\n#10 0x000074b69267281b _nl_load_domain ./intl/loadmsgcat.c:1177:9\n#11 0x000074b692685517 (/usr/lib/x86_64-linux-gnu/libc.so.6+0x3b517)\n#12 0x000064334519dca7 (anonymous namespace)::AAInvariantLoadPointerCallSiteReturned::initialize(llvm::Attributor&) /root/llvm/llvm-project-21/llvm/lib/Transforms/IPO/AttributorAttributes.cpp:12855:26\n#13 0x000064334512ddfe llvm::AAInvariantLoadPointer const* llvm::Attributor::getOrCreateAAFor<llvm::AAInvariantLoadPointer>(llvm::IRPosition, llvm::AbstractAttribute const*, llvm::DepClassTy, bool, bool) /root/llvm/llvm-project-21/llvm/include/llvm/Transforms/IPO/Attributor.h:1633:9\n#14 0x000064334519d7b1 (anonymous namespace)::AAInvariantLoadPointerImpl::updateLocalInvariance(llvm::Attributor&)::'lambda'(llvm::Value const&)::operator()(llvm::Value const&) const /root/llvm/llvm-project-21/llvm/lib/Transforms/IPO/AttributorAttributes.cpp:12795:53",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/security_sha.ll": {
        "ratio": 0.41040462427745666,
        "raw_value": 142.0,
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
        "ratio": 0.9590620795694792,
        "raw_value": 4990.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/automotive_susan_c.ll": {
        "ratio": 0.9590620795694792,
        "raw_value": 4990.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/automotive_susan_s.ll": {
        "ratio": 0.9590620795694792,
        "raw_value": 4990.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/bzip2e.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/consumer_tiff2rgba.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/telecom_adpcm_c.ll": {
        "ratio": 1.0,
        "raw_value": 196.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/cbench/office_rsynth.ll": {
        "ratio": 0.7918389853873725,
        "raw_value": 2872.0,
        "status": "ok",
        "variance_pct": 0.0
      }
    },
    "objective": 0.9117042640533238
  },
  "fixed_baselines": {
    "none": {
      "count": 10,
      "mean_ratio": Infinity,
      "median_ratio": 0.3865584324536819,
      "improved": 7,
      "tied": 0,
      "worsened": 3
    },
    "oz": {
      "count": 10,
      "mean_ratio": Infinity,
      "median_ratio": 0.9732810397847396,
      "improved": 6,
      "tied": 1,
      "worsened": 3
    },
    "o3": {
      "count": 10,
      "mean_ratio": Infinity,
      "median_ratio": 0.8124389449690654,
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
      "universal_status": "opt failed for pipeline='module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, returncode=-6, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu\nopt: /root/llvm/llvm-project-21/llvm/lib/Transforms/IPO/AttributorAttributes.cpp:12853: virtual void {anonymous}::AAInvariantLoadPointerCallSiteReturned::initialize(llvm::Attributor&): Assertion `F && \"no associated function for return from call\"' failed.\nPLEASE submit a bug report to https://github.com/llvm/llvm-project/issues/ and include the crash backtrace.\nStack dump:\n0.\tProgram arguments: /root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu\n1.\tRunning pass \"attributor\" on module \"<stdin>\"\n #0 0x0000643348beedd0 llvm::sys::PrintStackTrace(llvm::raw_ostream&, int) /root/llvm/llvm-project-21/llvm/lib/Support/Unix/Signals.inc:834:22\n #1 0x0000643348bef259 PrintStackTraceSignalHandler(void*) /root/llvm/llvm-project-21/llvm/lib/Support/Unix/Signals.inc:918:1\n #2 0x0000643348bec3c9 llvm::sys::RunSignalHandlers() /root/llvm/llvm-project-21/llvm/lib/Support/Signals.cpp:104:20\n #3 0x0000643348bee60d SignalHandler(int, siginfo_t*, void*) /root/llvm/llvm-project-21/llvm/lib/Support/Unix/Signals.inc:426:14\n #4 0x000074b69268f330 (/usr/lib/x86_64-linux-gnu/libc.so.6+0x45330)\n #5 0x000074b6926e8b2c __pthread_kill_implementation ./nptl/pthread_kill.c:44:76\n #6 0x000074b6926e8b2c __pthread_kill_internal ./nptl/pthread_kill.c:78:10\n #7 0x000074b6926e8b2c pthread_kill ./nptl/pthread_kill.c:89:10\n #8 0x000074b69268f27e raise ./signal/../sysdeps/posix/raise.c:27:6\n #9 0x000074b6926728ff abort ./stdlib/abort.c:81:7\n#10 0x000074b69267281b _nl_load_domain ./intl/loadmsgcat.c:1177:9\n#11 0x000074b692685517 (/usr/lib/x86_64-linux-gnu/libc.so.6+0x3b517)\n#12 0x000064334519dca7 (anonymous namespace)::AAInvariantLoadPointerCallSiteReturned::initialize(llvm::Attributor&) /root/llvm/llvm-project-21/llvm/lib/Transforms/IPO/AttributorAttributes.cpp:12855:26\n#13 0x000064334512ddfe llvm::AAInvariantLoadPointer const* llvm::Attributor::getOrCreateAAFor<llvm::AAInvariantLoadPointer>(llvm::IRPosition, llvm::AbstractAttribute const*, llvm::DepClassTy, bool, bool) /root/llvm/llvm-project-21/llvm/include/llvm/Transforms/IPO/Attributor.h:1633:9\n#14 0x000064334519d7b1 (anonymous namespace)::AAInvariantLoadPointerImpl::updateLocalInvariance(llvm::Attributor&)::'lambda'(llvm::Value const&)::operator()(llvm::Value const&) const /root/llvm/llvm-project-21/llvm/lib/Transforms/IPO/AttributorAttributes.cpp:12795:53",
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
      "universal": 142.0,
      "none": 750.0,
      "oz": 346.0,
      "o3": 604.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.18933333333333333,
      "ratio_vs_oz": 0.41040462427745666,
      "ratio_vs_o3": 0.23509933774834438
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
      "universal": 4990.0,
      "none": 12982.0,
      "oz": 5203.0,
      "o3": 6142.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.38437837005083964,
      "ratio_vs_oz": 0.9590620795694792,
      "ratio_vs_o3": 0.8124389449690654
    },
    {
      "suite": "cbench",
      "name": "automotive_susan_c",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/cbench/automotive_susan_c.ll",
      "universal": 4990.0,
      "none": 12982.0,
      "oz": 5203.0,
      "o3": 6142.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.38437837005083964,
      "ratio_vs_oz": 0.9590620795694792,
      "ratio_vs_o3": 0.8124389449690654
    },
    {
      "suite": "cbench",
      "name": "automotive_susan_s",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/cbench/automotive_susan_s.ll",
      "universal": 4990.0,
      "none": 12982.0,
      "oz": 5203.0,
      "o3": 6142.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.38437837005083964,
      "ratio_vs_oz": 0.9590620795694792,
      "ratio_vs_o3": 0.8124389449690654
    },
    {
      "suite": "cbench",
      "name": "bzip2e",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/cbench/bzip2e.ll",
      "universal": Infinity,
      "none": 27805.0,
      "oz": 15768.0,
      "o3": 18913.0,
      "universal_status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
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
      "universal_status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
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
      "universal": 2872.0,
      "none": 7388.0,
      "oz": 3627.0,
      "o3": 5674.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.3887384948565241,
      "ratio_vs_oz": 0.7918389853873725,
      "ratio_vs_o3": 0.5061684878392668
    }
  ],
  "failures": [
    {
      "suite": "cbench",
      "name": "consumer_jpeg_c",
      "pipeline": "universal",
      "error": "opt failed for pipeline='module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, returncode=-6, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu\nopt: /root/llvm/llvm-project-21/llvm/lib/Transforms/IPO/AttributorAttributes.cpp:12853: virtual void {anonymous}::AAInvariantLoadPointerCallSiteReturned::initialize(llvm::Attributor&): Assertion `F && \"no associated function for return from call\"' failed.\nPLEASE submit a bug report to https://github.com/llvm/llvm-project/issues/ and include the crash backtrace.\nStack dump:\n0.\tProgram arguments: /root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu\n1.\tRunning pass \"attributor\" on module \"<stdin>\"\n #0 0x0000643348beedd0 llvm::sys::PrintStackTrace(llvm::raw_ostream&, int) /root/llvm/llvm-project-21/llvm/lib/Support/Unix/Signals.inc:834:22\n #1 0x0000643348bef259 PrintStackTraceSignalHandler(void*) /root/llvm/llvm-project-21/llvm/lib/Support/Unix/Signals.inc:918:1\n #2 0x0000643348bec3c9 llvm::sys::RunSignalHandlers() /root/llvm/llvm-project-21/llvm/lib/Support/Signals.cpp:104:20\n #3 0x0000643348bee60d SignalHandler(int, siginfo_t*, void*) /root/llvm/llvm-project-21/llvm/lib/Support/Unix/Signals.inc:426:14\n #4 0x000074b69268f330 (/usr/lib/x86_64-linux-gnu/libc.so.6+0x45330)\n #5 0x000074b6926e8b2c __pthread_kill_implementation ./nptl/pthread_kill.c:44:76\n #6 0x000074b6926e8b2c __pthread_kill_internal ./nptl/pthread_kill.c:78:10\n #7 0x000074b6926e8b2c pthread_kill ./nptl/pthread_kill.c:89:10\n #8 0x000074b69268f27e raise ./signal/../sysdeps/posix/raise.c:27:6\n #9 0x000074b6926728ff abort ./stdlib/abort.c:81:7\n#10 0x000074b69267281b _nl_load_domain ./intl/loadmsgcat.c:1177:9\n#11 0x000074b692685517 (/usr/lib/x86_64-linux-gnu/libc.so.6+0x3b517)\n#12 0x000064334519dca7 (anonymous namespace)::AAInvariantLoadPointerCallSiteReturned::initialize(llvm::Attributor&) /root/llvm/llvm-project-21/llvm/lib/Transforms/IPO/AttributorAttributes.cpp:12855:26\n#13 0x000064334512ddfe llvm::AAInvariantLoadPointer const* llvm::Attributor::getOrCreateAAFor<llvm::AAInvariantLoadPointer>(llvm::IRPosition, llvm::AbstractAttribute const*, llvm::DepClassTy, bool, bool) /root/llvm/llvm-project-21/llvm/include/llvm/Transforms/IPO/Attributor.h:1633:9\n#14 0x000064334519d7b1 (anonymous namespace)::AAInvariantLoadPointerImpl::updateLocalInvariance(llvm::Attributor&)::'lambda'(llvm::Value const&)::operator()(llvm::Value const&) const /root/llvm/llvm-project-21/llvm/lib/Transforms/IPO/AttributorAttributes.cpp:12795:53"
    },
    {
      "suite": "cbench",
      "name": "bzip2e",
      "pipeline": "universal",
      "error": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu"
    },
    {
      "suite": "cbench",
      "name": "consumer_tiff2rgba",
      "pipeline": "universal",
      "error": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu"
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
    "mean_norm": 0.637121277357059,
    "median_norm": 0.5717733039161611,
    "improved": 7,
    "tied": 0,
    "worsened": 3,
    "invalid": 0,
    "high_variance": 0,
    "improved_rate": 0.7,
    "tie_rate": 0.0,
    "worsen_rate": 0.3,
    "high_variance_rate": 0.0,
    "len_ratio": 0.1,
    "per_program": {
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/2mm.ll": {
        "ratio": 0.7112068965517241,
        "raw_value": 165.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/3mm.ll": {
        "ratio": 0.6486486486486487,
        "raw_value": 168.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/cholesky.ll": {
        "ratio": 0.30131004366812225,
        "raw_value": 69.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/jacobi-2d.ll": {
        "ratio": 0.3163265306122449,
        "raw_value": 62.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/lu.ll": {
        "ratio": 0.2987012987012987,
        "raw_value": 69.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/correlation.ll": {
        "ratio": 1.084070796460177,
        "raw_value": 245.0,
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
        "ratio": 0.49489795918367346,
        "raw_value": 97.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/heat-3d.ll": {
        "ratio": 0.32340425531914896,
        "raw_value": 76.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/polybench/covariance.ll": {
        "ratio": 1.1032608695652173,
        "raw_value": 203.0,
        "status": "ok",
        "variance_pct": 0.0
      }
    },
    "objective": 0.6821212773570591
  },
  "fixed_baselines": {
    "none": {
      "count": 10,
      "mean_ratio": 0.2097314329167496,
      "median_ratio": 0.1947289036165229,
      "improved": 10,
      "tied": 0,
      "worsened": 0
    },
    "oz": {
      "count": 10,
      "mean_ratio": 0.637121277357059,
      "median_ratio": 0.5717733039161611,
      "improved": 7,
      "tied": 0,
      "worsened": 3
    },
    "o3": {
      "count": 10,
      "mean_ratio": 0.41950190917710933,
      "median_ratio": 0.34150484785002555,
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
      "universal": 165.0,
      "none": 682.0,
      "oz": 232.0,
      "o3": 343.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.24193548387096775,
      "ratio_vs_oz": 0.7112068965517241,
      "ratio_vs_o3": 0.48104956268221577
    },
    {
      "suite": "polybench",
      "name": "3mm",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench/3mm.ll",
      "universal": 168.0,
      "none": 761.0,
      "oz": 259.0,
      "o3": 394.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.22076215505913271,
      "ratio_vs_oz": 0.6486486486486487,
      "ratio_vs_o3": 0.4263959390862944
    },
    {
      "suite": "polybench",
      "name": "cholesky",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench/cholesky.ll",
      "universal": 69.0,
      "none": 617.0,
      "oz": 229.0,
      "o3": 347.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.11183144246353323,
      "ratio_vs_oz": 0.30131004366812225,
      "ratio_vs_o3": 0.1988472622478386
    },
    {
      "suite": "polybench",
      "name": "jacobi-2d",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench/jacobi-2d.ll",
      "universal": 62.0,
      "none": 524.0,
      "oz": 196.0,
      "o3": 338.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.1183206106870229,
      "ratio_vs_oz": 0.3163265306122449,
      "ratio_vs_o3": 0.1834319526627219
    },
    {
      "suite": "polybench",
      "name": "lu",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench/lu.ll",
      "universal": 69.0,
      "none": 612.0,
      "oz": 231.0,
      "o3": 345.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.11274509803921569,
      "ratio_vs_oz": 0.2987012987012987,
      "ratio_vs_o3": 0.2
    },
    {
      "suite": "polybench",
      "name": "correlation",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench/correlation.ll",
      "universal": 245.0,
      "none": 677.0,
      "oz": 226.0,
      "o3": 337.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.361890694239291,
      "ratio_vs_oz": 1.084070796460177,
      "ratio_vs_o3": 0.7270029673590505
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
      "universal": 97.0,
      "none": 575.0,
      "oz": 196.0,
      "o3": 378.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.16869565217391305,
      "ratio_vs_oz": 0.49489795918367346,
      "ratio_vs_o3": 0.2566137566137566
    },
    {
      "suite": "polybench",
      "name": "heat-3d",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench/heat-3d.ll",
      "universal": 76.0,
      "none": 745.0,
      "oz": 235.0,
      "o3": 404.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.10201342281879194,
      "ratio_vs_oz": 0.32340425531914896,
      "ratio_vs_o3": 0.18811881188118812
    },
    {
      "suite": "polybench",
      "name": "covariance",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/polybench/covariance.ll",
      "universal": 203.0,
      "none": 534.0,
      "oz": 184.0,
      "o3": 274.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.3801498127340824,
      "ratio_vs_oz": 1.1032608695652173,
      "ratio_vs_o3": 0.7408759124087592
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
    "mean_norm": 0.0019175455417066154,
    "median_norm": 0.0019175455417066154,
    "improved": 1,
    "tied": 0,
    "worsened": 4,
    "invalid": 4,
    "high_variance": 0,
    "improved_rate": 0.2,
    "tie_rate": 0.0,
    "worsen_rate": 0.8,
    "high_variance_rate": 0.0,
    "len_ratio": 0.1,
    "per_program": {
      "/root/exp/RFunipassLab/external_datasets/ir/csmith/trainprogram1.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/csmith/trainprogram2.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/csmith/trainprogram3.ll": {
        "ratio": 0.0019175455417066154,
        "raw_value": 2.0,
        "status": "ok",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/csmith/trainprogram4.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      },
      "/root/exp/RFunipassLab/external_datasets/ir/csmith/trainprogram5.ll": {
        "ratio": Infinity,
        "raw_value": Infinity,
        "status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
        "variance_pct": 0.0
      }
    },
    "objective": 0.12191754554170661
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
      "universal_status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
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
      "universal_status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
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
      "universal": 2.0,
      "none": 3005.0,
      "oz": 1043.0,
      "o3": 15371.0,
      "universal_status": "ok",
      "none_status": "ok",
      "oz_status": "ok",
      "o3_status": "ok",
      "ratio_vs_none": 0.0006655574043261231,
      "ratio_vs_oz": 0.0019175455417066154,
      "ratio_vs_o3": 0.00013011515190943984
    },
    {
      "suite": "csmith",
      "name": "trainprogram4",
      "ll_path": "/root/exp/RFunipassLab/external_datasets/ir/csmith/trainprogram4.ll",
      "universal": Infinity,
      "none": 22695.0,
      "oz": 12962.0,
      "o3": 44156.0,
      "universal_status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
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
      "universal_status": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu",
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
      "error": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu"
    },
    {
      "suite": "csmith",
      "name": "trainprogram2",
      "pipeline": "universal",
      "error": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu"
    },
    {
      "suite": "csmith",
      "name": "trainprogram4",
      "pipeline": "universal",
      "error": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu"
    },
    {
      "suite": "csmith",
      "name": "trainprogram5",
      "pipeline": "universal",
      "error": "opt timed out after 60.0s for pipeline='module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner)', target_triple=x86_64-unknown-linux-gnu, cmd=/root/opt/rv64gc_llvm_21/bin/opt -S -passes=module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner) --mtriple=x86_64-unknown-linux-gnu"
    }
  ]
}
```
