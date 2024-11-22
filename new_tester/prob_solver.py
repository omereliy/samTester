import concurrent.futures
import multiprocessing
import datetime
import os
import subprocess
from multiprocessing import Process
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


def fast_downward_solve_and_save(dom_filename: str, prob_filename:str, sol_filename:str):
    planner_filename =  str(base / "downward-release-22.06.0/fast-downward.py")
    search_method = "--evaluator 'hcea=cea()' --search 'lazy_greedy([hcea], preferred=[hcea])'"
    command = f"python3 {planner_filename} --plan-file {sol_filename} {dom_filename} {prob_filename} {search_method}"
    if not os.access(planner_filename, os.X_OK):
        os.chmod(planner_filename, 0o755)  # Add execute permissions if not already set
    try:
        subprocess.check_output(command, shell=True, stderr=subprocess.STDOUT)
        print(f"{sol_filename} has an updated plan")
    except subprocess.CalledProcessError as e:
        with open(sol_filename, "wt") as plan_file:
            plan_file.write("")  # make an empty file
        print(f"no plan for {sol_filename}"
              f"error{e.__traceback__}")

def fast_downward_solve_directory(dom_filename: str, probs_dir:str, sol_dir:str):
    files = sort_files_numerically(probs_dir)
    tasks = [
        (dom_filename, os.path.join(probs_dir, file), os.path.join(sol_dir, f"plan{i + 1}"))
        for i, file in enumerate(files)
    ]
    with concurrent.futures.ProcessPoolExecutor(max_workers=multiprocessing.cpu_count()) as executor:
        futures = [executor.submit(fast_downward_solve_and_save, *task) for task in tasks]
        try:
            concurrent.futures.wait(futures, timeout=None, return_when=concurrent.futures.ALL_COMPLETED)
        except KeyboardInterrupt:
            print("Keyboard interrupt detected, shutting down...")
            executor.shutdown(wait=False, cancel_futures=True)
            return

        # Check for errors
        for future in futures:
            try:
                future.result()  # Raise exceptions if any occurred
            except Exception as err:
                print(f"An error occurred: {err}")



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
        print(err.__str__() + f" for prob {prob_index}")
        with open(plan_path, "wt") as plan_file:
            plan_file.write("")
    except KeyboardInterrupt as err:
        print(f"keyboard interrupt at line 108, exiting {err}")
        with open(plan_path, "wt") as plan_file:
            plan_file.write("")
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
            print("keyboard interrupt line 137")
            to_terminate.set()
            executor.shutdown(wait=False, cancel_futures=True)
            return

        if to_terminate.is_set():
            print(f"Executor shutdown triggered. line 143")
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


def signal_handler(sig, frame):
    to_terminate.set()

if __name__ == '__main__':
    start_time = datetime.datetime.now()
    signal.signal(signal.SIGINT, signal_handler)
    signal.signal(signal.SIGTERM, signal_handler)
    dom_name = 'satellite'
    steps_for_learn = [10, 20, 40, 60, 80, 100, 120, 150, 200, 250, 300, 350, 400, 500]

    def only_dom(num_acts_learn):
        learned_domain = base / 'esam_learned_doms' / dom_name / f"{dom_name}_{num_acts_learn}.pddl"
        test_probs = base / 'probs' / 'typed_probs' / dom_name / 'test_probs'
        output_dir = base / 'outputs' / 'plans' / dom_name / 'esam' / str(num_acts_learn)
        solve_directory_probs(str(learned_domain),
                                      str(test_probs),
                                      str(output_dir))

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

    processes = []
    for i in steps_for_learn:
        learned_domain = base / 'esam_learned_doms' / dom_name / f"{dom_name}_{i}.pddl"
        test_probs = base / 'probs' / 'typed_probs' / dom_name / 'test_probs'
        output_dir = base / 'outputs' / 'plans' / dom_name / 'esam' / str(i)
        # Run each function call in a separate process
        process = Process(target=solve_directory_probs, args=(learned_domain, test_probs, output_dir))
        processes.append(process)

    for process in processes:
        process.start()

    # Wait for all processes to complete
    for process in processes:
        process.join()


    delta = datetime.datetime.now() - start_time
    print(f"Program terminated. total runtime is {delta}")


