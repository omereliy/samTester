(define (problem depotprob3002) (:domain depot)
(:objects
	depot0 - depot
	distributor0 distributor1 - distributor
	truck0 truck1 - truck
	pallet0 pallet1 pallet2 pallet3 pallet4 pallet5 - pallet
	crate0 crate1 crate2 crate3 crate4 crate5 crate6 crate7 crate8 crate9 crate10 crate11 crate12 crate13 - crate
	hoist0 hoist1 hoist2 - hoist)
(:init
	(at pallet0 depot0)
	(clear crate10)
	(at pallet1 distributor0)
	(clear crate9)
	(at pallet2 distributor1)
	(clear crate7)
	(at pallet3 distributor0)
	(clear crate12)
	(at pallet4 depot0)
	(clear crate11)
	(at pallet5 distributor1)
	(clear crate13)
	(at truck0 depot0)
	(at truck1 distributor1)
	(at hoist0 depot0)
	(available hoist0)
	(at hoist1 distributor0)
	(available hoist1)
	(at hoist2 distributor1)
	(available hoist2)
	(at crate0 distributor0)
	(on crate0 pallet3)
	(at crate1 distributor1)
	(on crate1 pallet5)
	(at crate2 depot0)
	(on crate2 pallet4)
	(at crate3 distributor0)
	(on crate3 pallet1)
	(at crate4 depot0)
	(on crate4 crate2)
	(at crate5 distributor0)
	(on crate5 crate3)
	(at crate6 distributor0)
	(on crate6 crate5)
	(at crate7 distributor1)
	(on crate7 pallet2)
	(at crate8 depot0)
	(on crate8 pallet0)
	(at crate9 distributor0)
	(on crate9 crate6)
	(at crate10 depot0)
	(on crate10 crate8)
	(at crate11 depot0)
	(on crate11 crate4)
	(at crate12 distributor0)
	(on crate12 crate0)
	(at crate13 distributor1)
	(on crate13 crate1)
)

(:goal (and
		(on crate0 pallet3)
		(on crate2 pallet1)
		(on crate3 crate6)
		(on crate4 pallet2)
		(on crate6 pallet4)
		(on crate7 crate4)
		(on crate8 crate2)
		(on crate9 pallet0)
		(on crate10 crate8)
		(on crate11 pallet5)
		(on crate12 crate9)
		(on crate13 crate10)
	)
))
