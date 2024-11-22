(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	satellite1 - satellite
	instrument1 - instrument
	satellite2 - satellite
	instrument2 - instrument
	instrument3 - instrument
	satellite3 - satellite
	instrument4 - instrument
	instrument5 - instrument
	satellite4 - satellite
	instrument6 - instrument
	instrument7 - instrument
	infrared0 - mode
	image4 - mode
	spectrograph1 - mode
	infrared3 - mode
	image2 - mode
	star1 - direction
	groundstation3 - direction
	star0 - direction
	star2 - direction
	star4 - direction
	planet5 - direction
	star6 - direction
	star7 - direction
	phenomenon8 - direction
	planet9 - direction
	planet10 - direction
	star11 - direction
	star12 - direction
	phenomenon13 - direction
	phenomenon14 - direction
	star15 - direction
	star16 - direction
	planet17 - direction
	phenomenon18 - direction
	star19 - direction
	phenomenon20 - direction
	star21 - direction
)
(:init
	(supports instrument0 infrared0)
	(supports instrument0 spectrograph1)
	(supports instrument0 infrared3)
	(calibration_target instrument0 star0)
	(on_board instrument0 satellite0)
	(power_avail satellite0)
	(pointing satellite0 phenomenon8)
	(supports instrument1 infrared0)
	(supports instrument1 spectrograph1)
	(supports instrument1 image2)
	(calibration_target instrument1 star0)
	(on_board instrument1 satellite1)
	(power_avail satellite1)
	(pointing satellite1 star11)
	(supports instrument2 spectrograph1)
	(calibration_target instrument2 star2)
	(supports instrument3 infrared0)
	(supports instrument3 infrared3)
	(supports instrument3 spectrograph1)
	(calibration_target instrument3 star0)
	(on_board instrument2 satellite2)
	(on_board instrument3 satellite2)
	(power_avail satellite2)
	(pointing satellite2 star2)
	(supports instrument4 infrared3)
	(supports instrument4 image2)
	(calibration_target instrument4 star2)
	(supports instrument5 infrared0)
	(supports instrument5 spectrograph1)
	(calibration_target instrument5 star2)
	(on_board instrument4 satellite3)
	(on_board instrument5 satellite3)
	(power_avail satellite3)
	(pointing satellite3 planet10)
	(supports instrument6 image4)
	(supports instrument6 spectrograph1)
	(supports instrument6 infrared3)
	(calibration_target instrument6 star4)
	(supports instrument7 image2)
	(supports instrument7 infrared3)
	(supports instrument7 spectrograph1)
	(calibration_target instrument7 star4)
	(on_board instrument6 satellite4)
	(on_board instrument7 satellite4)
	(power_avail satellite4)
	(pointing satellite4 star15)
)
(:goal (and
	(pointing satellite4 star15)
	(have_image planet5 image4)
	(have_image star6 infrared3)
	(have_image star7 image4)
	(have_image phenomenon8 image4)
	(have_image planet9 infrared0)
	(have_image planet10 infrared3)
	(have_image star12 image4)
	(have_image phenomenon13 image4)
	(have_image phenomenon14 spectrograph1)
	(have_image star15 spectrograph1)
	(have_image star16 image2)
	(have_image planet17 infrared3)
	(have_image phenomenon18 image4)
	(have_image star19 infrared3)
	(have_image phenomenon20 image4)
	(have_image star21 image4)
))

)
