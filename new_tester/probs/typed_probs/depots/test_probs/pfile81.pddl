(define (problem depotprob4149) (:domain depot)
(:objects
	depot0 - depot
	distributor0 distributor1 - distributor
	truck0 truck1 - truck
	pallet0 pallet1 pallet2 - pallet
	crate0 crate1 crate2 crate3 crate4 crate5 crate6 - crate
	hoist0 hoist1 hoist2 - hoist)
(:init
	(at pallet0 depot0)
	(clear crate6)
	(at pallet1 distributor0)
	(clear crate4)
	(at pallet2 distributor1)
	(clear crate3)
	(at truck0 distributor1)
	(at truck1 distributor0)
	(at hoist0 depot0)
	(available hoist0)
	(at hoist1 distributor0)
	(available hoist1)
	(at hoist2 distributor1)
	(available hoist2)
	(at crate0 distributor0)
	(on crate0 pallet1)
	(at crate1 distributor0)
	(on crate1 crate0)
	(at crate2 distributor1)
	(on crate2 pallet2)
	(at crate3 distributor1)
	(on crate3 crate2)
	(at crate4 distributor0)
	(on crate4 crate1)
	(at crate5 depot0)
	(on crate5 pallet0)
	(at crate6 depot0)
	(on crate6 crate5)
)

(:goal (and
		(on crate0 crate6)
		(on crate1 crate0)
		(on crate3 pallet1)
		(on crate5 pallet0)
		(on crate6 crate5)
	)
))
