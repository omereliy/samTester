import os
import subprocess
import traceback
from collections import defaultdict
from pathlib import Path
import os

from macq.extract import modes, Extract
from macq.extract.slaf import SLAF
from macq.extract.amdn import AMDN
from macq.extract.observer import Observer
from macq.extract.arms import ARMS
from macq.trace.disordered_parallel_actions_observation_lists import (
    default_theta_vec,
    num_parameters_feature,
    objects_shared_feature,
)


# from macq import extract
from macq.trace import Fluent, TraceList, State, PlanningObject, DisorderedParallelActionsObservationLists
from macq.generate.pddl import Generator, RandomGoalSampling
from macq.observation.identity_observation import IdentityObservation
from macq.observation.atomic_partial_observation import AtomicPartialObservation
from macq.observation.noisy_partial_disordered_parallel_observation import NoisyPartialDisorderedParallelObservation
from macq.observation.partial_observation import PartialObservation
from macq.observation import ActionObservation

base = Path(__file__).parent
untyped_doms_dir = Path(str((base / f"untyped_doms").resolve()))
satelite_typed_dir = Path(str((base / f"sat_typed").resolve()))
sat_typed_dom = Path(str((base / f"IPC3/Tests2/Satellite/Strips/stripsSat.pddl").resolve()))
satelite_dir = Path(str((base / f"satelite").resolve()))
sat_utype_dom: Path = Path(str((untyped_doms_dir / f"stripsSat_untyped.pddl").resolve()))

def get_learn_probs_dir(dom_dir_path: Path) -> Path:
    return Path(str((dom_dir_path / f"learn_probs").resolve()))

def get_test_probs_dir(dom_dir_path: Path) -> Path:
    return Path(str((dom_dir_path / f"test_probs").resolve()))


def generate_id_obs_tlist(dom_dir_path: Path, pddl_dir_path: Path):
    learn_probs_dir = get_learn_probs_dir(dom_dir_path)
    files = os.listdir(learn_probs_dir)
    trace_list = TraceList()
    for file in files:
        file_path = os.path.join(learn_probs_dir, file)
        generator = Generator(dom=pddl_dir_path.__str__(),
                              prob=file_path,
                              observe_static_fluents=True,
                              observe_pres_effs=True)

        try:
            print(f"Generating plan for {file}")
            plan = generator.generate_plan()
            tr = generator.generate_single_trace_from_plan(plan)
            trace_list.append(tr)
        except Exception as e:
            continue
    # return trace_list.tokenize(Token=IdentityObservation)
    return trace_list.tokenize(Token=ActionObservation)



def generate_obs_tlist(dom_dir_path: Path, pddl_dir_path: Path, token, break_after_1=False, amdn=False):
    learn_probs_dir = get_learn_probs_dir(dom_dir_path)
    files = os.listdir(learn_probs_dir)
    trace_list = TraceList()
    for file in files:
        file_path = os.path.join(learn_probs_dir, file)
        generator = Generator(dom=pddl_dir_path.__str__(),
                              prob=file_path,
                              observe_static_fluents=True,
                              observe_pres_effs=True)

        try:
            print(f"Generating plan for {file}")
            plan = generator.generate_plan()
            tr = generator.generate_single_trace_from_plan(plan)
            if len(plan.actions) >0:
                trace_list.append(tr)
                if break_after_1:
                    break

        except Exception as e:
            continue
    if amdn:
        features = [objects_shared_feature, num_parameters_feature]
        learned_theta = default_theta_vec(2)
        trace_list.tokenize(
                            Token=NoisyPartialDisorderedParallelObservation,
                            ObsLists=DisorderedParallelActionsObservationLists,
                            features=features,
                            learned_theta=learned_theta,
                            percent_missing=0,
                            percent_noisy=0,
                            replace=True,)
    return trace_list.tokenize(Token=token)

def run_slaf():
    obs_trace_list = generate_obs_tlist(dom_dir_path=satelite_dir,
                                        pddl_dir_path=sat_utype_dom,
                                        token=AtomicPartialObservation,
                                        break_after_1=True)

    model = SLAF(o_list=obs_trace_list, debug=True)
    model.to_pddl(domain_name="satellite",
                  problem_name="satellite_prob",
                  problem_filename=(satelite_dir / "satelite_prob_slaf.pddl").__str__(),
                  domain_filename=(satelite_dir / "satelite_learned_dom_slaf.pddl").__str__()
                  )

