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

默认已接入三套可互为外部数据集的 benchmark：

- `cbench`
- `polybench`
- `csmith`

当前已扩好的 `IR + instcount` 外部程序集规模：

- `cbench`: 10 个 linked `.ll`
- `polybench`: 10 个 linked `.ll`
- `csmith`: 5 个 linked `.ll`
- 合计: 25 个 linked `.ll`

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

数据来源优先级：

1. 本地镜像
   - `/root/projects/BOCA`
   - `/root/projects/datasets/csmith/runtime`
2. GitHub 回退
   - `https://github.com/BOCA313/BOCA.git`
   - `https://github.com/csmith-project/csmith.git`

典型用法：

```bash
python run_external_validation.py sync

python run_external_validation.py build-ir \
  --suite polybench \
  --suite csmith \
  --frontend-mode canonical

python run_external_validation.py evaluate \
  --mode instrcount \
  --result-json results/runtime/summaries/runtime_smoke_fix_20260411_182259.json \
  --suite polybench \
  --suite csmith \
  --instrcount-timeout 60
```

当前阶段建议优先使用 `instrcount` 模式做外部泛化验证；`runtime` 入口仍保留，但不是当前扩展重点。
