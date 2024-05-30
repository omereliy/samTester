import tester
from tester import run_tests
from macq.extract.extract import modes

if __name__ == '__main__':
    tester.clean_dirs()
    run_tests(ext_mode1=modes.ESAM,
              ext_mode2=modes.OBSERVER,
              ext1_kwargs={},
              ext2_kwargs={})


