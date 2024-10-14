import argparse
from typing import MutableMapping, MutableSequence
from macq.extract.learned_sort import Sort

from macq.generate import Plan
from macq.trace import TraceList
from macq.generate.pddl import Generator
from macq.observation.identity_observation import IdentityObservation
import os

# {extraction_technique} {plans_dir} {num_of_plans} {type_dict}
# python script.py -ext "technique_name" -p_dir "/path/to/plans" -nop "5" -td "{'type1': True, 'type2': False}"

# Create argument parser
parser = argparse.ArgumentParser(description="Argument parser for action model learning")

# Add arguments
parser.add_argument("-ext", "--extraction-technique", type=str, choices=["sam", "esam"], required=True,
                    help="The extraction technique (string).")
parser.add_argument("-p_dir", "--plans-dir", type=str, required=True,
                    help="Path to the directory containing plans.")
parser.add_argument("-nop", "--number-of-plans", type=int, required=True,
                    help="The number of plans (integer).")
parser.add_argument("-td", "--type-dict", type=MutableMapping[str, str], required=True,
                    help="Dictionary where keys are strings and values are booleans.")
parser.add_argument("-sorts", "--sorts", type=MutableSequence[Sort], required=True,
                    help="Dictionary where keys are strings and values are booleans.")
parser.add_argument("-a2s", "--action_to_sorts", type=MutableMapping[str, list[str]], required=True,
                    help="Dictionary where keys are strings and values are booleans.")
parser.add_argument("-f2s", "--fluents_to_sorts", type=MutableMapping[str, list[str]], required=True,
                    help="Dictionary where keys are strings and values are booleans.")




# Parse the arguments
args = parser.parse_args()

# Access parsed arguments
print(f"Extraction technique: {args.extraction_technique}")
print(f"Plans directory: {args.plans_dir}")
print(f"Number of plans: {args.number_of_plans}")
print(f"Type dictionary: {args.type_dict}")


ext = args.extraction_technique
plans_dir = args.plans_dir
num_of_plans = args.number_of_plans
type_dict = args.type_dict
# make additional dicts





