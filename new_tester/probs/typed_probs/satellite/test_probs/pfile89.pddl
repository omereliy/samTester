(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	instrument1 - instrument
	spectrograph1 - mode
	thermograph2 - mode
	infrared0 - mode
	groundstation0 - direction
	star2 - direction
	star1 - direction
	phenomenon3 - direction
	star4 - direction
	planet5 - direction
	planet6 - direction
	phenomenon7 - direction
	planet8 - direction
	star9 - direction
	planet10 - direction
)
(:init
	(supports instrument0 spectrograph1)
	(supports instrument0 thermograph2)
	(supports instrument0 infrared0)
	(calibration_target instrument0 star1)
	(supports instrument1 infrared0)
	(supports instrument1 thermograph2)
	(supports instrument1 spectrograph1)
	(calibration_target instrument1 star1)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 planet5)
)
(:goal (and
	(have_image phenomenon3 spectrograph1)
	(have_image star4 infrared0)
	(have_image planet6 thermograph2)
	(have_image phenomenon7 thermograph2)
	(have_image planet8 infrared0)
	(have_image star9 spectrograph1)
))

)
