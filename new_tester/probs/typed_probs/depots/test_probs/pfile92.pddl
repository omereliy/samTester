(define (problem depotprob4554) (:domain depot)
(:objects
	depot0 - depot
	distributor0 distributor1 - distributor
	truck0 truck1 - truck
	pallet0 pallet1 pallet2 - pallet
	crate0 crate1 crate2 crate3 crate4 crate5 crate6 crate7 crate8 crate9 crate10 - crate
	hoist0 hoist1 hoist2 - hoist)
(:init
	(at pallet0 depot0)
	(clear crate8)
	(at pallet1 distributor0)
	(clear crate10)
	(at pallet2 distributor1)
	(clear crate9)
	(at truck0 depot0)
	(at truck1 depot0)
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
	(at crate4 distributor0)
	(on crate4 crate3)
	(at crate5 distributor0)
	(on crate5 crate4)
	(at crate6 distributor1)
	(on crate6 pallet2)
	(at crate7 distributor1)
	(on crate7 crate6)
	(at crate8 depot0)
	(on crate8 pallet0)
	(at crate9 distributor1)
	(on crate9 crate7)
	(at crate10 distributor0)
	(on crate10 crate5)
)

(:goal (and
		(on crate0 crate7)
		(on crate1 crate2)
		(on crate2 pallet2)
		(on crate3 crate6)
		(on crate4 crate3)
		(on crate5 crate10)
		(on crate6 pallet0)
		(on crate7 crate9)
		(on crate9 pallet1)
		(on crate10 crate1)
	)
))
