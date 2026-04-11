"""LLVM / autophase 指令计数相关的底层运行时工具。"""

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
    _fields_ = [("name", ctypes.c_char * 64), ("value", ctypes.c_int)]


def _load_autophase_lib():
    """延迟加载 autophase 动态库，避免每次统计指令数都重新打开一次。"""
    global _AUTOPHASE_LIB
    if _AUTOPHASE_LIB is None:
        if not AUTOPHASE_LIB_PATH.is_file():
            raise FileNotFoundError(
                f"Autophase library not found: {AUTOPHASE_LIB_PATH}. "
                "Set AUTOPHASE_LIB to a valid .so path before running boca.py."
            )
        _AUTOPHASE_LIB = ctypes.CDLL(str(AUTOPHASE_LIB_PATH))
    return _AUTOPHASE_LIB


def get_inst_count(ir_code):
    """调用本地 autophase 动态库，返回 IR 的 TotalInsts。"""
    autophase_lib = _load_autophase_lib()
    result_array = (AutophaseDataStruct * 56)()
    autophase_lib.GetAutophase(ir_code.encode(), result_array)
    result_dict = {item.name.decode(): item.value for item in result_array}
    return result_dict['TotalInsts']


def detect_target_triple(ir_code: str) -> str | None:
    """
    从 LLVM IR 头部提取 `target triple`。

    这样 `RFunipassLab` 就不需要再假设所有输入都是 RISC-V IR，
    而是可以根据数据集自身的 triple 自动选择合适的 `--mtriple`。
    """
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


def fix_loop_nesting(pipeline: str) -> str:
    """
    把 loop pass 嵌套进离它最近的前一个 function pass 中。

    LLVM 新 PM 里 loop pass 不能孤立地直接放在顶层 pipeline 中使用，
    因此在把 pass 序列拼成 `-passes=` 字符串之前，需要先做一次修正。
    """
    passes = [p.strip() for p in pipeline.split(',')]

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
    """根据 pipeline 类型构建 opt 命令。"""
    if pipeline == 'default<Oz>' or pipeline == '-Oz':
        cmd_opt = [opt_path, '-Oz', '-S']
    elif pipeline == '-O3':
        cmd_opt = [opt_path, '-O3', '-S']
    else:
        cmd_opt = [opt_path, '-S', f'-passes={pipeline}']

    if resolved_target_triple:
        cmd_opt.append(f'--mtriple={resolved_target_triple}')
    return cmd_opt


def _format_opt_failure(cmd_opt, pipeline: str, resolved_target_triple: str | None, result) -> str:
    """格式化 opt 失败信息，避免错误被静默吞掉。"""
    stderr_text = (result.stderr or '').strip()
    stdout_text = (result.stdout or '').strip()
    detail = stderr_text or stdout_text or '<no stdout/stderr captured>'
    detail_lines = '\n'.join(detail.splitlines()[:20])
    return (
        f"opt failed for pipeline={pipeline!r}, "
        f"target_triple={resolved_target_triple or '<not found>'}, "
        f"returncode={result.returncode}, cmd={' '.join(cmd_opt)}\n"
        f"{detail_lines}"
    )


def get_instrcount(ir_code, opt_flags, llvm_tools_path, target_triple: str | None = None):
    """
    对一段 IR 应用给定 pipeline，然后返回优化后的 TotalInsts。

    与旧版不同，这里做了两件更适合“多数据集实验”的改动：
    1. 默认从 IR 头部自动识别 `target triple`
    2. `opt` 失败时不再静默回退到原始 IR，而是直接抛错

    这样一来：
    - x86 / RISC-V / 其他 triple 的 IR 都能更自然地共用同一套实验代码
    - 一旦 pipeline 或 triple 有问题，日志里会立刻看到真实 stderr
    """
    pipeline = ','.join(opt_flags)
    opt_path = os.path.join(llvm_tools_path, 'opt') if llvm_tools_path else 'opt'

    if opt_flags == []:
        return get_inst_count(ir_code)

    resolved_target_triple = target_triple or detect_target_triple(ir_code)

    if pipeline not in {'default<Oz>', '-Oz', '-O3'}:
        pipeline = fix_loop_nesting(pipeline)

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

    return get_inst_count(result.stdout)
