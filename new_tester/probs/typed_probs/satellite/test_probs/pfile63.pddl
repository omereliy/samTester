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
	satellite3 - satellite
	instrument5 - instrument
	instrument6 - instrument
	satellite4 - satellite
	instrument7 - instrument
	instrument8 - instrument
	instrument9 - instrument
	satellite5 - satellite
	instrument10 - instrument
	thermograph2 - mode
	thermograph0 - mode
	spectrograph4 - mode
	image3 - mode
	infrared1 - mode
	star4 - direction
	star2 - direction
	groundstation0 - direction
	groundstation1 - direction
	star3 - direction
	phenomenon5 - direction
	phenomenon6 - direction
	phenomenon7 - direction
	phenomenon8 - direction
	star9 - direction
	star10 - direction
	planet11 - direction
	phenomenon12 - direction
	phenomenon13 - direction
	planet14 - direction
	phenomenon15 - direction
	phenomenon16 - direction
	planet17 - direction
	phenomenon18 - direction
	star19 - direction
	star20 - direction
	planet21 - direction
	phenomenon22 - direction
	planet23 - direction
	phenomenon24 - direction
)
(:init
	(supports instrument0 thermograph2)
	(supports instrument0 infrared1)
	(calibration_target instrument0 star2)
	(supports instrument1 image3)
	(supports instrument1 spectrograph4)
	(calibration_target instrument1 star2)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 planet21)
	(supports instrument2 spectrograph4)
	(supports instrument2 infrared1)
	(calibration_target instrument2 star4)
	(supports instrument3 spectrograph4)
	(supports instrument3 infrared1)
	(supports instrument3 image3)
	(calibration_target instrument3 groundstation1)
	(on_board instrument2 satellite1)
	(on_board instrument3 satellite1)
	(power_avail satellite1)
	(pointing satellite1 planet11)
	(supports instrument4 thermograph0)
	(calibration_target instrument4 groundstation0)
	(on_board instrument4 satellite2)
	(power_avail satellite2)
	(pointing satellite2 star19)
	(supports instrument5 infrared1)
	(calibration_target instrument5 star3)
	(supports instrument6 infrared1)
	(calibration_target instrument6 star2)
	(on_board instrument5 satellite3)
	(on_board instrument6 satellite3)
	(power_avail satellite3)
	(pointing satellite3 phenomenon6)
	(supports instrument7 thermograph0)
	(calibration_target instrument7 groundstation1)
	(supports instrument8 spectrograph4)
	(calibration_target instrument8 groundstation0)
	(supports instrument9 spectrograph4)
	(calibration_target instrument9 groundstation1)
	(on_board instrument7 satellite4)
	(on_board instrument8 satellite4)
	(on_board instrument9 satellite4)
	(power_avail satellite4)
	(pointing satellite4 groundstation0)
	(supports instrument10 infrared1)
	(supports instrument10 image3)
	(calibration_target instrument10 star3)
	(on_board instrument10 satellite5)
	(power_avail satellite5)
	(pointing satellite5 star10)
)
(:goal (and
	(pointing satellite0 planet14)
	(have_image phenomenon5 thermograph2)
	(have_image phenomenon6 thermograph0)
	(have_image phenomenon8 thermograph0)
	(have_image star9 thermograph0)
	(have_image star10 spectrograph4)
	(have_image planet11 image3)
	(have_image phenomenon12 infrared1)
	(have_image phenomenon13 thermograph0)
	(have_image planet14 thermograph0)
	(have_image phenomenon16 thermograph0)
	(have_image planet17 thermograph0)
	(have_image phenomenon18 thermograph0)
	(have_image star19 image3)
	(have_image star20 infrared1)
	(have_image planet21 spectrograph4)
	(have_image phenomenon22 image3)
	(have_image planet23 spectrograph4)
	(have_image phenomenon24 thermograph2)
))

)
