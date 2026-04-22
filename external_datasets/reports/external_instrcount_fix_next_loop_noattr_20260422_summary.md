# External InstrCount Experiment Summary

## Experiment Setup

- Date: 2026-04-22 14:10:16
- Validation target: external datasets only
- Objective: IR instruction count
- Suites: `cbench`, `polybench`, `csmith`
- Total programs: `25`
- Frontend fix mode: `canonical`
- Frontend command style: `clang -O1 -Xclang -disable-llvm-passes -emit-llvm`
- Opt timeout: `60s`
- Workers: `4`
- Tag: `external_instrcount_fix_next_loop_noattr_20260422_timeoutaware`

## Evaluated Universal Pass Sequence

```text
module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner)
```

This sequence removes `module(attributor)` from the previous best external-validation variant.

## Combined Result

- `mean_norm = 1.0624368870520164`
- `median_norm = 1.089082395465374`
- `improved = 2 / 25`
- `tied = 1 / 25`
- `worsened = 22 / 25`
- `invalid = 7 / 25`
- `improved_rate = 8.0%`

Interpretation:

- Relative to the normalization baseline, values below `1.0` are better.
- This sequence is not a good external universal pass sequence for the current objective.
- Removing `attributor` improves crash robustness, but causes a major loss of optimization effectiveness.

## Fixed-Baseline Comparison

- Against `none`: `18` improved, `7` worsened, `median_ratio = 0.4051863857374392`
- Against `oz`: `2` improved, `1` tied, `22` worsened, `median_ratio = 1.092920353982301`
- Against `o3`: `18` improved, `7` worsened, `median_ratio = 0.7481751824817519`

Interpretation:

- The sequence is still much better than no optimization.
- However, against the main comparison baseline `oz`, it is clearly worse overall.

## Per-Suite Result

### cbench

- `count = 10`
- `mean_norm = 1.0015714160608618`
- `median_norm = 1.002757099531293`
- `improved = 2`
- `tied = 1`
- `worsened = 7`
- `invalid = 3`

Observation:

- Stability is acceptable but optimization quality is weak.
- Most successful `cbench` programs are slightly worse than `oz`.

### polybench

- `count = 10`
- `mean_norm = 1.0977677093819944`
- `median_norm = 1.09231170537543`
- `improved = 0`
- `tied = 0`
- `worsened = 10`
- `invalid = 0`

Observation:

- This is the clearest negative signal in the whole experiment.
- The sequence loses all the strong transfer gains that earlier versions showed on `polybench`.

### csmith

- `count = 5`
- `mean_norm = 1.1351869606903164`
- `median_norm = 1.1351869606903164`
- `improved = 0`
- `tied = 0`
- `worsened = 5`
- `invalid = 4`

Observation:

- Robustness remains poor on random programs.
- The only successful program is also worse than `oz`.

## Invalid Cases

- `cbench/consumer_jpeg_c`: timeout
- `cbench/bzip2e`: timeout
- `cbench/consumer_tiff2rgba`: timeout
- `csmith/trainprogram1`: timeout
- `csmith/trainprogram2`: timeout
- `csmith/trainprogram4`: timeout
- `csmith/trainprogram5`: timeout

Key change relative to the previous `one_attr` run:

- `consumer_jpeg_c` no longer triggers the LLVM `attributor` assertion.
- It now degrades into a timeout instead.

This means:

- `module(attributor)` is strongly related to the earlier assertion crash.
- But removing it entirely also removes an important source of optimization benefit.

## Comparison With Previous Sequences

Reference reports:

- Multi-`attributor` sequence:
  `/root/exp/RFunipassLab/external_datasets/reports/external_instrcount_fixseq_20260422_timeoutaware.json`
- One-`attributor` sequence:
  `/root/exp/RFunipassLab/external_datasets/reports/external_instrcount_fixseq_dropattr_20260422_timeoutaware.json`
- Current no-`attributor` sequence:
  `/root/exp/RFunipassLab/external_datasets/reports/external_instrcount_fix_next_loop_noattr_20260422_timeoutaware.json`

Combined comparison:

- Multi-`attributor`: `mean_norm=0.6164`, `median_norm=0.5255`, `improved=11`, `invalid=10`
- One-`attributor`: `mean_norm=0.6911`, `median_norm=0.7515`, `improved=14`, `invalid=7`
- No-`attributor`: `mean_norm=1.0624`, `median_norm=1.0891`, `improved=2`, `invalid=7`

Conclusion:

- The best tradeoff so far is still the `one-attr` sequence.
- Removing repeated `attributor` improved stability.
- Removing `attributor` completely breaks the main optimization gains, especially on `polybench`.

## Repro Command

```bash
python /root/exp/RFunipassLab/run_external_validation.py evaluate \
  --mode instrcount \
  --suite cbench --suite polybench --suite csmith \
  --frontend-mode canonical \
  --instrcount-timeout 60 \
  --instrcount-workers 4 \
  --tag external_instrcount_fix_next_loop_noattr_20260422_timeoutaware \
  --sequence-text 'module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner)'
```

## Report Files

- JSON: `/root/exp/RFunipassLab/external_datasets/reports/external_instrcount_fix_next_loop_noattr_20260422_timeoutaware.json`
- Markdown: `/root/exp/RFunipassLab/external_datasets/reports/external_instrcount_fix_next_loop_noattr_20260422_timeoutaware.md`
