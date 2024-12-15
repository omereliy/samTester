import json
import logging
from pathlib import Path
from dom_sorts_info import steps_for_learn
from pddl_plus_parser.models import Predicate
from pddl_plus_parser.lisp_parsers import DomainParser
base = Path(__file__).parent.parent
esam_doms_dir = base / 'esam_learned_doms'
sam_doms_dir = base / 'sam_learned_doms'
dom_names = ['rover', 'depots', 'satellite']


def esam_comparator():
    print(1)
def sam_comparator():
    doms_results_dict = {'rover': dict(), 'depots': dict(), 'satellite': dict()}
    for dom_name in dom_names:
        dom_dict = doms_results_dict[dom_name]
        original_dom_filename = base / f'{dom_name}_typed' / 'domain.pddl'
        orig_dom_parser = DomainParser(original_dom_filename)
        orig_dom = orig_dom_parser.parse_domain()
        for length in steps_for_learn:
            # logger = logging.Logger(name=f'predicates_sum_compare_{dom_name}_{length}')
            # logger.setLevel(logging.DEBUG)
            # file_handler = logging.FileHandler(str(base / 'predicates_sum_compare' / f'{logger.name}.log'))
            learned_dom_filename = sam_doms_dir / dom_name /  f'{dom_name}_{length}.pddl'
            learned_dom_parser = DomainParser(learned_dom_filename, enable_disjunctions=True)
            learned_dom = learned_dom_parser.parse_domain()
            dom_dict[length] = dict()
            for action_name , action in orig_dom.actions.items():
                #get original dom action preconditions and effects
                orig_action_preconds = {p.untyped_representation for _, p in action.preconditions
                                        if isinstance(p, Predicate)}
                orig_action_add_effects = {p.untyped_representation for p in action.discrete_effects if p.is_positive}
                orig_action_del_effects = {p.untyped_representation for p in action.discrete_effects if not p.is_positive}


                learned_action = learned_dom.actions[action_name] if action_name in learned_dom.actions else None

                dom_dict[length][action_name] = dict()
                if learned_action is None:
                    dom_dict[length][action_name]['p+'] = 0
                    dom_dict[length][action_name]['p-'] = 0
                    dom_dict[length][action_name]['e+'] = 0
                    dom_dict[length][action_name]['e-'] = 0
                    dom_dict[length][action_name]['a-'] = 1
                else:
                    # get learned dom action preconditions and effects
                    learned_action_preconds = {p.untyped_representation for _, p in learned_action.preconditions
                                               if isinstance(p, Predicate)}
                    learned_action_add_effects = {p.untyped_representation for p in learned_action.discrete_effects if p.is_positive}
                    learned_action_del_effects = {p.untyped_representation for p in learned_action.discrete_effects if not p.is_positive}

                    #compare
                    dom_dict[length][action_name]['p+'] = len(learned_action_preconds.difference(orig_action_preconds))
                    dom_dict[length][action_name]['p-'] = len(orig_action_preconds.difference(learned_action_preconds))
                    dom_dict[length][action_name]['e+'] = (len(learned_action_add_effects.difference(orig_action_add_effects))
                                                           + len(learned_action_del_effects.difference(orig_action_del_effects)))
                    dom_dict[length][action_name]['e-'] = (len(orig_action_del_effects.difference(orig_action_del_effects))
                                                           + len(orig_action_del_effects.difference(learned_action_del_effects)))
                    dom_dict[length][action_name]['a-'] = 0
                print (f'{dom_name}_{length}')
                print (str(dom_dict[length][action_name]))
                print('==================================\n')
    script_dir = Path(__file__).parent
    output_file = script_dir / 'doms_results.json'
    with open(output_file, 'w') as f:
        json.dump(doms_results_dict, f, indent=4)

    return doms_results_dict


def calculate_stats():
    json_filename = Path(__file__).parent / 'doms_results.json'
    action_results = dict()

    # Load the JSON data
    with open(json_filename, 'r') as f:
        action_results = json.load(f)

    # Initialize results dictionary
    res = dict()
    dom_names = action_results.keys()

    for dom_name in dom_names:
        res[dom_name] = dict()
        for length in action_results[dom_name]:

            res[dom_name][length] = dict()
            res[dom_name][length]['p+'] = sum(
                action_results[dom_name][length][action]['p+']
                for action in action_results[dom_name][length]
            )
            res[dom_name][length]['p-'] = sum(
                action_results[dom_name][length][action]['p-']
                for action in action_results[dom_name][length]
            )
            res[dom_name][length]['e+'] = sum(
                action_results[dom_name][length][action]['e+']
                for action in action_results[dom_name][length]
            )
            res[dom_name][length]['e-'] = sum(
                action_results[dom_name][length][action]['e-']
                for action in action_results[dom_name][length]
            )
            res[dom_name][length]['a-'] = sum(
                action_results[dom_name][length][action]['a-']
                for action in action_results[dom_name][length]
            )

    # Print the results
    print(json.dumps(res, indent=4))
    output_file = Path(__file__).parent / 'doms_sum.json'
    with open(output_file, 'w') as f:
        json.dump(res, f, indent=4)
    return res



if __name__ == '__main__':
    sam_comparator()
    calculate_stats()
