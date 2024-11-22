(define (problem depotprob3532) (:domain depot)
(:objects
	depot0 - depot
	distributor0 distributor1 - distributor
	truck0 truck1 - truck
	pallet0 pallet1 pallet2 - pallet
	crate0 crate1 crate2 crate3 crate4 crate5 crate6 - crate
	hoist0 hoist1 hoist2 - hoist)
(:init
	(at pallet0 depot0)
	(clear crate2)
	(at pallet1 distributor0)
	(clear crate6)
	(at pallet2 distributor1)
	(clear crate5)
	(at truck0 depot0)
	(at truck1 distributor0)
	(at hoist0 depot0)
	(available hoist0)
	(at hoist1 distributor0)
	(available hoist1)
	(at hoist2 distributor1)
	(available hoist2)
	(at crate0 depot0)
	(on crate0 pallet0)
	(at crate1 distributor0)
	(on crate1 pallet1)
	(at crate2 depot0)
	(on crate2 crate0)
	(at crate3 distributor0)
	(on crate3 crate1)
	(at crate4 distributor0)
	(on crate4 crate3)
	(at crate5 distributor1)
	(on crate5 pallet2)
	(at crate6 distributor0)
	(on crate6 crate4)
)

(:goal (and
		(on crate0 pallet0)
		(on crate1 crate6)
		(on crate2 crate0)
		(on crate3 crate1)
		(on crate4 pallet1)
		(on crate5 crate3)
		(on crate6 pallet2)
	)
))
