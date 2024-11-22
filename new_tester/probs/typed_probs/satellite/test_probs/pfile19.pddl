(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	instrument1 - instrument
	instrument2 - instrument
	satellite1 - satellite
	instrument3 - instrument
	instrument4 - instrument
	instrument5 - instrument
	satellite2 - satellite
	instrument6 - instrument
	instrument7 - instrument
	satellite3 - satellite
	instrument8 - instrument
	instrument9 - instrument
	instrument10 - instrument
	satellite4 - satellite
	instrument11 - instrument
	instrument12 - instrument
	satellite5 - satellite
	instrument13 - instrument
	instrument14 - instrument
	instrument15 - instrument
	image2 - mode
	image3 - mode
	image1 - mode
	infrared0 - mode
	spectrograph4 - mode
	star1 - direction
	groundstation0 - direction
	star2 - direction
	star4 - direction
	star3 - direction
	planet5 - direction
	phenomenon6 - direction
	phenomenon7 - direction
	planet8 - direction
	phenomenon9 - direction
	star10 - direction
	star11 - direction
	star12 - direction
	star13 - direction
	planet14 - direction
	star15 - direction
	star16 - direction
	planet17 - direction
	phenomenon18 - direction
	planet19 - direction
	planet20 - direction
	star21 - direction
	star22 - direction
	planet23 - direction
	planet24 - direction
)
(:init
	(supports instrument0 infrared0)
	(supports instrument0 image3)
	(supports instrument0 image2)
	(calibration_target instrument0 star1)
	(supports instrument1 image1)
	(supports instrument1 image2)
	(calibration_target instrument1 star3)
	(supports instrument2 image3)
	(supports instrument2 spectrograph4)
	(calibration_target instrument2 star1)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 star11)
	(supports instrument3 infrared0)
	(supports instrument3 image1)
	(calibration_target instrument3 groundstation0)
	(supports instrument4 spectrograph4)
	(supports instrument4 image1)
	(calibration_target instrument4 star1)
	(supports instrument5 spectrograph4)
	(calibration_target instrument5 star2)
	(on_board instrument3 satellite1)
	(on_board instrument4 satellite1)
	(on_board instrument5 satellite1)
	(power_avail satellite1)
	(pointing satellite1 planet8)
	(supports instrument6 image1)
	(calibration_target instrument6 star1)
	(supports instrument7 image3)
	(supports instrument7 image2)
	(calibration_target instrument7 star2)
	(on_board instrument6 satellite2)
	(on_board instrument7 satellite2)
	(power_avail satellite2)
	(pointing satellite2 planet17)
	(supports instrument8 image2)
	(supports instrument8 image3)
	(calibration_target instrument8 star2)
	(supports instrument9 image1)
	(supports instrument9 infrared0)
	(calibration_target instrument9 star3)
	(supports instrument10 image2)
	(calibration_target instrument10 groundstation0)
	(on_board instrument8 satellite3)
	(on_board instrument9 satellite3)
	(on_board instrument10 satellite3)
	(power_avail satellite3)
	(pointing satellite3 planet23)
	(supports instrument11 spectrograph4)
	(supports instrument11 infrared0)
	(calibration_target instrument11 star2)
	(supports instrument12 image3)
	(supports instrument12 infrared0)
	(calibration_target instrument12 star2)
	(on_board instrument11 satellite4)
	(on_board instrument12 satellite4)
	(power_avail satellite4)
	(pointing satellite4 groundstation0)
	(supports instrument13 spectrograph4)
	(calibration_target instrument13 star3)
	(supports instrument14 infrared0)
	(supports instrument14 image1)
	(calibration_target instrument14 star4)
	(supports instrument15 spectrograph4)
	(calibration_target instrument15 star3)
	(on_board instrument13 satellite5)
	(on_board instrument14 satellite5)
	(on_board instrument15 satellite5)
	(power_avail satellite5)
	(pointing satellite5 star15)
)
(:goal (and
	(pointing satellite1 star11)
	(pointing satellite5 planet14)
	(have_image planet5 image2)
	(have_image phenomenon6 image3)
	(have_image phenomenon7 image3)
	(have_image planet8 infrared0)
	(have_image phenomenon9 image1)
	(have_image star10 spectrograph4)
	(have_image star11 image3)
	(have_image star12 image1)
	(have_image star13 image3)
	(have_image planet14 image3)
	(have_image star15 infrared0)
	(have_image star16 image3)
	(have_image planet17 infrared0)
	(have_image phenomenon18 image3)
	(have_image planet19 spectrograph4)
	(have_image planet20 image1)
	(have_image star21 image3)
	(have_image star22 infrared0)
	(have_image planet23 spectrograph4)
	(have_image planet24 image1)
))

)
