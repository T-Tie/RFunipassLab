from __future__ import annotations

import shlex
from dataclasses import dataclass
from pathlib import Path
from typing import Dict, Iterable, List, Sequence


CBENCH_NAMES = (
    "consumer_jpeg_c",
    "security_sha",
    "automotive_bitcount",
    "automotive_susan_e",
    "automotive_susan_c",
    "automotive_susan_s",
    "bzip2e",
    "consumer_tiff2rgba",
    "telecom_adpcm_c",
    "office_rsynth",
)

POLYBENCH_SOURCES = {
    "2mm": "polybench/linear-algebra/kernels/2mm/2mm.c",
    "3mm": "polybench/linear-algebra/kernels/3mm/3mm.c",
    "cholesky": "polybench/linear-algebra/solvers/cholesky/cholesky.c",
    "jacobi-2d": "polybench/stencils/jacobi-2d/jacobi-2d.c",
    "lu": "polybench/linear-algebra/solvers/lu/lu.c",
    "correlation": "polybench/datamining/correlation/correlation.c",
    "nussinov": "polybench/medley/nussinov/nussinov.c",
    "symm": "polybench/linear-algebra/blas/symm/symm.c",
    "heat-3d": "polybench/stencils/heat-3d/heat-3d.c",
    "covariance": "polybench/datamining/covariance/covariance.c",
}

POLYBENCH_FULL_SOURCES = {
    "correlation": "polybench_full/datamining/correlation/correlation.c",
    "covariance": "polybench_full/datamining/covariance/covariance.c",
    "2mm": "polybench_full/linear-algebra/kernels/2mm/2mm.c",
    "3mm": "polybench_full/linear-algebra/kernels/3mm/3mm.c",
    "atax": "polybench_full/linear-algebra/kernels/atax/atax.c",
    "bicg": "polybench_full/linear-algebra/kernels/bicg/bicg.c",
    "doitgen": "polybench_full/linear-algebra/kernels/doitgen/doitgen.c",
    "mvt": "polybench_full/linear-algebra/kernels/mvt/mvt.c",
    "gemm": "polybench_full/linear-algebra/blas/gemm/gemm.c",
    "gemver": "polybench_full/linear-algebra/blas/gemver/gemver.c",
    "gesummv": "polybench_full/linear-algebra/blas/gesummv/gesummv.c",
    "symm": "polybench_full/linear-algebra/blas/symm/symm.c",
    "syr2k": "polybench_full/linear-algebra/blas/syr2k/syr2k.c",
    "syrk": "polybench_full/linear-algebra/blas/syrk/syrk.c",
    "trmm": "polybench_full/linear-algebra/blas/trmm/trmm.c",
    "cholesky": "polybench_full/linear-algebra/solvers/cholesky/cholesky.c",
    "durbin": "polybench_full/linear-algebra/solvers/durbin/durbin.c",
    "gramschmidt": "polybench_full/linear-algebra/solvers/gramschmidt/gramschmidt.c",
    "lu": "polybench_full/linear-algebra/solvers/lu/lu.c",
    "ludcmp": "polybench_full/linear-algebra/solvers/ludcmp/ludcmp.c",
    "trisolv": "polybench_full/linear-algebra/solvers/trisolv/trisolv.c",
    "deriche": "polybench_full/medley/deriche/deriche.c",
    "floyd-warshall": "polybench_full/medley/floyd-warshall/floyd-warshall.c",
    "nussinov": "polybench_full/medley/nussinov/nussinov.c",
    "adi": "polybench_full/stencils/adi/adi.c",
    "fdtd-2d": "polybench_full/stencils/fdtd-2d/fdtd-2d.c",
    "heat-3d": "polybench_full/stencils/heat-3d/heat-3d.c",
    "jacobi-1d": "polybench_full/stencils/jacobi-1d/jacobi-1d.c",
    "jacobi-2d": "polybench_full/stencils/jacobi-2d/jacobi-2d.c",
    "seidel-2d": "polybench_full/stencils/seidel-2d/seidel-2d.c",
}

CSMITH_NAMES = (
    "trainprogram1",
    "trainprogram2",
    "trainprogram3",
    "trainprogram4",
    "trainprogram5",
)

REDIRECT_TOKENS = {"<", ">", ">>", "1>", "1>>", "2>", "2>>"}
VALID_SUITES = ("cbench", "polybench", "polybench_full", "csmith")


@dataclass(frozen=True)
class CompileSpec:
    suite: str
    name: str
    source_dir: Path
    source_files: List[Path]
    include_dirs: List[Path]
    compile_flags: List[str]
    compile_defines: List[str]
    dataset_id: int | None = None


