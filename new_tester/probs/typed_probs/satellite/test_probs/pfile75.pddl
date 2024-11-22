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
	satellite3 - satellite
	instrument6 - instrument
	satellite4 - satellite
	instrument7 - instrument
	satellite5 - satellite
	instrument8 - instrument
	instrument9 - instrument
	instrument10 - instrument
	image3 - mode
	image2 - mode
	image0 - mode
	infrared4 - mode
	thermograph1 - mode
	star0 - direction
	star2 - direction
	groundstation4 - direction
	groundstation1 - direction
	groundstation3 - direction
	planet5 - direction
	phenomenon6 - direction
	planet7 - direction
	phenomenon8 - direction
	star9 - direction
	star10 - direction
	star11 - direction
	planet12 - direction
	star13 - direction
	phenomenon14 - direction
	star15 - direction
	phenomenon16 - direction
	planet17 - direction
	star18 - direction
	star19 - direction
	phenomenon20 - direction
	star21 - direction
	planet22 - direction
	phenomenon23 - direction
	star24 - direction
)
(:init
	(supports instrument0 thermograph1)
	(supports instrument0 image3)
	(calibration_target instrument0 groundstation4)
	(supports instrument1 image0)
	(calibration_target instrument1 groundstation1)
	(supports instrument2 image3)
	(supports instrument2 thermograph1)
	(supports instrument2 infrared4)
	(calibration_target instrument2 groundstation4)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 phenomenon8)
	(supports instrument3 infrared4)
	(supports instrument3 image3)
	(calibration_target instrument3 star0)
	(supports instrument4 infrared4)
	(calibration_target instrument4 groundstation4)
	(on_board instrument3 satellite1)
	(on_board instrument4 satellite1)
	(power_avail satellite1)
	(pointing satellite1 phenomenon16)
	(supports instrument5 infrared4)
	(supports instrument5 thermograph1)
	(calibration_target instrument5 groundstation1)
	(on_board instrument5 satellite2)
	(power_avail satellite2)
	(pointing satellite2 star24)
	(supports instrument6 image2)
	(supports instrument6 image0)
	(supports instrument6 infrared4)
	(calibration_target instrument6 groundstation1)
	(on_board instrument6 satellite3)
	(power_avail satellite3)
	(pointing satellite3 planet7)
	(supports instrument7 image0)
	(calibration_target instrument7 star2)
	(on_board instrument7 satellite4)
	(power_avail satellite4)
	(pointing satellite4 star2)
	(supports instrument8 thermograph1)
	(supports instrument8 infrared4)
	(calibration_target instrument8 groundstation4)
	(supports instrument9 image0)
	(supports instrument9 thermograph1)
	(calibration_target instrument9 groundstation1)
	(supports instrument10 thermograph1)
	(supports instrument10 infrared4)
	(supports instrument10 image0)
	(calibration_target instrument10 groundstation3)
	(on_board instrument8 satellite5)
	(on_board instrument9 satellite5)
	(on_board instrument10 satellite5)
	(power_avail satellite5)
	(pointing satellite5 star18)
)
(:goal (and
	(pointing satellite0 groundstation1)
	(pointing satellite1 phenomenon6)
	(pointing satellite2 star2)
	(have_image planet5 image0)
	(have_image phenomenon6 infrared4)
	(have_image planet7 image2)
	(have_image star10 thermograph1)
	(have_image star11 image3)
	(have_image planet12 thermograph1)
	(have_image star13 image2)
	(have_image phenomenon14 image0)
	(have_image star15 image0)
	(have_image phenomenon16 image2)
	(have_image planet17 infrared4)
	(have_image star18 image3)
	(have_image star19 image3)
	(have_image phenomenon20 image3)
	(have_image star21 image0)
	(have_image planet22 infrared4)
	(have_image phenomenon23 thermograph1)
))

)
