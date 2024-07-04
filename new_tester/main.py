import logging
import signal
import threading
import colorlog
from pathlib import Path
import os
from macq import extract
from macq.trace import TraceList
from macq.generate.pddl import Generator
from macq.observation.identity_observation import IdentityObservation
import concurrent.futures



# =========================== logger setup ==============================
def setup_logger(name, log_file, level=logging.DEBUG):
    """Function to setup as many loggers as you want"""
    logger = logging.getLogger(name)
    logger.setLevel(level)

    # Create handlers
    file_handler = logging.FileHandler(log_file)
    file_handler.setLevel(level)

    # Create standard formatter for file
    file_formatter = logging.Formatter('%(asctime)s - %(name)s - %(levelname)s - %(message)s')

    # Add formatters to handlers
    file_handler.setFormatter(file_formatter)

    # Add handlers to the logger
    logger.addHandler(file_handler)
    return logger


# Main logger
main_logger = logging.getLogger(__name__)
main_logger.handlers.clear()
main_logger.setLevel(logging.DEBUG)
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



# ========= base dir =====================
base = Path(__file__).parent

# ====================================domains============================
depot_dir = Path(str((base / f"dgen").resolve()))
driver_log_dir = Path(str((base / f"driver_log").resolve()))
rover_dir = Path(str((base / f"rover").resolve()))
satelite_dir = Path(str((base / f"satelite").resolve()))

untyped_doms_dir = Path(str((base / f"untyped_doms").resolve()))

# ======================original doms.pddl dom=================================
depots_utype_dom: str = Path(str((untyped_doms_dir / f"Depots_untyped.pddl").resolve())).__str__()
driverlog_utype_dom: str = Path(str((untyped_doms_dir / f"driverlog_untyped.pddl").resolve())).__str__()
rover_utype_dom: str = Path(str((untyped_doms_dir / f"StripsRover_untyped.pddl").resolve())).__str__()
sat_utype_dom: str = Path(str((untyped_doms_dir / f"stripsSat_untyped.pddl").resolve())).__str__()

satelite_typed_dir = Path(str((base / f"sat_typed").resolve()))
sat_typed_dom = Path(str((base / f"IPC3/Tests2/Satellite/Strips/stripsSat.pddl").resolve())).__str__()


# ======================learned doms.pddl dom=================================

learned_depots_dom_path = (depot_dir / "depots_learned_dom.pddl").__str__()
learned_rover_dom_path = (rover_dir / "rover_learned_dom.pddl").__str__()
learned_satelite_dom_path = (satelite_dir / "satellite_learned_dom.pddl").__str__()
# ======================get test_probs for dom=================================
def get_learn_probs_dir(dom_dir_path: Path) -> Path:
    return Path(str((dom_dir_path / f"learn_probs").resolve()))

def get_test_probs_dir(dom_dir_path: Path) -> Path:
    return Path(str((dom_dir_path / f"test_probs").resolve()))


# ===================generate observations ===============================

def generate_obs_tlist(dom_dir_path, pddl_dir_path, problems_size=1, logger=None):
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
                trace_list.append(tr)
                action_sum += len(plan.actions)
                logger.debug(f"Added {len(plan.actions)} actions from {file} to trace list")
        except Exception as err:
            logger.error(f"Generation of plan for {file} failed: {err}")
            continue
    logger.debug(f"dom {dom_dir_path.name} num_of actions {action_sum}, num of problems {problems_size}")
    return trace_list.tokenize(Token=IdentityObservation)

