import logging
import signal
import threading
from pathlib import Path
import os

import colorlog
from macq import extract
from macq.generate import Plan
from macq.trace import TraceList
from macq.generate.pddl import Generator
from macq.observation.identity_observation import IdentityObservation
import concurrent.futures



to_terminate = threading.Event()

# Configure the logger
def setup_logger(name, log_file, level=logging.DEBUG):
    """Function to set up as many loggers as you want"""
    # open(log_file, "w").close()
    logger = logging.getLogger(name)
    logger.setLevel(level)

    # Create handlers
    file_handl = logging.FileHandler(log_file)
    file_handl.setLevel(level)

    # Create standard formatter for file
    file_formatter = logging.Formatter('%(asctime)s - %(name)s - %(levelname)s - %(message)s')

    # Add formatters to handlers
    file_handl.setFormatter(file_formatter)

    # Add handlers to the logger
    logger.addHandler(file_handl)
    return logger


# Main logger
main_logger = logging.getLogger(__name__)
main_logger.handlers.clear()
main_logger.setLevel(logging.DEBUG)

# open('logs//main_debug.log', "w").close()
file_handler = logging.FileHandler('logs//main_debug.log')
file_handler.setLevel(logging.DEBUG)
file_formatter1 = logging.Formatter('%(asctime)s - %(name)s - %(levelname)s - %(message)s')
file_handler.setFormatter(file_formatter1)
main_logger.addHandler(file_handler)

console_handler = logging.StreamHandler()
console_handler.setLevel(logging.DEBUG)
console_formatter = colorlog.ColoredFormatter(
    "%(log_color)s%(name)s - %(levelname)s - %(message)s",
    log_colors={
        'DEBUG': 'cyan',
        'INFO': 'green',
        'WARNING': 'yellow',
        'ERROR': 'red',
        'CRITICAL': 'bold_red',
    }
)
console_handler.setFormatter(console_formatter)
main_logger.addHandler(console_handler)

# Specific loggers
depot_logger = setup_logger('DepotLogger', 'logs//depot_debug.log')
rover_logger = setup_logger('RoverLogger', 'logs//rover_debug.log')
satellite_logger = setup_logger('SatelliteLogger', 'logs//satellite_debug.log')
driver_log_logger = setup_logger('DriverLogger', 'logs//driver_debug.log')

# base dir
base = Path(__file__).parent

# ====================================domains============================
depot_dir = Path(str((base / "dgen").resolve()))
driver_log_dir = Path(str((base / "driver_log").resolve()))
rover_dir = Path(str((base / "rover").resolve()))
satelite_dir = Path(str((base / "satelite").resolve()))
dom_dirs = [depot_dir, driver_log_dir, rover_dir, satelite_dir]

untyped_doms_dir = Path(str((base / "untyped_doms").resolve()))

# ======================original doms.pddl dom=================================
depots_utype_dom = str((untyped_doms_dir / "Depots_untyped.pddl").resolve())
driverlog_utype_dom = str((untyped_doms_dir / "driver_log_untyped.pddl").resolve())
rover_utype_dom = str((untyped_doms_dir / "StripsRover_untyped.pddl").resolve())
sat_utype_dom = str((untyped_doms_dir / "stripsSat_untyped.pddl").resolve())

satelite_typed_dir = str((base / "sat_typed").resolve())
sat_typed_dom = str((base / "IPC3/Tests2/Satellite/Strips/stripsSat.pddl").resolve())

# ======================learned doms.pddl dom=================================
learned_depots_dom_path = str((depot_dir / "depots_learned_dom.pddl").resolve())
learned_rover_dom_path = str((rover_dir / "rover_learned_dom.pddl").resolve())
learned_satelite_dom_path = str((satelite_dir / "satellite_learned_dom.pddl").resolve())
learned_drive_log_path = str((driver_log_dir / "drive_log_learned.pddl").resolve())


# ======================get test_probs for dom=================================
def get_learn_probs_dir(dom_dir_path):
    return Path(str((dom_dir_path / "learn_probs").resolve()))


def get_test_probs_dir(dom_dir_path):
    return Path(str((dom_dir_path / "test_probs").resolve()))


