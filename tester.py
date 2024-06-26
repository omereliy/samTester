import enum
import threading
import multiprocessing
from typing import Any
from configs import problem2_info
from pathlib import Path
import os
from macq.extract import extract
from macq.trace import Fluent, TraceList, State, Action, PlanningObject
from macq.generate.pddl import VanillaSampling
from macq.observation.identity_observation import IdentityObservation

base = Path(__file__).parent
pddls_dir_path = Path(str((base / f"pddls").resolve()))
orig_domains_dir = Path(str((pddls_dir_path / f"orig_domains").resolve()))
gen_probs_dir = Path(str((pddls_dir_path / f"gen_probs").resolve()))
learned_dom1_path = Path(str((pddls_dir_path / f"learned_dom1").resolve()))
learned_dom2_path = Path(str((pddls_dir_path / f"learned_dom2").resolve()))
tester1_dir_path = Path(str((pddls_dir_path / f"tester1").resolve()))
tester2_dir_path = Path(str((pddls_dir_path / f"tester2").resolve()))
temp_path = Path(str((pddls_dir_path / f"temp").resolve()))

dirs = {tester1_dir_path, tester2_dir_path, learned_dom1_path, learned_dom2_path,
        temp_path, gen_probs_dir, orig_domains_dir, pddls_dir_path}


def get_fluent(name: str, objs: list[str]):
    objects = [PlanningObject(o.split()[0], o.split()[1])
               for o in objs]
    return Fluent(name, objects)


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


def calculate_recall(tp: float = 0, fn: float = 0) -> float:
    """test the precision of the learned model
    recall = tp/(tp+fn)
    where tp is: action's "act_o",and a sequence of act_l_i can be done from state s_j to achieve state s_j+1 for
     both original and learned domain.
    fn is: action "act"  can be done from state s_j to achieve goal state s_j+1 in the
    original domain but no action achieve state s_j+1 in the learned domain.
    Args:
        fn (float): false negative in the domain object dict
        tp (float): true positive in the domain object dict
    """
    return tp / (tp + fn) if tp + fn > 0 else 1


def calculate_precision(fp: float = 0, tp: float = 0) -> float:
    """test the precision of the learned model
    precision = tp/(tp+fp)
    where tp is: action a_i can be done from state s_j for both original and learned domain.
    fp is: action "act"  can be done from state s_j to achieve goal state s_j+1 for the
    learned domain but no action achieve state s_j+1 for the original domain.
    Args:
        fp (float): false positive in the domain object dict
        tp (float): true positive in the domain object dict
    """
    return tp / (tp + fp) if tp + fp > 0 else 1


class ModelName(enum.Enum):
    model1 = "model1"
    model2 = "model2"
    orig = "orig"


class Stats:
    all_stats: dict[ModelName, dict[str, int]] = {ModelName.model1: {"fp": 0, "tp": 0, "fn": 0},
                                                  ModelName.model2: {"fp": 0, "tp": 0, "fn": 0},
                                                  ModelName.orig: {"fp": 0, "tp": 0, "fn": 0}}

    def update_stats(self, stats_to_add: dict[ModelName, dict[str, int]], ):
        for name, diction in stats_to_add.items():
            for stat, val in diction.items():
                if stat in {"fp", "fn", "tp"}:
                    self.all_stats[name][stat] += diction[stat]

    def __str__(self):
        out = f""
        for name, diction in self.all_stats.items():
            out += (f"{name.name} stats:\n"
                    f"precision= {calculate_precision(fp=diction['fp'], tp=diction['tp'])}\n"
                    f"recall= {calculate_recall(fn=diction['fp'], tp=diction['tp'])}\n\n")
        return out

    def __repr__(self):
        return self.__str__()

    def print_stats(self):
        print(self.__repr__())


