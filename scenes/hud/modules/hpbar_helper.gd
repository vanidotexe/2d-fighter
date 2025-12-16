extends Node

static func compute_value(current_health: int, max_health: int) -> float:
    if max_health <= 0:
        return 0.0
    return float(current_health) * 100.0 / float(max_health)
