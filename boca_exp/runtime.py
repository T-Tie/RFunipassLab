"""LLVM / autophase / IR 变换相关的底层运行时工具。"""

from __future__ import annotations

import ctypes
import os
import subprocess
from pathlib import Path

from .paths import REFERENCE_PROJECT_DIR

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
        return [item.strip() for item in text.split(',') if item.strip()]
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



def fix_loop_nesting(pipeline: str) -> str:
    """把 loop pass 嵌套进离它最近的前一个 function pass 中。"""
    passes = split_pipeline_steps(pipeline)

    fixed_passes = []
    last_function_index = -1
    loop_passes_to_nest = []

    has_function = any(p.startswith('function(') for p in passes)
    if not has_function:
        passes = [p for p in passes if not p.startswith('loop(')]
        return ','.join(passes)

    for p in passes:
        if p.startswith('function('):
            if last_function_index != -1 and loop_passes_to_nest:
                inside = ','.join(loop_passes_to_nest)
                original_func_body = fixed_passes[last_function_index][9:-1]
                new_func_body = original_func_body
                if original_func_body:
                    new_func_body += ',' + inside
                else:
                    new_func_body = inside
                fixed_passes[last_function_index] = f'function({new_func_body})'
                loop_passes_to_nest = []

            fixed_passes.append(p)
            last_function_index = len(fixed_passes) - 1
        elif p.startswith('loop('):
            loop_passes_to_nest.append(p)
        else:
            if last_function_index != -1 and loop_passes_to_nest:
                inside = ','.join(loop_passes_to_nest)
                original_func_body = fixed_passes[last_function_index][9:-1]
                new_func_body = original_func_body
                if original_func_body:
                    new_func_body += ',' + inside
                else:
                    new_func_body = inside
                fixed_passes[last_function_index] = f'function({new_func_body})'
                loop_passes_to_nest = []
            fixed_passes.append(p)

    if last_function_index != -1 and loop_passes_to_nest:
        inside = ','.join(loop_passes_to_nest)
        original_func_body = fixed_passes[last_function_index][9:-1]
        new_func_body = original_func_body
        if original_func_body:
            new_func_body += ',' + inside
        else:
            new_func_body = inside
        fixed_passes[last_function_index] = f'function({new_func_body})'

    return ','.join(fixed_passes)



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
