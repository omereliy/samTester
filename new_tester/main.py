import logging
import signal
import threading
from pathlib import Path
import os
from macq import extract
from macq.generate import Plan
from macq.trace import TraceList
from macq.generate.pddl import Generator
from macq.observation.identity_observation import IdentityObservation
import concurrent.futures

to_terminate = threading.Event()

# Configure the logger
logger = logging.getLogger(__name__)
logger.setLevel(logging.DEBUG)  # Set logger level to DEBUG

# Create handlers
console_handler = logging.StreamHandler()
file_handler = logging.FileHandler('app.log')

# Set log levels for handlers
console_handler.setLevel(logging.DEBUG)
file_handler.setLevel(logging.DEBUG)

# Create formatters and add them to handlers
console_formatter = logging.Formatter('%(name)s - %(levelname)s - %(message)s')
file_formatter = logging.Formatter('%(asctime)s - %(name)s - %(levelname)s - %(message)s')
console_handler.setFormatter(console_formatter)
file_handler.setFormatter(file_formatter)

# Add handlers to the logger
logger.addHandler(console_handler)
logger.addHandler(file_handler)

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
driverlog_utype_dom = str((untyped_doms_dir / "driverlog_untyped.pddl").resolve())
rover_utype_dom = str((untyped_doms_dir / "StripsRover_untyped.pddl").resolve())
sat_utype_dom = str((untyped_doms_dir / "stripsSat_untyped.pddl").resolve())

satelite_typed_dir = str((base / "sat_typed").resolve())
sat_typed_dom = str((base / "IPC3/Tests2/Satellite/Strips/stripsSat.pddl").resolve())

# ======================learned doms.pddl dom=================================
learned_depots_dom_path = str((depot_dir / "depots_learned_dom.pddl").resolve())
learned_rover_dom_path = str((rover_dir / "rover_learned_dom.pddl").resolve())
learned_satelite_dom_path = str((satelite_dir / "satellite_learned_dom.pddl").resolve())


# ======================get test_probs for dom=================================
def get_learn_probs_dir(dom_dir_path):
    return Path(str((dom_dir_path / "learn_probs").resolve()))


def get_test_probs_dir(dom_dir_path):
    return Path(str((dom_dir_path / "test_probs").resolve()))


# ===================generate observations ===============================
def generate_obs_tlist(dom_dir_path, pddl_dir_path, problems_size=1):
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
        except Exception as e:
            logger.error(f"Generation of plan for {file} failed: {e}")
    logger.debug(f"dom {dom_dir_path.name} num_of actions {action_sum}, num of problems {problems_size}")
    return trace_list.tokenize(Token=IdentityObservation)


# ==================extract models for each problem=======================
def run_test():
    for num_probs in [2, 3, 4, 5, 6]:
        if to_terminate.is_set():
            break
        # ===== depots extraction ====
        try:
            logger.debug(f"Depots, Extracting all problems for {num_probs}")
            obs_trace_list = generate_obs_tlist(dom_dir_path=depot_dir,
                                                pddl_dir_path=depots_utype_dom,
                                                problems_size=num_probs)
            model = extract.ESAM(obs_trace_list=obs_trace_list, debug=False, untyped=True)
            model.to_pddl(domain_name="depot",
                          problem_name="depots_prob",
                          problem_filename=str((depot_dir / "depots_prob.pddl").resolve()),
                          domain_filename=learned_depots_dom_path)
            res = compare(orig_dom_pddl_path=depots_utype_dom,
                          learned_dom_pddl_path=learned_depots_dom_path,
                          test_probs_dir_path=get_test_probs_dir(depot_dir))
            logger.debug(f"results of learning from {num_probs} for domain depots are : {res}\n")
        except Exception as e:
            logger.error(f"Depots Extracting problems for {num_probs} failed error:\n{e}")

        # ====rover extraction====
        try:
            logger.debug(f"rover, Extracting all problems for {num_probs}")
            obs_trace_list = generate_obs_tlist(dom_dir_path=rover_dir,
                                                pddl_dir_path=rover_utype_dom,
                                                problems_size=num_probs)
            model = extract.ESAM(obs_trace_list=obs_trace_list, debug=False, untyped=True)
            model.to_pddl(domain_name="rover",
                          problem_name="rover_prob",
                          problem_filename=str((rover_dir / "rover_prob.pddl").resolve()),
                          domain_filename=learned_rover_dom_path)
            res = compare(orig_dom_pddl_path=rover_utype_dom,
                          learned_dom_pddl_path=learned_rover_dom_path,
                          test_probs_dir_path=get_test_probs_dir(rover_dir))
            logger.debug(f"results of learning from {num_probs} for domain rover are : {res}\n")
        except Exception as e:
            logger.error(f" rover, Extracting problems for {num_probs} failed error:\n{e}")

        # ====satelite extraction====
        try:
            logger.debug(f"satellite, Extracting all problems for {num_probs}")
            obs_trace_list = generate_obs_tlist(dom_dir_path=satelite_dir,
                                                pddl_dir_path=sat_utype_dom,
                                                problems_size=num_probs)
            model = extract.ESAM(obs_trace_list=obs_trace_list, debug=False, untyped=True)
            model.to_pddl(domain_name="satellite",
                          problem_name="satellite_prob",
                          problem_filename=str((satelite_dir / "satellite_prob.pddl").resolve()),
                          domain_filename=learned_satelite_dom_path)
            res = compare(orig_dom_pddl_path=sat_utype_dom,
                          learned_dom_pddl_path=learned_satelite_dom_path,
                          test_probs_dir_path=get_test_probs_dir(satelite_dir))
            logger.debug(f"results of learning from {num_probs} for domain satelite are : {res}\n")
        except Exception as e:
            logger.error(f" satellite, Extracting problems for {num_probs} failed error:\n{e}")


