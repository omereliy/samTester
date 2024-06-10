import simple_tester
from macq.extract.extract import modes
from macq.generate.pddl.fd_random_walk import FDRandomWalkSampling


if __name__ == '__main__':
    simple_tester.clean_dirs()
    simple_tester.run_tests(extr="esam")

