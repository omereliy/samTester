(define (problem depotprob2136) (:domain depot)
(:objects
	depot0 - depot
	distributor0 distributor1 - distributor
	truck0 truck1 - truck
	pallet0 pallet1 pallet2 - pallet
	crate0 crate1 crate2 crate3 crate4 - crate
	hoist0 hoist1 hoist2 - hoist)
(:init
	(at pallet0 depot0)
	(clear crate3)
	(at pallet1 distributor0)
	(clear crate4)
	(at pallet2 distributor1)
	(clear pallet2)
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
	(at crate2 distributor0)
	(on crate2 crate1)
	(at crate3 depot0)
	(on crate3 pallet0)
	(at crate4 distributor0)
	(on crate4 crate2)
)

(:goal (and
		(on crate0 crate3)
		(on crate1 crate4)
		(on crate2 pallet1)
		(on crate3 pallet0)
		(on crate4 pallet2)
	)
))
