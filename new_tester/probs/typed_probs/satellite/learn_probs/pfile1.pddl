(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	instrument1 - instrument
	instrument2 - instrument
	image1 - mode
	thermograph0 - mode
	infrared2 - mode
	star1 - direction
	star2 - direction
	star0 - direction
	planet3 - direction
	phenomenon4 - direction
	star5 - direction
	star6 - direction
	planet7 - direction
	planet8 - direction
	planet9 - direction
	planet10 - direction
	planet11 - direction
	phenomenon12 - direction
)
(:init
	(supports instrument0 thermograph0)
	(calibration_target instrument0 star0)
	(supports instrument1 image1)
	(calibration_target instrument1 star0)
	(supports instrument2 infrared2)
	(supports instrument2 thermograph0)
	(calibration_target instrument2 star0)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 planet9)
)
(:goal (and
	(have_image planet3 infrared2)
	(have_image phenomenon4 thermograph0)
	(have_image star5 thermograph0)
	(have_image star6 image1)
	(have_image planet7 thermograph0)
	(have_image planet8 infrared2)
	(have_image planet9 infrared2)
	(have_image planet10 infrared2)
	(have_image planet11 image1)
	(have_image phenomenon12 image1)
))

)
