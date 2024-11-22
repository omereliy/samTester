(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	instrument1 - instrument
	infrared1 - mode
	image2 - mode
	spectrograph0 - mode
	star1 - direction
	groundstation2 - direction
	groundstation0 - direction
	star3 - direction
	planet4 - direction
	phenomenon5 - direction
	star6 - direction
	planet7 - direction
	planet8 - direction
	star9 - direction
	star10 - direction
	planet11 - direction
	phenomenon12 - direction
)
(:init
	(supports instrument0 image2)
	(supports instrument0 spectrograph0)
	(supports instrument0 infrared1)
	(calibration_target instrument0 groundstation2)
	(supports instrument1 spectrograph0)
	(calibration_target instrument1 groundstation0)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 star6)
)
(:goal (and
	(pointing satellite0 star9)
	(have_image planet4 infrared1)
	(have_image phenomenon5 image2)
	(have_image star6 spectrograph0)
	(have_image planet7 spectrograph0)
	(have_image planet8 image2)
	(have_image star9 image2)
	(have_image star10 image2)
	(have_image planet11 image2)
	(have_image phenomenon12 spectrograph0)
))

)
