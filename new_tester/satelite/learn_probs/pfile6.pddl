(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0
	instrument0
	instrument1
	instrument2
	instrument3
	instrument4
	instrument5
	satellite1
	instrument6
	instrument7
	satellite2
	instrument8
	instrument9
	instrument10
	instrument11
	satellite3
	instrument12
	instrument13
	instrument14
	instrument15
	instrument16
	instrument17
	instrument18
	satellite4
	instrument19
	instrument20
	instrument21
	thermograph7
	spectrograph9
	image6
	image1
	infrared5
	thermograph3
	thermograph0
	thermograph2
	image8
	thermograph4
	groundstation1
	groundstation4
	star2
	star3
	star0
	phenomenon5
	planet6
	planet7
	planet8
	star9
	planet10
	planet11
	star12
	phenomenon13
	phenomenon14
	planet15
	phenomenon16
	star17
	phenomenon18
	phenomenon19
	star20
	star21
	phenomenon22
	star23
	star24
)
(:init
	(satellite satellite0)
	(instrument instrument0)
	(supports instrument0 thermograph2)
	(supports instrument0 thermograph7)
	(supports instrument0 image6)
	(calibration_target instrument0 star3)
	(instrument instrument1)
	(supports instrument1 spectrograph9)
	(calibration_target instrument1 star0)
	(instrument instrument2)
	(supports instrument2 thermograph4)
	(supports instrument2 infrared5)
	(calibration_target instrument2 groundstation1)
	(instrument instrument3)
	(supports instrument3 thermograph2)
	(supports instrument3 thermograph0)
	(supports instrument3 infrared5)
	(calibration_target instrument3 groundstation4)
	(instrument instrument4)
	(supports instrument4 image1)
	(supports instrument4 thermograph4)
	(calibration_target instrument4 groundstation4)
	(instrument instrument5)
	(supports instrument5 thermograph0)
	(supports instrument5 spectrograph9)
	(supports instrument5 thermograph7)
	(calibration_target instrument5 star3)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(on_board instrument3 satellite0)
	(on_board instrument4 satellite0)
	(on_board instrument5 satellite0)
	(power_avail satellite0)
	(pointing satellite0 star17)
	(satellite satellite1)
	(instrument instrument6)
	(supports instrument6 image8)
	(supports instrument6 infrared5)
	(supports instrument6 image6)
	(calibration_target instrument6 star3)
	(instrument instrument7)
	(supports instrument7 thermograph0)
	(supports instrument7 image6)
	(supports instrument7 thermograph2)
	(calibration_target instrument7 star3)
	(on_board instrument6 satellite1)
	(on_board instrument7 satellite1)
	(power_avail satellite1)
	(pointing satellite1 planet11)
	(satellite satellite2)
	(instrument instrument8)
	(supports instrument8 image6)
	(supports instrument8 image8)
	(supports instrument8 thermograph7)
	(calibration_target instrument8 star3)
	(instrument instrument9)
	(supports instrument9 spectrograph9)
	(supports instrument9 infrared5)
	(supports instrument9 thermograph0)
	(calibration_target instrument9 groundstation4)
	(instrument instrument10)
	(supports instrument10 image8)
	(supports instrument10 thermograph3)
	(calibration_target instrument10 star2)
	(instrument instrument11)
	(supports instrument11 thermograph2)
	(supports instrument11 infrared5)
	(calibration_target instrument11 groundstation1)
	(on_board instrument8 satellite2)
	(on_board instrument9 satellite2)
	(on_board instrument10 satellite2)
	(on_board instrument11 satellite2)
	(power_avail satellite2)
	(pointing satellite2 star3)
	(satellite satellite3)
	(instrument instrument12)
	(supports instrument12 thermograph7)
	(supports instrument12 image1)
	(calibration_target instrument12 groundstation4)
	(instrument instrument13)
	(supports instrument13 thermograph2)
	(supports instrument13 spectrograph9)
	(supports instrument13 image6)
	(calibration_target instrument13 star0)
	(instrument instrument14)
	(supports instrument14 thermograph0)
	(supports instrument14 spectrograph9)
	(supports instrument14 thermograph3)
	(calibration_target instrument14 star2)
	(instrument instrument15)
	(supports instrument15 image6)
	(supports instrument15 thermograph3)
	(calibration_target instrument15 star2)
	(instrument instrument16)
	(supports instrument16 thermograph4)
	(calibration_target instrument16 star2)
	(instrument instrument17)
	(supports instrument17 infrared5)
	(supports instrument17 image1)
	(calibration_target instrument17 star0)
	(instrument instrument18)
	(supports instrument18 thermograph0)
	(supports instrument18 thermograph3)
	(calibration_target instrument18 star0)
	(on_board instrument12 satellite3)
	(on_board instrument13 satellite3)
	(on_board instrument14 satellite3)
	(on_board instrument15 satellite3)
	(on_board instrument16 satellite3)
	(on_board instrument17 satellite3)
	(on_board instrument18 satellite3)
	(power_avail satellite3)
	(pointing satellite3 planet11)
	(satellite satellite4)
	(instrument instrument19)
	(supports instrument19 thermograph0)
	(supports instrument19 thermograph3)
	(calibration_target instrument19 star0)
	(instrument instrument20)
	(supports instrument20 thermograph0)
	(calibration_target instrument20 star3)
	(instrument instrument21)
	(supports instrument21 thermograph4)
	(supports instrument21 image8)
	(supports instrument21 thermograph2)
	(calibration_target instrument21 star0)
	(on_board instrument19 satellite4)
	(on_board instrument20 satellite4)
	(on_board instrument21 satellite4)
	(power_avail satellite4)
	(pointing satellite4 star21)
	(mode thermograph7)
	(mode spectrograph9)
	(mode image6)
	(mode image1)
	(mode infrared5)
	(mode thermograph3)
	(mode thermograph0)
	(mode thermograph2)
	(mode image8)
	(mode thermograph4)
	(direction groundstation1)
	(direction groundstation4)
	(direction star2)
	(direction star3)
	(direction star0)
	(direction phenomenon5)
	(direction planet6)
	(direction planet7)
	(direction planet8)
	(direction star9)
	(direction planet10)
	(direction planet11)
	(direction star12)
	(direction phenomenon13)
	(direction phenomenon14)
	(direction planet15)
	(direction phenomenon16)
	(direction star17)
	(direction phenomenon18)
	(direction phenomenon19)
	(direction star20)
	(direction star21)
	(direction phenomenon22)
	(direction star23)
	(direction star24)
)
(:goal (and
	(have_image phenomenon5 thermograph0)
	(have_image phenomenon5 spectrograph9)
	(have_image phenomenon5 infrared5)
	(have_image planet7 thermograph0)
	(have_image planet7 image6)
	(have_image planet7 spectrograph9)
	(have_image planet8 thermograph2)
	(have_image planet8 spectrograph9)
	(have_image planet8 image1)
	(have_image star9 thermograph4)
	(have_image planet10 image8)
	(have_image planet10 thermograph2)
	(have_image planet11 image6)
	(have_image planet11 thermograph4)
	(have_image phenomenon13 infrared5)
	(have_image phenomenon13 thermograph3)
	(have_image phenomenon13 spectrograph9)
	(have_image phenomenon14 spectrograph9)
	(have_image planet15 thermograph4)
	(have_image phenomenon16 image1)
	(have_image phenomenon16 thermograph3)
	(have_image phenomenon16 image6)
	(have_image star17 thermograph3)
	(have_image star17 infrared5)
	(have_image star17 thermograph4)
	(have_image phenomenon18 thermograph0)
	(have_image phenomenon18 spectrograph9)
	(have_image phenomenon19 thermograph0)
	(have_image phenomenon19 thermograph2)
	(have_image star20 thermograph4)
	(have_image star21 thermograph3)
	(have_image phenomenon22 image8)
	(have_image star23 infrared5)
	(have_image star23 image6)
	(have_image star24 image1)
	(have_image star24 thermograph4)
	(have_image star24 thermograph2)
))

)