def generate_problems():
    for i, k in enumerate(set(problem2_info.keys()).difference({key for key in problem2_info.keys()
                                                                if not problem2_info[key]["run?"]})):
        # generate problem and write it to directory
        print(f"generating problem {i} for domain {k}")
        prob_file_path = str(
            (gen_probs_dir / f"prob{i}.pddl").resolve())
        problem2_info[k]["exc"](prob_file_path)

        # write domain to directory
        path = str((base / f"pddl-generators-main/{k}/domain.pddl").resolve())
        new_path = str((orig_domains_dir / f"dom{i}.pddl").resolve())
        read_f = Path(path).open("r")
        to_write_file = Path(new_path).open("w+")
        to_write_file.write(read_f.read())


def make_post_state(pre_state: State, action: Action) \
        -> dict[Fluent, bool]:
    post_state: dict[Fluent, bool] = pre_state.fluents
    for f in action.add:
        post_state[f] = True
    for f in action.delete:
        post_state[f] = False

    return post_state


def count_valid_transitions(random_sampler: VanillaSampling, traces: TraceList, dom: str, runtime_dir=pddls_dir_path) \
        -> dict[str, int]:
    """
            :param random_sampler: test sampler instance
            :param traces: the trace list of some domain plan for the generated problem
            :param dom: another domain absolute path, we check if the domain can apply actions to achieve each state
            :param runtime_dir: the directory to save the new probs for each step
            :return: a dict with tp as amount of transitions in the trace that
             can be made by one or more transitions in dom
             and "fn" as the amount of transitions that couldn't be made in dom
            """

    tp_counter: int = 0
    fn_counter: int = 0
    pddl_dom_name = str((runtime_dir / f"domain.pddl").resolve())
    pddl_prob_name = str((runtime_dir / f"prob.pddl").resolve())
    for trace in traces:
        for act in trace.actions:
            for sas in trace.get_sas_triples(action=act):
                init: set[Fluent] = set()
                goal: set[Fluent] = set()
                if isinstance(sas.pre_state, State):
                    init.update(f for f in sas.pre_state.fluents.keys() if sas.pre_state.fluents[f])
                if isinstance(sas.post_state, State):
                    goal.update(f for f in sas.post_state.fluents.keys() if sas.post_state.fluents[f])
                random_sampler.pddl_dom = dom
                random_sampler.change_goal(goal_fluents=goal, new_prob=pddl_prob_name, new_domain=pddl_dom_name)
                random_sampler.change_init(init_fluents=init, new_prob=pddl_prob_name, new_domain=pddl_dom_name)
                new_trace = random_sampler.generate_single_trace_from_plan(
                    random_sampler.generate_plan())
                if len(new_trace.actions) > 0:
                    tp_counter += 1
                else:
                    fn_counter += 1

    return {"tp": tp_counter, "fn": fn_counter}


