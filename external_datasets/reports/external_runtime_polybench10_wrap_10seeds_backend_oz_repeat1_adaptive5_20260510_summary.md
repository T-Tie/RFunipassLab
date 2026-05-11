# PolyBench Matched-Backend Runtime Report: external_runtime_polybench10_wrap_10seeds_backend_oz_repeat1_adaptive5_20260510

- Generated at: `2026-05-10T10:55:59`
- Suite: `polybench`
- Benchmark count: `10`
- Seeds: `[456, 457, 458, 459, 460, 461, 462, 463, 464, 465]`
- Backend profile: `oz` / flag `-Oz`
- Matched baseline: `oz`
- Repeat: `1`
- Warmup repeat: `0`
- Timeout: hard cap `300.0s`, adaptive factor `5.0`, min `5.0s`
- Metric: `polybench_seconds`
- LLVM tools: `/root/llvm/llvm-project-21/build/bin`
- Manifest: `/root/exp/RFunipassLab/external_datasets/reports/external_runtime_polybench10_wrap_10seeds_backend_oz_repeat1_adaptive5_20260510_manifest.json`
- Raw timings: `/root/exp/RFunipassLab/external_datasets/reports/external_runtime_polybench10_wrap_10seeds_backend_oz_repeat1_adaptive5_20260510_raw_timings.csv`
- Per-seed table: `/root/exp/RFunipassLab/external_datasets/reports/external_runtime_polybench10_wrap_10seeds_backend_oz_repeat1_adaptive5_20260510_per_seed.csv`

## Main Result

| Metric | Value |
| --- | ---: |
| Geomean runtime ratio vs oz ↓ | 3252.3781 ± 7351.2272 |
| Speedup vs oz ↑ | 0.4330 ± 0.2018 |
| Worsen rate ↓ | 52.00% ± 15.38% |
| Invalid rate ↓ | 35.00% ± 13.17% |
| Worsen-or-invalid rate ↓ | 87.00% ± 7.58% |
| Improved / tied / worsened | 3 / 10 / 52 |
| Timeout / invalid | 33 / 35 |
| New runner exceptions in this invocation | 0 |

## Method

- Each method first materializes an explicit middle-end IR with `opt`.
- RFunipass uses the `final_pipeline_effective` field from the 10-seed batch CSV.
- The baseline uses the matched LLVM pipeline, e.g. `opt -Oz` for the `oz` backend profile.
- All binaries are compiled from the materialized IR with `clang -x ir <IR> <backend flag> -Xclang -disable-llvm-passes -lm`.
- This keeps the backend optimization level aligned with the baseline while avoiding an extra clang middle-end optimization pass over already optimized IR.
- Universal timeout rows are counted as worsened and aggregated as censored lower-bound ratios using the timeout cap divided by the matched baseline runtime.