def run_observer():
    obs_trace_list = generate_obs_tlist(dom_dir_path=satelite_dir,
                                        pddl_dir_path=sat_utype_dom,
                                        token=IdentityObservation)

    model = Observer(obs_tracelist=obs_trace_list)
    model.to_pddl(domain_name="satellite",
                  problem_name="satellite_prob",
                  problem_filename=(satelite_dir / "satelite_prob_observer.pddl").__str__(),
                  domain_filename=(satelite_dir / "satelite_learned_dom_observer.pddl").__str__()
                  )

def run_amdn():
    obs_trace_list = generate_obs_tlist(dom_dir_path=satelite_dir,
                                        pddl_dir_path=sat_utype_dom,
                                        token=NoisyPartialDisorderedParallelObservation,
                                        amdn=True)

    model = AMDN(obs_tracelist=obs_trace_list)
    model.to_pddl(domain_name="satellite",
                  problem_name="satellite_prob",
                  problem_filename=(satelite_dir / "satelite_prob_amdn.pddl").__str__(),
                  domain_filename=(satelite_dir / "satelite_learned_dom_amdn.pddl").__str__()
                  )

# def test_amdn():
#     # exit out to the base macq folder so we can get to /tests
#     # use blocksworld (NOTE: no actions are parallel in this domain)
#     dom =sat_utype_dom.__str__()
#     prob = (get_learn_probs_dir(satelite_dir) / "pfile1.pddl").__str__()
#
#     traces = RandomGoalSampling(
#         prob=prob,
#         dom=dom,
#         observe_pres_effs=True,
#         num_traces=1,
#         steps_deep=4,
#         subset_size_perc=0.1,
#         enforced_hill_climbing_sampling=True,
#     ).traces
#
#     # use the simple truck domain for debugging
#     # traces = test_tracelist()
#
#     # use the simple door domain for debugging
#     # dom = str((base / "pddl_testing_files/door_dom.pddl").resolve())
#     # prob = str((base / "pddl_testing_files/door_prob.pddl").resolve())
#     # traces = TraceList([TraceFromGoal(dom=dom, prob=prob, observe_pres_effs=True).trace])
#
#     traces.print(wrap="y")
#
#     features = [objects_shared_feature, num_parameters_feature]
#     learned_theta = default_theta_vec(2)
#     observations = traces.tokenize(
#         Token=NoisyPartialDisorderedParallelObservation,
#         ObsLists=DisorderedParallelActionsObservationLists,
#         features=features,
#         learned_theta=learned_theta,
#         percent_missing=0,
#         percent_noisy=0,
#         replace=True,
#     )
#     model = Extract(observations, modes.AMDN, debug=False, occ_threshold=2)
#     assert model
#
#     model_sat_dom = (satelite_dir / "satelite_learned_dom_amdn.pddl").__str__()
#     model_sat_prob = (get_learn_probs_dir(satelite_dir) / "pfile1.pddl").__str__()
#
#     model.to_pddl(
#         "model_blocks_dom", "model_blocks_prob", model_sat_dom, model_sat_prob
#     )

def run_arms():
    obs_trace_list = generate_obs_tlist(dom_dir_path=satelite_dir,
                                        pddl_dir_path=sat_utype_dom,
                                        token=PartialObservation)

    model = ARMS(obs_tracelist=obs_trace_list, debug=False, upper_bound=2)
    model.to_pddl(domain_name="satellite",
                  problem_name="satellite_prob",
                  problem_filename=(satelite_dir / "satelite_prob_arms.pddl").__str__(),
                  domain_filename=(satelite_dir / "satelite_learned_dom_arms.pddl").__str__()
                  )

if __name__ == '__main__':
    # run_slaf()
    # run_observer()

    # genrator = Generator(dom=(satelite_dir / "satelite_learned_dom_observer.pddl").__str__(),
    #                      prob=(get_learn_probs_dir(satelite_dir) / "pfile1.pddl").__str__(),
    #                      observe_static_fluents=True,
    #                      observe_pres_effs=True)

    run_arms()
    genrator = Generator(dom=(satelite_dir / "satelite_learned_dom_arms.pddl").__str__(),
                         prob=(get_learn_probs_dir(satelite_dir) / "pfile1.pddl").__str__(),
                         observe_static_fluents=False,
                         observe_pres_effs=True)
    plan = genrator.generate_plan()
    acts = plan.actions.__str__()
    print(acts)