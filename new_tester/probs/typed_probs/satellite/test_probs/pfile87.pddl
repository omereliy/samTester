(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	satellite1 - satellite
	instrument1 - instrument
	instrument2 - instrument
	satellite2 - satellite
	instrument3 - instrument
	instrument4 - instrument
	instrument5 - instrument
	satellite3 - satellite
	instrument6 - instrument
	satellite4 - satellite
	instrument7 - instrument
	instrument8 - instrument
	instrument9 - instrument
	satellite5 - satellite
	instrument10 - instrument
	instrument11 - instrument
	spectrograph4 - mode
	image3 - mode
	thermograph1 - mode
	spectrograph0 - mode
	thermograph2 - mode
	groundstation2 - direction
	groundstation1 - direction
	star0 - direction
	star3 - direction
	groundstation4 - direction
	phenomenon5 - direction
	phenomenon6 - direction
	planet7 - direction
	planet8 - direction
	star9 - direction
	planet10 - direction
	star11 - direction
	phenomenon12 - direction
	star13 - direction
	phenomenon14 - direction
	phenomenon15 - direction
	planet16 - direction
	star17 - direction
	star18 - direction
	star19 - direction
	star20 - direction
	star21 - direction
	planet22 - direction
	planet23 - direction
	star24 - direction
)
(:init
	(supports instrument0 spectrograph0)
	(calibration_target instrument0 star0)
	(on_board instrument0 satellite0)
	(power_avail satellite0)
	(pointing satellite0 phenomenon15)
	(supports instrument1 spectrograph4)
	(supports instrument1 spectrograph0)
	(calibration_target instrument1 groundstation1)
	(supports instrument2 thermograph2)
	(supports instrument2 image3)
	(supports instrument2 spectrograph0)
	(calibration_target instrument2 groundstation4)
	(on_board instrument1 satellite1)
	(on_board instrument2 satellite1)
	(power_avail satellite1)
	(pointing satellite1 star3)
	(supports instrument3 thermograph2)
	(calibration_target instrument3 groundstation1)
	(supports instrument4 image3)
	(calibration_target instrument4 star3)
	(supports instrument5 image3)
	(supports instrument5 thermograph2)
	(calibration_target instrument5 star0)
	(on_board instrument3 satellite2)
	(on_board instrument4 satellite2)
	(on_board instrument5 satellite2)
	(power_avail satellite2)
	(pointing satellite2 star24)
	(supports instrument6 spectrograph0)
	(calibration_target instrument6 groundstation4)
	(on_board instrument6 satellite3)
	(power_avail satellite3)
	(pointing satellite3 star9)
	(supports instrument7 spectrograph0)
	(supports instrument7 spectrograph4)
	(calibration_target instrument7 groundstation1)
	(supports instrument8 thermograph1)
	(supports instrument8 spectrograph4)
	(supports instrument8 thermograph2)
	(calibration_target instrument8 star0)
	(supports instrument9 thermograph1)
	(supports instrument9 thermograph2)
	(supports instrument9 spectrograph0)
	(calibration_target instrument9 star0)
	(on_board instrument7 satellite4)
	(on_board instrument8 satellite4)
	(on_board instrument9 satellite4)
	(power_avail satellite4)
	(pointing satellite4 star17)
	(supports instrument10 image3)
	(supports instrument10 spectrograph0)
	(supports instrument10 thermograph2)
	(calibration_target instrument10 star3)
	(supports instrument11 thermograph2)
	(supports instrument11 spectrograph0)
	(supports instrument11 thermograph1)
	(calibration_target instrument11 groundstation4)
	(on_board instrument10 satellite5)
	(on_board instrument11 satellite5)
	(power_avail satellite5)
	(pointing satellite5 star24)
)
(:goal (and
	(pointing satellite0 star21)
	(pointing satellite1 star0)
	(have_image phenomenon5 thermograph1)
	(have_image planet7 thermograph2)
	(have_image planet8 thermograph2)
	(have_image star9 thermograph2)
	(have_image planet10 spectrograph4)
	(have_image phenomenon12 thermograph2)
	(have_image star13 thermograph1)
	(have_image phenomenon14 spectrograph0)
	(have_image phenomenon15 spectrograph0)
	(have_image planet16 spectrograph4)
	(have_image star17 spectrograph0)
	(have_image star18 thermograph2)
	(have_image star19 spectrograph4)
	(have_image planet22 spectrograph0)
	(have_image planet23 thermograph1)
	(have_image star24 spectrograph4)
))

)
