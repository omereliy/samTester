(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0
	instrument0
	instrument1
	instrument2
	thermograph1
	image0
	spectrograph2
	star2
	groundstation1
	star0
	planet3
	phenomenon4
	phenomenon5
	star6
	planet7
	planet8
	planet9
	star10
)
(:init
	(satellite satellite0)
	(instrument instrument0)
	(supports instrument0 spectrograph2)
	(calibration_target instrument0 groundstation1)
	(instrument instrument1)
	(supports instrument1 thermograph1)
	(calibration_target instrument1 star0)
	(instrument instrument2)
	(supports instrument2 spectrograph2)
	(supports instrument2 image0)
	(calibration_target instrument2 star0)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 groundstation1)
	(mode thermograph1)
	(mode image0)
	(mode spectrograph2)
	(direction star2)
	(direction groundstation1)
	(direction star0)
	(direction planet3)
	(direction phenomenon4)
	(direction phenomenon5)
	(direction star6)
	(direction planet7)
	(direction planet8)
	(direction planet9)
	(direction star10)
)
(:goal (and
	(pointing satellite0 planet3)
	(have_image phenomenon4 thermograph1)
	(have_image phenomenon5 thermograph1)
	(have_image star6 image0)
	(have_image planet7 image0)
	(have_image planet8 image0)
	(have_image planet9 image0)
	(have_image star10 image0)
))

)
