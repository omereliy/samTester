(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	thermograph2 - mode
	thermograph1 - mode
	spectrograph0 - mode
	star1 - direction
	groundstation2 - direction
	groundstation0 - direction
	planet3 - direction
	planet4 - direction
	star5 - direction
	star6 - direction
	planet7 - direction
)
(:init
	(supports instrument0 spectrograph0)
	(calibration_target instrument0 groundstation0)
	(on_board instrument0 satellite0)
	(power_avail satellite0)
	(pointing satellite0 groundstation0)
)
(:goal (and
	(pointing satellite0 star5)
	(have_image star5 spectrograph0)
))

)