def compare_models(ext1: extract.modes,
                   ext2: extract.modes,
                   ext1_args: dict[str, Any],
                   ext2_args: dict[str, Any],
                   token=IdentityObservation,
                   model_stats: Stats = Stats()) -> Stats:
    # define processes for multiprocessing
    def run_ext1(trace_lis: TraceList):
        print(f"starting ext1 for the {index} time")
        extract.Extract(obs_tracelist=obs_trace_list,
                        mode=ext1,
                        kwargs=ext1_args).to_pddl(domain_name=dom_name,
                                                  domain_filename=str(
                                                      (learned_dom1_path.absolute() / f"dom{index}").resolve()))

        model1_sampler: VanillaSampling = VanillaSampling(observe_pres_effs=True,
                                                          observe_static_fluents=True,
                                                          dom=str(
                                                              (learned_dom1_path.absolute() / f"dom{index}").resolve()),
                                                          prob=prob_filename,
                                                          plan_len=10,
                                                          num_traces=20)

        trace_lis.append(t for t in model1_sampler.generate_traces().traces)

    def run_ext2(trace_lis: TraceList):
        print(f"starting ext2 for the {index} time")
        extract.Extract(obs_tracelist=obs_trace_list,
                        mode=ext2,
                        kwargs=ext2_args).to_pddl(domain_name=dom_name,
                                                  domain_filename=str(
                                                      (learned_dom2_path.absolute() / f"dom{index}").resolve()))

        model2_sampler: VanillaSampling = VanillaSampling(observe_pres_effs=True,
                                                          observe_static_fluents=True,
                                                          dom=str(
                                                              (learned_dom2_path.absolute() / f"dom{index}").resolve()),
                                                          prob=prob_filename,
                                                          plan_len=10,
                                                          num_traces=20)
        trace_lis.append(t for t in model2_sampler.generate_traces().traces)

    def init_gen_trace_origin_sampler():
        orig_sampler: VanillaSampling = VanillaSampling(observe_pres_effs=True,
                                                        observe_static_fluents=True,
                                                        dom=domain_filename,
                                                        prob=prob_filename,
                                                        plan_len=1,
                                                        num_traces=20)
        orig_traces.append(t for t in orig_sampler.generate_traces().traces)

    for index in range(len(os.listdir(gen_probs_dir))):
        domain_filename = str(
            (orig_domains_dir / f"dom{index}.pddl").resolve())
        prob_filename = str(
            (gen_probs_dir / f"prob{index}.pddl").resolve())

        # define trace lists fo late comparison
        orig_traces: TraceList = TraceList()
        model1_traces: TraceList = TraceList()
        model2_traces: TraceList = TraceList()

        # run origin sampler initialization to create trace_lists
        o_process: multiprocessing.Process = multiprocessing.Process(target=init_gen_trace_origin_sampler)
        o_process.start()
        test_sampler: VanillaSampling = VanillaSampling(observe_pres_effs=True,
                                                        observe_static_fluents=True,
                                                        dom=domain_filename,
                                                        prob=prob_filename,
                                                        plan_len=50,
                                                        num_traces=1)
        learn_trace_list: TraceList = test_sampler.generate_traces()
        obs_trace_list = learn_trace_list.tokenize(Token=token)
        dom_name = test_sampler.problem.domain_name

        p1_ext = multiprocessing.Process(target=run_ext1, args=(model1_traces,))
        p2_ext = multiprocessing.Process(target=run_ext2, args=(model2_traces,))
        p1_ext.start()
        p2_ext.start()
        p1_ext.join(timeout=300)
        p2_ext.join(timeout=300)

        # compare each domain to the original domain to conclude fn, tp
        test_results = count_valid_transitions(random_sampler=test_sampler,
                                               traces=orig_traces,
                                               dom=str(
                                                   (learned_dom1_path / f"dom{index}").resolve()))
        model_stats.update_stats({ModelName.model1: {"fn": test_results["fn"], "tp": test_results["tp"]}})

        test_results = count_valid_transitions(random_sampler=test_sampler,
                                               traces=orig_traces,
                                               dom=str(
                                                   (learned_dom2_path / f"dom{index}").resolve()))
        model_stats.update_stats({ModelName.model2: {"fn": test_results["fn"], "tp": test_results["tp"]}})

        # compare the original domain to the learned domains to conclude fp, tn
        test_results = count_valid_transitions(random_sampler=test_sampler,
                                               traces=model1_traces,
                                               dom=str(
                                                   (orig_domains_dir / f"dom{index}").resolve()))
        model_stats.update_stats({ModelName.model1: {"fp": test_results["fn"], "tp": test_results["tp"]}})

        test_results = count_valid_transitions(random_sampler=test_sampler,
                                               traces=model2_traces,
                                               dom=str(
                                                   (orig_domains_dir / f"dom{index}").resolve()))
        model_stats.update_stats({ModelName.model2: {"fp": test_results["fn"], "tp": test_results["tp"]}})
        return model_stats


def run_tests(ext_mode1: extract.modes,
              ext_mode2: extract.modes,
              ext1_kwargs: dict[str, Any] = None,
              ext2_kwargs: dict[str, Any] = None,
              token=IdentityObservation):
    clean_dirs()
    generate_problems()
    stats: Stats = Stats()
    compare_models(ext1=ext_mode1,
                   ext2=ext_mode2,
                   ext1_args=ext1_kwargs,
                   ext2_args=ext2_kwargs,
                   token=token)

    stats.print_stats()
