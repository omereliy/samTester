from pathlib import Path
from macq.extract import Extract, modes
from macq.observation import *
from macq.generate.pddl import VanillaSampling
from macq.trace import *
from macq.trace.disordered_parallel_actions_observation_lists import objects_shared_feature, num_parameters_feature, \
    default_theta_vec
from tests.utils.generators import generate_blocks_traces

if __name__ == "__main__":
    # exit out to the base macq folder so we can get to /tests

    base = Path(__file__).parent
    dom = (base / "stripsSat_untyped.pddl").resolve()
    prob = (base / "pfile.pddl").resolve()
    sampler = VanillaSampling(dom=dom, prob=prob, observe_pres_effs=True, observe_static_fluents=True)  # type: ignore
    plan = sampler.generate_plan()
    traces = TraceList([sampler.generate_single_trace_from_plan(plan)])

    model_sat_dom = str(
        (base / "amdn_learned_satellite_dom.pddl").resolve()
    )
    model_sat_prob = str(
        (base / "amdn_sat_prob.pddl").resolve()
    )
    features = [objects_shared_feature, num_parameters_feature]
    learned_theta = default_theta_vec(2)

    observations = traces.tokenize(
        Token=NoisyPartialDisorderedParallelObservation,
        ObsLists=DisorderedParallelActionsObservationLists,
        features=features,
        learned_theta=learned_theta,
        percent_missing=0,
        percent_noisy=0,
        replace=True,
    )
    model = Extract(observations, modes.AMDN, debug=False, occ_threshold=2)
    traces.print()
    print(model.details())

    model.to_pddl(
        "satellite", "satellite_prob", model_sat_dom, model_sat_prob
    )