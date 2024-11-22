(define (problem depotprob4129) (:domain depot)
(:objects
	depot0 - depot
	distributor0 distributor1 - distributor
	truck0 truck1 - truck
	pallet0 pallet1 pallet2 - pallet
	crate0 crate1 crate2 crate3 crate4 crate5 crate6 crate7 crate8 - crate
	hoist0 hoist1 hoist2 - hoist)
(:init
	(at pallet0 depot0)
	(clear crate8)
	(at pallet1 distributor0)
	(clear crate7)
	(at pallet2 distributor1)
	(clear crate4)
	(at truck0 depot0)
	(at truck1 distributor0)
	(at hoist0 depot0)
	(available hoist0)
	(at hoist1 distributor0)
	(available hoist1)
	(at hoist2 distributor1)
	(available hoist2)
	(at crate0 distributor0)
	(on crate0 pallet1)
	(at crate1 distributor1)
	(on crate1 pallet2)
	(at crate2 distributor1)
	(on crate2 crate1)
	(at crate3 distributor1)
	(on crate3 crate2)
	(at crate4 distributor1)
	(on crate4 crate3)
	(at crate5 distributor0)
	(on crate5 crate0)
	(at crate6 distributor0)
	(on crate6 crate5)
	(at crate7 distributor0)
	(on crate7 crate6)
	(at crate8 depot0)
	(on crate8 pallet0)
)

(:goal (and
		(on crate0 pallet0)
		(on crate2 crate3)
		(on crate3 pallet2)
		(on crate5 crate2)
		(on crate7 pallet1)
		(on crate8 crate0)
	)
))
