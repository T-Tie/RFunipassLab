# External Validation Upgrade Report

## Goal

在不改动原有 `RFunipassLab` 训练与搜索逻辑的前提下，为通用 pass 序列增加可扩展的外部数据集验证能力。

## Added Components

- `run_external_validation.py`
  - 新的统一入口
  - 支持 `sync` / `build-ir` / `evaluate`
- `external_validation/`
  - `paths.py`
    - 外部数据与报告目录管理
  - `registry.py`
    - `cbench` / `polybench` / `csmith` 的 suite 注册表
    - CBench 数据集命令重写与路径修正
  - `core.py`
    - 数据同步
    - LLVM IR 构建
    - 外部 `instrcount` 验证
    - 外部 `binarysize` 验证
    - 外部 `runtime` 验证
    - JSON / Markdown 报告输出
- `external_datasets/`
  - 单独存放外部 benchmark 源码、IR、构建产物与报告

## What Stayed Unchanged

以下内容未改动：

- `boca_exp/`
- `run_one.py`
- `run_sweep.py`
- `configs.py`
- `data/tuning_results.csv`
- 现有 `results/` 目录下的原实验结果

## Supported External Suites

- `cbench`
- `polybench`
- `csmith`

这些 suite 可以独立选择，也可以组合验证，因此可以互为外部数据集。

## Current IR Inventory

当前已经扩好的 `IR + instcount` 外部程序集：

- `cbench`: 10
- `polybench`: 10
- `csmith`: 5
- total: 25

这些 `.ll` 默认采用 `canonical` 模式生成：

- `clang -O1 -Xclang -disable-llvm-passes -emit-llvm`

相比直接 `-O0`：

- 不会把函数标成 `optnone`
- 不会把很多优化机会在 IR 入口处直接封死
- 仍然避免把完整 LLVM 中端优化提前消费掉
- 当 `--frontend-mode` 切换时，会自动检查 manifest 与现有 `.ll` 是否一致；若不一致则自动重建，避免复用旧 IR 造成实验污染

对应目录：

- [cbench IR](/root/exp/RFunipassLab/external_datasets/ir/cbench)
- [polybench IR](/root/exp/RFunipassLab/external_datasets/ir/polybench)
- [csmith IR](/root/exp/RFunipassLab/external_datasets/ir/csmith)

## Validation Modes

### 1. `instrcount`

- 把外部源程序构建成统一的链接后 `.ll`
- 直接复用当前项目的 `InstructionCountBackend`
- 增加了 external-only 的 crash/timeout-aware 包装
- 输出：
  - primary metrics
  - 相对 `[] / -Oz / -O3` 的 fixed-baseline 对比
  - per-program 明细
  - failure / timeout 样本记录

### 2. `binarysize`

- 把外部源程序构建成统一的 linked `.ll`
- 对 linked `.ll` 应用通用 pass 序列
- 再通过 `clang++ -x ir` 生成最终 binary
- 使用 `llvm-strip` 和 `llvm-size` 记录 binary-size 指标
- 输出：
  - primary metrics
  - 相对 `[] / -Oz / -O3` 的 fixed-baseline 对比
  - `file_bytes / stripped_file_bytes / text_bytes / data_bytes / bss_bytes / dec_bytes`
  - per-program 明细
  - failure / timeout 样本记录

默认主指标是 `stripped_file_bytes`，可通过：

```bash
--binarysize-metric stripped_file_bytes
```

切换到 `file_bytes`、`text_bytes`、`data_bytes`、`bss_bytes` 或 `dec_bytes`。

### 3. `runtime`

- 不复用当前 POJ 专用 runtime harness
- 单独对外部 suite 做 source-aware 编译与运行
- 对比：
  - `universal`
  - `none`
  - `default<Oz>`
  - `default<O3>`

这样避免了把需要参数/数据集文件的 `cbench` 错误地塞进当前通用输入模板。

当前阶段不再继续扩展 `runtime` 侧数据准备，后续工作重点放在 `IR + instrcount + binarysize` 的外部泛化验证。

## Upstream Sources

- BOCA GitHub:
  - `https://github.com/BOCA313/BOCA.git`
- Csmith GitHub:
  - `https://github.com/csmith-project/csmith.git`

默认优先使用本机已有镜像：

- `/root/projects/BOCA`
- `/root/projects/datasets/csmith/runtime`

## Expected Workflow

```bash
python run_external_validation.py sync
python run_external_validation.py build-ir --suite cbench --suite polybench --suite csmith --frontend-mode canonical
python run_external_validation.py evaluate --mode instrcount --result-json <path> --instrcount-timeout 60
python run_external_validation.py evaluate --mode binarysize --result-json <path> --binarysize-metric stripped_file_bytes --binarysize-timeout 60
```
