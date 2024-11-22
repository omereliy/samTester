(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	spectrograph0 - mode
	infrared2 - mode
	infrared1 - mode
	star0 - direction
	groundstation1 - direction
	star2 - direction
	planet3 - direction
	planet4 - direction
	phenomenon5 - direction
	planet6 - direction
)
(:init
	(supports instrument0 infrared1)
	(supports instrument0 infrared2)
	(supports instrument0 spectrograph0)
	(calibration_target instrument0 star2)
	(on_board instrument0 satellite0)
	(power_avail satellite0)
	(pointing satellite0 phenomenon5)
)
(:goal (and
	(have_image planet3 spectrograph0)
	(have_image planet4 infrared1)
	(have_image phenomenon5 infrared2)
	(have_image planet6 spectrograph0)
))

)
