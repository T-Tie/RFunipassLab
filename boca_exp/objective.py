"""目标后端选择层：向搜索主流程暴露统一接口。"""

from __future__ import annotations

from .core_tuning_cost import record_objective_eval
from .objective_common import compose_multi_objective, get_ei
from .objective_instr import InstructionCountBackend
from .objective_time import ProgramRuntimeHarness, RuntimeObjectiveBackend
from .paths import RUNTIME_CACHE_DIR
from .settings import OBJECTIVE_KIND

_ACTIVE_BACKEND = None



def create_objective_backend(objective_kind: str | None = None, runtime_rows=None):
    """根据配置创建一个目标后端实例。"""
    resolved = (objective_kind or OBJECTIVE_KIND).strip().lower()
    if resolved == 'instrcount':
        return InstructionCountBackend()
    if resolved == 'runtime':
        if runtime_rows is None:
            raise RuntimeError(
                'runtime backend requires runtime_rows; '
                'load runtime-evaluable rows before creating the backend.'
            )
        harnesses = [ProgramRuntimeHarness(**row['runtime_harness']) for row in runtime_rows]
        return RuntimeObjectiveBackend(harnesses, cache_dir=str(RUNTIME_CACHE_DIR))
    raise ValueError(f'Unsupported OBJECTIVE_KIND={resolved!r}')



def configure_objective_backend(backend) -> None:
    """设置当前全局目标后端。"""
    global _ACTIVE_BACKEND
    _ACTIVE_BACKEND = backend



def reset_objective_backend() -> None:
    """清空当前全局目标后端。"""
    global _ACTIVE_BACKEND
    _ACTIVE_BACKEND = None



def get_objective_backend():
    """获取当前目标后端；若未初始化则创建默认后端。"""
    global _ACTIVE_BACKEND
    if _ACTIVE_BACKEND is None:
        _ACTIVE_BACKEND = create_objective_backend()
    return _ACTIVE_BACKEND



def get_objective_kind() -> str:
    return get_objective_backend().objective_kind



def prepare_objective_backend(programs) -> None:
    get_objective_backend().prepare(programs)



def compute_baseline_values(programs):
    return get_objective_backend().compute_baseline_values(programs)



def evaluate_sequence_metrics(programs, baseline_values, pass_sequence):
    record_objective_eval(len(programs))
    return get_objective_backend().evaluate_sequence_metrics(programs, baseline_values, pass_sequence)



def get_objective_score(programs, baseline_values, pass_sequence):
    return evaluate_sequence_metrics(programs, baseline_values, pass_sequence)['objective']


__all__ = [
    'ProgramRuntimeHarness',
    'RuntimeObjectiveBackend',
    'InstructionCountBackend',
    'compose_multi_objective',
    'create_objective_backend',
    'configure_objective_backend',
    'reset_objective_backend',
    'get_objective_backend',
    'get_objective_kind',
    'prepare_objective_backend',
    'compute_baseline_values',
    'evaluate_sequence_metrics',
    'get_objective_score',
    'get_ei',
]
