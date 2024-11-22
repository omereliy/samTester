(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	satellite1 - satellite
	instrument1 - instrument
	instrument2 - instrument
	instrument3 - instrument
	instrument4 - instrument
	satellite2 - satellite
	instrument5 - instrument
	instrument6 - instrument
	instrument7 - instrument
	satellite3 - satellite
	instrument8 - instrument
	instrument9 - instrument
	instrument10 - instrument
	instrument11 - instrument
	instrument12 - instrument
	instrument13 - instrument
	instrument14 - instrument
	satellite4 - satellite
	instrument15 - instrument
	instrument16 - instrument
	instrument17 - instrument
	instrument18 - instrument
	instrument19 - instrument
	instrument20 - instrument
	instrument21 - instrument
	thermograph7 - mode
	thermograph4 - mode
	thermograph2 - mode
	thermograph3 - mode
	image6 - mode
	infrared5 - mode
	image1 - mode
	image8 - mode
	thermograph0 - mode
	star4 - direction
	groundstation0 - direction
	groundstation2 - direction
	star3 - direction
	star1 - direction
	star5 - direction
	star6 - direction
	phenomenon7 - direction
	star8 - direction
	star9 - direction
	planet10 - direction
	phenomenon11 - direction
	phenomenon12 - direction
	phenomenon13 - direction
	planet14 - direction
	phenomenon15 - direction
	phenomenon16 - direction
	phenomenon17 - direction
	phenomenon18 - direction
	star19 - direction
	star20 - direction
	star21 - direction
	planet22 - direction
	phenomenon23 - direction
	phenomenon24 - direction
)
(:init
	(supports instrument0 image1)
	(supports instrument0 thermograph3)
	(calibration_target instrument0 star3)
	(on_board instrument0 satellite0)
	(power_avail satellite0)
	(pointing satellite0 star8)
	(supports instrument1 thermograph3)
	(supports instrument1 thermograph4)
	(calibration_target instrument1 star4)
	(supports instrument2 image1)
	(supports instrument2 image8)
	(supports instrument2 thermograph0)
	(calibration_target instrument2 star3)
	(supports instrument3 image6)
	(calibration_target instrument3 groundstation0)
	(supports instrument4 thermograph4)
	(supports instrument4 thermograph3)
	(calibration_target instrument4 star1)
	(on_board instrument1 satellite1)
	(on_board instrument2 satellite1)
	(on_board instrument3 satellite1)
	(on_board instrument4 satellite1)
	(power_avail satellite1)
	(pointing satellite1 phenomenon15)
	(supports instrument5 thermograph7)
	(supports instrument5 image1)
	(calibration_target instrument5 star1)
	(supports instrument6 thermograph4)
	(supports instrument6 image8)
	(supports instrument6 image6)
	(calibration_target instrument6 star4)
	(supports instrument7 thermograph0)
	(supports instrument7 infrared5)
	(calibration_target instrument7 groundstation0)
	(on_board instrument5 satellite2)
	(on_board instrument6 satellite2)
	(on_board instrument7 satellite2)
	(power_avail satellite2)
	(pointing satellite2 phenomenon17)
	(supports instrument8 infrared5)
	(calibration_target instrument8 star4)
	(supports instrument9 infrared5)
	(calibration_target instrument9 groundstation2)
	(supports instrument10 infrared5)
	(calibration_target instrument10 star4)
	(supports instrument11 infrared5)
	(supports instrument11 image8)
	(supports instrument11 image1)
	(calibration_target instrument11 star4)
	(supports instrument12 thermograph7)
	(supports instrument12 image6)
	(supports instrument12 thermograph0)
	(calibration_target instrument12 groundstation2)
	(supports instrument13 image8)
	(supports instrument13 thermograph2)
	(calibration_target instrument13 star3)
	(supports instrument14 image1)
	(supports instrument14 thermograph7)
	(calibration_target instrument14 groundstation0)
	(on_board instrument8 satellite3)
	(on_board instrument9 satellite3)
	(on_board instrument10 satellite3)
	(on_board instrument11 satellite3)
	(on_board instrument12 satellite3)
	(on_board instrument13 satellite3)
	(on_board instrument14 satellite3)
	(power_avail satellite3)
	(pointing satellite3 groundstation0)
	(supports instrument15 infrared5)
	(supports instrument15 thermograph4)
	(calibration_target instrument15 groundstation2)
	(supports instrument16 thermograph4)
	(supports instrument16 thermograph2)
	(supports instrument16 thermograph3)
	(calibration_target instrument16 star1)
	(supports instrument17 thermograph0)
	(supports instrument17 thermograph2)
	(supports instrument17 image8)
	(calibration_target instrument17 star3)
	(supports instrument18 thermograph3)
	(supports instrument18 image8)
	(calibration_target instrument18 star3)
	(supports instrument19 image6)
	(calibration_target instrument19 star3)
	(supports instrument20 image1)
	(supports instrument20 infrared5)
	(calibration_target instrument20 star1)
	(supports instrument21 thermograph0)
	(supports instrument21 image8)
	(calibration_target instrument21 star1)
	(on_board instrument15 satellite4)
	(on_board instrument16 satellite4)
	(on_board instrument17 satellite4)
	(on_board instrument18 satellite4)
	(on_board instrument19 satellite4)
	(on_board instrument20 satellite4)
	(on_board instrument21 satellite4)
	(power_avail satellite4)
	(pointing satellite4 phenomenon11)
)
(:goal (and
	(pointing satellite0 phenomenon11)
	(pointing satellite1 phenomenon23)
	(pointing satellite3 star3)
	(have_image star5 image8)
	(have_image star5 thermograph0)
	(have_image star5 thermograph7)
	(have_image star6 image8)
	(have_image star6 image6)
	(have_image star6 thermograph2)
	(have_image phenomenon7 image8)
	(have_image phenomenon7 thermograph3)
	(have_image phenomenon7 image6)
	(have_image star8 thermograph4)
	(have_image star9 infrared5)
	(have_image star9 thermograph4)
	(have_image star9 image1)
	(have_image planet10 infrared5)
	(have_image planet10 image8)
	(have_image planet10 thermograph4)
	(have_image phenomenon11 image1)
	(have_image phenomenon11 image8)
	(have_image phenomenon12 thermograph2)
	(have_image phenomenon12 image8)
	(have_image phenomenon13 image1)
	(have_image planet14 thermograph2)
	(have_image phenomenon15 thermograph3)
	(have_image phenomenon15 thermograph7)
	(have_image phenomenon15 image8)
	(have_image phenomenon16 thermograph4)
	(have_image phenomenon16 image1)
	(have_image phenomenon17 thermograph7)
	(have_image phenomenon17 infrared5)
	(have_image phenomenon17 thermograph4)
	(have_image phenomenon18 thermograph0)
	(have_image phenomenon18 thermograph4)
	(have_image star19 thermograph7)
	(have_image star19 thermograph0)
	(have_image star19 thermograph2)
	(have_image star20 thermograph2)
	(have_image star20 thermograph7)
	(have_image star21 image6)
	(have_image planet22 thermograph2)
	(have_image planet22 image6)
	(have_image phenomenon23 infrared5)
	(have_image phenomenon24 thermograph0)
	(have_image phenomenon24 thermograph7)
))

)
