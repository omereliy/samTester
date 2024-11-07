import concurrent.futures
import signal
import threading
import enum
from datetime import datetime

from macq import extract
from new_tester.dom_sorts_info import DepotInfo, SatelliteInfo, RoverInfo, sort_files_numerically

from macq.trace import TraceList
from macq.generate.pddl import Generator
from macq.observation.identity_observation import IdentityObservation
import os
from pathlib import Path

base = Path(__file__).parent
to_terminate = threading.Event()
class SamDomNames(enum.Enum):
    SATELLITE = "satellite"
    DEPOTS = "depots"
    ROVER = "rover"


def trim_operations_file(input_file, output_file, actions_to_keep):
    with open(input_file, 'r') as file:
        lines = file.readlines()

    # Get the action lines, excluding the last cost line
    action_lines = [line for line in lines if not line.startswith("; cost")]

    # Keep only the first k lines, and add the cost line
    trimmed_lines = action_lines[:actions_to_keep]

    # Calculate new cost as the number of lines
    new_cost = actions_to_keep

    # Write to the output file
    with open(output_file, 'w') as file:
        for line in trimmed_lines:
            file.write(line)
        file.write(f"; cost = {new_cost} (unit cost)\n")


def get_obs_trace_list(
        plans_dir: str,
        original_domain_dir: str,
        number_of_step: int,
        dom_name: str):

    plans = sort_files_numerically(plans_dir)
    learn_probs = base / 'probs' /'typed_probs' / dom_name / 'learn_probs'
    probs = sort_files_numerically(learn_probs)
    steps_left = number_of_step
    trace_list: TraceList = TraceList()
    stop = False

    for i, plan_file in enumerate(plans):
        plan_path = os.path.join(plans_dir, plans[i])
        prob_path = os.path.join(learn_probs, probs[i])

        if stop:
            break

        planner = Generator(dom=original_domain_dir + '/domain.pddl',
                            prob=prob_path,
                            observe_static_fluents=True,
                            observe_pres_effs=True)

        # plan= planner.generate_plan(from_ipc_file=True, filename=plan_path)
        # plan_trace = planner.generate_single_trace_from_plan(plan)
        # if len(plan.actions) > steps_left:
        #     plan_trace.steps[-1].action = None
        #     stop = True
        #     steps_left -= len(plan.actions)
        #     trace_list.append(plan_trace)
        # else:
        #     steps_left -= len(plan.actions)
        #     trace_list.append(plan_trace)

        lines = []
        with open(plan_path, 'r') as file:
            lines = file.readlines()

        if len(lines)-1 > steps_left:
            trimmed_plan_path = \
                str(base / 'outputs' / 'plans' / dom_name / 'trimmed_learn_plans' /  f'plan_{datetime.now()}{number_of_step}')
            trim_operations_file(plan_path, trimmed_plan_path, steps_left)
            plan = planner.generate_plan(from_ipc_file=True, filename=trimmed_plan_path)
            plan_trace = planner.generate_single_trace_from_plan(plan)
            stop = True
        else:
            plan = planner.generate_plan(from_ipc_file=True, filename=plan_path)
            plan_trace = planner.generate_single_trace_from_plan(plan)


        steps_left -= len(plan.actions)
        trace_list.append(plan_trace)



    return trace_list.tokenize(Token=IdentityObservation)


def extract_dom (dom_name:SamDomNames, number_of_steps: int, typed: bool=True):
    if typed:
        dom_info=SatelliteInfo()
        if dom_name == SamDomNames.SATELLITE:
            dom_info = SatelliteInfo()
        if dom_name == SamDomNames.DEPOTS:
            dom_info = DepotInfo()
        if dom_name == SamDomNames.ROVER:
            dom_info = RoverInfo()
        obs_trace_list = get_obs_trace_list(plans_dir= str(base / 'outputs' / 'plans' / f'{dom_name.value}' / 'learn'),
                                            number_of_step=number_of_steps,
                                            original_domain_dir=str(
                                                base / f'{dom_name.value}_typed'),
                                            dom_name=dom_name.value)

        fluents = obs_trace_list.get_fluents()
        objects: set[str] = {obj.name for flu in fluents for obj in flu.objects}

        if any(iterable is None for iterable in [
            dom_info.fluent_2_sort,
            dom_info.action_2_sort,
            dom_info.sorts,
            dom_info.get_obj_2_type_dict(obj_names=objects)]):
            pass

        else:  # esam call
            learned_dom_filename = base / 'learned_doms' / dom_name.value /f"{dom_name.value}_{number_of_steps}.pddl"
            if to_terminate.is_set():
                return

            try:
                model = extract.ESAM(
                    obs_trace_list=obs_trace_list,
                    obj_to_sort=dom_info.get_obj_2_type_dict(obj_names=objects),
                    sorts=dom_info.sorts,
                    action_2_sort=dom_info.action_2_sort,
                    fluent_types=dom_info.fluent_2_sort)
                model.to_pddl_lifted(domain_name="depot" if dom_name == SamDomNames.DEPOTS else
                dom_name.value,
                                 problem_name=f"{dom_name}_prob",
                                 domain_filename=str(learned_dom_filename),
                                 problem_filename=str(base /'trash'/ f'{dom_name.value}_prob.pddl'))
            except Exception as e:
                raise e

    else:
        pass
        # extract.ESAM(
        #     obs_trace_list=obs_trace_list)


def run():
    steps_for_learn = [10, 20, 40, 60, 80, 100, 120, 150, 200]
    with concurrent.futures.ThreadPoolExecutor(max_workers=5) as executor:
        futures = [
            executor.submit(
                extract_dom,
                dom_name=SamDomNames.ROVER,
                number_of_steps=i,
                typed=True) for i in steps_for_learn]
        try:
            concurrent.futures.wait(futures, timeout=None, return_when=concurrent.futures.ALL_COMPLETED)
        except KeyboardInterrupt:
            print("keyboard interrupt line 101")
            to_terminate.set()
            executor.shutdown(wait=False, cancel_futures=True)
            return

        if to_terminate.is_set():
            print(f"Executor shutdown triggered. line 107")
            return
            # add log
        else:
            # Check if any future raised an exception
            for future in futures:
                try:
                    future.result()  # to raise exceptions if any occurred
                except Exception as err:
                    print(f"An error occurred: {err}")
                    raise err

def signal_handler(sig, frame):
    to_terminate.set()

if __name__ == '__main__':
    start_time = datetime.now()
    signal.signal(signal.SIGINT, signal_handler)
    signal.signal(signal.SIGTERM, signal_handler)
    run()

    delta = datetime.now() - start_time
    print(f"Program terminated. total runtime is {delta}")