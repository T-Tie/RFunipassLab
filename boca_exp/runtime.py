"""LLVM / autophase / IR 变换相关的底层运行时工具。"""

from __future__ import annotations

import ctypes
import os
import subprocess
from pathlib import Path

from .paths import REFERENCE_PROJECT_DIR
from .settings import LOOP_NESTING_POLICY, normalize_loop_nesting_policy

AUTOPHASE_LIB_PATH = Path(
    os.environ.get(
        'AUTOPHASE_LIB',
        str(REFERENCE_PROJECT_DIR / 'lib' / 'libAutophase_21_1_8.so'),
    )
)

_AUTOPHASE_LIB = None


class AutophaseDataStruct(ctypes.Structure):
    _fields_ = [('name', ctypes.c_char * 64), ('value', ctypes.c_int)]



def _load_autophase_lib():
    """延迟加载 autophase 动态库。"""
    global _AUTOPHASE_LIB
    if _AUTOPHASE_LIB is None:
        if not AUTOPHASE_LIB_PATH.is_file():
            raise FileNotFoundError(
                f'Autophase library not found: {AUTOPHASE_LIB_PATH}. '
                'Set AUTOPHASE_LIB to a valid .so path before running boca.py.'
            )
        _AUTOPHASE_LIB = ctypes.CDLL(str(AUTOPHASE_LIB_PATH))
    return _AUTOPHASE_LIB



def get_inst_count(ir_code: str) -> int:
    """调用本地 autophase 动态库，返回 IR 的 TotalInsts。"""
    autophase_lib = _load_autophase_lib()
    result_array = (AutophaseDataStruct * 56)()
    autophase_lib.GetAutophase(ir_code.encode(), result_array)
    result_dict = {item.name.decode(): item.value for item in result_array}
    return result_dict['TotalInsts']



def detect_target_triple(ir_code: str) -> str | None:
    """从 LLVM IR 头部提取 `target triple`。"""
    for raw_line in ir_code.splitlines():
        line = raw_line.strip()
        if not line:
            continue
        if line.startswith('target triple'):
            first_quote = line.find('"')
            last_quote = line.rfind('"')
            if first_quote != -1 and last_quote > first_quote:
                triple = line[first_quote + 1:last_quote].strip()
                return triple or None
            return None
        if line.startswith('define ') or line.startswith('declare '):
            break
    return None



def normalize_pass_sequence(pass_sequence) -> list[str]:
    """把字符串或序列形式的 pipeline 统一转成 list[str]。"""
    if pass_sequence is None:
        return []
    if isinstance(pass_sequence, str):
        text = pass_sequence.strip()
        if not text:
            return []
        if text in {'-Oz', '-O3', 'default<Oz>', 'default<O3>'}:
            return [text]
        return split_pipeline_steps(text)
    return [str(item).strip() for item in pass_sequence if str(item).strip()]


def split_pipeline_steps(pipeline: str | None) -> list[str]:
    """按顶层逗号拆分 LLVM pass pipeline，保留嵌套 pass 结构。"""
    if not pipeline:
        return []

    steps: list[str] = []
    depth = 0
    start = 0
    for index, char in enumerate(pipeline):
        if char == '(':
            depth += 1
        elif char == ')':
            depth = max(0, depth - 1)
        elif char == ',' and depth == 0:
            item = pipeline[start:index].strip()
            if item:
                steps.append(item)
            start = index + 1

    tail = pipeline[start:].strip()
    if tail:
        steps.append(tail)
    return steps


def sequence_to_pipeline(pass_sequence) -> str:
    """把 raw pass 序列转换为实际送给 opt 的 effective pipeline。"""
    sequence_list = normalize_pass_sequence(pass_sequence)
    if not sequence_list:
        return ""

    if len(sequence_list) == 1 and sequence_list[0] in {'-Oz', '-O3', 'default<Oz>', 'default<O3>'}:
        return sequence_list[0]
    return fix_loop_nesting(','.join(sequence_list))


def format_pipeline_for_display(pipeline: str | None) -> str:
    """把 effective pipeline 格式化成日志中使用的箭头分隔形式。"""
    steps = split_pipeline_steps(pipeline)
    return " → ".join(steps) if steps else "(空序列)"



def _is_scope_pass(pass_item: str, scope: str) -> bool:
    """判断 pass item 是否是指定 New PM 作用域包装。"""
    return pass_item.startswith(f'{scope}(') and pass_item.endswith(')')


def _function_body(function_pass: str) -> str:
    """提取 `function(...)` 里的 body。调用前应确保输入是 function pass。"""
    return function_pass[len('function('):-1]


def _build_function_pass(body_steps: list[str]) -> str:
    """用 body steps 构造 `function(...)` pass。"""
    return f"function({','.join(body_steps)})"


