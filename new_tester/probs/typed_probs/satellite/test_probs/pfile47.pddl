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
	satellite4 - satellite
	instrument8 - instrument
	instrument9 - instrument
	satellite5 - satellite
	instrument10 - instrument
	infrared4 - mode
	thermograph1 - mode
	infrared2 - mode
	thermograph0 - mode
	thermograph3 - mode
	star2 - direction
	groundstation4 - direction
	groundstation0 - direction
	groundstation3 - direction
	groundstation1 - direction
	phenomenon5 - direction
	phenomenon6 - direction
	star7 - direction
	planet8 - direction
	planet9 - direction
	planet10 - direction
	planet11 - direction
	planet12 - direction
	planet13 - direction
	planet14 - direction
	planet15 - direction
	star16 - direction
	phenomenon17 - direction
	phenomenon18 - direction
	phenomenon19 - direction
	planet20 - direction
	phenomenon21 - direction
	planet22 - direction
	phenomenon23 - direction
	planet24 - direction
)
(:init
	(supports instrument0 infrared4)
	(supports instrument0 thermograph1)
	(calibration_target instrument0 groundstation4)
	(on_board instrument0 satellite0)
	(power_avail satellite0)
	(pointing satellite0 phenomenon23)
	(supports instrument1 infrared4)
	(supports instrument1 thermograph3)
	(calibration_target instrument1 groundstation0)
	(supports instrument2 infrared4)
	(calibration_target instrument2 groundstation4)
	(supports instrument3 thermograph3)
	(supports instrument3 infrared2)
	(calibration_target instrument3 groundstation3)
	(on_board instrument1 satellite1)
	(on_board instrument2 satellite1)
	(on_board instrument3 satellite1)
	(power_avail satellite1)
	(pointing satellite1 planet22)
	(supports instrument4 thermograph1)
	(calibration_target instrument4 groundstation0)
	(supports instrument5 infrared4)
	(supports instrument5 thermograph1)
	(calibration_target instrument5 groundstation0)
	(supports instrument6 thermograph3)
	(supports instrument6 thermograph0)
	(supports instrument6 thermograph1)
	(calibration_target instrument6 groundstation0)
	(on_board instrument4 satellite2)
	(on_board instrument5 satellite2)
	(on_board instrument6 satellite2)
	(power_avail satellite2)
	(pointing satellite2 phenomenon5)
	(supports instrument7 infrared4)
	(calibration_target instrument7 groundstation3)
	(on_board instrument7 satellite3)
	(power_avail satellite3)
	(pointing satellite3 planet14)
	(supports instrument8 infrared2)
	(supports instrument8 thermograph1)
	(supports instrument8 thermograph3)
	(calibration_target instrument8 groundstation3)
	(supports instrument9 thermograph3)
	(calibration_target instrument9 groundstation1)
	(on_board instrument8 satellite4)
	(on_board instrument9 satellite4)
	(power_avail satellite4)
	(pointing satellite4 planet24)
	(supports instrument10 thermograph3)
	(supports instrument10 thermograph0)
	(calibration_target instrument10 groundstation1)
	(on_board instrument10 satellite5)
	(power_avail satellite5)
	(pointing satellite5 groundstation0)
)
(:goal (and
	(pointing satellite3 planet22)
	(have_image phenomenon5 infrared2)
	(have_image phenomenon6 thermograph0)
	(have_image planet8 thermograph1)
	(have_image planet9 infrared4)
	(have_image planet10 thermograph0)
	(have_image planet11 thermograph3)
	(have_image planet12 thermograph0)
	(have_image planet14 infrared2)
	(have_image planet15 infrared4)
	(have_image star16 infrared2)
	(have_image phenomenon17 thermograph3)
	(have_image phenomenon19 thermograph1)
	(have_image planet20 thermograph0)
	(have_image phenomenon21 infrared2)
	(have_image planet22 thermograph3)
	(have_image phenomenon23 infrared4)
	(have_image planet24 infrared4)
))

)
