(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	spectrograph2 - mode
	image0 - mode
	spectrograph1 - mode
	star0 - direction
	groundstation1 - direction
	star2 - direction
	phenomenon3 - direction
	star4 - direction
	planet5 - direction
	phenomenon6 - direction
	phenomenon7 - direction
	star8 - direction
	phenomenon9 - direction
	star10 - direction
)
(:init
	(supports instrument0 spectrograph1)
	(supports instrument0 image0)
	(calibration_target instrument0 star2)
	(on_board instrument0 satellite0)
	(power_avail satellite0)
	(pointing satellite0 phenomenon3)
)
(:goal (and
	(have_image planet5 image0)
	(have_image phenomenon7 image0)
	(have_image phenomenon9 spectrograph1)
	(have_image star10 image0)
))

)
