from collections import defaultdict

import macq.extract.esam
import macq.extract.sam
from macq.trace import TraceList

import tester
from tester import run_tests
from macq.extract.extract import modes
from macq.observation.identity_observation import IdentityObservation
from macq.generate.pddl.fd_random_walk import FDRandomWalkSampling
from macq.generate.pddl.vanilla_sampling import VanillaSampling






def run_tester():
    tester.clean_dirs()
    run_tests(ext_mode1=modes.ESAM,
              ext_mode2=modes.OBSERVER,
              ext1_kwargs={},
              ext2_kwargs={})


def randomized_sampler_example():
    domain_filename = str(
        (tester.orig_domains_dir / f"dom{0}.pddl").resolve())
    prob_filename = str(
        (tester.gen_probs_dir / f"prob{0}.pddl").resolve())
    sampler = FDRandomWalkSampling(prob=prob_filename,
                                   dom=domain_filename,
                                   observe_static_fluents=True,
                                   init_h=4,
                                   max_time=15,
                                   observe_pres_effs=True,
                                   num_traces=1)
    sampler.traces[0].print()


def try_prob_for_ldomain1():
    sampler = VanillaSampling(prob="gripper_prob.pddl",
                              dom="gripper.pddl",
                              plan_len=20,
                              num_traces=1,
                              max_time=120,
                              observe_static_fluents=True,
                              observe_pres_effs=True)

    traces = sampler.traces
    traces[0].print()

    obs_list = traces.tokenize(Token=IdentityObservation)

    esam = macq.extract.esam.ESAM
    model = esam.__new__(esam, obs_trace_list=obs_list, debug=True)
    model.to_pddl(domain_name="gripper",
                  domain_filename="dom0.pddl",
                  problem_name="gripper_new_problem",
                  problem_filename="gripper_new_problem.pddl")

    change_domain(prob_filename="gripper_prob.pddl",
                  new_prob_filename="gripper_new_problem.pddl",
                  new_domain_filename="dom0.pddl",
                  obj_2_type=esam.objects_names_2_types)

    sampler = VanillaSampling(prob="gripper_new_problem.pddl",
                              dom="dom0.pddl",
                              plan_len=80,
                              num_traces=1,
                              max_time=120,
                              observe_static_fluents=True,
                              observe_pres_effs=True)
    sampler.traces[0].print()

    # deduct types by the change init ,each true fluent indicates the right type!


def try_prob_for_ldomain2():
    sampler = VanillaSampling(prob="gripper_prob.pddl",
                              dom="gripper.pddl",
                              plan_len=20,
                              num_traces=1,
                              max_time=120,
                              observe_static_fluents=True,
                              observe_pres_effs=True)



    traces = sampler.traces
    traces[0].print()

    obs_list = traces.tokenize(Token=IdentityObservation)

    sam = macq.extract.sam.SAM
    model = sam.__new__(sam, sam_generator=macq.extract.sam.SAMgenerator(obs_trace_list=obs_list, debug=True))
    model.to_pddl(domain_name="gripper",
                  domain_filename="dom_sam.pddl",
                  problem_name="gripper_new_problem",
                  problem_filename="gripper_new_problem.")

    change_domain(prob_filename="gripper_prob.pddl",
                  new_prob_filename="gripper_new_problem.pddl",
                  new_domain_filename="dom_sam.pddl",
                  obj_2_type=sam.sort_dict)

    sampler = VanillaSampling(prob="gripper_new_problem.pddl",
                              dom="dom_sam.pddl",
                              plan_len=80,
                              num_traces=1,
                              max_time=120,
                              observe_static_fluents=True,
                              observe_pres_effs=True)
    sampler.traces[0].print()

def change_domain(obj_2_type: dict[str, str],
                  prob_filename: str,
                  new_prob_filename: str,
                  new_domain_filename: str) -> None:
    """
    Given a problem for domain A, and a new domain B of different types but same objects, the method writes a new
    problem to fit the new typing.

    The domain and problem PDDL files
    are rewritten to accommodate the new goal for later use by a planner.

    It is useful when trying to solve a problem of domain A by a learned lifted domain B.
    Args:
        obj_2_type:
            A dictionary mapping each object's name to its new type.
        prob_filename:
            The current problem filename in the directory.
        new_prob_filename:
            The new problem filename in the directory.
        new_domain_filename:
            The new domain filename in the directory.
    """

    # create new objects declaration block
    def create_type_to_objects_map(obj_22_type: dict[str, str]) -> dict[str, list[str]]:
        type_to_objects = defaultdict(list)
        for obj, obj_type in obj_22_type.items():
            type_to_objects[obj_type].append(obj)
        return type_to_objects

    def create_type_lines(type_to_objects: dict[str, list[str]]) -> list[str]:
        type_lines = []
        for obj_type, objects in type_to_objects.items():
            lin = f"{' '.join(objects)} - {obj_type}"
            type_lines.append(lin)
        return type_lines

    def create_combined_string(type_lines: list[str]) -> str:
        return "\n        ".join(type_lines)

    def process_objects(obj_22_type: dict[str, str]) -> str:
        type_to_objects = create_type_to_objects_map(obj_22_type)
        type_lines = create_type_lines(type_to_objects)
        combine_string = create_combined_string(type_lines)
        return combine_string

    # open prob file
    with open(prob_filename, 'r') as file:
        lines = file.readlines()

    # Extract the objects section and process it
    new_lines = []
    in_objects_section = False
    for line in lines:
        if line.strip().startswith('(:objects'):
            in_objects_section = True
            new_lines.append('(:objects\n        ')
            combined_string = process_objects(obj_2_type)
            new_lines.append(combined_string+')\n')
        elif in_objects_section and line.strip().startswith('(:init'):
            in_objects_section = False
            new_lines.append(line)
        elif not in_objects_section:
            new_lines.append(line)

    with open(new_prob_filename, 'w') as file:
        file.writelines(new_lines)



if __name__ == '__main__':
    # tester.clean_dirs()
    # tester.generate_problems()
    # randomized_sampler_example()
    # run_tester()
    # simple_tester.run_tests(ext=macq.extract.modes.ESAM, ext_args={"debug": True})
    try_prob_for_ldomain1()

