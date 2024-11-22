(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	instrument1 - instrument
	satellite1 - satellite
	instrument2 - instrument
	instrument3 - instrument
	instrument4 - instrument
	satellite2 - satellite
	instrument5 - instrument
	instrument6 - instrument
	satellite3 - satellite
	instrument7 - instrument
	satellite4 - satellite
	instrument8 - instrument
	satellite5 - satellite
	instrument9 - instrument
	spectrograph0 - mode
	image4 - mode
	spectrograph3 - mode
	thermograph2 - mode
	image1 - mode
	star0 - direction
	star3 - direction
	star2 - direction
	star1 - direction
	star4 - direction
	planet5 - direction
	phenomenon6 - direction
	planet7 - direction
	star8 - direction
	planet9 - direction
	phenomenon10 - direction
	star11 - direction
	star12 - direction
	planet13 - direction
	star14 - direction
	planet15 - direction
	phenomenon16 - direction
	planet17 - direction
	star18 - direction
	star19 - direction
	star20 - direction
	star21 - direction
	planet22 - direction
	planet23 - direction
	planet24 - direction
)
(:init
	(supports instrument0 spectrograph3)
	(supports instrument0 thermograph2)
	(calibration_target instrument0 star4)
	(supports instrument1 spectrograph0)
	(supports instrument1 thermograph2)
	(supports instrument1 image1)
	(calibration_target instrument1 star1)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 planet22)
	(supports instrument2 spectrograph3)
	(supports instrument2 image4)
	(supports instrument2 spectrograph0)
	(calibration_target instrument2 star1)
	(supports instrument3 image1)
	(supports instrument3 spectrograph0)
	(supports instrument3 image4)
	(calibration_target instrument3 star2)
	(supports instrument4 thermograph2)
	(supports instrument4 spectrograph0)
	(supports instrument4 image1)
	(calibration_target instrument4 star3)
	(on_board instrument2 satellite1)
	(on_board instrument3 satellite1)
	(on_board instrument4 satellite1)
	(power_avail satellite1)
	(pointing satellite1 planet15)
	(supports instrument5 image1)
	(supports instrument5 image4)
	(supports instrument5 thermograph2)
	(calibration_target instrument5 star1)
	(supports instrument6 thermograph2)
	(supports instrument6 spectrograph0)
	(calibration_target instrument6 star3)
	(on_board instrument5 satellite2)
	(on_board instrument6 satellite2)
	(power_avail satellite2)
	(pointing satellite2 star2)
	(supports instrument7 spectrograph0)
	(calibration_target instrument7 star2)
	(on_board instrument7 satellite3)
	(power_avail satellite3)
	(pointing satellite3 star11)
	(supports instrument8 spectrograph3)
	(supports instrument8 image4)
	(supports instrument8 thermograph2)
	(calibration_target instrument8 star1)
	(on_board instrument8 satellite4)
	(power_avail satellite4)
	(pointing satellite4 star0)
	(supports instrument9 image1)
	(supports instrument9 thermograph2)
	(calibration_target instrument9 star4)
	(on_board instrument9 satellite5)
	(power_avail satellite5)
	(pointing satellite5 star2)
)
(:goal (and
	(pointing satellite0 phenomenon10)
	(pointing satellite2 star11)
	(pointing satellite3 planet15)
	(pointing satellite4 star1)
	(have_image planet5 spectrograph3)
	(have_image phenomenon6 image4)
	(have_image planet7 image4)
	(have_image star8 spectrograph0)
	(have_image planet9 thermograph2)
	(have_image phenomenon10 spectrograph0)
	(have_image star11 image1)
	(have_image star12 image4)
	(have_image planet13 thermograph2)
	(have_image star14 spectrograph0)
	(have_image planet15 image1)
	(have_image phenomenon16 image4)
	(have_image planet17 image1)
	(have_image star18 image4)
	(have_image star19 spectrograph0)
	(have_image star20 thermograph2)
	(have_image star21 thermograph2)
	(have_image planet22 spectrograph0)
	(have_image planet23 spectrograph0)
))

)