# ===================generate observations ===============================
def generate_obs_tlist(dom_dir_path, pddl_dir_path, problems_size, logger):
    learn_probs_dir = get_learn_probs_dir(dom_dir_path)
    files = os.listdir(learn_probs_dir)
    files.sort()
    trace_list = TraceList()
    action_sum = 0
    for i, file in enumerate(files):
        if i == problems_size:
            break
        file_path = os.path.join(learn_probs_dir, file)
        generator = Generator(dom=pddl_dir_path,
                              prob=file_path,
                              observe_static_fluents=True,
                              observe_pres_effs=True)
        try:
            logger.debug(f"Generating plan for {file}")
            plan = generator.generate_plan()
            if len(plan.actions) > 0:
                tr = generator.generate_single_trace_from_plan(plan)
                for action in tr.actions:
                    for index, obj in enumerate(action.obj_params):
                        if any(obj == other_obj for j, other_obj in enumerate(action.obj_params) if j != index):
                            logger.debug(f"object {obj.__str__()} is provided mor than once as an argument, signature is:\n"
                                         f"{action.details()}")

                trace_list.append(tr)
                action_sum += len(plan.actions)
                logger.debug(f"Added {len(plan.actions)} actions from {file} to trace list")
        except Exception as err:
            logger.error(f"Generation of plan for {file} failed: {err}")
    logger.debug(f"dom {dom_dir_path.name} num_of actions {action_sum}, num of problems {problems_size}")
    return trace_list.tokenize(Token=IdentityObservation), action_sum


# ==================extract models for each problem=======================

original_res_dict = dict()

def make_sol_dict(dir_path, dom_name, domain_pddl_path, logger):
    logger.debug(f"making sol dict for domain {dom_name}")
    original_res_dict[f"{dom_name}"] = dict()
    test_probs_dir_path = get_test_probs_dir(dir_path)
    prob0 = str((test_probs_dir_path / "pfile0.pddl").resolve())
    orig_solver = Generator(dom=domain_pddl_path,
                            prob=prob0.__str__(),
                            observe_static_fluents=True,
                            observe_pres_effs=True)
    files = os.listdir(test_probs_dir_path)
    files.sort()
    for prob_filename in files:
        prob_path = os.path.join(test_probs_dir_path, prob_filename)
        orig_solver.pddl_prob = prob_path
        if to_terminate.is_set():
            break
        if prob_filename.startswith("pfile0"):
            continue

        try:
            logger.debug(f"original domain sol for prob {prob_filename}")
            plan = orig_solver.generate_plan()
            if plan != -1 and len(plan.actions) > 0:
                original_res_dict[dom_name][prob_filename] = True
                logger.debug(f"Generation of original domain plan for {prob_filename} was successful")
            else:
                original_res_dict[dom_name][prob_filename] = False
                logger.debug(f"no plan, Generation of original domain plan for {prob_filename}")
        except Exception as err:
            logger.error(f"Generation of original domain plan for {prob_filename} error:\n{err}")
            original_res_dict[dom_name][prob_filename] = False
            continue

def extract_and_compare(dir_path: Path, domain_pddl_path: str, learned_dom_path: str, logger: logging.Logger, dom_name: str):
    # first, solve all problems for the original domain

    make_sol_dict(dir_path, dom_name, domain_pddl_path, logger)

    for num_probs in [1, 2, 3, 5, 7, 9]:
        if to_terminate.is_set():
            break
        try:
            logger.debug(f"{dom_name}, Extracting all problems for {num_probs}")
            obs_trace_list, action_num = generate_obs_tlist(dom_dir_path=dir_path,
                                                            pddl_dir_path=domain_pddl_path,
                                                            problems_size=num_probs,
                                                            logger=logger)
            model = extract.ESAM(obs_trace_list=obs_trace_list, debug=False, untyped=True)
            model.to_pddl(domain_name=dom_name,
                          problem_name=f"{dom_name}_prob",
                          problem_filename=str((dir_path / "some_prob.pddl").resolve()),
                          domain_filename=learned_dom_path)

            res = compare(learned_dom_pddl_path=learned_dom_path,
                          test_probs_dir_path=get_test_probs_dir(dir_path),
                          logger=logger,
                          dom_name=dom_name)


            logger.debug(f"results of learning domain {dom_name}:"
                         f"problem_count= {num_probs}\n"
                         f"transition_count= {action_num}"
                         f" results= {res}\n")
            main_logger.info(f"results of learning domain {dom_name}:"
                             f"problem_count= {num_probs}\n"
                             f"transition_count= {action_num}"
                             f" results= {res}\n")

        except Exception as error:
            logger.error(f"error when trying to compare\extract domains for domain {domain_pddl_path}:"
                         f" problems_count= {num_probs}\n"
                         f" error {error}\n")
            continue


