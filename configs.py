import os
import subprocess
import sys

def run_grid(f_out: str | None):
    problem_args = problem2_info["grid"]
    output_file = f_out
    run_command = (
        f"python3 pddl-generators-main/grid/generate.py "
        f"--shapes {problem_args.get('--shapes', 2)} "
        f"--keys {problem_args.get('--keys', 2)} "
        f"--locks {problem_args.get('--locks', 2)} "
        f"{problem_args.get('x')} "
        f"{problem_args.get('y')} "
        f"> {output_file}"
    )
    os.system(run_command)


def run_depots(f_out: str | None):
    problem_args = problem2_info["depots"]
    output_file = f_out
    subprocess.check_output("cd ..", shell=True)
    run_command = (
        f"./pddl-generators-main/depots/depots "
        f"-e {problem_args.get('-e', 1)} "
        f"-i {problem_args.get('-i', 2)} "
        f"-t {problem_args.get('-t', 1)} "
        f"-p {problem_args.get('-p')} "
        f"-h {problem_args.get('-h')} "
        f"-c {problem_args.get('-c')} "
        f"> {output_file}"
    )
    result = subprocess.check_output(run_command, shell=True)


def run_gripper(f_out: str | None):
    problem_args = problem2_info["gripper"]
    output_file = f_out
    subprocess.check_output("cd ..", shell=True)
    run_command = (
        f"./pddl-generators-main/gripper/gripper "
        f"-n {problem_args.get('-n', 1)} "
        f"> {output_file}"
    )
    result = subprocess.check_output(run_command, shell=True)

def run_freecell(f_out: str | None):
    problem_args = problem2_info["freecell"]
    output_file = f_out
    subprocess.check_output("cd ..", shell=True)
    run_command = (
        f"./pddl-generators-main/freecell/freecell "
        f"-f {problem_args.get('-f', 1)} "
        f"-c {problem_args.get('-c', 2)} "
        f"-s {problem_args.get('-s', 2)} "
        f"-i {problem_args.get('-i', 1)} "
        f"-0 {problem_args.get('-0', 1)} "
        f"> {output_file}"
    )
    result = subprocess.check_output(run_command, shell=True)

def run_hanoi(f_out: str | None):
    problem_args = problem2_info["hanoi"]
    output_file = f_out
    subprocess.check_output("cd ..", shell=True)
    run_command = (
        f"./pddl-generators-main/hanoi/hanoi "
        f"-n {problem_args.get('-n', 1)} "
        f"> {output_file}"
    )
    result = subprocess.check_output(run_command, shell=True)





problem2_info: dict = dict()
#works:
problem2_info["hanoi"] = {'run?': False, '-n': 11,
                         'f_out': sys.stdout, "exc": run_hanoi, "plan_len":15, "num_traces": 50}
problem2_info["gripper"] = {'run?': True, '-n': 10,
                         'f_out': sys.stdout, "exc": run_gripper, "plan_len":15, "num_traces": 50}

# to figure out configuration\problem
problem2_info["depots"] = {'run?': False, "-e": 5, "-i": 5, "-t": 5, "-p": 15, "-h": 15, "-c": 10, "exc": run_depots,
                          "plan_len":15, "num_traces": 50}
problem2_info["grid"] = {'run?': False, 'x': 5, 'y': 5, '--shapes': 4, '--keys': 8, '--locks': 8,
                         'f_out': sys.stdout, "exc": run_grid, "plan_len":15, "num_traces": 50 }


problem2_info["driverlog"] = {'run?': False, '-n': 10,
                         'f_out': sys.stdout, "exc": run_gripper, "plan_len":15, "num_traces": 50}
problem2_info["ferry"] = {'run?': False, '-n': 10,
                         'f_out': sys.stdout, "exc": run_gripper, "plan_len":15, "num_traces": 50}





