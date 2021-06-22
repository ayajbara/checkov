from typing import Optional, Tuple, List, Dict, Any

from networkx import DiGraph

from checkov.common.graph.checks_infra.enums import SolverType
from checkov.common.graph.checks_infra.solvers.base_solver import BaseSolver


class BaseGraphCheck:
    def __init__(self) -> None:
        self.id = ""
        self.name = ""
        self.resource_types: List[str] = []
        self.connected_resources_types: List[str] = []
        self.operator = ""
        self.attribute: Optional[str] = None
        self.attribute_value: Optional[str] = None
        self.sub_checks: List["BaseGraphCheck"] = []
        self.type: Optional[SolverType] = None
        self.solver: Optional[BaseSolver] = None

    def set_solver(self, solver: BaseSolver) -> None:
        self.solver = solver

    def run(self, graph_connector: DiGraph) -> Tuple[List[Dict[str, Any]], List[Dict[str, Any]]]:
        return self.solver.run(graph_connector=graph_connector)
