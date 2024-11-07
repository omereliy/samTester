import concurrent.futures
import datetime
import os
from multiprocessing import Process

import tarski.errors

from dom_sorts_info import sort_files_numerically
import threading
from pathlib import Path
from macq.generate import Plan
from macq.generate.pddl.generator import PlanningDomainsAPIError
from macq.generate.pddl import Generator
import signal


to_terminate = threading.Event()

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

def api_domains_solve(dom_path: str, prob_path: str) -> Plan|None :
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

    plan = solver.generate_plan()
    return plan

def api_domains_solve_and_save(dom_path: str, prob_path: str, prob_index, output_dir):
    """
    solve all directory problems and save plans to specified directory
    Args:
        dom_path: the domain path as str
        prob_path: the directory of problems path as str
        prob_index:
        output_dir:


    """
    plan_path = f"{output_dir}/plan{prob_index}"
    if to_terminate.is_set():
        print(f"termination is set, exiting solve and save func")
        return 
    try:
        plan = api_domains_solve(dom_path, prob_path)
        if isinstance(plan, Plan):
            print(f"plan {prob_index} actions:{plan.actions}")
            plan.write_to_file(f"{output_dir}/plan{prob_index}")
        else:
            print (f"no plan found for prob{prob_index}")
            with open(plan_path, "wt") as plan_file:
                plan_file.write("")

    # error handling
    except PlanningDomainsAPIError as err:
        print(err)
        with open(plan_path, "wt") as plan_file:
            plan_file.write("")
    except KeyboardInterrupt as err:
        print(f"keyboard interrupt at line 80, exiting {err}")
        raise err
    except Exception as err:
        print(err)
        with open(plan_path, "wt") as plan_file:
            plan_file.write("")

def solve_directory_probs(dom_path, probs_dir, sols_dir):
    """
    solve all directory problems and save plans to specified directory
    Args:
        dom_path: the domain path as str
        probs_dir: the directory of problems path as str
        sols_dir: the directory to save the plans as str
    """
    files = sort_files_numerically(probs_dir)
    with concurrent.futures.ThreadPoolExecutor(max_workers=5) as executor:
        futures = [
            executor.submit(
                api_domains_solve_and_save,
                dom_path=dom_path,
                prob_path=os.path.join(probs_dir, file),
                prob_index=i + 1,
                output_dir=sols_dir) for i, file in enumerate(files)]
        try:
            concurrent.futures.wait(futures, timeout=None, return_when=concurrent.futures.ALL_COMPLETED)
        except KeyboardInterrupt:
            print("keyboard interrupt line 101")
            to_terminate.set()
            executor.shutdown(wait=False, cancel_futures=True)
            return

        if to_terminate.is_set():
            print(f"Executor shutdown triggered. line 107")
            return
            # add log
        else:
            # Check if any future raised an exception
            for future in futures:
                try:
                    future.result()  # to raise exceptions if any occurred
                except Exception as err:
                    print(f"An error occurred: {err}")
                    # add log

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
            sol_success_dict[file] = True if isinstance(plan, Plan) and len(plan.actions) >= 0 else False
        except PlanningDomainsAPIError:
            sol_success_dict[file] = False
            continue

    return sol_success_dict

#==========================main=======================

def signal_handler(sig, frame):
    to_terminate.set()

if __name__ == '__main__':
    start_time = datetime.datetime.now()
    signal.signal(signal.SIGINT, signal_handler)
    signal.signal(signal.SIGTERM, signal_handler)
    dom_name = 'rover'
    steps_for_learn = [10, 20, 40, 60, 80, 100, 120, 150, 200]

    def only_200():
        learned_domain = base / 'learned_doms' / dom_name / f"{dom_name}_200.pddl"
        test_probs = base / 'probs' / 'typed_probs' / dom_name / 'test_probs'
        output_dir = base / 'outputs' / 'plans' / dom_name / 'esam' / str(200)
        solve_directory_probs(learned_domain,
                              test_probs,
                              output_dir)
    only_200()
    def solve_learn_dir_with_original_dom():
        """solve problems to learn from learn directory"""
        solve_directory_probs(base / f'{dom_name}_typed' / 'domain.pddl',
                              base / 'probs' /'typed_probs' / f'{dom_name}' / 'learn_probs',
                              base / 'outputs' / 'plans' / f'{dom_name}' / 'learn')


    def solve_tests_with_original_dom():
        """ let original domain solve problems of test directory for comparison"""
        solve_directory_probs(base / f'{dom_name}_typed' / 'domain.pddl',
                              base / 'probs' /'typed_probs' / f'{dom_name}' / 'test_probs',
                              base / 'outputs' / 'plans' / f'{dom_name}' / 'original_dom')

    # processes = []
    # for i in steps_for_learn:
    #     learned_domain = base / 'learned_doms' / dom_name / f"{dom_name}_{i}.pddl"
    #     test_probs = base / 'probs' / 'typed_probs' / dom_name / 'test_probs'
    #     output_dir = base / 'outputs' / 'plans' / dom_name / 'esam' / str(i)
    #     # Run each function call in a separate process
    #     process = Process(target=solve_directory_probs, args=(learned_domain, test_probs, output_dir))
    #     process.start()
    #     processes.append(process)
    #
    # # Wait for all processes to complete
    # for process in processes:
    #     process.join()


    delta = datetime.datetime.now() - start_time
    print(f"Program terminated. total runtime is {delta}")


