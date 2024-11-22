(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	instrument1 - instrument
	instrument2 - instrument
	satellite1 - satellite
	instrument3 - instrument
	satellite2 - satellite
	instrument4 - instrument
	instrument5 - instrument
	instrument6 - instrument
	satellite3 - satellite
	instrument7 - instrument
	instrument8 - instrument
	instrument9 - instrument
	satellite4 - satellite
	instrument10 - instrument
	satellite5 - satellite
	instrument11 - instrument
	instrument12 - instrument
	instrument13 - instrument
	image3 - mode
	spectrograph0 - mode
	thermograph1 - mode
	spectrograph4 - mode
	spectrograph2 - mode
	star0 - direction
	star2 - direction
	groundstation4 - direction
	star3 - direction
	groundstation1 - direction
	phenomenon5 - direction
	planet6 - direction
	planet7 - direction
	planet8 - direction
	star9 - direction
	planet10 - direction
	planet11 - direction
	star12 - direction
	planet13 - direction
	planet14 - direction
	planet15 - direction
	star16 - direction
	star17 - direction
	star18 - direction
	planet19 - direction
	planet20 - direction
	star21 - direction
	phenomenon22 - direction
	star23 - direction
	planet24 - direction
)
(:init
	(supports instrument0 thermograph1)
	(supports instrument0 spectrograph2)
	(supports instrument0 image3)
	(calibration_target instrument0 star3)
	(supports instrument1 thermograph1)
	(supports instrument1 image3)
	(supports instrument1 spectrograph0)
	(calibration_target instrument1 star0)
	(supports instrument2 thermograph1)
	(supports instrument2 image3)
	(calibration_target instrument2 star2)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 star2)
	(supports instrument3 spectrograph2)
	(supports instrument3 spectrograph0)
	(supports instrument3 thermograph1)
	(calibration_target instrument3 groundstation1)
	(on_board instrument3 satellite1)
	(power_avail satellite1)
	(pointing satellite1 groundstation1)
	(supports instrument4 spectrograph4)
	(supports instrument4 spectrograph2)
	(supports instrument4 thermograph1)
	(calibration_target instrument4 groundstation1)
	(supports instrument5 image3)
	(supports instrument5 thermograph1)
	(supports instrument5 spectrograph4)
	(calibration_target instrument5 groundstation4)
	(supports instrument6 spectrograph4)
	(supports instrument6 image3)
	(calibration_target instrument6 groundstation4)
	(on_board instrument4 satellite2)
	(on_board instrument5 satellite2)
	(on_board instrument6 satellite2)
	(power_avail satellite2)
	(pointing satellite2 planet15)
	(supports instrument7 spectrograph0)
	(supports instrument7 thermograph1)
	(supports instrument7 spectrograph4)
	(calibration_target instrument7 star2)
	(supports instrument8 spectrograph2)
	(supports instrument8 thermograph1)
	(calibration_target instrument8 groundstation4)
	(supports instrument9 spectrograph0)
	(calibration_target instrument9 star3)
	(on_board instrument7 satellite3)
	(on_board instrument8 satellite3)
	(on_board instrument9 satellite3)
	(power_avail satellite3)
	(pointing satellite3 planet6)
	(supports instrument10 image3)
	(supports instrument10 spectrograph4)
	(calibration_target instrument10 star3)
	(on_board instrument10 satellite4)
	(power_avail satellite4)
	(pointing satellite4 star18)
	(supports instrument11 thermograph1)
	(supports instrument11 spectrograph0)
	(calibration_target instrument11 star3)
	(supports instrument12 spectrograph4)
	(supports instrument12 thermograph1)
	(calibration_target instrument12 groundstation1)
	(supports instrument13 spectrograph2)
	(calibration_target instrument13 groundstation1)
	(on_board instrument11 satellite5)
	(on_board instrument12 satellite5)
	(on_board instrument13 satellite5)
	(power_avail satellite5)
	(pointing satellite5 star0)
)
(:goal (and
	(pointing satellite1 planet20)
	(pointing satellite5 phenomenon5)
	(have_image phenomenon5 thermograph1)
	(have_image planet6 image3)
	(have_image planet7 spectrograph4)
	(have_image planet8 spectrograph2)
	(have_image star9 spectrograph4)
	(have_image planet10 spectrograph4)
	(have_image star12 thermograph1)
	(have_image planet13 spectrograph4)
	(have_image planet14 spectrograph0)
	(have_image planet15 image3)
	(have_image star16 spectrograph2)
	(have_image star17 spectrograph4)
	(have_image star18 thermograph1)
	(have_image planet19 spectrograph0)
	(have_image planet20 spectrograph0)
	(have_image star21 thermograph1)
	(have_image phenomenon22 image3)
	(have_image star23 thermograph1)
	(have_image planet24 spectrograph0)
))

)