def generate_plan(solver, prob_filename, learned_or_original):
    try:
        logger.debug(f"Generating {learned_or_original} domain plan for {prob_filename}")
        return solver.generate_plan()
    except Exception as e:
        logger.error(f"Generation of {learned_or_original} domain plan for {prob_filename} error:\n{e}")
        return -1


def compare(orig_dom_pddl_path, learned_dom_pddl_path, test_probs_dir_path):
    original_dom_solver = Generator(dom=orig_dom_pddl_path,
                                    prob=str((test_probs_dir_path / "pfile1.pddl").resolve()),
                                    observe_static_fluents=True,
                                    observe_pres_effs=True)
    learned_dom_solver = Generator(dom=learned_dom_pddl_path,
                                   prob=str((test_probs_dir_path / "pfile1.pddl").resolve()),
                                   observe_static_fluents=True,
                                   observe_pres_effs=True)
    files = os.listdir(test_probs_dir_path)
    tp = 0
    tn = 0
    fp = 0
    fn = 0

    for prob_filename in files:
        if to_terminate.is_set():
            break

        prob_path = os.path.join(test_probs_dir_path, prob_filename)
        original_dom_solver.pddl_prob = prob_path
        learned_dom_solver.pddl_prob = prob_path

        with concurrent.futures.ThreadPoolExecutor() as executor:
            future_learned = executor.submit(generate_plan, learned_dom_solver, prob_filename, "learned")
            future_original = executor.submit(generate_plan, original_dom_solver, prob_filename, "original")
            learned_dom_plan = future_learned.result()
            original_dom_plan = future_original.result()

        learned_dom_found_plan = isinstance(learned_dom_plan, Plan) and len(learned_dom_plan.actions) > 0
        original_dom_found_plan = original_dom_plan != -1 and len(original_dom_plan.actions) > 0

        if learned_dom_found_plan and original_dom_found_plan:
            tp+=1
        elif learned_dom_found_plan and (not original_dom_found_plan):
            fp+=1
        elif original_dom_found_plan and (not learned_dom_found_plan):
            fn+=1
        elif (not original_dom_found_plan) and (not learned_dom_found_plan):
            tn+=1

    return {'tp': tp, 'tn': tn, 'fp': fp, 'fn': fn}


def signal_handler(sig, frame):
    logger.info("Termination signal received. Shutting down...")
    to_terminate.set()

if __name__ == '__main__':
    signal.signal(signal.SIGINT, signal_handler)
    signal.signal(signal.SIGTERM, signal_handler)
    logger.debug("starting....")
    try:
        run_test()
    except Exception as e:
        logger.error(f"An error occurred: {e}")
    finally:
        logger.info("Program terminated.")



