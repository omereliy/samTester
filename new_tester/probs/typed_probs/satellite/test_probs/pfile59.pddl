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
	satellite3 - satellite
	instrument7 - instrument
	instrument8 - instrument
	instrument9 - instrument
	satellite4 - satellite
	instrument10 - instrument
	instrument11 - instrument
	satellite5 - satellite
	instrument12 - instrument
	instrument13 - instrument
	instrument14 - instrument
	spectrograph3 - mode
	infrared4 - mode
	spectrograph0 - mode
	spectrograph2 - mode
	image1 - mode
	star3 - direction
	star4 - direction
	star2 - direction
	star1 - direction
	star0 - direction
	star5 - direction
	star6 - direction
	phenomenon7 - direction
	phenomenon8 - direction
	planet9 - direction
	planet10 - direction
	star11 - direction
	phenomenon12 - direction
	planet13 - direction
	star14 - direction
	star15 - direction
	planet16 - direction
	phenomenon17 - direction
	phenomenon18 - direction
	planet19 - direction
	star20 - direction
	phenomenon21 - direction
	star22 - direction
	planet23 - direction
	phenomenon24 - direction
)
(:init
	(supports instrument0 image1)
	(calibration_target instrument0 star4)
	(supports instrument1 spectrograph0)
	(supports instrument1 spectrograph2)
	(calibration_target instrument1 star0)
	(supports instrument2 image1)
	(supports instrument2 spectrograph2)
	(calibration_target instrument2 star1)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 phenomenon17)
	(supports instrument3 infrared4)
	(calibration_target instrument3 star2)
	(supports instrument4 spectrograph3)
	(supports instrument4 image1)
	(calibration_target instrument4 star1)
	(supports instrument5 spectrograph0)
	(calibration_target instrument5 star4)
	(on_board instrument3 satellite1)
	(on_board instrument4 satellite1)
	(on_board instrument5 satellite1)
	(power_avail satellite1)
	(pointing satellite1 phenomenon7)
	(supports instrument6 spectrograph3)
	(calibration_target instrument6 star3)
	(on_board instrument6 satellite2)
	(power_avail satellite2)
	(pointing satellite2 star22)
	(supports instrument7 image1)
	(supports instrument7 spectrograph3)
	(supports instrument7 infrared4)
	(calibration_target instrument7 star1)
	(supports instrument8 spectrograph3)
	(calibration_target instrument8 star4)
	(supports instrument9 infrared4)
	(calibration_target instrument9 star2)
	(on_board instrument7 satellite3)
	(on_board instrument8 satellite3)
	(on_board instrument9 satellite3)
	(power_avail satellite3)
	(pointing satellite3 star14)
	(supports instrument10 image1)
	(calibration_target instrument10 star2)
	(supports instrument11 infrared4)
	(calibration_target instrument11 star1)
	(on_board instrument10 satellite4)
	(on_board instrument11 satellite4)
	(power_avail satellite4)
	(pointing satellite4 star15)
	(supports instrument12 infrared4)
	(calibration_target instrument12 star2)
	(supports instrument13 image1)
	(supports instrument13 spectrograph2)
	(calibration_target instrument13 star1)
	(supports instrument14 image1)
	(supports instrument14 spectrograph2)
	(supports instrument14 spectrograph0)
	(calibration_target instrument14 star0)
	(on_board instrument12 satellite5)
	(on_board instrument13 satellite5)
	(on_board instrument14 satellite5)
	(power_avail satellite5)
	(pointing satellite5 star15)
)
(:goal (and
	(pointing satellite0 planet23)
	(have_image star5 image1)
	(have_image star6 spectrograph2)
	(have_image phenomenon7 spectrograph3)
	(have_image planet9 spectrograph3)
	(have_image star11 spectrograph0)
	(have_image phenomenon12 image1)
	(have_image planet13 infrared4)
	(have_image star14 image1)
	(have_image star15 infrared4)
	(have_image planet16 image1)
	(have_image phenomenon17 spectrograph0)
	(have_image phenomenon18 spectrograph3)
	(have_image planet19 image1)
	(have_image star20 spectrograph3)
	(have_image phenomenon21 spectrograph2)
	(have_image star22 infrared4)
	(have_image planet23 spectrograph3)
))

)
