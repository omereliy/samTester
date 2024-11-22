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
	satellite3 - satellite
	instrument6 - instrument
	instrument7 - instrument
	satellite4 - satellite
	instrument8 - instrument
	instrument9 - instrument
	satellite5 - satellite
	instrument10 - instrument
	instrument11 - instrument
	thermograph0 - mode
	thermograph1 - mode
	spectrograph3 - mode
	infrared2 - mode
	image4 - mode
	groundstation2 - direction
	star1 - direction
	groundstation4 - direction
	star0 - direction
	groundstation3 - direction
	planet5 - direction
	planet6 - direction
	star7 - direction
	planet8 - direction
	planet9 - direction
	planet10 - direction
	planet11 - direction
	star12 - direction
	star13 - direction
	phenomenon14 - direction
	planet15 - direction
	planet16 - direction
	star17 - direction
	planet18 - direction
	phenomenon19 - direction
	star20 - direction
	star21 - direction
	star22 - direction
	phenomenon23 - direction
	phenomenon24 - direction
)
(:init
	(supports instrument0 thermograph0)
	(supports instrument0 spectrograph3)
	(calibration_target instrument0 groundstation2)
	(on_board instrument0 satellite0)
	(power_avail satellite0)
	(pointing satellite0 phenomenon19)
	(supports instrument1 spectrograph3)
	(supports instrument1 image4)
	(supports instrument1 thermograph1)
	(calibration_target instrument1 groundstation2)
	(supports instrument2 thermograph0)
	(calibration_target instrument2 groundstation3)
	(supports instrument3 spectrograph3)
	(calibration_target instrument3 star1)
	(on_board instrument1 satellite1)
	(on_board instrument2 satellite1)
	(on_board instrument3 satellite1)
	(power_avail satellite1)
	(pointing satellite1 planet11)
	(supports instrument4 spectrograph3)
	(calibration_target instrument4 star0)
	(supports instrument5 spectrograph3)
	(calibration_target instrument5 star0)
	(on_board instrument4 satellite2)
	(on_board instrument5 satellite2)
	(power_avail satellite2)
	(pointing satellite2 planet16)
	(supports instrument6 thermograph1)
	(calibration_target instrument6 star0)
	(supports instrument7 infrared2)
	(supports instrument7 thermograph1)
	(supports instrument7 thermograph0)
	(calibration_target instrument7 groundstation3)
	(on_board instrument6 satellite3)
	(on_board instrument7 satellite3)
	(power_avail satellite3)
	(pointing satellite3 phenomenon14)
	(supports instrument8 thermograph1)
	(supports instrument8 image4)
	(calibration_target instrument8 groundstation4)
	(supports instrument9 infrared2)
	(supports instrument9 spectrograph3)
	(supports instrument9 image4)
	(calibration_target instrument9 star0)
	(on_board instrument8 satellite4)
	(on_board instrument9 satellite4)
	(power_avail satellite4)
	(pointing satellite4 star7)
	(supports instrument10 infrared2)
	(calibration_target instrument10 star0)
	(supports instrument11 image4)
	(calibration_target instrument11 groundstation3)
	(on_board instrument10 satellite5)
	(on_board instrument11 satellite5)
	(power_avail satellite5)
	(pointing satellite5 star7)
)
(:goal (and
	(pointing satellite0 star0)
	(pointing satellite1 phenomenon24)
	(pointing satellite2 groundstation3)
	(have_image planet5 thermograph0)
	(have_image planet6 spectrograph3)
	(have_image star7 image4)
	(have_image planet8 image4)
	(have_image planet9 image4)
	(have_image planet10 spectrograph3)
	(have_image planet11 image4)
	(have_image star12 infrared2)
	(have_image star13 image4)
	(have_image planet16 thermograph1)
	(have_image star17 thermograph1)
	(have_image planet18 thermograph1)
	(have_image phenomenon19 image4)
	(have_image star20 thermograph0)
	(have_image star21 infrared2)
	(have_image star22 image4)
	(have_image phenomenon23 spectrograph3)
	(have_image phenomenon24 thermograph0)
))

)
