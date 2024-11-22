(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	instrument1 - instrument
	thermograph1 - mode
	spectrograph0 - mode
	image2 - mode
	groundstation0 - direction
	star1 - direction
	groundstation2 - direction
	star3 - direction
	phenomenon4 - direction
	planet5 - direction
	planet6 - direction
	star7 - direction
	planet8 - direction
	star9 - direction
	planet10 - direction
	phenomenon11 - direction
)
(:init
	(supports instrument0 spectrograph0)
	(supports instrument0 thermograph1)
	(calibration_target instrument0 groundstation2)
	(supports instrument1 image2)
	(supports instrument1 spectrograph0)
	(supports instrument1 thermograph1)
	(calibration_target instrument1 groundstation2)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 star1)
)
(:goal (and
	(have_image phenomenon4 spectrograph0)
	(have_image planet5 thermograph1)
	(have_image planet6 thermograph1)
	(have_image star7 thermograph1)
	(have_image planet8 spectrograph0)
	(have_image planet10 spectrograph0)
	(have_image phenomenon11 spectrograph0)
))

)
