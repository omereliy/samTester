(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	instrument1 - instrument
	spectrograph0 - mode
	spectrograph1 - mode
	thermograph2 - mode
	groundstation0 - direction
	groundstation2 - direction
	groundstation1 - direction
	planet3 - direction
	star4 - direction
	star5 - direction
	star6 - direction
	planet7 - direction
	phenomenon8 - direction
	phenomenon9 - direction
	star10 - direction
)
(:init
	(supports instrument0 spectrograph0)
	(supports instrument0 thermograph2)
	(supports instrument0 spectrograph1)
	(calibration_target instrument0 groundstation1)
	(supports instrument1 thermograph2)
	(supports instrument1 spectrograph1)
	(calibration_target instrument1 groundstation1)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 phenomenon8)
)
(:goal (and
	(have_image planet3 spectrograph0)
	(have_image star4 spectrograph1)
	(have_image planet7 spectrograph1)
	(have_image phenomenon8 thermograph2)
	(have_image phenomenon9 thermograph2)
	(have_image star10 spectrograph0)
))

)
