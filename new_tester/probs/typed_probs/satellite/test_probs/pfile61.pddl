(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	instrument1 - instrument
	thermograph2 - mode
	image0 - mode
	infrared1 - mode
	star2 - direction
	groundstation1 - direction
	star0 - direction
	planet3 - direction
	planet4 - direction
	star5 - direction
	planet6 - direction
	planet7 - direction
)
(:init
	(supports instrument0 infrared1)
	(calibration_target instrument0 groundstation1)
	(supports instrument1 infrared1)
	(supports instrument1 image0)
	(calibration_target instrument1 star0)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 groundstation1)
)
(:goal (and
	(pointing satellite0 star0)
	(have_image planet3 image0)
	(have_image planet4 infrared1)
	(have_image planet6 infrared1)
))

)
