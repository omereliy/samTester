import pytest
from pathlib import Path
from macq.extract import Extract, modes
from macq.observation import *
from macq.generate.pddl import VanillaSampling
from macq.trace import *
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
        (base / "slaf_learned_satellite_dom.pddl").resolve()
    )
    model_sat_prob = str(
        (base / "slaf_sat_prob.pddl").resolve()
    )
    observations = traces.tokenize(
        AtomicPartialObservation,
        percent_missing=0.0,
    )
    traces.print(view='color')
    model = Extract(observations, modes.SLAF, sample=True)
    print(model.details())

    model.to_pddl(
        "satellite", "satellite_prob", model_sat_dom, model_sat_prob
    )