# ==================extraxt models for each problem=======================
def run_test(r_stop_event):
    def extract_and_compare(domain_name, dom_dir, pddl_path, learned_dom_path, logger):
        try:
            logger.debug(f"{domain_name}, Extracting all problems for {num_probs}")
            obs_trace_list = generate_obs_tlist(dom_dir_path=dom_dir,
                                                pddl_dir_path=pddl_path,
                                                problems_size=num_probs,
                                                logger=logger)

            model = extract.ESAM(obs_trace_list=obs_trace_list, debug=False, untyped=True)
            model.to_pddl(domain_name=domain_name,
                          problem_name=f"{domain_name}_prob",
                          problem_filename=str((dom_dir / f"{domain_name}_prob.pddl").resolve()),
                          domain_filename=learned_dom_path)

            res = compare(orig_dom_pddl_path=pddl_path,
                          learned_dom_pddl_path=learned_dom_path,
                          test_probs_dir_path=get_test_probs_dir(dom_dir),
                          logger=logger)
            logger.debug(f"Results of learning from {num_probs} for domain {domain_name} are: {res}\n")
        except Exception as error:
            logger.error(f"{domain_name} Extracting problems for {num_probs} failed error:\n{error}")

    for num_probs in [2, 3, 4, 5, 6]:
        with concurrent.futures.ThreadPoolExecutor() as executor:
            futures = list()
            futures.append(
                executor.submit(
                    extract_and_compare,
                                "depot",
                                depot_dir,
                                depots_utype_dom,
                                learned_depots_dom_path,
                                depot_logger))
            futures.append(
                executor.submit(extract_and_compare,
                                "rover",
                                rover_dir,
                                rover_utype_dom,
                                learned_rover_dom_path,
                                rover_logger))

            futures.append(
                executor.submit(extract_and_compare,
                                           "satellite",
                                           satelite_dir,
                                           sat_utype_dom,
                                           learned_satelite_dom_path,
                                           satellite_logger))

            # Wait for all futures to complete
            for future in concurrent.futures.as_completed(futures):
                if r_stop_event.is_set():
                    executor.shutdown(wait=False)
                    break
                try:
                    future.result()  # to raise exceptions if any occurred
                except Exception as err:
                    main_logger.error(f"An error occurred: {err}")

def is_generate_plan(solver: Generator, prob_filename: str, learned_or_original: str, logger):
    res = False
    try:
        logger.debug(f"trying to generate a plan for {prob_filename}")
        plan = solver.generate_plan()
        res = True if len(plan.actions) > 0 else False
    except Exception as err:
        logger.error(f"Generation of {learned_or_original} domain plan for {prob_filename} error:\n{err}")
        res =  False
    finally:
        return res
def compare(orig_dom_pddl_path: str, learned_dom_pddl_path: str, test_probs_dir_path: Path, logger):
    original_dom_solver = Generator(dom=orig_dom_pddl_path,
                          prob=str((test_probs_dir_path.parent / f"empty_prob.pddl").resolve()),
                          observe_static_fluents=True,
                          observe_pres_effs=True)
    learned_dom_solver = Generator(dom=learned_dom_pddl_path,
                                    prob=str((test_probs_dir_path.parent / f"empty_prob.pddl").resolve()),
                                    observe_static_fluents=True,
                                    observe_pres_effs=True)
    tp = 0
    tn = 0
    fp = 0
    fn = 0

    files = os.listdir(test_probs_dir_path)
    files.sort()
    for prob_filename in files:
        prob_path = os.path.join(test_probs_dir_path, prob_filename)
        original_dom_solver.pddl_prob = prob_path
        learned_dom_solver.pddl_prob = prob_path


        with concurrent.futures.ThreadPoolExecutor() as executor:
            future_learned = executor.submit(is_generate_plan, learned_dom_solver, prob_filename, "learned", logger)
            future_original = executor.submit(is_generate_plan, original_dom_solver, prob_filename, "original", logger)
            is_learned_dom_plan = future_learned.result()
            is_original_dom_plan = future_original.result()


        if is_learned_dom_plan and is_original_dom_plan:
            tp+=1

        elif is_learned_dom_plan and (not is_original_dom_plan):
            fp+=1

        elif (not is_learned_dom_plan) and (not is_original_dom_plan):
            tn+=1

        elif (not is_learned_dom_plan) and is_original_dom_plan:
            fn+=1

    return {'tp':tp, 'tn':tn, 'fp':fp, 'fn':fn}



def signal_handler(sig, frame):
    main_logger.info("Termination signal received. Shutting down...")
    stop_event.set()

if __name__ == '__main__':

    stop_event = threading.Event()
    signal.signal(signal.SIGINT, signal_handler)
    signal.signal(signal.SIGTERM, signal_handler)
    main_logger.debug("starting....")
    try:
        run_test(stop_event)
    except Exception as e:
        main_logger.error(f"An error occurred: {e}")
    finally:
        main_logger.info("Program terminated.")


