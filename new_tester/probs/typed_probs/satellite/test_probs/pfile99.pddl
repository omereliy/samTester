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
	instrument7 - instrument
	satellite4 - satellite
	instrument8 - instrument
	satellite5 - satellite
	instrument9 - instrument
	instrument10 - instrument
	instrument11 - instrument
	infrared2 - mode
	image3 - mode
	infrared1 - mode
	infrared4 - mode
	thermograph0 - mode
	groundstation1 - direction
	groundstation3 - direction
	star2 - direction
	groundstation0 - direction
	groundstation4 - direction
	phenomenon5 - direction
	phenomenon6 - direction
	planet7 - direction
	planet8 - direction
	phenomenon9 - direction
	star10 - direction
	star11 - direction
	phenomenon12 - direction
	star13 - direction
	star14 - direction
	star15 - direction
	phenomenon16 - direction
	star17 - direction
	phenomenon18 - direction
	star19 - direction
	phenomenon20 - direction
	phenomenon21 - direction
	phenomenon22 - direction
	star23 - direction
	planet24 - direction
)
(:init
	(supports instrument0 infrared2)
	(supports instrument0 image3)
	(calibration_target instrument0 groundstation0)
	(on_board instrument0 satellite0)
	(power_avail satellite0)
	(pointing satellite0 star14)
	(supports instrument1 infrared2)
	(supports instrument1 infrared4)
	(calibration_target instrument1 groundstation0)
	(supports instrument2 image3)
	(supports instrument2 infrared1)
	(supports instrument2 infrared4)
	(calibration_target instrument2 groundstation4)
	(on_board instrument1 satellite1)
	(on_board instrument2 satellite1)
	(power_avail satellite1)
	(pointing satellite1 phenomenon18)
	(supports instrument3 infrared1)
	(supports instrument3 thermograph0)
	(calibration_target instrument3 star2)
	(supports instrument4 infrared2)
	(calibration_target instrument4 groundstation0)
	(supports instrument5 image3)
	(supports instrument5 infrared4)
	(calibration_target instrument5 groundstation3)
	(on_board instrument3 satellite2)
	(on_board instrument4 satellite2)
	(on_board instrument5 satellite2)
	(power_avail satellite2)
	(pointing satellite2 groundstation1)
	(supports instrument6 thermograph0)
	(supports instrument6 infrared4)
	(supports instrument6 image3)
	(calibration_target instrument6 star2)
	(supports instrument7 infrared1)
	(supports instrument7 thermograph0)
	(supports instrument7 infrared2)
	(calibration_target instrument7 groundstation0)
	(on_board instrument6 satellite3)
	(on_board instrument7 satellite3)
	(power_avail satellite3)
	(pointing satellite3 phenomenon18)
	(supports instrument8 infrared2)
	(supports instrument8 image3)
	(supports instrument8 infrared1)
	(calibration_target instrument8 groundstation3)
	(on_board instrument8 satellite4)
	(power_avail satellite4)
	(pointing satellite4 star11)
	(supports instrument9 image3)
	(supports instrument9 infrared2)
	(supports instrument9 infrared1)
	(calibration_target instrument9 star2)
	(supports instrument10 infrared4)
	(supports instrument10 infrared1)
	(calibration_target instrument10 groundstation0)
	(supports instrument11 thermograph0)
	(calibration_target instrument11 groundstation4)
	(on_board instrument9 satellite5)
	(on_board instrument10 satellite5)
	(on_board instrument11 satellite5)
	(power_avail satellite5)
	(pointing satellite5 groundstation4)
)
(:goal (and
	(pointing satellite0 star11)
	(pointing satellite1 star17)
	(pointing satellite2 planet24)
	(have_image phenomenon5 infrared1)
	(have_image phenomenon6 infrared4)
	(have_image planet7 image3)
	(have_image planet8 infrared2)
	(have_image star10 image3)
	(have_image phenomenon12 infrared1)
	(have_image star13 image3)
	(have_image star14 image3)
	(have_image star15 image3)
	(have_image phenomenon16 infrared1)
	(have_image star17 image3)
	(have_image phenomenon18 image3)
	(have_image star19 infrared1)
	(have_image phenomenon20 infrared4)
	(have_image phenomenon21 image3)
	(have_image phenomenon22 infrared1)
	(have_image star23 infrared4)
	(have_image planet24 infrared2)
))

)
