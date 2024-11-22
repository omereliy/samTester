(define (problem depotprob6098) (:domain depot)
(:objects
	depot0 depot1 depot2 - depot
	distributor0 distributor1 distributor2 - distributor
	truck0 truck1 - truck
	pallet0 pallet1 pallet2 pallet3 pallet4 pallet5 pallet6 pallet7 pallet8 pallet9 - pallet
	crate0 crate1 crate2 crate3 crate4 crate5 - crate
	hoist0 hoist1 hoist2 hoist3 hoist4 hoist5 - hoist)
(:init
	(at pallet0 depot0)
	(clear crate4)
	(at pallet1 depot1)
	(clear pallet1)
	(at pallet2 depot2)
	(clear pallet2)
	(at pallet3 distributor0)
	(clear crate5)
	(at pallet4 distributor1)
	(clear crate2)
	(at pallet5 distributor2)
	(clear crate3)
	(at pallet6 depot2)
	(clear pallet6)
	(at pallet7 depot2)
	(clear pallet7)
	(at pallet8 depot0)
	(clear crate0)
	(at pallet9 distributor1)
	(clear crate1)
	(at truck0 distributor1)
	(at truck1 depot1)
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
	(at crate0 depot0)
	(on crate0 pallet8)
	(at crate1 distributor1)
	(on crate1 pallet9)
	(at crate2 distributor1)
	(on crate2 pallet4)
	(at crate3 distributor2)
	(on crate3 pallet5)
	(at crate4 depot0)
	(on crate4 pallet0)
	(at crate5 distributor0)
	(on crate5 pallet3)
)

(:goal (and
		(on crate0 pallet0)
		(on crate2 pallet3)
		(on crate3 pallet4)
		(on crate4 pallet2)
		(on crate5 pallet8)
	)
))