def validate_selected_names(
    all_names: Sequence[str],
    selected_names: Sequence[str] | None,
    label: str,
) -> List[str]:
    if not selected_names:
        return list(all_names)
    requested = list(selected_names)
    unknown = sorted(set(requested) - set(all_names))
    if unknown:
        raise ValueError(f"unknown {label}(s): {', '.join(unknown)}")
    requested_set = set(requested)
    return [name for name in all_names if name in requested_set]


def suite_names(
    selected_suites: Sequence[str] | None = None,
    exclude_suites: Sequence[str] | None = None,
) -> List[str]:
    suites = validate_selected_names(VALID_SUITES, selected_suites, "suite")
    excluded = set(exclude_suites or [])
    unknown_excluded = sorted(excluded - set(VALID_SUITES))
    if unknown_excluded:
        raise ValueError(f"unknown suite(s) in exclude list: {', '.join(unknown_excluded)}")
    return [suite for suite in suites if suite not in excluded]


def discover_cbench_sources(source_dir: Path) -> List[Path]:
    return sorted(
        path.resolve()
        for path in source_dir.glob("*.c")
        if path.is_file() and not path.name.startswith("._")
    )


def build_cbench_specs(
    source_root: Path,
    selected_names: Sequence[str] | None = None,
    dataset_id: int = 1,
) -> List[CompileSpec]:
    names = validate_selected_names(CBENCH_NAMES, selected_names, "CBench benchmark")
    specs: List[CompileSpec] = []
    for name in names:
        source_dir = (source_root / "cbench" / name).resolve()
        specs.append(
            CompileSpec(
                suite="cbench",
                name=name,
                source_dir=source_dir,
                source_files=discover_cbench_sources(source_dir),
                include_dirs=[source_dir],
                compile_flags=["-std=gnu89"],
                compile_defines=[],
                dataset_id=dataset_id,
            )
        )
    return specs


def build_polybench_specs(
    source_root: Path,
    selected_names: Sequence[str] | None = None,
) -> List[CompileSpec]:
    names = validate_selected_names(
        tuple(POLYBENCH_SOURCES),
        selected_names,
        "PolyBench benchmark",
    )
    utility_source = (source_root / "polybench" / "utilities" / "polybench.c").resolve()
    utility_dir = (source_root / "polybench" / "utilities").resolve()
    specs: List[CompileSpec] = []
    for name in names:
        source_file = (source_root / POLYBENCH_SOURCES[name]).resolve()
        specs.append(
            CompileSpec(
                suite="polybench",
                name=name,
                source_dir=source_file.parent,
                source_files=[utility_source, source_file],
                include_dirs=[utility_dir, source_file.parent],
                compile_flags=["-std=gnu99"],
                compile_defines=["POLYBENCH_TIME"],
            )
        )
    return specs


def build_polybench_full_specs(
    source_root: Path,
    selected_names: Sequence[str] | None = None,
) -> List[CompileSpec]:
    names = validate_selected_names(
        tuple(POLYBENCH_FULL_SOURCES),
        selected_names,
        "PolyBench/C full benchmark",
    )
    utility_source = (source_root / "polybench_full" / "utilities" / "polybench.c").resolve()
    utility_dir = (source_root / "polybench_full" / "utilities").resolve()
    specs: List[CompileSpec] = []
    for name in names:
        source_file = (source_root / POLYBENCH_FULL_SOURCES[name]).resolve()
        specs.append(
            CompileSpec(
                suite="polybench_full",
                name=name,
                source_dir=source_file.parent,
                source_files=[utility_source, source_file],
                include_dirs=[utility_dir, source_file.parent],
                compile_flags=["-std=gnu99"],
                compile_defines=["POLYBENCH_TIME"],
            )
        )
    return specs


def build_csmith_specs(
    source_root: Path,
    runtime_root: Path,
    selected_names: Sequence[str] | None = None,
) -> List[CompileSpec]:
    names = validate_selected_names(CSMITH_NAMES, selected_names, "Csmith benchmark")
    source_dir = (source_root / "csmith").resolve()
    runtime_dir = runtime_root.resolve()
    specs: List[CompileSpec] = []
    for name in names:
        specs.append(
            CompileSpec(
                suite="csmith",
                name=name,
                source_dir=source_dir,
                source_files=[(source_dir / f"{name}.c").resolve()],
                include_dirs=[runtime_dir],
                compile_flags=["-std=c99"],
                compile_defines=[],
            )
        )
    return specs


