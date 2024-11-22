(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	instrument1 - instrument
	instrument2 - instrument
	spectrograph1 - mode
	spectrograph0 - mode
	infrared2 - mode
	star0 - direction
	star1 - direction
	star2 - direction
	star3 - direction
	planet4 - direction
	planet5 - direction
	planet6 - direction
	star7 - direction
	star8 - direction
	phenomenon9 - direction
	star10 - direction
	star11 - direction
)
(:init
	(supports instrument0 infrared2)
	(supports instrument0 spectrograph0)
	(calibration_target instrument0 star0)
	(supports instrument1 infrared2)
	(supports instrument1 spectrograph0)
	(calibration_target instrument1 star1)
	(supports instrument2 infrared2)
	(calibration_target instrument2 star2)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 planet6)
)
(:goal (and
	(have_image star3 spectrograph0)
	(have_image planet4 spectrograph0)
	(have_image planet6 spectrograph0)
	(have_image star7 spectrograph0)
	(have_image star8 infrared2)
	(have_image phenomenon9 spectrograph0)
	(have_image star11 spectrograph0)
))

)
