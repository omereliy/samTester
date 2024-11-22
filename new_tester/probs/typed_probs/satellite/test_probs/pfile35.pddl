(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	satellite1 - satellite
	instrument1 - instrument
	instrument2 - instrument
	instrument3 - instrument
	satellite2 - satellite
	instrument4 - instrument
	instrument5 - instrument
	instrument6 - instrument
	satellite3 - satellite
	instrument7 - instrument
	instrument8 - instrument
	satellite4 - satellite
	instrument9 - instrument
	satellite5 - satellite
	instrument10 - instrument
	instrument11 - instrument
	instrument12 - instrument
	spectrograph3 - mode
	thermograph4 - mode
	image2 - mode
	infrared1 - mode
	thermograph0 - mode
	star3 - direction
	groundstation0 - direction
	star1 - direction
	star2 - direction
	star4 - direction
	star5 - direction
	phenomenon6 - direction
	phenomenon7 - direction
	phenomenon8 - direction
	phenomenon9 - direction
	planet10 - direction
	planet11 - direction
	phenomenon12 - direction
	planet13 - direction
	phenomenon14 - direction
	star15 - direction
	planet16 - direction
	planet17 - direction
	planet18 - direction
	phenomenon19 - direction
	planet20 - direction
	planet21 - direction
	star22 - direction
	planet23 - direction
	phenomenon24 - direction
)
(:init
	(supports instrument0 spectrograph3)
	(supports instrument0 thermograph0)
	(supports instrument0 image2)
	(calibration_target instrument0 star4)
	(on_board instrument0 satellite0)
	(power_avail satellite0)
	(pointing satellite0 star15)
	(supports instrument1 image2)
	(supports instrument1 thermograph0)
	(supports instrument1 thermograph4)
	(calibration_target instrument1 star2)
	(supports instrument2 infrared1)
	(supports instrument2 image2)
	(supports instrument2 spectrograph3)
	(calibration_target instrument2 groundstation0)
	(supports instrument3 spectrograph3)
	(supports instrument3 thermograph4)
	(supports instrument3 infrared1)
	(calibration_target instrument3 star3)
	(on_board instrument1 satellite1)
	(on_board instrument2 satellite1)
	(on_board instrument3 satellite1)
	(power_avail satellite1)
	(pointing satellite1 star3)
	(supports instrument4 thermograph0)
	(calibration_target instrument4 star3)
	(supports instrument5 thermograph4)
	(supports instrument5 infrared1)
	(calibration_target instrument5 star1)
	(supports instrument6 thermograph4)
	(calibration_target instrument6 star1)
	(on_board instrument4 satellite2)
	(on_board instrument5 satellite2)
	(on_board instrument6 satellite2)
	(power_avail satellite2)
	(pointing satellite2 phenomenon7)
	(supports instrument7 image2)
	(supports instrument7 infrared1)
	(calibration_target instrument7 groundstation0)
	(supports instrument8 thermograph4)
	(calibration_target instrument8 star2)
	(on_board instrument7 satellite3)
	(on_board instrument8 satellite3)
	(power_avail satellite3)
	(pointing satellite3 phenomenon19)
	(supports instrument9 spectrograph3)
	(supports instrument9 thermograph0)
	(supports instrument9 infrared1)
	(calibration_target instrument9 star1)
	(on_board instrument9 satellite4)
	(power_avail satellite4)
	(pointing satellite4 star5)
	(supports instrument10 image2)
	(supports instrument10 thermograph4)
	(supports instrument10 thermograph0)
	(calibration_target instrument10 star4)
	(supports instrument11 thermograph0)
	(supports instrument11 infrared1)
	(calibration_target instrument11 star2)
	(supports instrument12 thermograph0)
	(supports instrument12 infrared1)
	(calibration_target instrument12 star4)
	(on_board instrument10 satellite5)
	(on_board instrument11 satellite5)
	(on_board instrument12 satellite5)
	(power_avail satellite5)
	(pointing satellite5 phenomenon7)
)
(:goal (and
	(pointing satellite0 star3)
	(pointing satellite1 phenomenon14)
	(have_image phenomenon6 thermograph4)
	(have_image phenomenon7 infrared1)
	(have_image phenomenon8 spectrograph3)
	(have_image phenomenon9 spectrograph3)
	(have_image phenomenon14 thermograph0)
	(have_image star15 thermograph0)
	(have_image planet16 spectrograph3)
	(have_image planet17 thermograph4)
	(have_image phenomenon19 thermograph0)
	(have_image planet20 spectrograph3)
	(have_image planet21 spectrograph3)
	(have_image star22 infrared1)
	(have_image planet23 image2)
	(have_image phenomenon24 thermograph4)
))

)
