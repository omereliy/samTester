(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	instrument1 - instrument
	image0 - mode
	spectrograph1 - mode
	spectrograph2 - mode
	star1 - direction
	star0 - direction
	star2 - direction
	phenomenon3 - direction
	planet4 - direction
	star5 - direction
	planet6 - direction
	star7 - direction
	planet8 - direction
	star9 - direction
	planet10 - direction
	planet11 - direction
)
(:init
	(supports instrument0 spectrograph1)
	(supports instrument0 spectrograph2)
	(supports instrument0 image0)
	(calibration_target instrument0 star0)
	(supports instrument1 spectrograph2)
	(supports instrument1 spectrograph1)
	(calibration_target instrument1 star2)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 planet4)
)
(:goal (and
	(have_image phenomenon3 image0)
	(have_image planet4 spectrograph1)
	(have_image star5 spectrograph2)
	(have_image planet6 image0)
	(have_image planet8 image0)
	(have_image star9 image0)
	(have_image planet10 spectrograph2)
	(have_image planet11 spectrograph2)
))

)
