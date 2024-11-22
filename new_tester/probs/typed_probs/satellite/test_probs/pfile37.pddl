(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	instrument1 - instrument
	instrument2 - instrument
	thermograph1 - mode
	infrared2 - mode
	thermograph0 - mode
	star0 - direction
	groundstation2 - direction
	groundstation1 - direction
	planet3 - direction
	star4 - direction
	planet5 - direction
	planet6 - direction
	phenomenon7 - direction
	planet8 - direction
	phenomenon9 - direction
	star10 - direction
	phenomenon11 - direction
)
(:init
	(supports instrument0 infrared2)
	(calibration_target instrument0 groundstation2)
	(supports instrument1 thermograph0)
	(supports instrument1 infrared2)
	(supports instrument1 thermograph1)
	(calibration_target instrument1 groundstation1)
	(supports instrument2 thermograph0)
	(calibration_target instrument2 groundstation1)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 star10)
)
(:goal (and
	(pointing satellite0 phenomenon11)
	(have_image planet3 thermograph0)
	(have_image star4 infrared2)
	(have_image planet5 infrared2)
	(have_image planet6 thermograph1)
	(have_image phenomenon7 infrared2)
	(have_image planet8 thermograph1)
	(have_image phenomenon9 thermograph1)
	(have_image star10 thermograph1)
))

)
