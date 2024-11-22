(define (problem depotprob1849) (:domain depot)
(:objects
	depot0 - depot
	distributor0 distributor1 - distributor
	truck0 truck1 - truck
	pallet0 pallet1 pallet2 pallet3 pallet4 pallet5 - pallet
	crate0 crate1 crate2 crate3 crate4 crate5 - crate
	hoist0 hoist1 hoist2 - hoist)
(:init
	(at pallet0 depot0)
	(clear pallet0)
	(at pallet1 distributor0)
	(clear crate3)
	(at pallet2 distributor1)
	(clear crate1)
	(at pallet3 distributor1)
	(clear crate5)
	(at pallet4 distributor1)
	(clear crate4)
	(at pallet5 distributor1)
	(clear pallet5)
	(at truck0 distributor0)
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
	(on crate2 pallet3)
	(at crate3 distributor0)
	(on crate3 crate0)
	(at crate4 distributor1)
	(on crate4 pallet4)
	(at crate5 distributor1)
	(on crate5 crate2)
)

(:goal (and
		(on crate1 crate2)
		(on crate2 pallet1)
		(on crate3 pallet4)
		(on crate4 pallet5)
		(on crate5 crate4)
	)
))
