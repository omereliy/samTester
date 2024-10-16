(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0
	instrument0
	instrument1
	instrument2
	satellite1
	instrument3
	instrument4
	satellite2
	instrument5
	satellite3
	instrument6
	instrument7
	instrument8
	satellite4
	instrument9
	instrument10
	thermograph4
	thermograph1
	spectrograph3
	infrared0
	image2
	star1
	star0
	groundstation2
	star3
	groundstation4
	planet5
	star6
	planet7
	star8
	star9
	star10
	phenomenon11
	phenomenon12
	planet13
	planet14
	phenomenon15
	planet16
	planet17
	phenomenon18
)
(:init
	(satellite satellite0)
	(instrument instrument0)
	(supports instrument0 infrared0)
	(supports instrument0 thermograph4)
	(calibration_target instrument0 star3)
	(instrument instrument1)
	(supports instrument1 infrared0)
	(calibration_target instrument1 star3)
	(instrument instrument2)
	(supports instrument2 spectrograph3)
	(supports instrument2 thermograph1)
	(calibration_target instrument2 groundstation4)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 groundstation2)
	(satellite satellite1)
	(instrument instrument3)
	(supports instrument3 thermograph4)
	(calibration_target instrument3 star3)
	(instrument instrument4)
	(supports instrument4 thermograph1)
	(calibration_target instrument4 star3)
	(on_board instrument3 satellite1)
	(on_board instrument4 satellite1)
	(power_avail satellite1)
	(pointing satellite1 phenomenon12)
	(satellite satellite2)
	(instrument instrument5)
	(supports instrument5 thermograph1)
	(calibration_target instrument5 groundstation4)
	(on_board instrument5 satellite2)
	(power_avail satellite2)
	(pointing satellite2 planet13)
	(satellite satellite3)
	(instrument instrument6)
	(supports instrument6 image2)
	(supports instrument6 infrared0)
	(calibration_target instrument6 groundstation2)
	(instrument instrument7)
	(supports instrument7 infrared0)
	(calibration_target instrument7 star0)
	(instrument instrument8)
	(supports instrument8 thermograph1)
	(calibration_target instrument8 groundstation2)
	(on_board instrument6 satellite3)
	(on_board instrument7 satellite3)
	(on_board instrument8 satellite3)
	(power_avail satellite3)
	(pointing satellite3 groundstation4)
	(satellite satellite4)
	(instrument instrument9)
	(supports instrument9 infrared0)
	(supports instrument9 image2)
	(supports instrument9 spectrograph3)
	(calibration_target instrument9 star3)
	(instrument instrument10)
	(supports instrument10 image2)
	(calibration_target instrument10 groundstation4)
	(on_board instrument9 satellite4)
	(on_board instrument10 satellite4)
	(power_avail satellite4)
	(pointing satellite4 planet7)
	(mode thermograph4)
	(mode thermograph1)
	(mode spectrograph3)
	(mode infrared0)
	(mode image2)
	(direction star1)
	(direction star0)
	(direction groundstation2)
	(direction star3)
	(direction groundstation4)
	(direction planet5)
	(direction star6)
	(direction planet7)
	(direction star8)
	(direction star9)
	(direction star10)
	(direction phenomenon11)
	(direction phenomenon12)
	(direction planet13)
	(direction planet14)
	(direction phenomenon15)
	(direction planet16)
	(direction planet17)
	(direction phenomenon18)
)
(:goal (and
	(pointing satellite0 phenomenon11)
	(pointing satellite1 planet17)
	(have_image planet5 image2)
	(have_image star6 image2)
	(have_image planet7 spectrograph3)
	(have_image star8 infrared0)
	(have_image star9 infrared0)
	(have_image phenomenon11 image2)
	(have_image phenomenon12 infrared0)
	(have_image planet13 spectrograph3)
	(have_image planet14 image2)
	(have_image phenomenon15 thermograph1)
	(have_image planet17 infrared0)
	(have_image phenomenon18 thermograph1)
))

)
