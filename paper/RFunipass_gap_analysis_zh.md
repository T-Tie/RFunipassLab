# RFunipass 顶会投稿缺口分析与升级计划

> 日期：2026-04-25

## 总览

RFunipass 已经具备一个有潜力的顶会研究核心：它学习紧凑的 LLVM 通用 pass 序列，并展示了 POJ 分布内泛化和完整 PolyBench/C 4.2.1 外部分布迁移能力。当前最强结果是 full PolyBench/C 外部验证：在 30 个程序、10 个 seeds 上达到 `0.6019 ± 0.1260` mean_norm，相对 `-Oz` 平均减少 `39.81%` IR instruction count，且 invalid 和 timeout 都为 0。

但项目目前还不能直接投稿顶会。主要缺口是：baseline 不够强、ablation 不完整、缺少 binary/runtime 等 artifact-level 指标、外部数据集覆盖仍有限，以及统计检验和失败案例分析不足。

## 当前优势

1. **研究问题清晰。** 多数 compiler autotuning 工作关注 per-program tuning；RFunipass 关注可复用通用 pass 序列。
2. **初始结果强。** POJ test 平均减少 `22.63%` instruction count；完整 PolyBench/C 平均减少 `39.81%`。
3. **复现基础较好。** Multi-seed runner 记录 seed、split、objective、baseline、loop policy、backend level 和 manifest。
4. **处理 LLVM New PM 合法性。** `LOOP_NESTING_POLICY=wrap` 解决 loop pass 合法嵌套问题。
5. **已有外部验证框架。** `run_external_multi_seed.py` 和 `external_datasets` 支持可重复的外部测试。
6. **完整 PolyBench/C 结果干净。** `30/30` 程序有效，10 个 seeds 均无 timeout。

## 关键缺口

### 1. 强 baseline 不足

投稿前至少需要：

- `-O0`、`-O1`、`-O2`、`-O3`、`-Os`、`-Oz` 在统一 frontend/backend protocol 下的 baseline。
- 随机 universal pass sequence baseline，长度预算与 RFunipass 相同。
- 不使用协同图的 BOCA-inspired universal search。
- Greedy 或 beam-search pass construction。
- Per-program oracle 或 per-program tuned upper bound。
- 如果可行，加入已有 pass-ordering baseline：Coreset-style fixed candidate set、CompilerGym random/greedy baseline、OpenTuner-style search。

### 2. 消融实验不完整

至少应补：

- 完整 RFunipass vs 无协同图。
- 完整 RFunipass vs 无 self-loop edge。
- 完整 RFunipass vs 无 loop pass。
- `wrap` vs `legacy_previous_function` vs `attach_next_synergy`。
- Validation-selected sequence vs train-best sequence。
- Lite feature vs richer feature。

### 3. 目标指标过窄

当前主结果是 IR instruction count。顶会审稿人会自然追问：它是否转化为实际 artifact 收益？

需要补：

- Binary size：`.text`、`.data`、`.bss`、`dec`、stripped file bytes。
- Runtime：至少覆盖 PolyBench full 和一个稳定 CBench subset。
- Compile time / opt time：报告 RFunipass 序列相对 `-Oz` 的优化时间开销。

### 4. 数据集覆盖仍需扩大

当前最强外部证据是完整 PolyBench/C，还需要更多分布：

- CBench：修复 timeout-heavy cases；必要时定义 stable subset 并透明报告。
- Csmith：更适合作为 robustness stress test，不能作为真实应用泛化的主证据。
- LLVM test-suite：强烈推荐，是提高可信度的下一步。
- MiBench 或 CHStone：适合嵌入式/代码尺寸导向场景。
- 更多 POJ split seeds：当前 10 seeds 不错，但 split 多样性应更明确。

### 5. 统计严谨性不足

需要增加：

