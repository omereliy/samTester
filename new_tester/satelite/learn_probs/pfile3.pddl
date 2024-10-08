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
	instrument6
	satellite1
	instrument7
	instrument8
	instrument9
	instrument10
	instrument11
	instrument12
	instrument13
	instrument14
	satellite2
	instrument15
	instrument16
	instrument17
	instrument18
	instrument19
	instrument20
	instrument21
	satellite3
	instrument22
	instrument23
	instrument24
	instrument25
	instrument26
	instrument27
	instrument28
	instrument29
	satellite4
	instrument30
	instrument31
	instrument32
	instrument33
	instrument34
	instrument35
	instrument36
	instrument37
	spectrograph9
	thermograph2
	thermograph3
	thermograph0
	image6
	infrared5
	image8
	thermograph4
	image1
	thermograph7
	star2
	groundstation1
	star0
	groundstation4
	star3
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
	(instrument instrument6)
	(supports instrument6 infrared5)
	(supports instrument6 image8)
	(calibration_target instrument6 groundstation1)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(on_board instrument3 satellite0)
	(on_board instrument4 satellite0)
	(on_board instrument5 satellite0)
	(on_board instrument6 satellite0)
	(power_avail satellite0)
	(pointing satellite0 star17)
	(satellite satellite1)
	(instrument instrument7)
	(supports instrument7 image8)
	(calibration_target instrument7 star3)
	(instrument instrument8)
	(supports instrument8 image8)
	(calibration_target instrument8 star2)
	(instrument instrument9)
	(supports instrument9 image8)
	(calibration_target instrument9 star3)
	(instrument instrument10)
	(supports instrument10 infrared5)
	(supports instrument10 spectrograph9)
	(supports instrument10 thermograph4)
	(calibration_target instrument10 star3)
	(instrument instrument11)
	(supports instrument11 image1)
	(supports instrument11 thermograph7)
	(supports instrument11 image8)
	(calibration_target instrument11 star2)
	(instrument instrument12)
	(supports instrument12 spectrograph9)
	(supports instrument12 thermograph3)
	(calibration_target instrument12 star0)
	(instrument instrument13)
	(supports instrument13 thermograph0)
	(supports instrument13 thermograph7)
	(calibration_target instrument13 groundstation1)
	(instrument instrument14)
	(supports instrument14 infrared5)
	(supports instrument14 image6)
	(calibration_target instrument14 groundstation1)
	(on_board instrument7 satellite1)
	(on_board instrument8 satellite1)
	(on_board instrument9 satellite1)
	(on_board instrument10 satellite1)
	(on_board instrument11 satellite1)
	(on_board instrument12 satellite1)
	(on_board instrument13 satellite1)
	(on_board instrument14 satellite1)
	(power_avail satellite1)
	(pointing satellite1 groundstation1)
	(satellite satellite2)
	(instrument instrument15)
	(supports instrument15 thermograph0)
	(supports instrument15 image1)
	(supports instrument15 thermograph4)
	(calibration_target instrument15 groundstation4)
	(instrument instrument16)
	(supports instrument16 image8)
	(supports instrument16 image1)
	(supports instrument16 thermograph3)
	(calibration_target instrument16 star2)
	(instrument instrument17)
	(supports instrument17 thermograph4)
	(supports instrument17 thermograph3)
	(calibration_target instrument17 star2)
	(instrument instrument18)
	(supports instrument18 thermograph2)
	(calibration_target instrument18 star2)
	(instrument instrument19)
	(supports instrument19 thermograph7)
	(supports instrument19 image6)
	(calibration_target instrument19 groundstation4)
	(instrument instrument20)
	(supports instrument20 image8)
	(supports instrument20 thermograph3)
	(calibration_target instrument20 groundstation4)
	(instrument instrument21)
	(supports instrument21 thermograph3)
	(calibration_target instrument21 star3)
	(on_board instrument15 satellite2)
	(on_board instrument16 satellite2)
	(on_board instrument17 satellite2)
	(on_board instrument18 satellite2)
	(on_board instrument19 satellite2)
	(on_board instrument20 satellite2)
	(on_board instrument21 satellite2)
	(power_avail satellite2)
	(pointing satellite2 planet15)
	(satellite satellite3)
	(instrument instrument22)
	(supports instrument22 infrared5)
	(supports instrument22 thermograph3)
	(supports instrument22 image8)
	(calibration_target instrument22 star3)
	(instrument instrument23)
	(supports instrument23 spectrograph9)
	(supports instrument23 image1)
	(calibration_target instrument23 groundstation4)
	(instrument instrument24)
	(supports instrument24 thermograph0)
	(supports instrument24 infrared5)
	(supports instrument24 image6)
	(calibration_target instrument24 groundstation1)
	(instrument instrument25)
	(supports instrument25 thermograph0)
	(supports instrument25 image1)
	(supports instrument25 spectrograph9)
	(calibration_target instrument25 star0)
	(instrument instrument26)
	(supports instrument26 thermograph0)
	(supports instrument26 thermograph4)
	(calibration_target instrument26 star0)
	(instrument instrument27)
	(supports instrument27 image1)
	(calibration_target instrument27 star2)
	(instrument instrument28)
	(supports instrument28 thermograph2)
	(supports instrument28 thermograph0)
	(supports instrument28 image8)
	(calibration_target instrument28 star3)
	(instrument instrument29)
	(supports instrument29 thermograph0)
	(supports instrument29 image6)
	(supports instrument29 thermograph4)
	(calibration_target instrument29 star3)
	(on_board instrument22 satellite3)
	(on_board instrument23 satellite3)
	(on_board instrument24 satellite3)
	(on_board instrument25 satellite3)
	(on_board instrument26 satellite3)
	(on_board instrument27 satellite3)
	(on_board instrument28 satellite3)
	(on_board instrument29 satellite3)
	(power_avail satellite3)
	(pointing satellite3 star12)
	(satellite satellite4)
	(instrument instrument30)
	(supports instrument30 thermograph0)
	(supports instrument30 thermograph3)
	(calibration_target instrument30 groundstation1)
	(instrument instrument31)
	(supports instrument31 thermograph4)
	(supports instrument31 image1)
	(supports instrument31 thermograph2)
	(calibration_target instrument31 star0)
	(instrument instrument32)
	(supports instrument32 thermograph7)
	(supports instrument32 thermograph0)
	(supports instrument32 thermograph3)
	(calibration_target instrument32 star3)
	(instrument instrument33)
	(supports instrument33 thermograph4)
	(calibration_target instrument33 groundstation1)
	(instrument instrument34)
	(supports instrument34 image6)
	(calibration_target instrument34 star3)
	(instrument instrument35)
	(supports instrument35 infrared5)
	(calibration_target instrument35 star0)
	(instrument instrument36)
	(supports instrument36 thermograph4)
	(supports instrument36 image8)
	(calibration_target instrument36 groundstation4)
	(instrument instrument37)
	(supports instrument37 thermograph7)
	(supports instrument37 image1)
	(calibration_target instrument37 star3)
	(on_board instrument30 satellite4)
	(on_board instrument31 satellite4)
	(on_board instrument32 satellite4)
	(on_board instrument33 satellite4)
	(on_board instrument34 satellite4)
	(on_board instrument35 satellite4)
	(on_board instrument36 satellite4)
	(on_board instrument37 satellite4)
	(power_avail satellite4)
	(pointing satellite4 star0)
	(mode spectrograph9)
	(mode thermograph2)
	(mode thermograph3)
	(mode thermograph0)
	(mode image6)
	(mode infrared5)
	(mode image8)
	(mode thermograph4)
	(mode image1)
	(mode thermograph7)
	(direction star2)
	(direction groundstation1)
	(direction star0)
	(direction groundstation4)
	(direction star3)
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
	(pointing satellite1 star0)
	(pointing satellite2 planet8)
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
