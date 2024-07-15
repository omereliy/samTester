import traceback
from collections import defaultdict
from pathlib import Path
import os
from macq.extract import extract
from macq.trace import Fluent, TraceList, State, PlanningObject, Action
from macq.generate.pddl import VanillaSampling, Generator
from macq.observation.identity_observation import IdentityObservation


base = Path(__file__).parent
pddls_dir_path = Path(str((base / f"pddls").resolve()))
orig_domains_dir = Path(str((pddls_dir_path / f"orig_domains").resolve()))
gen_probs_dir = Path(str((pddls_dir_path / f"gen_probs").resolve()))
learned_dom1_path = Path(str((pddls_dir_path / f"learned_dom1").resolve()))
learned_dom1_prob_path = Path(str((pddls_dir_path / f"learned_dom1_new_probs").resolve()))
debug = True



def generate_obs_trace_list(domain_filename: str, prob_filename: str, plan_len = 50, num_traces = 2):
    sampler = VanillaSampling(prob=prob_filename,
                               dom=domain_filename,
                               observe_static_fluents=True,
                               max_time=450,
                               observe_pres_effs=True,
                               num_traces=num_traces,
                               plan_len=plan_len)

    trace_list: TraceList = sampler.generate_traces()
    obs_trace_list = trace_list.tokenize(Token=IdentityObservation)
    return obs_trace_list, sampler

def run_tests(extr: str = "esam", plan_len = 30, num_traces = 1):

    """only accepts 'sam' or 'esam'"""

    clean_dirs()
    # generate_problems()
    sampler: VanillaSampling
    esam = extract.ESAM
    sam = extract.SAM

    def gen_traces_extr_model(m: extract.modes.ESAM, plan_length=plan_len, num_trace=2):
        obs_trace_list, samp = generate_obs_trace_list(domain_filename=domain_filename,
                                                       prob_filename=prob_filename,
                                                       plan_len=plan_length,
                                                       num_traces=num_trace)

        if "esam" in extr:
            obTypes = None #extract_typing_from_sampler(sampler=samp)
            obTypes = None # {k: Sort(v, configs.depot_sorts[v]) for k, v in obTypes.items()}

            action_2_sort =None # configs.depot_actions_parameters
            fluent_typing =None # samp.extract_predicate_typing()
            return \
                m.__new__(cls=esam,
                          obs_trace_list=obs_trace_list,
                          debug=True,
                          obj_to_sort = obTypes,
                          action_2_sort = action_2_sort,
                          sorts=None,
                          fluent_types=fluent_typing), samp


        else:
            return m.__new__(cls=sam, obs_trace_list=obs_trace_list, debug=True), samp


    # first step: set all traces and extract model for comparison
    for index in range(len(os.listdir(gen_probs_dir))):
        domain_filename = str(
            (orig_domains_dir / f"dom{index}.pddl").resolve())
        prob_filename = str(
            (gen_probs_dir / f"prob{index}.pddl").resolve())
        new_prob_filename = str((learned_dom1_prob_path.absolute() / f"prob{index}_new_problem.pddl").resolve())
        new_dom_filename = str((learned_dom1_path.absolute() / f"dom{index}.pddl").resolve())
        # retrieve observed trace list
        # extract the model

        model: extract.Model
        try:
            model, sampler = gen_traces_extr_model(esam, plan_length=plan_len)\
                if extr == "esam" else gen_traces_extr_model(sam, plan_length=plan_len, num_trace=num_traces)
            if debug:
                print("extraction successful")
        except Exception:
            if debug:
                traceback.print_exc()
                print("extraction failed")
            return


        ob_2_type = esam.objects_names_2_types if extr == "esam" else sam.objects_names_2_types


        #genenrate pddl of domain from action model
        model.to_pddl(domain_name=sampler.problem.domain_name,
                      domain_filename=new_dom_filename,
                      problem_name = f"dom{index}_prob",
                      problem_filename = new_prob_filename)

        # changer problem typing to fit new domain
        change_domain(obj_2_type=ob_2_type,
                       prob_filename=prob_filename,
                       new_prob_filename=new_prob_filename)

        new_sampler = VanillaSampling(dom=new_dom_filename,
                                      prob=new_prob_filename,
                                      observe_static_fluents=True,
                                      max_time=120,
                                      observe_pres_effs=True,
                                      num_traces=0,
                                      plan_len=5)

        res = compare(sampler=sampler, learned_sampler=new_sampler)

        a = compare(sampler=new_sampler, learned_sampler=sampler)
        res['tp'] += a["tp"]
        res['fp'] =  a["fn"]
        if debug:
            print(res.__str__())







