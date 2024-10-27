import enum
from macq import extract
from macq.extract.learned_sort import Sort
from new_tester.dom_sorts_info import DepotInfo, SatelliteInfo, RoverInfo

from macq.trace import TraceList
from macq.generate.pddl import Generator
from macq.observation.identity_observation import IdentityObservation
import os

class SamDomNames(enum.Enum):
    SATELLITE = "satellite"
    DEPOTS = "depots"
    ROVER = "rover"


# # Create argument parser
# parser = argparse.ArgumentParser(description="Argument parser for action model learning")
#
# # Add arguments
# parser.add_argument("-ext", "--extraction-technique", type=str, choices=["sam", "esam"], required=True,
#                     help="The extraction technique (string).")
# parser.add_argument("-p_dir", "--plans-dir", type=str, required=True,
#                     help="Path to the directory containing plans.")
# parser.add_argument("-p_dir", "--plans-dir", type=str, required=True,
#                     help="Path to the directory containing plans.")
# parser.add_argument("-o_dom", "--original_domain-dir", type=str, required=True,
#                     help="Path to the directory containing plans.")
# parser.add_argument("-nop", "--number-of-plans", type=int, required=True,
#                     help="The number of plans (integer).")
# parser.add_argument("-td", "--type-dict", type=MutableMapping[str, str], required=False,
#                     help="Dictionary where keys are strings and values are booleans.")
# parser.add_argument("-sorts", "--sorts", type=MutableSequence[Sort], required=False,
#                     help="Dictionary where keys are strings and values are booleans.")
# parser.add_argument("-a2s", "--action_to_sorts", type=MutableMapping[str, list[str]], required=False,
#                     help="Dictionary where keys are strings and values are booleans.")
# parser.add_argument("-f2s", "--fluents_to_sorts", type=MutableMapping[str, list[str]], required=False,
#                     help="Dictionary where keys are strings and values are booleans.")

def get_obs_trace_list(
        plans_dir: str,
        original_domain_dir: str,
        number_of_step: int):

    plans = os.listdir(plans_dir)
    plans.sort()
    planner = Generator(dom=original_domain_dir,
                        prob=plans[0],
                        observe_static_fluents=True,
                        observe_pres_effs=True)

    steps_left = number_of_step
    trace_list = TraceList()
    stop = False

    for plan_file in plans:
        if not stop:
            plan= planner.generate_plan(from_ipc_file=True, filename=plan_file)
            if plan.actions.__len__() > steps_left:
                plan.actions = plan.actions[:steps_left]
                stop = True
            steps_left -= plan.actions.__len__()
            plan_trace = planner.generate_single_trace_from_plan(plan)
            trace_list.append(plan_trace)


    return trace_list.tokenize(Token=IdentityObservation)


def extract_dom (dom_name:SamDomNames, number_of_steps: int, typed: bool=True):
    if typed:
        dom_info=SatelliteInfo()
        if dom_name == SamDomNames.SATELLITE:
            dom_info = SatelliteInfo
        if dom_name == SamDomNames.DEPOTS:
            dom_info = DepotInfo
        if dom_name == SamDomNames.ROVER:
            dom_info = RoverInfo
        obs_trace_list = get_obs_trace_list(plans_dir=f"new_tester/outputs/plans/{dom_name}/learn_plans",
                                            number_of_step=number_of_steps,
                                            original_domain_dir=f"new_tester/{dom_name}_typed/domain.pddl")
        fluents = obs_trace_list.get_fluents()
        objects: set[str] = {obj.name for flu in fluents for obj in flu.obj_params}

        if any(iterable is None for iterable in [
            dom_info.fluent_2_sort,
            dom_info.action_2_sort,
            dom_info.sorts,
            dom_info.get_obj_2_type_dict(obj_names=objects)]):
            # todo sam call
            pass
        else:  # esam call
            extract.ESAM(
                obs_trace_list=obs_trace_list,
                obj_to_sort=dom_info.get_obj_2_type_dict(obj_names=objects),
                sorts=dom_info.sorts,
                action_to_sorts=dom_info.action_2_sort,
                fluents_types=dom_info.fluent_2_sort
            ).to_pddl_lifted(domain_name=dom_name.name,
                             problem_name=f"{dom_name}_prob",
                             domain_filename=f"{dom_name}_{number_of_steps}",
                             problem_filename=f"{dom_name}_prob")
    else:
        pass
        # extract.ESAM(
        #     obs_trace_list=obs_trace_list)


