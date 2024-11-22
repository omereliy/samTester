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
	satellite2 - satellite
	instrument5 - instrument
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
	image3 - mode
	image2 - mode
	thermograph0 - mode
	spectrograph1 - mode
	thermograph4 - mode
	groundstation3 - direction
	groundstation1 - direction
	star4 - direction
	star0 - direction
	star2 - direction
	star5 - direction
	planet6 - direction
	star7 - direction
	planet8 - direction
	star9 - direction
	star10 - direction
	star11 - direction
	planet12 - direction
	planet13 - direction
	planet14 - direction
	star15 - direction
	star16 - direction
	planet17 - direction
	phenomenon18 - direction
	star19 - direction
	phenomenon20 - direction
	star21 - direction
	star22 - direction
	phenomenon23 - direction
	phenomenon24 - direction
)
(:init
	(supports instrument0 image2)
	(supports instrument0 thermograph0)
	(calibration_target instrument0 star4)
	(supports instrument1 thermograph0)
	(supports instrument1 spectrograph1)
	(supports instrument1 image2)
	(calibration_target instrument1 groundstation1)
	(supports instrument2 image2)
	(supports instrument2 thermograph4)
	(calibration_target instrument2 star0)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 star0)
	(supports instrument3 image3)
	(calibration_target instrument3 star2)
	(supports instrument4 spectrograph1)
	(supports instrument4 image3)
	(calibration_target instrument4 star2)
	(on_board instrument3 satellite1)
	(on_board instrument4 satellite1)
	(power_avail satellite1)
	(pointing satellite1 star11)
	(supports instrument5 spectrograph1)
	(calibration_target instrument5 star4)
	(supports instrument6 thermograph4)
	(calibration_target instrument6 star2)
	(supports instrument7 image2)
	(supports instrument7 thermograph0)
	(calibration_target instrument7 star0)
	(on_board instrument5 satellite2)
	(on_board instrument6 satellite2)
	(on_board instrument7 satellite2)
	(power_avail satellite2)
	(pointing satellite2 star0)
	(supports instrument8 image2)
	(supports instrument8 thermograph4)
	(supports instrument8 thermograph0)
	(calibration_target instrument8 star4)
	(supports instrument9 thermograph4)
	(supports instrument9 image3)
	(supports instrument9 thermograph0)
	(calibration_target instrument9 groundstation1)
	(supports instrument10 thermograph0)
	(calibration_target instrument10 star4)
	(on_board instrument8 satellite3)
	(on_board instrument9 satellite3)
	(on_board instrument10 satellite3)
	(power_avail satellite3)
	(pointing satellite3 planet13)
	(supports instrument11 thermograph4)
	(supports instrument11 thermograph0)
	(supports instrument11 image2)
	(calibration_target instrument11 star4)
	(supports instrument12 thermograph4)
	(calibration_target instrument12 star0)
	(on_board instrument11 satellite4)
	(on_board instrument12 satellite4)
	(power_avail satellite4)
	(pointing satellite4 star19)
	(supports instrument13 spectrograph1)
	(calibration_target instrument13 star0)
	(supports instrument14 thermograph4)
	(calibration_target instrument14 star2)
	(on_board instrument13 satellite5)
	(on_board instrument14 satellite5)
	(power_avail satellite5)
	(pointing satellite5 planet8)
)
(:goal (and
	(pointing satellite1 star11)
	(pointing satellite3 star22)
	(pointing satellite5 phenomenon20)
	(have_image star5 spectrograph1)
	(have_image planet6 thermograph0)
	(have_image star7 thermograph4)
	(have_image planet8 thermograph4)
	(have_image star9 thermograph4)
	(have_image star10 image2)
	(have_image star11 spectrograph1)
	(have_image planet12 thermograph0)
	(have_image planet13 thermograph4)
	(have_image planet14 image2)
	(have_image star15 thermograph0)
	(have_image star16 thermograph4)
	(have_image planet17 spectrograph1)
	(have_image phenomenon18 spectrograph1)
	(have_image star19 image3)
	(have_image phenomenon20 image3)
	(have_image star21 thermograph0)
	(have_image phenomenon23 thermograph0)
	(have_image phenomenon24 image2)
))

)
