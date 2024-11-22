(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	instrument1 - instrument
	image0 - mode
	thermograph2 - mode
	image1 - mode
	star1 - direction
	groundstation0 - direction
	star2 - direction
	star3 - direction
	star4 - direction
	planet5 - direction
	star6 - direction
	phenomenon7 - direction
)
(:init
	(supports instrument0 thermograph2)
	(supports instrument0 image1)
	(supports instrument0 image0)
	(calibration_target instrument0 groundstation0)
	(supports instrument1 image1)
	(supports instrument1 thermograph2)
	(calibration_target instrument1 star2)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 star3)
)
(:goal (and
	(have_image star3 image0)
	(have_image star6 thermograph2)
	(have_image phenomenon7 thermograph2)
))

)
