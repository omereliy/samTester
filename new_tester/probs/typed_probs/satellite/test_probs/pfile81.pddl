(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	image2 - mode
	image0 - mode
	thermograph1 - mode
	star0 - direction
	groundstation1 - direction
	star2 - direction
	star3 - direction
	planet4 - direction
	phenomenon5 - direction
	planet6 - direction
	phenomenon7 - direction
	planet8 - direction
	planet9 - direction
	planet10 - direction
)
(:init
	(supports instrument0 thermograph1)
	(calibration_target instrument0 star2)
	(on_board instrument0 satellite0)
	(power_avail satellite0)
	(pointing satellite0 groundstation1)
)
(:goal (and
	(have_image planet6 thermograph1)
))

)