def compare(sampler: VanillaSampling,
            learned_sampler: VanillaSampling):
    print("comparing models")
    tp_counter: int = 0
    fn_counter: int = 0
    sampler.traces = TraceList()
    sampler.plan_len = 11
    sampler.num_traces = 5
    sampler.max_time = 700
    i = 0
    if debug:
        print("generating comp traces")
    sampler.generate_traces()

    if debug:
        print("testing trans")

    for trace in sampler.traces:
        for act in trace.actions:
            for sas in trace.get_sas_triples(action=act):
                if debug:
                    i += 1

                init: set[Fluent] = set()
                goal: set[Fluent] = set()
                if isinstance(sas.pre_state, State):
                    init.update({f for f in sas.pre_state.fluents.keys() if sas.pre_state.fluents[f]})
                if isinstance(sas.post_state, State):
                    goal.update({f for f in sas.post_state.fluents.keys() if sas.post_state.fluents[f]})
                learned_sampler.change_goal(goal_fluents=goal)
                learned_sampler.change_init(init_fluents=init)
                try:
                    plan = learned_sampler.generate_plan()

                    if len(plan.actions) > 0 or goal.__eq__(init):
                        tp_counter += 1
                        if debug:
                            print(f"success in trans{i}")
                            print(f" plan for trans-{i}\n{plan.__str__()}")
                    else:
                        if debug:
                            print(f"failure in trans{i}")
                            print(f"action that could not be done is: {act.details}")
                        fn_counter += 1

                except Exception as error:
                    fn_counter += 1
                    print(f"failure in trans{i}:")
                    print(error.__str__())
                    continue




    res = {"tp": tp_counter, "fn": fn_counter}
    return res




def extract_typing_from_sampler(sampler: VanillaSampling) -> dict[str, str]:
    objects: set[PlanningObject] = set()
    if isinstance(sampler.traces, TraceList):
        for f in sampler.traces.get_fluents():
            if isinstance(f, Fluent):
                for ob in f.objects:
                        objects.add(ob)

    obj_2_type = {ob.name: ob.obj_type for ob in objects}
    return obj_2_type

def change_domain(obj_2_type: dict[str, str],
                  prob_filename: str,
                  new_prob_filename: str,) -> None:
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


dirs = {learned_dom1_path, gen_probs_dir, orig_domains_dir, learned_dom1_prob_path}

def delete_files_in_directory(directory_path):
    try:
        files = os.listdir(directory_path)
        for file in files:
            file_path = os.path.join(directory_path, file)
            if os.path.isfile(file_path):
                os.remove(file_path)
    except OSError:
        print("Error occurred while deleting files.")


def clean_dirs():
    for direct_path in dirs:
        delete_files_in_directory(direct_path)
    print("All files deleted successfully.")

def comp():
    fp = 0
    tp = 0
    learned_sampler = Generator(dom=(base / "learned_dom.pddl").__str__(),
                                prob= (base / "prob.pddl").__str__(),
                                observe_static_fluents=True,
                                observe_pres_effs=True)
    original_sampler = Generator(dom=(base / "orig_dom.pddl").__str__(),
                                prob= (base / "prob.pddl").__str__(),
                                observe_static_fluents=True,
                                observe_pres_effs=True)
    p = learned_sampler.generate_plan()
    t = learned_sampler.generate_single_trace_from_plan(p)
    i = 1
    for act in t.actions:
        for sas in t.get_sas_triples(action=act):
            init: set[Fluent] = set()
            goal: set[Fluent] = set()
            if isinstance(sas.pre_state, State):
                init.update({f for f in sas.pre_state.fluents.keys() if sas.pre_state.fluents[f]})
            if isinstance(sas.post_state, State):
                goal.update({f for f in sas.post_state.fluents.keys() if sas.post_state.fluents[f]})
            original_sampler.change_goal(goal_fluents=goal)
            original_sampler.change_init(init_fluents=init)
            try:
                if isinstance(act, Action):
                    if act.precond in init and act.add in goal and act.delete not in goal:
                        tp+=1
                        print ("tp")

                    else:
                        fp+=1
                        print(f"failure in trans\n"
                              f"init: {init}\n"
                              f"act: {act}\n"
                              f"goal: {goal}\n")

            except Exception as error:
                fp += 1
                print(f"failure in trans\n"
                      f"init: {init}\n"
                      f"act: {act}\n"
                      f"goal: {goal}\n")
                print(error.__str__())
                continue



if __name__ == '__main__':
    comp()

# def generate_problems():
#     for i, k in enumerate(set(configs.problem2_info.keys()).difference({key for key in configs.problem2_info.keys()
#                                                                         if not configs.problem2_info[key]["run?"]})):
#         # generate problem and write it to directory
#         print(f"generating problem {i} for domain {k}")
#         prob_file_path = str(
#             (gen_probs_dir / f"prob{i}.pddl").resolve())
#         configs.problem2_info[k]["exc"](prob_file_path)
#
#         # write domain to directory
#         path = str((base / f"pddl-generators-main/{k}/domain.pddl").resolve())
#         new_path = str((orig_domains_dir / f"dom{i}.pddl").resolve())
#         read_f = Path(path).open("r")
#         to_write_file = Path(new_path).open("w+")
#         to_write_file.write(read_f.read())