(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	instrument1 - instrument
	infrared0 - mode
	image1 - mode
	spectrograph2 - mode
	groundstation0 - direction
	groundstation1 - direction
	groundstation2 - direction
	phenomenon3 - direction
	phenomenon4 - direction
	star5 - direction
	planet6 - direction
	phenomenon7 - direction
	star8 - direction
	phenomenon9 - direction
	planet10 - direction
	phenomenon11 - direction
)
(:init
	(supports instrument0 image1)
	(supports instrument0 spectrograph2)
	(supports instrument0 infrared0)
	(calibration_target instrument0 groundstation1)
	(supports instrument1 spectrograph2)
	(calibration_target instrument1 groundstation2)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 phenomenon11)
)
(:goal (and
	(pointing satellite0 phenomenon11)
	(have_image phenomenon3 spectrograph2)
	(have_image phenomenon4 infrared0)
	(have_image star5 infrared0)
	(have_image planet6 spectrograph2)
	(have_image phenomenon7 spectrograph2)
	(have_image star8 image1)
	(have_image phenomenon9 spectrograph2)
	(have_image planet10 infrared0)
	(have_image phenomenon11 spectrograph2)
))

)
