import tester
from tester import run_tests
from macq.extract.extract import modes
from macq.generate.pddl.fd_random_walk import FDRandomWalkSampling

def run_tester():
    tester.clean_dirs()
    run_tests(ext_mode1=modes.ESAM,
              ext_mode2=modes.OBSERVER,
              ext1_kwargs={},
              ext2_kwargs={})

def randomized_sampler_example():
    # sampler = FDRandomWalkSampling(problem_id=1481, observe_static_fluents=True,)
    pass

if __name__ == '__main__':
    run_tester()


