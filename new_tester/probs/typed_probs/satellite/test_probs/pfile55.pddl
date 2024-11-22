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
	satellite3 - satellite
	instrument4 - instrument
	instrument5 - instrument
	instrument6 - instrument
	satellite4 - satellite
	instrument7 - instrument
	instrument8 - instrument
	satellite5 - satellite
	instrument9 - instrument
	thermograph1 - mode
	infrared2 - mode
	spectrograph3 - mode
	thermograph0 - mode
	infrared4 - mode
	groundstation1 - direction
	star2 - direction
	groundstation3 - direction
	groundstation4 - direction
	groundstation0 - direction
	planet5 - direction
	planet6 - direction
	phenomenon7 - direction
	phenomenon8 - direction
	phenomenon9 - direction
	phenomenon10 - direction
	star11 - direction
	star12 - direction
	star13 - direction
	star14 - direction
	planet15 - direction
	star16 - direction
	star17 - direction
	planet18 - direction
	phenomenon19 - direction
	star20 - direction
	phenomenon21 - direction
	planet22 - direction
	star23 - direction
	planet24 - direction
)
(:init
	(supports instrument0 thermograph0)
	(supports instrument0 infrared2)
	(calibration_target instrument0 groundstation0)
	(on_board instrument0 satellite0)
	(power_avail satellite0)
	(pointing satellite0 star23)
	(supports instrument1 infrared2)
	(calibration_target instrument1 groundstation3)
	(supports instrument2 spectrograph3)
	(calibration_target instrument2 groundstation1)
	(on_board instrument1 satellite1)
	(on_board instrument2 satellite1)
	(power_avail satellite1)
	(pointing satellite1 planet15)
	(supports instrument3 thermograph1)
	(supports instrument3 spectrograph3)
	(calibration_target instrument3 groundstation3)
	(on_board instrument3 satellite2)
	(power_avail satellite2)
	(pointing satellite2 planet5)
	(supports instrument4 thermograph1)
	(calibration_target instrument4 groundstation0)
	(supports instrument5 infrared2)
	(supports instrument5 spectrograph3)
	(supports instrument5 infrared4)
	(calibration_target instrument5 star2)
	(supports instrument6 infrared4)
	(supports instrument6 spectrograph3)
	(calibration_target instrument6 groundstation3)
	(on_board instrument4 satellite3)
	(on_board instrument5 satellite3)
	(on_board instrument6 satellite3)
	(power_avail satellite3)
	(pointing satellite3 star17)
	(supports instrument7 infrared2)
	(calibration_target instrument7 groundstation0)
	(supports instrument8 infrared4)
	(supports instrument8 thermograph0)
	(calibration_target instrument8 groundstation4)
	(on_board instrument7 satellite4)
	(on_board instrument8 satellite4)
	(power_avail satellite4)
	(pointing satellite4 groundstation3)
	(supports instrument9 infrared4)
	(supports instrument9 thermograph0)
	(supports instrument9 spectrograph3)
	(calibration_target instrument9 groundstation0)
	(on_board instrument9 satellite5)
	(power_avail satellite5)
	(pointing satellite5 groundstation3)
)
(:goal (and
	(pointing satellite1 star20)
	(pointing satellite2 planet22)
	(pointing satellite3 phenomenon9)
	(pointing satellite5 star2)
	(have_image planet5 infrared4)
	(have_image planet6 spectrograph3)
	(have_image phenomenon7 spectrograph3)
	(have_image phenomenon8 infrared2)
	(have_image phenomenon9 spectrograph3)
	(have_image phenomenon10 infrared2)
	(have_image star11 infrared2)
	(have_image star12 spectrograph3)
	(have_image star13 thermograph1)
	(have_image star14 spectrograph3)
	(have_image planet15 thermograph1)
	(have_image star17 infrared4)
	(have_image planet18 thermograph1)
	(have_image phenomenon19 spectrograph3)
	(have_image star20 infrared2)
	(have_image phenomenon21 thermograph0)
	(have_image planet22 thermograph1)
	(have_image star23 thermograph0)
	(have_image planet24 thermograph1)
))

)
