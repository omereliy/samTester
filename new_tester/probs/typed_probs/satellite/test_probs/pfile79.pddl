(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	instrument1 - instrument
	satellite1 - satellite
	instrument2 - instrument
	instrument3 - instrument
	satellite2 - satellite
	instrument4 - instrument
	instrument5 - instrument
	satellite3 - satellite
	instrument6 - instrument
	instrument7 - instrument
	instrument8 - instrument
	satellite4 - satellite
	instrument9 - instrument
	instrument10 - instrument
	instrument11 - instrument
	satellite5 - satellite
	instrument12 - instrument
	instrument13 - instrument
	infrared4 - mode
	infrared1 - mode
	spectrograph3 - mode
	image2 - mode
	infrared0 - mode
	star4 - direction
	groundstation0 - direction
	groundstation3 - direction
	star2 - direction
	star1 - direction
	phenomenon5 - direction
	star6 - direction
	planet7 - direction
	phenomenon8 - direction
	star9 - direction
	star10 - direction
	phenomenon11 - direction
	phenomenon12 - direction
	phenomenon13 - direction
	star14 - direction
	star15 - direction
	planet16 - direction
	planet17 - direction
	phenomenon18 - direction
	phenomenon19 - direction
	phenomenon20 - direction
	planet21 - direction
	phenomenon22 - direction
	planet23 - direction
	star24 - direction
)
(:init
	(supports instrument0 infrared1)
	(supports instrument0 infrared4)
	(calibration_target instrument0 star1)
	(supports instrument1 infrared0)
	(supports instrument1 image2)
	(supports instrument1 spectrograph3)
	(calibration_target instrument1 star4)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 star24)
	(supports instrument2 infrared4)
	(calibration_target instrument2 star4)
	(supports instrument3 infrared1)
	(supports instrument3 infrared4)
	(supports instrument3 image2)
	(calibration_target instrument3 star2)
	(on_board instrument2 satellite1)
	(on_board instrument3 satellite1)
	(power_avail satellite1)
	(pointing satellite1 star1)
	(supports instrument4 infrared1)
	(supports instrument4 infrared4)
	(supports instrument4 infrared0)
	(calibration_target instrument4 groundstation0)
	(supports instrument5 image2)
	(supports instrument5 spectrograph3)
	(supports instrument5 infrared0)
	(calibration_target instrument5 star1)
	(on_board instrument4 satellite2)
	(on_board instrument5 satellite2)
	(power_avail satellite2)
	(pointing satellite2 phenomenon19)
	(supports instrument6 spectrograph3)
	(calibration_target instrument6 groundstation0)
	(supports instrument7 image2)
	(calibration_target instrument7 groundstation0)
	(supports instrument8 spectrograph3)
	(supports instrument8 infrared4)
	(supports instrument8 infrared0)
	(calibration_target instrument8 groundstation3)
	(on_board instrument6 satellite3)
	(on_board instrument7 satellite3)
	(on_board instrument8 satellite3)
	(power_avail satellite3)
	(pointing satellite3 star9)
	(supports instrument9 infrared0)
	(calibration_target instrument9 star2)
	(supports instrument10 infrared1)
	(supports instrument10 infrared0)
	(supports instrument10 infrared4)
	(calibration_target instrument10 groundstation3)
	(supports instrument11 spectrograph3)
	(supports instrument11 infrared1)
	(supports instrument11 infrared4)
	(calibration_target instrument11 groundstation3)
	(on_board instrument9 satellite4)
	(on_board instrument10 satellite4)
	(on_board instrument11 satellite4)
	(power_avail satellite4)
	(pointing satellite4 star1)
	(supports instrument12 image2)
	(calibration_target instrument12 star2)
	(supports instrument13 infrared0)
	(calibration_target instrument13 star1)
	(on_board instrument12 satellite5)
	(on_board instrument13 satellite5)
	(power_avail satellite5)
	(pointing satellite5 phenomenon13)
)
(:goal (and
	(pointing satellite5 planet23)
	(have_image phenomenon5 infrared4)
	(have_image star6 infrared0)
	(have_image planet7 spectrograph3)
	(have_image phenomenon8 infrared0)
	(have_image star9 infrared0)
	(have_image star10 spectrograph3)
	(have_image phenomenon11 infrared1)
	(have_image phenomenon12 image2)
	(have_image phenomenon13 spectrograph3)
	(have_image star14 infrared4)
	(have_image star15 image2)
	(have_image planet16 spectrograph3)
	(have_image planet17 spectrograph3)
	(have_image phenomenon18 infrared0)
	(have_image phenomenon19 infrared4)
	(have_image phenomenon20 spectrograph3)
	(have_image planet21 infrared0)
	(have_image phenomenon22 infrared4)
	(have_image planet23 image2)
	(have_image star24 infrared0)
))

)
