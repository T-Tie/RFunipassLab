# External InstrCount Experiment Summary

## Experiment Setup

- Date: 2026-04-22 13:55:23
- Validation target: external datasets only
- Objective: IR instruction count
- Suites: `cbench`, `polybench`, `csmith`
- Total programs: `25`
- Frontend fix mode: `canonical`
- Frontend command style: `clang -O1 -Xclang -disable-llvm-passes -emit-llvm`
- Opt timeout: `60s`
- Workers: `4`

## Evaluated Universal Pass Sequence

```text
module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner)
```

## Combined Result

- `mean_norm = 0.691114453749198`
- `median_norm = 0.7515229409695483`
- `improved = 14 / 25`
- `tied = 1 / 25`
- `worsened = 10 / 25`
- `invalid = 7 / 25`
- `improved_rate = 56.0%`

Interpretation:
- Relative to the experiment's normalization baseline, values below `1.0` are better.
- This sequence shows usable cross-dataset transferability overall.
- The main limitation is robustness on complex `cbench` programs and random `csmith` programs.

## Fixed-Baseline Comparison

- Against `none`: `18` improved, `7` worsened, `median_ratio = 0.3835616438356164`
- Against `oz`: `14` improved, `1` tied, `10` worsened, `median_ratio = 0.9590620795694792`
- Against `o3`: `18` improved, `7` worsened, `median_ratio = 0.7408759124087592`

## Per-Suite Result

### cbench

- `count = 10`
- `mean_norm = 0.8667042640533238`
- `median_norm = 0.9590620795694792`
- `improved = 6`
- `tied = 1`
- `worsened = 3`
- `invalid = 3`

Observation:
- The sequence is moderately effective on `cbench`.
- Compared with the previous longer sequence, `cbench` invalid cases dropped from `6` to `3`.
- This indicates that removing repeated `attributor` applications improves stability on practical software-style workloads.

### polybench

- `count = 10`
- `mean_norm = 0.637121277357059`
- `median_norm = 0.5717733039161611`
- `improved = 7`
- `tied = 0`
- `worsened = 3`
- `invalid = 0`

Observation:
- Transfer is strongest on `polybench`.
- All programs finish successfully.
- The sequence consistently reduces IR instruction count on structured numeric kernels.

### csmith

- `count = 5`
- `mean_norm = 0.0019175455417066154`
- `median_norm = 0.0019175455417066154`
- `improved = 1`
- `tied = 0`
- `worsened = 4`
- `invalid = 4`

Observation:
- The result is dominated by invalid runs.
- Only `trainprogram3` completes successfully.
- This suggests the sequence still lacks robustness on adversarial or randomly generated programs.

## Invalid Cases

- `cbench/consumer_jpeg_c`: LLVM `attributor` assertion crash
- `cbench/bzip2e`: timeout
- `cbench/consumer_tiff2rgba`: timeout
- `csmith/trainprogram1`: timeout
- `csmith/trainprogram2`: timeout
- `csmith/trainprogram4`: timeout
- `csmith/trainprogram5`: timeout

The `consumer_jpeg_c` failure occurs inside:

```text
llvm/lib/Transforms/IPO/AttributorAttributes.cpp:12853
AAInvariantLoadPointerCallSiteReturned::initialize
Assertion: no associated function for return from call
```

This is evidence that external transfer quality is not only an optimization-quality problem, but also a pass-interaction safety problem.

## Comparison With Previous Longer Sequence

Previous sequence report:
- `/root/exp/RFunipassLab/external_datasets/reports/external_instrcount_fixseq_20260422_timeoutaware.json`

Current shorter sequence report:
- `/root/exp/RFunipassLab/external_datasets/reports/external_instrcount_fixseq_dropattr_20260422_timeoutaware.json`

Key comparison:

- Combined `improved`: `11 -> 14`
- Combined `worsened`: `13 -> 10`
- Combined `invalid`: `10 -> 7`
- `cbench invalid`: `6 -> 3`
- `polybench invalid`: `0 -> 0`
- `csmith invalid`: `4 -> 4`

Conclusion:
- The current sequence is clearly more stable than the previous longer sequence.
- The gain mainly comes from `cbench`.
- `csmith` remains the hardest external distribution.

## Repro Command

```bash
python /root/exp/RFunipassLab/run_external_validation.py evaluate \
  --mode instrcount \
  --suite cbench --suite polybench --suite csmith \
  --frontend-mode canonical \
  --instrcount-timeout 60 \
  --instrcount-workers 4 \
  --tag external_instrcount_fixseq_dropattr_20260422_timeoutaware \
  --sequence-text 'module(elim-avail-extern),module(iroutliner),module(globalopt),function(gvn-hoist),function(newgvn),function(dse),module(attributor),module(scc-oz-module-inliner),function(gvn-hoist),function(gvn-sink),function(newgvn),module(scc-oz-module-inliner)'
```

## Report Files

- JSON: `/root/exp/RFunipassLab/external_datasets/reports/external_instrcount_fixseq_dropattr_20260422_timeoutaware.json`
- Markdown: `/root/exp/RFunipassLab/external_datasets/reports/external_instrcount_fixseq_dropattr_20260422_timeoutaware.md`
