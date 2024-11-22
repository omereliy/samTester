(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	instrument1 - instrument
	satellite1 - satellite
	instrument2 - instrument
	instrument3 - instrument
	instrument4 - instrument
	instrument5 - instrument
	instrument6 - instrument
	satellite2 - satellite
	instrument7 - instrument
	instrument8 - instrument
	instrument9 - instrument
	instrument10 - instrument
	instrument11 - instrument
	instrument12 - instrument
	instrument13 - instrument
	instrument14 - instrument
	instrument15 - instrument
	satellite3 - satellite
	instrument16 - instrument
	instrument17 - instrument
	instrument18 - instrument
	instrument19 - instrument
	satellite4 - satellite
	instrument20 - instrument
	instrument21 - instrument
	instrument22 - instrument
	instrument23 - instrument
	instrument24 - instrument
	instrument25 - instrument
	instrument26 - instrument
	instrument27 - instrument
	thermograph3 - mode
	infrared5 - mode
	thermograph4 - mode
	thermograph2 - mode
	thermograph0 - mode
	image1 - mode
	groundstation1 - direction
	star3 - direction
	groundstation2 - direction
	star0 - direction
	groundstation4 - direction
	planet5 - direction
	star6 - direction
	phenomenon7 - direction
	star8 - direction
	phenomenon9 - direction
	planet10 - direction
	phenomenon11 - direction
	planet12 - direction
	planet13 - direction
	star14 - direction
	star15 - direction
	planet16 - direction
	star17 - direction
	phenomenon18 - direction
	planet19 - direction
	phenomenon20 - direction
	phenomenon21 - direction
	planet22 - direction
	star23 - direction
	planet24 - direction
)
(:init
	(supports instrument0 thermograph0)
	(calibration_target instrument0 star3)
	(supports instrument1 image1)
	(supports instrument1 thermograph3)
	(supports instrument1 thermograph4)
	(calibration_target instrument1 groundstation1)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 star14)
	(supports instrument2 infrared5)
	(calibration_target instrument2 star0)
	(supports instrument3 thermograph4)
	(calibration_target instrument3 groundstation1)
	(supports instrument4 thermograph4)
	(supports instrument4 infrared5)
	(supports instrument4 thermograph2)
	(calibration_target instrument4 star3)
	(supports instrument5 thermograph0)
	(supports instrument5 image1)
	(supports instrument5 infrared5)
	(calibration_target instrument5 groundstation1)
	(supports instrument6 image1)
	(supports instrument6 thermograph4)
	(calibration_target instrument6 groundstation4)
	(on_board instrument2 satellite1)
	(on_board instrument3 satellite1)
	(on_board instrument4 satellite1)
	(on_board instrument5 satellite1)
	(on_board instrument6 satellite1)
	(power_avail satellite1)
	(pointing satellite1 phenomenon7)
	(supports instrument7 thermograph4)
	(supports instrument7 thermograph0)
	(supports instrument7 infrared5)
	(calibration_target instrument7 groundstation1)
	(supports instrument8 thermograph0)
	(supports instrument8 thermograph3)
	(calibration_target instrument8 star3)
	(supports instrument9 image1)
	(calibration_target instrument9 star3)
	(supports instrument10 thermograph0)
	(calibration_target instrument10 groundstation2)
	(supports instrument11 thermograph4)
	(calibration_target instrument11 star0)
	(supports instrument12 thermograph4)
	(supports instrument12 infrared5)
	(calibration_target instrument12 groundstation2)
	(supports instrument13 thermograph3)
	(calibration_target instrument13 star0)
	(supports instrument14 thermograph4)
	(calibration_target instrument14 star0)
	(supports instrument15 thermograph2)
	(supports instrument15 infrared5)
	(supports instrument15 thermograph3)
	(calibration_target instrument15 groundstation2)
	(on_board instrument7 satellite2)
	(on_board instrument8 satellite2)
	(on_board instrument9 satellite2)
	(on_board instrument10 satellite2)
	(on_board instrument11 satellite2)
	(on_board instrument12 satellite2)
	(on_board instrument13 satellite2)
	(on_board instrument14 satellite2)
	(on_board instrument15 satellite2)
	(power_avail satellite2)
	(pointing satellite2 planet12)
	(supports instrument16 image1)
	(supports instrument16 thermograph4)
	(calibration_target instrument16 star0)
	(supports instrument17 thermograph4)
	(supports instrument17 thermograph3)
	(supports instrument17 infrared5)
	(calibration_target instrument17 groundstation1)
	(supports instrument18 thermograph4)
	(calibration_target instrument18 groundstation1)
	(supports instrument19 image1)
	(supports instrument19 thermograph2)
	(calibration_target instrument19 star3)
	(on_board instrument16 satellite3)
	(on_board instrument17 satellite3)
	(on_board instrument18 satellite3)
	(on_board instrument19 satellite3)
	(power_avail satellite3)
	(pointing satellite3 groundstation2)
	(supports instrument20 infrared5)
	(calibration_target instrument20 groundstation4)
	(supports instrument21 image1)
	(calibration_target instrument21 star3)
	(supports instrument22 image1)
	(calibration_target instrument22 groundstation2)
	(supports instrument23 image1)
	(calibration_target instrument23 star3)
	(supports instrument24 image1)
	(supports instrument24 thermograph2)
	(supports instrument24 thermograph3)
	(calibration_target instrument24 star3)
	(supports instrument25 thermograph4)
	(supports instrument25 infrared5)
	(supports instrument25 thermograph2)
	(calibration_target instrument25 groundstation2)
	(supports instrument26 thermograph2)
	(supports instrument26 thermograph0)
	(calibration_target instrument26 star0)
	(supports instrument27 image1)
	(supports instrument27 thermograph0)
	(calibration_target instrument27 groundstation4)
	(on_board instrument20 satellite4)
	(on_board instrument21 satellite4)
	(on_board instrument22 satellite4)
	(on_board instrument23 satellite4)
	(on_board instrument24 satellite4)
	(on_board instrument25 satellite4)
	(on_board instrument26 satellite4)
	(on_board instrument27 satellite4)
	(power_avail satellite4)
	(pointing satellite4 phenomenon7)
)
(:goal (and
	(pointing satellite0 phenomenon18)
	(pointing satellite1 groundstation4)
	(pointing satellite2 groundstation4)
	(pointing satellite3 groundstation4)
	(have_image planet5 image1)
	(have_image planet5 thermograph2)
	(have_image star6 thermograph2)
	(have_image phenomenon7 infrared5)
	(have_image phenomenon7 image1)
	(have_image star8 thermograph3)
	(have_image phenomenon9 infrared5)
	(have_image planet10 thermograph0)
	(have_image phenomenon11 thermograph0)
	(have_image phenomenon11 thermograph4)
	(have_image planet12 image1)
	(have_image planet13 thermograph3)
	(have_image star14 thermograph2)
	(have_image star14 image1)
	(have_image star15 thermograph3)
	(have_image star15 thermograph4)
	(have_image planet16 thermograph2)
	(have_image star17 image1)
	(have_image phenomenon18 thermograph4)
	(have_image planet19 thermograph2)
	(have_image phenomenon20 thermograph3)
	(have_image planet22 infrared5)
	(have_image star23 infrared5)
	(have_image planet24 thermograph4)
	(have_image planet24 image1)
))

)
