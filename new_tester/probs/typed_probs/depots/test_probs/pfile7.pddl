(define (problem depotprob5222) (:domain depot)
(:objects
	depot0 - depot
	distributor0 distributor1 - distributor
	truck0 truck1 - truck
	pallet0 pallet1 pallet2 - pallet
	crate0 crate1 crate2 crate3 crate4 crate5 crate6 crate7 crate8 crate9 crate10 - crate
	hoist0 hoist1 hoist2 - hoist)
(:init
	(at pallet0 depot0)
	(clear crate9)
	(at pallet1 distributor0)
	(clear crate10)
	(at pallet2 distributor1)
	(clear crate6)
	(at truck0 depot0)
	(at truck1 depot0)
	(at hoist0 depot0)
	(available hoist0)
	(at hoist1 distributor0)
	(available hoist1)
	(at hoist2 distributor1)
	(available hoist2)
	(at crate0 distributor1)
	(on crate0 pallet2)
	(at crate1 distributor1)
	(on crate1 crate0)
	(at crate2 depot0)
	(on crate2 pallet0)
	(at crate3 depot0)
	(on crate3 crate2)
	(at crate4 distributor1)
	(on crate4 crate1)
	(at crate5 distributor0)
	(on crate5 pallet1)
	(at crate6 distributor1)
	(on crate6 crate4)
	(at crate7 depot0)
	(on crate7 crate3)
	(at crate8 distributor0)
	(on crate8 crate5)
	(at crate9 depot0)
	(on crate9 crate7)
	(at crate10 distributor0)
	(on crate10 crate8)
)

(:goal (and
		(on crate0 pallet2)
		(on crate1 crate0)
		(on crate2 crate7)
		(on crate4 crate1)
		(on crate5 crate2)
		(on crate6 crate10)
		(on crate7 pallet1)
		(on crate9 crate6)
		(on crate10 pallet0)
	)
))