- 95% confidence intervals。
- Per-program paired comparison against `-Oz`。
- Wilcoxon signed-rank 或 bootstrap test。
- Per-program violin/box plot。
- Validation-test rank correlation。
- POJ validation 与 PolyBench full transfer 的相关性分析。

### 6. Safety 与 failure analysis 不足

需要补：

- Timeout-aware objective 或 pass blacklist/penalty。
- `attributor` crash/timeout 的详细处理策略。
- LLVM New PM scope 合法性的 proof sketch。
- 所有主表显式报告 invalid/timeout。
- 对 RFunipass 变差的程序做分类分析。

## 论文定位建议

### 最强故事线

当前最强、最稳妥的故事不是“RFunipass 提升所有程序 runtime”，而是：

> RFunipass 发现紧凑的 LLVM 通用 pass 序列，在 `-Oz` 基线之上进一步降低 IR instruction count，并且可以从 POJ 迁移到完整 PolyBench/C，而无需外部数据集调优。

### 暂时避免过度宣称

目前不应宣称：

- runtime speedup；
- binary-size 全面提升；
- 对所有 C 程序泛化；
- 全面优于所有 autotuner；
- 可直接替代生产环境 `-Oz`。

### 可以较有把握宣称

当前可以宣称：

- 通用 pass 序列学习是可行的。
- Validation-selected sequence 在 POJ held-out test 上改善 instruction count。
- POJ-trained sequence 能强迁移到完整 PolyBench/C instruction count。
- 项目具备可复现 multi-seed evaluation 基础设施。

## 推荐实验路线

### Phase 1：补齐 instruction-count 论文核心

1. 跑 random universal sequence baseline，10 seeds。
2. 跑 no-synergy ablation，10 seeds。
3. 跑 no-self-loop ablation，10 seeds。
4. 跑 wrap / legacy / attach loop policy 对比。
5. 生成 POJ + PolyBench full 合并主表。

### Phase 2：补 artifact-level validation

1. 对 validation-best sequence 和 top-5 sequences 做 binary-size evaluation。
2. 报告 `.text`、stripped file bytes 和 `dec` 作为主要 artifact metrics。
3. 在 PolyBench full 的 small/medium datasets 上做 runtime smoke。
4. 加 compile-time overhead 表。

### Phase 3：扩展外部泛化

1. 扩展 CBench stable subset 并诊断 timeout cases。
2. 加 LLVM test-suite subset。
3. 如可用，加入 MiBench/CHStone。
4. 所有外部实验显式报告 valid/invalid/timeout。

### Phase 4：论文表达强化

1. 增加方法伪代码。
2. 增加 pass synergy graph 可视化。
3. 增加序列样例和 pass-family frequency analysis。
4. 增加 CBench/Csmith timeout 行为的 negative results section。
5. 增加 artifact appendix，列出 exact commands 与 manifests。

## 推荐顶会主表设计

### 主表 1：POJ 分布内泛化

列：

- Method
- Seeds
- Validation mean_norm
- Test mean_norm
- Test improvement vs `-Oz`
- Worsen rate
- Sequence length

### 主表 2：外部分布迁移

列：

- Dataset
- Programs
- Valid
- Seeds
- Mean_norm
- Improvement vs `-Oz`
- Worsen rate
- Invalid
- Timeout

### 主表 3：Baselines 与 Ablations

行：

- `-Oz`
- Random universal
- No synergy graph
- No self-loop
- No loop passes
- RFunipass full

### 主表 4：Artifact metrics

列：

- Dataset
- `.text`
- stripped file bytes
- `dec`
- compile time
- runtime if available

## 总结

RFunipass 已经拥有一个很有潜力的顶会核心，尤其是完整 PolyBench/C 结果显著增强了论文说服力。接下来不应盲目增加新功能，而应优先增强实验严谨性：补强 baseline、完成 ablation、加入 binary/runtime 指标，并系统分析 failure cases。只有这样，RFunipass 才能从“有亮点的系统原型”提升为“可投稿顶会的完整研究工作”。
