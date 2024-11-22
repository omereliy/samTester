(define (problem depotprob6246) (:domain depot)
(:objects
	depot0 depot1 depot2 - depot
	distributor0 distributor1 distributor2 - distributor
	truck0 truck1 - truck
	pallet0 pallet1 pallet2 pallet3 pallet4 pallet5 pallet6 pallet7 pallet8 pallet9 - pallet
	crate0 crate1 crate2 crate3 crate4 crate5 crate6 crate7 crate8 crate9 crate10 crate11 crate12 crate13 - crate
	hoist0 hoist1 hoist2 hoist3 hoist4 hoist5 - hoist)
(:init
	(at pallet0 depot0)
	(clear pallet0)
	(at pallet1 depot1)
	(clear crate8)
	(at pallet2 depot2)
	(clear crate11)
	(at pallet3 distributor0)
	(clear crate12)
	(at pallet4 distributor1)
	(clear pallet4)
	(at pallet5 distributor2)
	(clear pallet5)
	(at pallet6 distributor1)
	(clear crate5)
	(at pallet7 depot1)
	(clear pallet7)
	(at pallet8 distributor2)
	(clear crate13)
	(at pallet9 depot1)
	(clear crate9)
	(at truck0 distributor2)
	(at truck1 depot0)
	(at hoist0 depot0)
	(available hoist0)
	(at hoist1 depot1)
	(available hoist1)
	(at hoist2 depot2)
	(available hoist2)
	(at hoist3 distributor0)
	(available hoist3)
	(at hoist4 distributor1)
	(available hoist4)
	(at hoist5 distributor2)
	(available hoist5)
	(at crate0 distributor0)
	(on crate0 pallet3)
	(at crate1 depot1)
	(on crate1 pallet9)
	(at crate2 distributor0)
	(on crate2 crate0)
	(at crate3 depot1)
	(on crate3 pallet1)
	(at crate4 distributor2)
	(on crate4 pallet8)
	(at crate5 distributor1)
	(on crate5 pallet6)
	(at crate6 depot1)
	(on crate6 crate1)
	(at crate7 depot1)
	(on crate7 crate6)
	(at crate8 depot1)
	(on crate8 crate3)
	(at crate9 depot1)
	(on crate9 crate7)
	(at crate10 depot2)
	(on crate10 pallet2)
	(at crate11 depot2)
	(on crate11 crate10)
	(at crate12 distributor0)
	(on crate12 crate2)
	(at crate13 distributor2)
	(on crate13 crate4)
)

(:goal (and
		(on crate0 crate2)
		(on crate2 pallet4)
		(on crate3 pallet3)
		(on crate5 pallet0)
		(on crate6 crate10)
		(on crate7 pallet6)
		(on crate8 pallet1)
		(on crate9 pallet5)
		(on crate10 pallet2)
		(on crate12 crate13)
		(on crate13 pallet9)
	)
))
