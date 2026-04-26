# External Datasets

这个目录专门放“训练集之外”的外部验证数据与产物，不改动原有 `data/`、`results/`
和 `boca_exp/` 的实验逻辑。

目录约定：

- `sources/`
  - 复制后的外部 benchmark 源码
- `ir/`
  - 为 `instrcount` 验证构建的统一 `.ll` 程序池
- `build/`
  - `runtime` 验证的临时编译与运行产物
- `manifests/`
  - 同步数据、构建 IR 的中间清单
- `reports/`
  - 外部验证实验输出的 JSON/Markdown 报告
- `upstream_cache/`
  - 当本机不存在本地镜像时，按需从 GitHub 克隆的缓存

默认已接入四套可互为外部数据集的 benchmark：

- `cbench`
- `polybench`：BOCA 兼容的 10-program PolyBench subset
- `polybench_full`：完整 PolyBench/C 4.2.1，30 个 benchmark
- `csmith`

当前已扩好的 `IR + instcount` 外部程序集规模：

- `cbench`: 10 个 linked `.ll`
- `polybench`: 10 个 linked `.ll`
- `polybench_full`: 按需构建，完整规模为 30 个 linked `.ll`
- `csmith`: 5 个 linked `.ll`
- 当前默认 subset 合计: 25 个 linked `.ll`；加入 `polybench_full` 后可扩展为 55 个 linked `.ll`

注意：`polybench` 保留为 BOCA subset，便于和 BOCA 风格实验对齐；论文中若要声称
完整 PolyBench/C，应使用 `polybench_full` 的结果。

默认的源码到 IR 生成策略是 `canonical`：

- `clang -O1 -Xclang -disable-llvm-passes -emit-llvm`

这样做的目的：

- 避免直接 `-O0` 生成 IR 时出现 `optnone`
- 保留前端 canonicalization、属性和元数据
- 同时避免提前运行完整 LLVM 中端优化，给通用 pass 序列保留优化空间

`build-ir` / `evaluate --mode instrcount` 在切换 `--frontend-mode` 时会自动失效旧缓存；
如果磁盘上的 `.ll` 与 manifest 记录的 frontend mode 不一致，会自动重建，而不是静默复用旧 IR。

外部 `instrcount` 验证现在也是 crash/timeout-aware 的：

- 单个 benchmark 上如果 `opt` 断言崩溃，会被记录为 `invalid`
- 单个 benchmark 上如果 `opt` 超过 `--instrcount-timeout`，会被记录为 `timeout`
- 其余 benchmark 继续执行，最终仍会生成完整 JSON / Markdown 报告

外部 `binarysize` 验证现已支持：

- 直接复用 `build-ir` 生成的 linked `.ll`
- 对 `universal / none / -Oz / -O3` 四条 pipeline 分别生成最终可执行文件
- 记录：
  - `file_bytes`
  - `stripped_file_bytes`
  - `text_bytes`
  - `data_bytes`
  - `bss_bytes`
  - `dec_bytes`
- 主比较指标可通过 `--binarysize-metric` 指定，默认是 `stripped_file_bytes`
- `opt` 与 `clang++` 都受 `--binarysize-timeout` 保护，失败样本会单独记录

数据来源优先级：

1. 本地镜像
   - `/root/projects/BOCA`
   - `/root/projects/datasets/csmith/runtime`
   - `/root/datasets/PolyBenchC-4.2.1`
2. GitHub 回退
   - `https://github.com/BOCA313/BOCA.git`
   - `https://github.com/csmith-project/csmith.git`
   - `https://github.com/MatthiasJReisinger/PolyBenchC-4.2.1.git`

所有 LLVM 工具优先来自项目配置的 LLVM 21 路径：

- 默认：`/root/llvm/llvm-project-21/build/bin`
- 可通过 `LLVM_TOOLS_PATH` 覆盖

典型用法：

```bash
python run_external_validation.py sync

python run_external_validation.py build-ir \
  --suite polybench \
  --suite csmith \
  --frontend-mode canonical

python run_external_validation.py build-ir \
  --suite polybench_full \
  --frontend-mode canonical

python run_external_validation.py evaluate \
  --mode instrcount \
  --result-json results/runtime/summaries/runtime_smoke_fix_20260411_182259.json \
  --suite polybench \
  --suite csmith \
  --instrcount-timeout 60

python run_external_validation.py evaluate \
  --mode binarysize \
  --result-json results/instrcount/summaries/<run_id>.json \
  --suite polybench \
  --binarysize-metric stripped_file_bytes \
  --binarysize-timeout 60

python run_external_multi_seed.py \
  --batch-csv results/reports/<wrap_10seeds>.csv \
  --tag external_instrcount_polybench_full_wrap_10seeds \
  --mode instrcount \
  --suite polybench_full \
  --objective-baseline oz \
  --frontend-mode canonical \
  --instrcount-timeout 120 \
  --instrcount-workers 4 \
  --continue-on-error
```

当前阶段建议优先使用 `instrcount + binarysize` 做外部泛化验证；`runtime` 入口仍保留，但不是当前扩展重点。
