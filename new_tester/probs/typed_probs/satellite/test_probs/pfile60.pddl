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
	instrument7 - instrument
	instrument8 - instrument
	satellite2 - satellite
	instrument9 - instrument
	instrument10 - instrument
	satellite3 - satellite
	instrument11 - instrument
	instrument12 - instrument
	satellite4 - satellite
	instrument13 - instrument
	instrument14 - instrument
	instrument15 - instrument
	instrument16 - instrument
	instrument17 - instrument
	thermograph4 - mode
	image6 - mode
	thermograph0 - mode
	infrared5 - mode
	image1 - mode
	thermograph3 - mode
	thermograph2 - mode
	star1 - direction
	star3 - direction
	groundstation0 - direction
	groundstation4 - direction
	groundstation2 - direction
	phenomenon5 - direction
	phenomenon6 - direction
	phenomenon7 - direction
	planet8 - direction
	phenomenon9 - direction
	phenomenon10 - direction
	planet11 - direction
	planet12 - direction
	planet13 - direction
	phenomenon14 - direction
	phenomenon15 - direction
	phenomenon16 - direction
	phenomenon17 - direction
	planet18 - direction
	phenomenon19 - direction
	phenomenon20 - direction
	star21 - direction
	planet22 - direction
	star23 - direction
	phenomenon24 - direction
)
(:init
	(supports instrument0 infrared5)
	(supports instrument0 thermograph2)
	(calibration_target instrument0 star3)
	(supports instrument1 thermograph3)
	(supports instrument1 thermograph0)
	(supports instrument1 thermograph4)
	(calibration_target instrument1 star3)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 planet8)
	(supports instrument2 thermograph3)
	(supports instrument2 image1)
	(calibration_target instrument2 star1)
	(supports instrument3 image1)
	(calibration_target instrument3 star3)
	(supports instrument4 thermograph3)
	(supports instrument4 thermograph0)
	(supports instrument4 thermograph4)
	(calibration_target instrument4 star1)
	(supports instrument5 thermograph4)
	(supports instrument5 image6)
	(calibration_target instrument5 groundstation4)
	(supports instrument6 infrared5)
	(calibration_target instrument6 groundstation4)
	(supports instrument7 image6)
	(calibration_target instrument7 groundstation0)
	(supports instrument8 thermograph3)
	(calibration_target instrument8 groundstation2)
	(on_board instrument2 satellite1)
	(on_board instrument3 satellite1)
	(on_board instrument4 satellite1)
	(on_board instrument5 satellite1)
	(on_board instrument6 satellite1)
	(on_board instrument7 satellite1)
	(on_board instrument8 satellite1)
	(power_avail satellite1)
	(pointing satellite1 phenomenon16)
	(supports instrument9 thermograph4)
	(calibration_target instrument9 groundstation2)
	(supports instrument10 image6)
	(supports instrument10 thermograph3)
	(supports instrument10 thermograph4)
	(calibration_target instrument10 star3)
	(on_board instrument9 satellite2)
	(on_board instrument10 satellite2)
	(power_avail satellite2)
	(pointing satellite2 star23)
	(supports instrument11 thermograph0)
	(calibration_target instrument11 groundstation4)
	(supports instrument12 infrared5)
	(calibration_target instrument12 star3)
	(on_board instrument11 satellite3)
	(on_board instrument12 satellite3)
	(power_avail satellite3)
	(pointing satellite3 phenomenon20)
	(supports instrument13 infrared5)
	(calibration_target instrument13 star3)
	(supports instrument14 thermograph3)
	(supports instrument14 image1)
	(calibration_target instrument14 groundstation0)
	(supports instrument15 thermograph2)
	(calibration_target instrument15 groundstation4)
	(supports instrument16 thermograph2)
	(calibration_target instrument16 groundstation2)
	(supports instrument17 thermograph2)
	(calibration_target instrument17 groundstation2)
	(on_board instrument13 satellite4)
	(on_board instrument14 satellite4)
	(on_board instrument15 satellite4)
	(on_board instrument16 satellite4)
	(on_board instrument17 satellite4)
	(power_avail satellite4)
	(pointing satellite4 phenomenon19)
)
(:goal (and
	(pointing satellite0 planet13)
	(pointing satellite3 phenomenon10)
	(pointing satellite4 planet12)
	(have_image phenomenon5 thermograph2)
	(have_image phenomenon6 thermograph4)
	(have_image phenomenon6 image6)
	(have_image phenomenon7 infrared5)
	(have_image phenomenon7 thermograph4)
	(have_image planet8 thermograph2)
	(have_image phenomenon10 thermograph4)
	(have_image phenomenon10 thermograph0)
	(have_image planet11 thermograph3)
	(have_image planet12 thermograph2)
	(have_image planet12 image6)
	(have_image planet13 image1)
	(have_image planet13 image6)
	(have_image phenomenon14 image1)
	(have_image phenomenon14 thermograph3)
	(have_image phenomenon15 thermograph4)
	(have_image phenomenon16 image1)
	(have_image phenomenon17 thermograph3)
	(have_image phenomenon17 thermograph4)
	(have_image planet18 thermograph4)
	(have_image planet18 thermograph3)
	(have_image phenomenon19 thermograph0)
	(have_image phenomenon20 image6)
	(have_image star21 image6)
	(have_image star23 image1)
	(have_image phenomenon24 thermograph4)
	(have_image phenomenon24 thermograph2)
))

)
