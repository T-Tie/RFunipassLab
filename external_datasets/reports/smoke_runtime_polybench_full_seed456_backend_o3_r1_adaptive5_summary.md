# PolyBench Matched-Backend Runtime Report: smoke_runtime_polybench_full_seed456_backend_o3_r1_adaptive5

- Generated at: `2026-05-09T18:29:30`
- Suite: `polybench_full`
- Benchmark count: `2`
- Seeds: `[456]`
- Backend profile: `o3` / flag `-O3`
- Matched baseline: `o3`
- Repeat: `1`
- Timeout: hard cap `300.0s`, adaptive factor `5.0`, min `5.0s`
- Metric: `polybench_seconds`
- LLVM tools: `/root/llvm/llvm-project-21/build/bin`
- Manifest: `/root/exp/RFunipassLab/external_datasets/reports/smoke_runtime_polybench_full_seed456_backend_o3_r1_adaptive5_manifest.json`
- Raw timings: `/root/exp/RFunipassLab/external_datasets/reports/smoke_runtime_polybench_full_seed456_backend_o3_r1_adaptive5_raw_timings.csv`
- Per-seed table: `/root/exp/RFunipassLab/external_datasets/reports/smoke_runtime_polybench_full_seed456_backend_o3_r1_adaptive5_per_seed.csv`

## Main Result

| Metric | Value |
| --- | ---: |
| Geomean runtime ratio vs o3 ↓ | 6.5180 ± 0.0000 |
| Speedup vs o3 ↑ | 0.1534 ± 0.0000 |
| Worsen rate ↓ | 100.00% ± 0.00% |
| Improved / tied / worsened | 0 / 0 / 2 |
| Failures | 2 |

## Method

- Each method first materializes an explicit middle-end IR with `opt`.
- RFunipass uses the `final_pipeline_effective` field from the 10-seed batch CSV.
- The baseline uses the matched LLVM pipeline, e.g. `opt -Oz` for the `oz` backend profile.
- All binaries are compiled from the materialized IR with `clang -x ir <IR> <backend flag> -Xclang -disable-llvm-passes -lm`.
- This keeps the backend optimization level aligned with the baseline while avoiding an extra clang middle-end optimization pass over already optimized IR.
- Universal timeout rows are counted as worsened and aggregated as censored lower-bound ratios using the timeout cap divided by the matched baseline runtime.

## Failures

- `{'stage': 'run', 'benchmark': '2mm', 'seed': '456', 'pipeline_label': 'universal', 'repeat_index': 1, 'error': 'runtime timeout after 11.68267s'}`
- `{'stage': 'run', 'benchmark': 'gemm', 'seed': '456', 'pipeline_label': 'universal', 'repeat_index': 1, 'error': 'runtime timeout after 5.0s'}`
