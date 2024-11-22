(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	instrument1 - instrument
	instrument2 - instrument
	infrared0 - mode
	image2 - mode
	thermograph1 - mode
	groundstation1 - direction
	star2 - direction
	star0 - direction
	phenomenon3 - direction
	phenomenon4 - direction
	planet5 - direction
	planet6 - direction
	planet7 - direction
)
(:init
	(supports instrument0 thermograph1)
	(supports instrument0 infrared0)
	(supports instrument0 image2)
	(calibration_target instrument0 star2)
	(supports instrument1 thermograph1)
	(supports instrument1 image2)
	(supports instrument1 infrared0)
	(calibration_target instrument1 star0)
	(supports instrument2 thermograph1)
	(calibration_target instrument2 star0)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 star0)
)
(:goal (and
	(pointing satellite0 star2)
	(have_image phenomenon4 infrared0)
	(have_image planet5 infrared0)
	(have_image planet7 thermograph1)
))

)
