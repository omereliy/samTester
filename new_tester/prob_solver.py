import os
from pathlib import Path
from macq.generate import Plan
from macq.generate.pddl.generator import PlanningDomainsAPIError
from macq.trace import TraceList
from macq.generate.pddl import Generator
import tester

# base dir
base = Path(__file__).parent

# ====================================domains============================
depot_dir = Path(str((base / "dgen").resolve()))
driver_log_dir = Path(str((base / "driver_log").resolve()))
rover_dir = Path(str((base / "rover").resolve()))
satelite_dir = Path(str((base / "satelite").resolve()))
dom_dirs = [depot_dir, driver_log_dir, rover_dir, satelite_dir]

untyped_doms_dir = Path(str((base / "untyped_doms").resolve()))

# ======================original doms.pddl dom=================================
depots_utype_dom = str((untyped_doms_dir / "Depots_untyped.pddl").resolve())
driverlog_utype_dom = str((untyped_doms_dir / "driver_log_untyped.pddl").resolve())
rover_utype_dom = str((untyped_doms_dir / "StripsRover_untyped.pddl").resolve())
sat_utype_dom = str((untyped_doms_dir / "stripsSat_untyped.pddl").resolve())

satelite_typed_dir = str((base / "sat_typed").resolve())
sat_typed_dom = str((base / "IPC3/Tests2/Satellite/Strips/stripsSat.pddl").resolve())

# ======================learned doms.pddl dom=================================
learned_depots_dom_path = str((depot_dir / "depots_learned_dom.pddl").resolve())
learned_rover_dom_path = str((rover_dir / "rover_learned_dom.pddl").resolve())
learned_satelite_dom_path = str((satelite_dir / "satellite_learned_dom.pddl").resolve())
learned_drive_log_path = str((driver_log_dir / "drive_log_learned.pddl").resolve())

def api_domains_solve(dom_path: str, prob_path: str) -> Plan:
    """
    solve all directory problems and save plans to specified directory
    Args:
        dom_path: the domain path as str
        prob_path: the directory of problems path as str

    """
    solver = Generator(dom=dom_path,
                       prob=prob_path,
                       observe_static_fluents=True,
                       observe_pres_effs=True)

    return solver.generate_plan()

def solve_directory_probs(dom_path, probs_dir: str, sols_dir):
    """
    solve all directory problems and save plans to specified directory
    Args:
        dom_path: the domain path as str
        probs_dir: the directory of problems path as str
        sols_dir: the directory to save the plans as str
    """
    files = os.listdir(probs_dir)
    files.sort()
    for i, file in enumerate(files):
        prob_name = os.path.join(probs_dir, file)
        try:
            plan = api_domains_solve(dom_path=dom_path, prob_path=prob_name)
            plan.write_to_file(f"{sols_dir}/plan{i+1}")
        except PlanningDomainsAPIError:
            continue

def get_success_table(dom_path, probs_dir: str, sols_dir)-> dict[str, bool]:
    """
    solve all directory problems and save plans to specified directory
    Args:
        dom_path: the domain path as str
        probs_dir: the directory of problems path as str
        sols_dir: the directory to save the plans as str
    Returns: the success of the solutions
    """
    sol_success_dict: dict[str, bool] = dict()
    files = os.listdir(probs_dir)
    files.sort()
    for i, file in enumerate(files):
        prob_name = os.path.join(probs_dir, file)
        solver = Generator(dom=dom_path,
                              prob=prob_name,
                              observe_static_fluents=True,
                              observe_pres_effs=True)
        try:
            plan = api_domains_solve(dom_path, prob_name)
            sol_success_dict[file] = True if isinstance(plan, Plan) and len(plan.actions) > 0 else False
        except PlanningDomainsAPIError:
            sol_success_dict[file] = False
            continue

    return sol_success_dict

#==========================example=======================
def solve_directory_probs_example():
    solve_directory_probs(depots_utype_dom, f"{depot_dir}/learn_probs", 'outputs/plans/depot/learn_plans')



