# External Binary Size Multi-Metric Summary

- Generated at: `2026-04-22 21:52:00`
- Source report: `external_datasets/reports/external_binarysize_manual_seq_20260422_file_bytes.json`
- Derived without rerun: `True`
- Objective baseline: `oz`
- Suites: `cbench, polybench, csmith`

## Combined

| Metric | Count | Objective | Mean Norm | Worsen Rate | Invalid | vs None | vs Oz | vs O3 |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| file_bytes | 25 | 1.0864 | 0.9964 | 60.00% | 11 | inf | inf | inf |
| stripped_file_bytes | 25 | 1.0621 | 0.9961 | 44.00% | 11 | inf | inf | inf |
| text_bytes | 25 | 0.8554 | 0.7774 | 52.00% | 11 | inf | inf | inf |
| data_bytes | 25 | 1.0594 | 0.9934 | 44.00% | 11 | inf | inf | inf |
| bss_bytes | 25 | 1.0641 | 0.9981 | 44.00% | 11 | inf | inf | inf |
| dec_bytes | 25 | 0.8853 | 0.8073 | 52.00% | 11 | inf | inf | inf |

## Suite: cbench

| Metric | Count | Objective | Mean Norm | Worsen Rate | Invalid | vs None | vs Oz | vs O3 |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| file_bytes | 10 | 1.0932 | 0.9882 | 70.00% | 6 | inf | inf | inf |
| stripped_file_bytes | 10 | 1.0773 | 0.9873 | 60.00% | 6 | inf | inf | inf |
| text_bytes | 10 | 0.9936 | 0.8886 | 70.00% | 6 | inf | inf | inf |
| data_bytes | 10 | 1.0900 | 1.0000 | 60.00% | 6 | inf | inf | inf |
| bss_bytes | 10 | 1.0834 | 0.9934 | 60.00% | 6 | inf | inf | inf |
| dec_bytes | 10 | 1.0103 | 0.9053 | 70.00% | 6 | inf | inf | inf |

## Suite: polybench

| Metric | Count | Objective | Mean Norm | Worsen Rate | Invalid | vs None | vs Oz | vs O3 |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| file_bytes | 10 | 1.0447 | 0.9997 | 30.00% | 0 | 0.9869 | 0.9997 | 0.9423 |
| stripped_file_bytes | 10 | 0.9996 | 0.9996 | 0.00% | 0 | 0.9990 | 0.9996 | 0.9327 |
| text_bytes | 10 | 0.7480 | 0.7330 | 10.00% | 0 | 0.6607 | 0.7330 | 0.5814 |
| data_bytes | 10 | 0.9908 | 0.9908 | 0.00% | 0 | 0.9796 | 0.9908 | 0.9875 |
| bss_bytes | 10 | 1.0000 | 1.0000 | 0.00% | 0 | 0.8750 | 1.0000 | 1.0000 |
| dec_bytes | 10 | 0.7831 | 0.7681 | 10.00% | 0 | 0.7015 | 0.7681 | 0.6269 |

## Suite: csmith

| Metric | Count | Objective | Mean Norm | Worsen Rate | Invalid | vs None | vs Oz | vs O3 |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| file_bytes | 5 | inf | inf | 100.00% | 5 | inf | inf | inf |
| stripped_file_bytes | 5 | inf | inf | 100.00% | 5 | inf | inf | inf |
| text_bytes | 5 | inf | inf | 100.00% | 5 | inf | inf | inf |
| data_bytes | 5 | inf | inf | 100.00% | 5 | inf | inf | inf |
| bss_bytes | 5 | inf | inf | 100.00% | 5 | inf | inf | inf |
| dec_bytes | 5 | inf | inf | 100.00% | 5 | inf | inf | inf |

