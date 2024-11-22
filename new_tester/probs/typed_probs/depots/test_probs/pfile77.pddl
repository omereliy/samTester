(define (problem depotprob5646) (:domain depot)
(:objects
	depot0 - depot
	distributor0 distributor1 - distributor
	truck0 truck1 - truck
	pallet0 pallet1 pallet2 - pallet
	crate0 crate1 crate2 crate3 crate4 crate5 crate6 crate7 crate8 crate9 crate10 crate11 crate12 crate13 - crate
	hoist0 hoist1 hoist2 - hoist)
(:init
	(at pallet0 depot0)
	(clear crate12)
	(at pallet1 distributor0)
	(clear crate13)
	(at pallet2 distributor1)
	(clear crate11)
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
	(at crate1 depot0)
	(on crate1 pallet0)
	(at crate2 distributor0)
	(on crate2 crate0)
	(at crate3 distributor0)
	(on crate3 crate2)
	(at crate4 distributor0)
	(on crate4 crate3)
	(at crate5 distributor0)
	(on crate5 crate4)
	(at crate6 distributor0)
	(on crate6 crate5)
	(at crate7 depot0)
	(on crate7 crate1)
	(at crate8 distributor0)
	(on crate8 crate6)
	(at crate9 distributor1)
	(on crate9 pallet2)
	(at crate10 depot0)
	(on crate10 crate7)
	(at crate11 distributor1)
	(on crate11 crate9)
	(at crate12 depot0)
	(on crate12 crate10)
	(at crate13 distributor0)
	(on crate13 crate8)
)

(:goal (and
		(on crate0 crate7)
		(on crate1 crate8)
		(on crate2 pallet0)
		(on crate3 crate12)
		(on crate4 crate5)
		(on crate5 crate6)
		(on crate6 crate1)
		(on crate7 crate11)
		(on crate8 crate13)
		(on crate9 crate0)
		(on crate10 crate9)
		(on crate11 crate2)
		(on crate12 pallet2)
		(on crate13 pallet1)
	)
))
