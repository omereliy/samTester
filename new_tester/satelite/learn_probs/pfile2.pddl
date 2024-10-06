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
	instrument6
	instrument7
	satellite3
	instrument8
	satellite4
	instrument9
	satellite5
	instrument10
	instrument11
	image1
	image2
	image3
	spectrograph4
	infrared0
	groundstation2
	star0
	groundstation4
	groundstation1
	star3
	planet5
	star6
	star7
	star8
	planet9
	phenomenon10
	phenomenon11
	planet12
	planet13
	planet14
	phenomenon15
	planet16
	phenomenon17
	planet18
	star19
	star20
	planet21
	phenomenon22
	planet23
	star24
)
(:init
	(satellite satellite0)
	(instrument instrument0)
	(supports instrument0 spectrograph4)
	(supports instrument0 infrared0)
	(supports instrument0 image3)
	(calibration_target instrument0 star3)
	(instrument instrument1)
	(supports instrument1 spectrograph4)
	(calibration_target instrument1 star0)
	(instrument instrument2)
	(supports instrument2 image1)
	(supports instrument2 infrared0)
	(supports instrument2 image2)
	(calibration_target instrument2 groundstation2)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 groundstation1)
	(satellite satellite1)
	(instrument instrument3)
	(supports instrument3 spectrograph4)
	(calibration_target instrument3 star3)
	(instrument instrument4)
	(supports instrument4 image3)
	(supports instrument4 image2)
	(supports instrument4 spectrograph4)
	(calibration_target instrument4 groundstation2)
	(on_board instrument3 satellite1)
	(on_board instrument4 satellite1)
	(power_avail satellite1)
	(pointing satellite1 star20)
	(satellite satellite2)
	(instrument instrument5)
	(supports instrument5 infrared0)
	(calibration_target instrument5 star0)
	(instrument instrument6)
	(supports instrument6 spectrograph4)
	(supports instrument6 image2)
	(calibration_target instrument6 star3)
	(instrument instrument7)
	(supports instrument7 infrared0)
	(calibration_target instrument7 groundstation4)
	(on_board instrument5 satellite2)
	(on_board instrument6 satellite2)
	(on_board instrument7 satellite2)
	(power_avail satellite2)
	(pointing satellite2 star3)
	(satellite satellite3)
	(instrument instrument8)
	(supports instrument8 image3)
	(calibration_target instrument8 groundstation1)
	(on_board instrument8 satellite3)
	(power_avail satellite3)
	(pointing satellite3 star6)
	(satellite satellite4)
	(instrument instrument9)
	(supports instrument9 image1)
	(calibration_target instrument9 groundstation4)
	(on_board instrument9 satellite4)
	(power_avail satellite4)
	(pointing satellite4 planet5)
	(satellite satellite5)
	(instrument instrument10)
	(supports instrument10 infrared0)
	(supports instrument10 image3)
	(supports instrument10 image2)
	(calibration_target instrument10 groundstation1)
	(instrument instrument11)
	(supports instrument11 infrared0)
	(supports instrument11 spectrograph4)
	(calibration_target instrument11 star3)
	(on_board instrument10 satellite5)
	(on_board instrument11 satellite5)
	(power_avail satellite5)
	(pointing satellite5 planet13)
	(mode image1)
	(mode image2)
	(mode image3)
	(mode spectrograph4)
	(mode infrared0)
	(direction groundstation2)
	(direction star0)
	(direction groundstation4)
	(direction groundstation1)
	(direction star3)
	(direction planet5)
	(direction star6)
	(direction star7)
	(direction star8)
	(direction planet9)
	(direction phenomenon10)
	(direction phenomenon11)
	(direction planet12)
	(direction planet13)
	(direction planet14)
	(direction phenomenon15)
	(direction planet16)
	(direction phenomenon17)
	(direction planet18)
	(direction star19)
	(direction star20)
	(direction planet21)
	(direction phenomenon22)
	(direction planet23)
	(direction star24)
)
(:goal (and
	(pointing satellite1 planet9)
	(pointing satellite4 planet18)
	(have_image planet5 image1)
	(have_image star6 image3)
	(have_image star7 image3)
	(have_image star8 infrared0)
	(have_image planet9 image3)
	(have_image phenomenon10 infrared0)
	(have_image phenomenon11 spectrograph4)
	(have_image planet12 spectrograph4)
	(have_image planet13 image1)
	(have_image planet14 image1)
	(have_image phenomenon15 image1)
	(have_image planet16 image1)
	(have_image phenomenon17 image1)
	(have_image planet18 infrared0)
	(have_image star19 image2)
	(have_image planet21 spectrograph4)
	(have_image phenomenon22 image3)
	(have_image planet23 infrared0)
	(have_image star24 infrared0)
))

)
