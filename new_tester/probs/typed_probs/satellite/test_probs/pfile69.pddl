(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	instrument1 - instrument
	thermograph0 - mode
	thermograph2 - mode
	infrared1 - mode
	star0 - direction
	star1 - direction
	star2 - direction
	planet3 - direction
	star4 - direction
	star5 - direction
	phenomenon6 - direction
	star7 - direction
	star8 - direction
	star9 - direction
	phenomenon10 - direction
	planet11 - direction
)
(:init
	(supports instrument0 thermograph0)
	(supports instrument0 infrared1)
	(supports instrument0 thermograph2)
	(calibration_target instrument0 star2)
	(supports instrument1 infrared1)
	(supports instrument1 thermograph2)
	(supports instrument1 thermograph0)
	(calibration_target instrument1 star2)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 star2)
)
(:goal (and
	(have_image planet3 infrared1)
	(have_image star4 infrared1)
	(have_image star5 thermograph0)
	(have_image phenomenon6 thermograph2)
	(have_image star7 infrared1)
	(have_image star8 thermograph0)
	(have_image star9 thermograph0)
	(have_image planet11 infrared1)
))

)