def build_suite_specs(
    suite: str,
    source_root: Path,
    runtime_root: Path,
    selected_names: Sequence[str] | None = None,
    dataset_id: int = 1,
) -> List[CompileSpec]:
    if suite == "cbench":
        return build_cbench_specs(source_root, selected_names=selected_names, dataset_id=dataset_id)
    if suite == "polybench":
        return build_polybench_specs(source_root, selected_names=selected_names)
    if suite == "polybench_full":
        return build_polybench_full_specs(source_root, selected_names=selected_names)
    if suite == "csmith":
        return build_csmith_specs(source_root, runtime_root, selected_names=selected_names)
    raise ValueError(f"unsupported suite: {suite}")


def dataset_upstreams() -> Dict[str, Dict[str, str]]:
    return {
        "boca_repo": {
            "kind": "git",
            "url": "https://github.com/BOCA313/BOCA.git",
            "note": "Contains the CBench, PolyBench and 5-program Csmith subsets used by BOCA.",
        },
        "csmith_runtime": {
            "kind": "git",
            "url": "https://github.com/csmith-project/csmith.git",
            "note": "Provides the canonical Csmith runtime headers under runtime/.",
        },
        "polybench_full": {
            "kind": "local_or_git",
            "url": "https://github.com/MatthiasJReisinger/PolyBenchC-4.2.1.git",
            "note": "Provides the full 30-program PolyBench/C 4.2.1 suite.",
        },
    }


def parse_cbench_dataset(source_dir: Path, dataset_id: int) -> tuple[str, str]:
    dataset_file = source_dir / "_ccc_info_datasets"
    if not dataset_file.is_file():
        raise FileNotFoundError(f"missing CBench dataset file: {dataset_file}")

    lines = dataset_file.read_text(encoding="utf-8", errors="replace").splitlines()
    index = 1
    while index < len(lines):
        if lines[index].strip() != "=====":
            index += 1
            continue
        if index + 3 >= len(lines):
            break
        current_dataset = int(lines[index + 1].strip())
        command_line = lines[index + 2].strip()
        loop_wrap = lines[index + 3].strip()
        if current_dataset == dataset_id:
            return command_line, loop_wrap
        index += 4

    raise ValueError(f"dataset {dataset_id} not found in {dataset_file}")


def resolve_cbench_input_path(token: str, benchmark_dir: Path, source_root: Path) -> Path | None:
    literal = (benchmark_dir / token).resolve()
    if literal.exists():
        return literal

    normalized_parts = [part for part in Path(token).parts if part not in (".", "..")]
    if not normalized_parts:
        return None

    cbench_relative = (source_root / "cbench" / Path(*normalized_parts)).resolve()
    if cbench_relative.exists():
        return cbench_relative

    source_relative = (source_root / Path(*normalized_parts)).resolve()
    if source_relative.exists():
        return source_relative

    return None


def rewrite_cbench_command(raw_command: str, benchmark_dir: Path, source_root: Path) -> str:
    tokens = shlex.split(raw_command)
    rewritten: List[str] = []
    previous_redirect: str | None = None

    for token in tokens:
        if token in REDIRECT_TOKENS:
            rewritten.append(token)
            previous_redirect = token
            continue

        rewritten_token = token
        if previous_redirect == "<" or "/" in token:
            resolved = resolve_cbench_input_path(token, benchmark_dir, source_root)
            if previous_redirect == "<" and resolved is None:
                raise FileNotFoundError(
                    f"cannot resolve CBench input path {token!r} for {benchmark_dir.name}"
                )
            if resolved is not None:
                rewritten_token = str(resolved)

        rewritten.append(shlex.quote(rewritten_token))
        previous_redirect = None

    return " ".join(rewritten)


def benchmark_names_for_suite(suite: str) -> Sequence[str]:
    if suite == "cbench":
        return CBENCH_NAMES
    if suite == "polybench":
        return tuple(POLYBENCH_SOURCES)
    if suite == "polybench_full":
        return tuple(POLYBENCH_FULL_SOURCES)
    if suite == "csmith":
        return CSMITH_NAMES
    raise ValueError(f"unsupported suite: {suite}")


def benchmark_filter_map(
    suites: Iterable[str],
    selected_names: Sequence[str] | None = None,
) -> Dict[str, List[str] | None]:
    if not selected_names:
        return {suite: None for suite in suites}

    selected_set = set(selected_names)
    result: Dict[str, List[str] | None] = {}
    unknown = set(selected_set)
    for suite in suites:
        names = list(benchmark_names_for_suite(suite))
        suite_selected = [name for name in names if name in selected_set]
        if suite_selected:
            result[suite] = suite_selected
            unknown -= set(suite_selected)
        else:
            result[suite] = []

    if unknown:
        raise ValueError(f"unknown benchmark name(s): {', '.join(sorted(unknown))}")
    return result
