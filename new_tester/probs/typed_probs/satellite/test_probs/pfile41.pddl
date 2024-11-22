(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	instrument1 - instrument
	instrument2 - instrument
	infrared0 - mode
	spectrograph1 - mode
	image2 - mode
	star2 - direction
	groundstation0 - direction
	groundstation1 - direction
	planet3 - direction
	star4 - direction
	star5 - direction
	star6 - direction
	star7 - direction
	star8 - direction
	planet9 - direction
)
(:init
	(supports instrument0 image2)
	(supports instrument0 spectrograph1)
	(calibration_target instrument0 groundstation0)
	(supports instrument1 spectrograph1)
	(supports instrument1 infrared0)
	(supports instrument1 image2)
	(calibration_target instrument1 groundstation0)
	(supports instrument2 image2)
	(calibration_target instrument2 groundstation1)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 star6)
)
(:goal (and
	(have_image planet3 spectrograph1)
	(have_image star4 infrared0)
	(have_image star6 infrared0)
	(have_image star7 infrared0)
	(have_image star8 infrared0)
))

)
