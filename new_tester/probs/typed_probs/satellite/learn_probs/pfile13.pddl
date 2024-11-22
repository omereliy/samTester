(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	image1 - mode
	infrared0 - mode
	thermograph2 - mode
	star0 - direction
	groundstation1 - direction
	groundstation2 - direction
	star3 - direction
	planet4 - direction
	planet5 - direction
	planet6 - direction
	star7 - direction
	planet8 - direction
	star9 - direction
)
(:init
	(supports instrument0 thermograph2)
	(supports instrument0 infrared0)
	(supports instrument0 image1)
	(calibration_target instrument0 groundstation2)
	(on_board instrument0 satellite0)
	(power_avail satellite0)
	(pointing satellite0 planet5)
)
(:goal (and
	(have_image star3 thermograph2)
	(have_image planet4 infrared0)
	(have_image planet5 image1)
	(have_image planet6 image1)
	(have_image star7 infrared0)
	(have_image planet8 image1)
	(have_image star9 infrared0)
))

)