def _wrap_loop_passes(loop_passes: list[str]) -> list[str]:
    """把每个顶层 loop pass 原地包装成独立 function-to-loop adaptor。"""
    return [_build_function_pass([loop_pass]) for loop_pass in loop_passes]


def _append_loops_to_function(function_pass: str, loop_passes: list[str]) -> str:
    """legacy 策略：把 loop pass 追加到已有 function pass 的 body 末尾。"""
    body_steps = split_pipeline_steps(_function_body(function_pass))
    return _build_function_pass([*body_steps, *loop_passes])


def _prepend_loops_to_function(function_pass: str, loop_passes: list[str]) -> str:
    """synergy 策略：把 loop pass 前置到已有 function pass 的 body 开头。"""
    body_steps = split_pipeline_steps(_function_body(function_pass))
    return _build_function_pass([*loop_passes, *body_steps])


def _function_synergy_targets(function_pass: str) -> set[str]:
    """返回可与协同图中 `function(x)` 节点匹配的候选名字。"""
    targets = {function_pass}
    if not _is_scope_pass(function_pass, 'function'):
        return targets

    body_steps = split_pipeline_steps(_function_body(function_pass))
    for body_step in body_steps:
        if _is_scope_pass(body_step, 'loop'):
            continue
        targets.add(_build_function_pass([body_step]))
    return targets


def _has_loop_to_function_synergy(
    loop_passes: list[str],
    function_pass: str,
    synergy_graph: dict[str, set[str]] | None,
) -> bool:
    """判断是否存在 `loop(L) -> function(F)` 协同边。"""
    if not synergy_graph:
        return False

    function_targets = _function_synergy_targets(function_pass)
    for loop_pass in loop_passes:
        successors = synergy_graph.get(loop_pass, set())
        if any(target in successors for target in function_targets):
            return True
    return False


def _active_synergy_graph() -> dict[str, set[str]]:
    """延迟读取全局协同图，避免 runtime 工具和状态初始化强耦合。"""
    try:
        from .state import synergy_graph
    except Exception:
        return {}
    return synergy_graph


def _fix_loop_nesting_wrap(passes: list[str]) -> str:
    """默认策略：保持 raw 位置，把顶层 loop pass 原地包装成 function(loop(...))。"""
    fixed_passes: list[str] = []
    pending_loops: list[str] = []

    def flush_pending_loops() -> None:
        if pending_loops:
            fixed_passes.extend(_wrap_loop_passes(pending_loops))
            pending_loops.clear()

    for pass_item in passes:
        if _is_scope_pass(pass_item, 'loop'):
            pending_loops.append(pass_item)
            continue

        flush_pending_loops()
        fixed_passes.append(pass_item)

    flush_pending_loops()
    return ','.join(fixed_passes)


def _fix_loop_nesting_legacy_previous_function(passes: list[str]) -> str:
    """历史策略：把 loop pass 嵌套进离它最近的前一个 function pass 中。"""

    fixed_passes = []
    last_function_index = -1
    loop_passes_to_nest = []

    has_function = any(_is_scope_pass(p, 'function') for p in passes)
    if not has_function:
        passes = [p for p in passes if not _is_scope_pass(p, 'loop')]
        return ','.join(passes)

    for p in passes:
        if _is_scope_pass(p, 'function'):
            if last_function_index != -1 and loop_passes_to_nest:
                fixed_passes[last_function_index] = _append_loops_to_function(
                    fixed_passes[last_function_index],
                    loop_passes_to_nest,
                )
                loop_passes_to_nest = []

            fixed_passes.append(p)
            last_function_index = len(fixed_passes) - 1
        elif _is_scope_pass(p, 'loop'):
            loop_passes_to_nest.append(p)
        else:
            if last_function_index != -1 and loop_passes_to_nest:
                fixed_passes[last_function_index] = _append_loops_to_function(
                    fixed_passes[last_function_index],
                    loop_passes_to_nest,
                )
                loop_passes_to_nest = []
            fixed_passes.append(p)

    if last_function_index != -1 and loop_passes_to_nest:
        fixed_passes[last_function_index] = _append_loops_to_function(
            fixed_passes[last_function_index],
            loop_passes_to_nest,
        )

    return ','.join(fixed_passes)


