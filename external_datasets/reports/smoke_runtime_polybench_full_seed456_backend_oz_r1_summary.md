# PolyBench Matched-Backend Runtime Report: smoke_runtime_polybench_full_seed456_backend_oz_r1

- Generated at: `2026-05-09T18:25:53`
- Suite: `polybench_full`
- Benchmark count: `2`
- Seeds: `[456]`
- Backend profile: `oz` / flag `-Oz`
- Matched baseline: `oz`
- Repeat: `1`
- Metric: `polybench_seconds`
- LLVM tools: `/root/llvm/llvm-project-21/build/bin`
- Manifest: `/root/exp/RFunipassLab/external_datasets/reports/smoke_runtime_polybench_full_seed456_backend_oz_r1_manifest.json`
- Raw timings: `/root/exp/RFunipassLab/external_datasets/reports/smoke_runtime_polybench_full_seed456_backend_oz_r1_raw_timings.csv`
- Per-seed table: `/root/exp/RFunipassLab/external_datasets/reports/smoke_runtime_polybench_full_seed456_backend_oz_r1_per_seed.csv`

## Main Result

| Metric | Value |
| --- | ---: |
| Geomean runtime ratio vs oz ↓ | NA ± NA |
| Speedup vs oz ↑ | NA ± NA |
| Worsen rate ↓ | NA ± NA |
| Improved / tied / worsened | 0 / 0 / 0 |
| Failures | 2 |

## Method

- Each method first materializes an explicit middle-end IR with `opt`.
- RFunipass uses the `final_pipeline_effective` field from the 10-seed batch CSV.
- The baseline uses the matched LLVM pipeline, e.g. `opt -Oz` for the `oz` backend profile.
- All binaries are compiled from the materialized IR with `clang -x ir <IR> <backend flag> -Xclang -disable-llvm-passes -lm`.
- This keeps the backend optimization level aligned with the baseline while avoiding an extra clang middle-end optimization pass over already optimized IR.

## Failures

- `{'stage': 'run', 'benchmark': '2mm', 'seed': '456', 'pipeline_label': 'universal', 'repeat_index': 1, 'error': 'runtime timeout after 300.0s'}`
- `{'stage': 'run', 'benchmark': 'gemm', 'seed': '456', 'pipeline_label': 'universal', 'repeat_index': 1, 'error': 'runtime timeout after 300.0s'}`
