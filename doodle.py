import os
import subprocess
from pathlib import Path
import pandas as pd
from macq import extract
from dom_sorts_info import RoverInfo
import dom_sorts_info
import macq.trace
from macq.generate.pddl import Generator
from macq.observation.identity_observation import IdentityObservation

steps_for_learn = [10, 20, 40, 60, 80, 100, 120, 150, 200, 250, 300, 350, 400, 500]


def solve(dom_filename: str, prob_filename:str, sol_filename:str):
    command = f"python3 downward-release-22.06.0/fast-downward.py --overall-time-limit 300s --plan-file {sol_filename} {dom_filename} {prob_filename} --evaluator 'hcea=cea()' --search 'lazy_greedy([hcea], preferred=[hcea])'"
    fd_path = "downward-release-22.06.0/fast-downward.py"
    timeout = 180.0
    if not os.access(fd_path, os.X_OK):
        os.chmod(fd_path, 0o755)  # Add execute permissions if not already set
    try:
        subprocess.check_output(command, shell=True, stderr=subprocess.STDOUT)
    except subprocess.TimeoutExpired:
        print(f"Timeout expired after {timeout} seconds for {sol_filename}.")
    except subprocess.CalledProcessError as e:
        print(e.output)

def is_plan_valid(domain_file, problem_file, plan_file):
    try:
        # Run VAL validator
        result = subprocess.run(
            ["VAL/validate", domain_file, problem_file, plan_file],
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            text=True,
        )
        # Check if "Plan valid" is in the output
        return "Plan valid" in result.stdout
    except Exception:
        print("VAL not found. Ensure it is installed and in your PATH.")
        return False
def validate_dom(dom_name: str, num_of_acts: int, mode: str):
    for i in range(1,101):
        dom_path = f'{mode}_learned_doms/{dom_name}/{dom_name}_{num_of_acts}.pddl'
        prob_path = f'probs/typed_probs/{dom_name}/test_probs/pfile{i}.pddl'
        sol_path = f'outputs/plans/{dom_name}/{mode}/{num_of_acts}/plan{i}'
        if open(sol_path).read() != "" and not is_plan_valid(dom_path, prob_path, sol_path):
            print (f"{dom_name}_{num_of_acts} plan{i} is not valid")
            raise Exception("plan not valid")

def validate_all_plans():
    for mode in ['esam', 'sam']:
        for name in["rover", "satellite", "depots"]:
            for num_act in dom_sorts_info.steps_for_learn:
                validate_dom(dom_name=name, num_of_acts=num_act, mode=mode)



# Base directories
base = Path(__file__).parent
tables_dir = base / "tables"

def find_false_positives(domain, mode):
    """Find false positive plans in a given domain and mode."""
    # Load the results table
    table_path = tables_dir / f"{mode}" / f"{domain}_{mode}_results.csv"
    df = pd.read_csv(table_path)

    false_positives = {}

    # Compare original and learned domains for each step
    original = df["Original"]
    for steps in steps_for_learn:
        learned_col = f"Learned ({steps})"
        learned = df[learned_col]

        # Identify false positives
        fp_problems = [
            problem for problem, o, l in zip(df["Problem"], original, learned)
            if o == "X" and l == "V"
        ]
        false_positives[steps] = fp_problems

    return false_positives

def find_false_negative_and_try_resolve(dom_name, mode):
    """Find false positive plans in a given domain and mode."""
    # Load the results table
    table_path = tables_dir / f"{mode}" / f"{dom_name}_{mode}_results.csv"
    df = pd.read_csv(table_path)

    false_positives = {}

    # Compare original and learned domains for each step
    original = df["Original"]
    for step in steps_for_learn:
        learned_col = f"Learned ({step})"
        learned = df[learned_col]

        # Identify false positives
        fp_problems = [
            problem for problem, o, l in zip(df["Problem"], original, learned)
            if o == "V" and l == "X"
        ]
        false_positives[step] = fp_problems

    for step, probs_num in false_positives.items():
        for num in probs_num:
            dom_path = f'{mode}_learned_doms/{dom_name}/{dom_name}_{step}.pddl'
            prob_path = f'probs/typed_probs/{dom_name}/test_probs/pfile{num}.pddl'
            sol_path = f'outputs/plans/{dom_name}/{mode}/{step}/plan{num}'
            solve(dom_path, prob_path, sol_path)

def extract_rover_oof_tests_roni():
    dom_info = RoverInfo()
    trace_list = macq.trace.TraceList([])
    for i in [1,2,3]:
        planner = Generator(dom=str(base/ 'archive'/ 'for_roni' / 'domain.pddl'),
                            prob=str(base/ 'archive'/ 'for_roni' / f'pfile{i}.pddl'),
                            observe_static_fluents=True,
                            observe_pres_effs=True)
        plan = planner.generate_plan(from_ipc_file=True, filename=str(base/ 'archive'/ 'for_roni' / f'plan{i}'))
        trace = planner.generate_single_trace_from_plan(plan)
        trace_list.append(trace)

    obs_trace_list = trace_list.tokenize(Token=IdentityObservation)
    fluents = obs_trace_list.get_fluents()
    objects: set[str] = {obj.name for flu in fluents for obj in flu.objects}
    learned_dom_filename = base/ 'archive'/ 'for_roni' / 'esam_domain.pddl'
    model = extract.ESAM(
        obs_trace_list=obs_trace_list,
        obj_to_sort=dom_info.get_obj_2_type_dict(obj_names=objects),
        sorts=dom_info.sorts,
        action_2_sort=dom_info.action_2_sort,
        fluent_types=dom_info.fluent_2_sort)
    model.to_pddl_lifted(domain_name='rover',
                         problem_name=f"rover_prob",
                         domain_filename=str(learned_dom_filename),
                         problem_filename=str(base / 'trash' / f'rover_prob.pddl'))
    learned_dom_filename = base/ 'archive'/ 'for_roni' / 'sam_domain.pddl'
    model = extract.SAM(
        obs_trace_list=obs_trace_list,
        objects_names_2_types=dom_info.get_obj_2_type_dict(obj_names=objects),
        sorts=dom_info.sorts,
        action_2_sort=dom_info.action_2_sort,
        fluent_types=dom_info.fluent_2_sort)
    model.to_pddl_lifted(domain_name='rover',
                         problem_name=f"rover_prob",
                         domain_filename=str(learned_dom_filename),
                         problem_filename=str(base / 'trash' / f'rover_prob.pddl'))



if __name__ == "__main__":
    # # run fp check
    # domain = "depots"
    # mode = "sam"  # or "sam", depending on what you want to analyze
    # false_positives = find_false_positives(domain, mode)
    # # Print the results
    # for steps, problems in false_positives.items():
    #     print(f"False positives in Depots for Learned ({steps}): {problems}")
    # for mode in ['esam', 'sam']:
    #     for dom_name in ["rover", "satellite", "depots"]:
    #         find_false_positives(dom_name, mode)
    # a = {7: 18}
    # if 7 in a.keys():
    #     print(a[7])
    extract_rover_oof_tests_roni()