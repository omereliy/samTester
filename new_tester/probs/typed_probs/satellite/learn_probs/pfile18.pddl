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
	satellite3 - satellite
	instrument5 - instrument
	satellite4 - satellite
	instrument6 - instrument
	instrument7 - instrument
	infrared2 - mode
	thermograph4 - mode
	thermograph0 - mode
	infrared1 - mode
	image3 - mode
	star1 - direction
	groundstation0 - direction
	star2 - direction
	groundstation3 - direction
	star4 - direction
	star5 - direction
	phenomenon6 - direction
	planet7 - direction
	phenomenon8 - direction
	planet9 - direction
	phenomenon10 - direction
	planet11 - direction
	planet12 - direction
	planet13 - direction
	planet14 - direction
	star15 - direction
	star16 - direction
	phenomenon17 - direction
	phenomenon18 - direction
	star19 - direction
	planet20 - direction
)
(:init
	(supports instrument0 infrared1)
	(supports instrument0 image3)
	(supports instrument0 thermograph4)
	(calibration_target instrument0 star4)
	(on_board instrument0 satellite0)
	(power_avail satellite0)
	(pointing satellite0 planet13)
	(supports instrument1 thermograph4)
	(supports instrument1 thermograph0)
	(supports instrument1 infrared1)
	(calibration_target instrument1 star1)
	(supports instrument2 image3)
	(supports instrument2 infrared2)
	(supports instrument2 thermograph0)
	(calibration_target instrument2 star2)
	(on_board instrument1 satellite1)
	(on_board instrument2 satellite1)
	(power_avail satellite1)
	(pointing satellite1 phenomenon6)
	(supports instrument3 image3)
	(calibration_target instrument3 star2)
	(supports instrument4 thermograph0)
	(supports instrument4 infrared1)
	(supports instrument4 image3)
	(calibration_target instrument4 groundstation0)
	(on_board instrument3 satellite2)
	(on_board instrument4 satellite2)
	(power_avail satellite2)
	(pointing satellite2 star16)
	(supports instrument5 infrared1)
	(supports instrument5 thermograph0)
	(supports instrument5 thermograph4)
	(calibration_target instrument5 star2)
	(on_board instrument5 satellite3)
	(power_avail satellite3)
	(pointing satellite3 star15)
	(supports instrument6 image3)
	(calibration_target instrument6 groundstation3)
	(supports instrument7 image3)
	(supports instrument7 infrared1)
	(calibration_target instrument7 star4)
	(on_board instrument6 satellite4)
	(on_board instrument7 satellite4)
	(power_avail satellite4)
	(pointing satellite4 phenomenon10)
)
(:goal (and
	(pointing satellite0 star4)
	(pointing satellite1 star16)
	(have_image star5 infrared2)
	(have_image phenomenon6 infrared1)
	(have_image planet7 image3)
	(have_image phenomenon8 thermograph0)
	(have_image planet9 infrared2)
	(have_image phenomenon10 infrared2)
	(have_image planet11 thermograph0)
	(have_image planet12 thermograph0)
	(have_image planet13 thermograph4)
	(have_image planet14 image3)
	(have_image star15 thermograph0)
	(have_image star16 thermograph4)
	(have_image phenomenon17 image3)
	(have_image phenomenon18 thermograph4)
	(have_image star19 infrared1)
	(have_image planet20 image3)
))

)
