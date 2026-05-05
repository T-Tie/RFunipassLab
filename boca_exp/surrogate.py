"""Shared surrogate-model construction utilities."""

from __future__ import annotations

from sklearn.ensemble import RandomForestRegressor


def build_rf_regressor(*, random_state: int) -> RandomForestRegressor:
    """Create the RF surrogate used by both search and post-hoc analysis."""
    return RandomForestRegressor(n_estimators=50, random_state=random_state)

