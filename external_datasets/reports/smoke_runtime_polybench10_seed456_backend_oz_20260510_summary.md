# PolyBench Matched-Backend Runtime Report: smoke_runtime_polybench10_seed456_backend_oz_20260510

- Generated at: `2026-05-10T10:20:19`
- Suite: `polybench`
- Benchmark count: `2`
- Seeds: `[456]`
- Backend profile: `oz` / flag `-Oz`
- Matched baseline: `oz`
- Repeat: `1`
- Warmup repeat: `0`
- Timeout: hard cap `300.0s`, adaptive factor `5.0`, min `5.0s`
- Metric: `polybench_seconds`
- LLVM tools: `/root/llvm/llvm-project-21/build/bin`
- Manifest: `/root/exp/RFunipassLab/external_datasets/reports/smoke_runtime_polybench10_seed456_backend_oz_20260510_manifest.json`
- Raw timings: `/root/exp/RFunipassLab/external_datasets/reports/smoke_runtime_polybench10_seed456_backend_oz_20260510_raw_timings.csv`
- Per-seed table: `/root/exp/RFunipassLab/external_datasets/reports/smoke_runtime_polybench10_seed456_backend_oz_20260510_per_seed.csv`

## Main Result

| Metric | Value |
| --- | ---: |
| Geomean runtime ratio vs oz ↓ | 2.2504 ± 0.0000 |
| Speedup vs oz ↑ | 0.4444 ± 0.0000 |
| Worsen rate ↓ | 100.00% ± 0.00% |
| Invalid rate ↓ | 0.00% ± 0.00% |
| Worsen-or-invalid rate ↓ | 100.00% ± 0.00% |
| Improved / tied / worsened | 0 / 0 / 2 |
| Timeout / invalid | 1 / 0 |
| New runner exceptions in this invocation | 1 |

## Method

- Each method first materializes an explicit middle-end IR with `opt`.
- RFunipass uses the `final_pipeline_effective` field from the 10-seed batch CSV.
- The baseline uses the matched LLVM pipeline, e.g. `opt -Oz` for the `oz` backend profile.
- All binaries are compiled from the materialized IR with `clang -x ir <IR> <backend flag> -Xclang -disable-llvm-passes -lm`.
- This keeps the backend optimization level aligned with the baseline while avoiding an extra clang middle-end optimization pass over already optimized IR.
- Universal timeout rows are counted as worsened and aggregated as censored lower-bound ratios using the timeout cap divided by the matched baseline runtime.

## Failures

- `{'stage': 'run', 'benchmark': '2mm', 'seed': '456', 'pipeline_label': 'universal', 'repeat_index': 1, 'error': 'runtime timeout after 11.386125s'}`
