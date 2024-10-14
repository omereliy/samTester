(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0
	instrument0
	infrared1
	spectrograph0
	spectrograph2
	groundstation0
	star2
	star1
	star3
	planet4
	star5
	phenomenon6
)
(:init
	(satellite satellite0)
	(instrument instrument0)
	(supports instrument0 spectrograph2)
	(supports instrument0 spectrograph0)
	(supports instrument0 infrared1)
	(calibration_target instrument0 star1)
	(on_board instrument0 satellite0)
	(power_avail satellite0)
	(pointing satellite0 star3)
	(mode infrared1)
	(mode spectrograph0)
	(mode spectrograph2)
	(direction groundstation0)
	(direction star2)
	(direction star1)
	(direction star3)
	(direction planet4)
	(direction star5)
	(direction phenomenon6)
)
(:goal (and
	(pointing satellite0 star1)
	(have_image star3 spectrograph0)
	(have_image planet4 spectrograph0)
	(have_image star5 infrared1)
	(have_image phenomenon6 spectrograph2)
))

)
