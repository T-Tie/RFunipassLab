# PolyBench Matched-Backend Runtime Report: external_runtime_polybench_full_wrap_10seeds_backend_o3_repeat1_adaptive5_20260509

- Generated at: `2026-05-10T10:08:35`
- Suite: `polybench_full`
- Benchmark count: `30`
- Seeds: `[456, 457, 458, 459, 460, 461, 462, 463, 464, 465]`
- Backend profile: `o3` / flag `-O3`
- Matched baseline: `o3`
- Repeat: `1`
- Timeout: hard cap `300.0s`, adaptive factor `5.0`, min `5.0s`
- Metric: `polybench_seconds`
- LLVM tools: `/root/llvm/llvm-project-21/build/bin`
- Manifest: `/root/exp/RFunipassLab/external_datasets/reports/external_runtime_polybench_full_wrap_10seeds_backend_o3_repeat1_adaptive5_20260509_manifest.json`
- Raw timings: `/root/exp/RFunipassLab/external_datasets/reports/external_runtime_polybench_full_wrap_10seeds_backend_o3_repeat1_adaptive5_20260509_raw_timings.csv`
- Per-seed table: `/root/exp/RFunipassLab/external_datasets/reports/external_runtime_polybench_full_wrap_10seeds_backend_o3_repeat1_adaptive5_20260509_per_seed.csv`

## Main Result

| Metric | Value |
| --- | ---: |
| Geomean runtime ratio vs o3 ↓ | 53817.8685 ± 121705.6358 |
| Speedup vs o3 ↑ | 0.1034 ± 0.0784 |
| Worsen rate ↓ | 63.67% ± 11.32% |
| Invalid rate ↓ | 31.00% ± 11.30% |
| Worsen-or-invalid rate ↓ | 94.67% ± 5.41% |
| Improved / tied / worsened | 10 / 6 / 191 |
| Timeout / invalid | 135 / 93 |
| New runner exceptions in this invocation | 0 |

## Method

- Each method first materializes an explicit middle-end IR with `opt`.
- RFunipass uses the `final_pipeline_effective` field from the 10-seed batch CSV.
- The baseline uses the matched LLVM pipeline, e.g. `opt -Oz` for the `oz` backend profile.
- All binaries are compiled from the materialized IR with `clang -x ir <IR> <backend flag> -Xclang -disable-llvm-passes -lm`.
- This keeps the backend optimization level aligned with the baseline while avoiding an extra clang middle-end optimization pass over already optimized IR.
- Universal timeout rows are counted as worsened and aggregated as censored lower-bound ratios using the timeout cap divided by the matched baseline runtime.
