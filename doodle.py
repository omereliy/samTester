import os
import subprocess
from pathlib import Path

from new_tester.dom_sorts_info import sort_files_numerically


def solve(dom_filename: str, prob_filename:str, sol_filename:str):
    command = f"python3 new_tester/downward-release-22.06.0/fast-downward.py --plan-file {sol_filename} {dom_filename} {prob_filename} --evaluator 'hcea=cea()' --search 'lazy_greedy([hcea], preferred=[hcea])'"
    fd_path = "new_tester/downward-release-22.06.0/fast-downward.py"
    if not os.access(fd_path, os.X_OK):
        os.chmod(fd_path, 0o755)  # Add execute permissions if not already set
    try:
        # result = subprocess.run(command, check=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
        subprocess.check_output(command, shell=True, stderr=subprocess.STDOUT)
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
def validate_dom(dom_name: str, num_of_acts: int):
    for i in range(1,101):
        dom_path = f'new_tester/esam_learned_doms/{dom_name}/{dom_name}_{num_of_acts}.pddl'
        prob_path = f'new_tester/probs/typed_probs/{dom_name}/test_probs/pfile{i}.pddl'
        sol_path = f'new_tester/outputs/plans/{dom_name}/esam/{num_of_acts}/plan{i}'
        if open(sol_path).read() != "" and not is_plan_valid(dom_path, prob_path, sol_path):
            print (f"{dom_name}_{num_of_acts} plan{i} is not valid")
            raise Exception("plan not valid")

def validate_all_plans():
    for name in["rover", "satellite", "depots"]:
        for num_act in [10, 20, 40, 60, 80, 100, 120, 150, 200, 250, 300, 350, 400, 500]:
            validate_dom(name, num_act)