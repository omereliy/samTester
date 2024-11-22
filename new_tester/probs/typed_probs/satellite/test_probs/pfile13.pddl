(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	instrument1 - instrument
	instrument2 - instrument
	thermograph0 - mode
	thermograph1 - mode
	infrared2 - mode
	groundstation1 - direction
	groundstation0 - direction
	star2 - direction
	star3 - direction
	phenomenon4 - direction
	phenomenon5 - direction
	star6 - direction
	planet7 - direction
	star8 - direction
	star9 - direction
	planet10 - direction
	planet11 - direction
	star12 - direction
)
(:init
	(supports instrument0 thermograph0)
	(calibration_target instrument0 groundstation0)
	(supports instrument1 thermograph1)
	(supports instrument1 infrared2)
	(calibration_target instrument1 star2)
	(supports instrument2 infrared2)
	(supports instrument2 thermograph1)
	(calibration_target instrument2 star2)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 star12)
)
(:goal (and
	(pointing satellite0 star6)
	(have_image star3 thermograph1)
	(have_image phenomenon4 infrared2)
	(have_image phenomenon5 thermograph0)
	(have_image planet7 infrared2)
	(have_image star8 infrared2)
	(have_image star9 thermograph0)
	(have_image planet10 thermograph0)
	(have_image planet11 thermograph0)
	(have_image star12 thermograph0)
))

)
