(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0
	instrument0
	satellite1
	instrument1
	satellite2
	instrument2
	instrument3
	satellite3
	instrument4
	instrument5
	instrument6
	satellite4
	instrument7
	instrument8
	satellite5
	instrument9
	image3
	spectrograph1
	spectrograph4
	thermograph0
	image2
	groundstation3
	groundstation4
	star1
	groundstation0
	star2
	planet5
	star6
	planet7
	planet8
	planet9
	phenomenon10
	planet11
	star12
	star13
	planet14
	star15
	star16
	phenomenon17
	planet18
	planet19
	planet20
	planet21
	planet22
	phenomenon23
	star24
)
(:init
	(satellite satellite0)
	(instrument instrument0)
	(supports instrument0 spectrograph4)
	(supports instrument0 spectrograph1)
	(calibration_target instrument0 star1)
	(on_board instrument0 satellite0)
	(power_avail satellite0)
	(pointing satellite0 star12)
	(satellite satellite1)
	(instrument instrument1)
	(supports instrument1 thermograph0)
	(supports instrument1 image2)
	(supports instrument1 spectrograph1)
	(calibration_target instrument1 groundstation0)
	(on_board instrument1 satellite1)
	(power_avail satellite1)
	(pointing satellite1 phenomenon17)
	(satellite satellite2)
	(instrument instrument2)
	(supports instrument2 spectrograph1)
	(calibration_target instrument2 groundstation3)
	(instrument instrument3)
	(supports instrument3 thermograph0)
	(supports instrument3 image2)
	(supports instrument3 image3)
	(calibration_target instrument3 groundstation4)
	(on_board instrument2 satellite2)
	(on_board instrument3 satellite2)
	(power_avail satellite2)
	(pointing satellite2 planet9)
	(satellite satellite3)
	(instrument instrument4)
	(supports instrument4 image2)
	(supports instrument4 thermograph0)
	(calibration_target instrument4 groundstation0)
	(instrument instrument5)
	(supports instrument5 spectrograph1)
	(supports instrument5 image2)
	(supports instrument5 image3)
	(calibration_target instrument5 star1)
	(instrument instrument6)
	(supports instrument6 spectrograph1)
	(supports instrument6 spectrograph4)
	(supports instrument6 image2)
	(calibration_target instrument6 groundstation0)
	(on_board instrument4 satellite3)
	(on_board instrument5 satellite3)
	(on_board instrument6 satellite3)
	(power_avail satellite3)
	(pointing satellite3 star2)
	(satellite satellite4)
	(instrument instrument7)
	(supports instrument7 image2)
	(supports instrument7 spectrograph4)
	(calibration_target instrument7 star2)
	(instrument instrument8)
	(supports instrument8 spectrograph4)
	(calibration_target instrument8 groundstation0)
	(on_board instrument7 satellite4)
	(on_board instrument8 satellite4)
	(power_avail satellite4)
	(pointing satellite4 groundstation3)
	(satellite satellite5)
	(instrument instrument9)
	(supports instrument9 image2)
	(supports instrument9 thermograph0)
	(supports instrument9 spectrograph4)
	(calibration_target instrument9 star2)
	(on_board instrument9 satellite5)
	(power_avail satellite5)
	(pointing satellite5 star2)
	(mode image3)
	(mode spectrograph1)
	(mode spectrograph4)
	(mode thermograph0)
	(mode image2)
	(direction groundstation3)
	(direction groundstation4)
	(direction star1)
	(direction groundstation0)
	(direction star2)
	(direction planet5)
	(direction star6)
	(direction planet7)
	(direction planet8)
	(direction planet9)
	(direction phenomenon10)
	(direction planet11)
	(direction star12)
	(direction star13)
	(direction planet14)
	(direction star15)
	(direction star16)
	(direction phenomenon17)
	(direction planet18)
	(direction planet19)
	(direction planet20)
	(direction planet21)
	(direction planet22)
	(direction phenomenon23)
	(direction star24)
)
(:goal (and
	(pointing satellite3 planet22)
	(have_image planet5 thermograph0)
	(have_image star6 spectrograph1)
	(have_image planet7 image2)
	(have_image planet8 image3)
	(have_image planet9 spectrograph1)
	(have_image phenomenon10 thermograph0)
	(have_image planet11 spectrograph4)
	(have_image star12 spectrograph4)
	(have_image star13 thermograph0)
	(have_image planet14 spectrograph1)
	(have_image star15 spectrograph4)
	(have_image phenomenon17 spectrograph1)
	(have_image planet18 spectrograph4)
	(have_image planet20 spectrograph1)
	(have_image planet21 image2)
	(have_image planet22 image3)
	(have_image phenomenon23 image3)
))

)
