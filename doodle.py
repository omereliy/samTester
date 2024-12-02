import os
import subprocess
from pathlib import Path
import pandas as pd

import dom_sorts_info

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
    a = {7: 18}
    if 7 in a.keys():
        print(a[7])