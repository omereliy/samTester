(define (problem depotprob2468) (:domain depot)
(:objects
	depot0 - depot
	distributor0 distributor1 - distributor
	truck0 truck1 - truck
	pallet0 pallet1 pallet2 - pallet
	crate0 crate1 crate2 crate3 crate4 crate5 crate6 crate7 crate8 crate9 crate10 crate11 - crate
	hoist0 hoist1 hoist2 - hoist)
(:init
	(at pallet0 depot0)
	(clear crate11)
	(at pallet1 distributor0)
	(clear crate8)
	(at pallet2 distributor1)
	(clear crate10)
	(at truck0 distributor0)
	(at truck1 distributor1)
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
	(at crate3 distributor0)
	(on crate3 crate2)
	(at crate4 depot0)
	(on crate4 pallet0)
	(at crate5 depot0)
	(on crate5 crate4)
	(at crate6 distributor1)
	(on crate6 pallet2)
	(at crate7 distributor0)
	(on crate7 crate3)
	(at crate8 distributor0)
	(on crate8 crate7)
	(at crate9 depot0)
	(on crate9 crate5)
	(at crate10 distributor1)
	(on crate10 crate6)
	(at crate11 depot0)
	(on crate11 crate9)
)

(:goal (and
		(on crate0 pallet1)
		(on crate1 crate3)
		(on crate2 pallet2)
		(on crate3 crate0)
		(on crate4 crate7)
		(on crate5 crate6)
		(on crate6 pallet0)
		(on crate7 crate5)
		(on crate8 crate10)
		(on crate10 crate1)
		(on crate11 crate4)
	)
))