def run_test():
    with concurrent.futures.ThreadPoolExecutor(max_workers=4) as executor:
        futures = [
        executor.submit(extract_and_compare,
                        depot_dir,
                        depots_utype_dom,
                        learned_depots_dom_path,
                        depot_logger,
                        "depot"
                        ),

        # executor.submit(extract_and_compare,
        #                 satelite_dir,
        #                 sat_utype_dom,
        #                 learned_satelite_dom_path,
        #                 satellite_logger,
        #                 "satellite"
        #                 ),

        # executor.submit(extract_and_compare,
        #                 rover_dir,
        #                 rover_utype_dom,
        #                 learned_rover_dom_path,
        #                 rover_logger,
        #                 "rover"),
        # executor.submit(extract_and_compare,
        #                 driver_log_dir,
        #                 driverlog_utype_dom,
        #                 learned_drive_log_path,
        #                 driver_log_logger,
        #                 "driverlog")
        ]

        try:
            concurrent.futures.wait(futures, timeout=None, return_when=concurrent.futures.ALL_COMPLETED)
        except KeyboardInterrupt:
            main_logger.info("KeyboardInterrupt received. Setting stop event.")
            to_terminate.set()
            executor.shutdown(wait=False, cancel_futures=True)
            main_logger.info("Executor shutdown triggered.")

        if to_terminate.is_set():
            executor.shutdown(wait=False, cancel_futures=True)
            main_logger.info("Executor shutdown triggered.")

            # Check if any future raised an exception
        for future in futures:
            try:
                future.result()  # to raise exceptions if any occurred
            except Exception as err:
                main_logger.error(f"An error occurred: {err}")


def generate_plan(solver, prob_filename, learned_or_original, logger: logging.Logger):
    try:
        logger.debug(f"Generating {learned_or_original} domain plan for {prob_filename}")
        return solver.generate_plan()
    except Exception as err:
        logger.error(f"Generation of {learned_or_original} domain plan for {prob_filename} error:\n{err}")
        return -1


def compare(learned_dom_pddl_path, test_probs_dir_path, logger, dom_name):

    files = os.listdir(test_probs_dir_path)
    tp = 0
    tn = 0
    fp = 0
    fn = 0

    learned_dom_solver = Generator(dom=learned_dom_pddl_path,
                                   prob=str((test_probs_dir_path / "pfile0.pddl").resolve()),
                                   observe_static_fluents=True,
                                   observe_pres_effs=True)

    files.sort()
    for prob_filename in files:
        if to_terminate.is_set():
            break
        if prob_filename.startswith("pfile0"):
            continue

        prob_path = os.path.join(test_probs_dir_path, prob_filename)
        learned_dom_solver.pddl_prob = prob_path

        learned_dom_plan = generate_plan(learned_dom_solver, prob_filename, "learned", logger)
        try:
            learned_dom_found_plan = isinstance(learned_dom_plan, Plan) and len(learned_dom_plan.actions) > 0
        except Exception as err:
            learned_dom_found_plan = False
            logger.exception(f"Error when trying to generate domain plan for {prob_filename}:\n{err}")
        original_dom_found_plan = original_res_dict[dom_name][f"{prob_filename}"]

        if learned_dom_found_plan and original_dom_found_plan:
            tp+=1
        elif learned_dom_found_plan and (not original_dom_found_plan):
            fp+=1
            logger.warning(f"FP in problem {prob_filename} for domain {dom_name}\n"
                           f"TODO: make sure to find what is the problem!!!\n"
                           f"action taken from learned domain are:\n"
                           f"{learned_dom_plan.actions if isinstance(learned_dom_plan, Plan) else -1}")

        elif original_dom_found_plan and (not learned_dom_found_plan):
            fn+=1
        elif (not original_dom_found_plan) and (not learned_dom_found_plan):
            tn+=1

    return {'tp': tp, 'tn': tn, 'fp': fp, 'fn': fn}


def signal_handler(sig, frame):
    main_logger.info("Termination signal received. Shutting down...")
    to_terminate.set()

if __name__ == '__main__':
    signal.signal(signal.SIGINT, signal_handler)
    signal.signal(signal.SIGTERM, signal_handler)
    main_logger.debug("starting....")
    try:
        run_test()
    except Exception as e:
        main_logger.error(f"An error occurred: {e}")
    finally:
        main_logger.info("Program terminated.")