def _fix_loop_nesting_attach_next_synergy(
    passes: list[str],
    synergy_graph: dict[str, set[str]] | None,
) -> str:
    """
    实验策略：若相邻的 `loop(...) -> function(...)` 存在协同边，则把 loop 前置到
    该 function body 中；否则退化为 wrap 策略以保持 raw 顺序。
    """
    fixed_passes: list[str] = []
    index = 0
    while index < len(passes):
        pass_item = passes[index]
        if not _is_scope_pass(pass_item, 'loop'):
            fixed_passes.append(pass_item)
            index += 1
            continue

        loop_start = index
        while index < len(passes) and _is_scope_pass(passes[index], 'loop'):
            index += 1
        loop_group = passes[loop_start:index]

        if (
            index < len(passes)
            and _is_scope_pass(passes[index], 'function')
            and _has_loop_to_function_synergy(loop_group, passes[index], synergy_graph)
        ):
            fixed_passes.append(_prepend_loops_to_function(passes[index], loop_group))
            index += 1
        else:
            fixed_passes.extend(_wrap_loop_passes(loop_group))

    return ','.join(fixed_passes)


def fix_loop_nesting(
    pipeline: str,
    policy: str | None = None,
    synergy_graph: dict[str, set[str]] | None = None,
) -> str:
    """
    把 raw pipeline 中的顶层 loop pass 转换成 LLVM New PM 可执行的 effective pipeline。

    策略：
      - wrap: 默认策略，把 `loop(x)` 原地转换为 `function(loop(x))`，尽量保持 raw 顺序；
      - legacy_previous_function: 复现实验用，沿用旧版“挂到前一个 function 末尾”；
      - attach_next_synergy: 实验策略，若相邻 `loop -> function` 命中协同边，则前置嵌入。
    """
    passes = split_pipeline_steps(pipeline)
    resolved_policy = normalize_loop_nesting_policy(policy or LOOP_NESTING_POLICY)

    if resolved_policy == 'wrap':
        return _fix_loop_nesting_wrap(passes)
    if resolved_policy == 'legacy_previous_function':
        return _fix_loop_nesting_legacy_previous_function(passes)
    if resolved_policy == 'attach_next_synergy':
        return _fix_loop_nesting_attach_next_synergy(
            passes,
            synergy_graph if synergy_graph is not None else _active_synergy_graph(),
        )
    raise ValueError(f"Unsupported LOOP_NESTING_POLICY={resolved_policy!r}")



def _build_opt_command(opt_path: str, pipeline: str, resolved_target_triple: str | None):
    if pipeline in {'default<Oz>', '-Oz'}:
        cmd_opt = [opt_path, '-Oz', '-S']
    elif pipeline in {'default<O3>', '-O3'}:
        cmd_opt = [opt_path, '-O3', '-S']
    else:
        cmd_opt = [opt_path, '-S', f'-passes={pipeline}']

    if resolved_target_triple:
        cmd_opt.append(f'--mtriple={resolved_target_triple}')
    return cmd_opt



def _format_opt_failure(cmd_opt, pipeline: str, resolved_target_triple: str | None, result) -> str:
    stderr_text = (result.stderr or '').strip()
    stdout_text = (result.stdout or '').strip()
    detail = stderr_text or stdout_text or '<no stdout/stderr captured>'
    detail_lines = '\n'.join(detail.splitlines()[:20])
    return (
        f"opt failed for pipeline={pipeline!r}, "
        f"target_triple={resolved_target_triple or '<not found>'}, "
        f"returncode={result.returncode}, cmd={' '.join(cmd_opt)}\n"
        f'{detail_lines}'
    )



def transform_ir_strict(ir_code: str, pass_sequence, llvm_tools_path: str, target_triple: str | None = None) -> str:
    """对一段 IR 应用给定 pipeline，失败时直接抛错。"""
    pipeline = sequence_to_pipeline(pass_sequence)
    if not pipeline:
        return ir_code

    opt_path = os.path.join(llvm_tools_path, 'opt') if llvm_tools_path else 'opt'
    resolved_target_triple = target_triple or detect_target_triple(ir_code)

    cmd_opt = _build_opt_command(opt_path, pipeline, resolved_target_triple)
    result = subprocess.run(
        cmd_opt,
        input=ir_code,
        text=True,
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
        check=False,
    )
    if result.returncode != 0:
        raise RuntimeError(
            _format_opt_failure(
                cmd_opt,
                pipeline,
                resolved_target_triple,
                result,
            )
        )
    return result.stdout



def transform_ir_lenient(ir_code: str, pass_sequence, llvm_tools_path: str, target_triple: str | None = None) -> str:
    """应用 pipeline；若失败则回退到原始 IR。"""
    try:
        return transform_ir_strict(ir_code, pass_sequence, llvm_tools_path, target_triple=target_triple)
    except Exception:
        return ir_code



def get_instrcount(ir_code, opt_flags, llvm_tools_path, target_triple: str | None = None):
    """对一段 IR 应用给定 pipeline，然后返回优化后的 TotalInsts。"""
    optimized_ir = transform_ir_strict(
        ir_code,
        opt_flags,
        llvm_tools_path,
        target_triple=target_triple,
    )
    return get_inst_count(optimized_ir)
