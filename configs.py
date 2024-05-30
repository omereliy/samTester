import os
import subprocess
import sys
from typing import Any
from typing import Callable


# class DomainProbInfo:
#     kwargs: dict[str, str] = dict()
#     f_out: str = sys.stdout  # default
#     run_command: Callable[[Any], Any]
#     is_to_run: bool = True


def setup():
    run_command = (
        f"./pddl-generators-main/build_all"
    )
    subprocess.check_output(run_command, shell=True)


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


problem2_info: dict = dict()

problem2_info["depots"] = {'run?': True, "-e": 2, "-i": 4, "-t": 4, "-p": 5, "-h": 5, "-c": 5, "exc": run_depots}
problem2_info["grid"] = {'run?': True, 'x': 50, 'y': 50, '--shapes': 10, '--keys': 20, '--locks': 20,
                         'f_out': sys.stdout, "exc": run_grid}
problem2_info["agricola"] = {'run?': False}
problem2_info["barman"] = {'run?': False}
problem2_info["cavediving"] = {'run?': False}
problem2_info["childsnack"] = {'run?': False}
problem2_info["citycar"] = {'run?': False}
problem2_info["elevators"] = {'run?': False}
problem2_info["floortile"] = {'run?': False}

problem2_info["hiking"] = {'run?': False}
problem2_info["matchcellar"] = {'run?': False}
problem2_info["minigrid"] = {'run?': False}
problem2_info["nurikabe"] = {'run?': False}
problem2_info["openstacks"] = {'run?': False}
problem2_info["pathways"] = {'run?': False}
problem2_info["pegsol"] = {'run?': False}
problem2_info["scanalyzer"] = {'run?': False}
problem2_info["snake"] = {'run?': False}
problem2_info["spanner"] = {'run?': False}
problem2_info["spider"] = {'run?': False}
problem2_info["termes"] = {'run?': False}
problem2_info["tetris"] = {'run?': False}
problem2_info["tidybot"] = {'run?': False}
problem2_info["transport"] = {'run?': False}
problem2_info["woodworking"] = {'run?': False}
