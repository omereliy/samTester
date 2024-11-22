(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	satellite1 - satellite
	instrument1 - instrument
	satellite2 - satellite
	instrument2 - instrument
	instrument3 - instrument
	satellite3 - satellite
	instrument4 - instrument
	satellite4 - satellite
	instrument5 - instrument
	instrument6 - instrument
	thermograph3 - mode
	thermograph0 - mode
	image1 - mode
	thermograph2 - mode
	thermograph4 - mode
	image6 - mode
	infrared5 - mode
	groundstation0 - direction
	groundstation4 - direction
	groundstation2 - direction
	star3 - direction
	star1 - direction
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
	(on_board instrument0 satellite0)
	(power_avail satellite0)
	(pointing satellite0 planet8)
	(supports instrument1 thermograph4)
	(supports instrument1 image1)
	(calibration_target instrument1 groundstation2)
	(on_board instrument1 satellite1)
	(power_avail satellite1)
	(pointing satellite1 phenomenon6)
	(supports instrument2 image1)
	(calibration_target instrument2 star3)
	(supports instrument3 thermograph4)
	(supports instrument3 infrared5)
	(supports instrument3 thermograph2)
	(calibration_target instrument3 groundstation2)
	(on_board instrument2 satellite2)
	(on_board instrument3 satellite2)
	(power_avail satellite2)
	(pointing satellite2 phenomenon16)
	(supports instrument4 infrared5)
	(calibration_target instrument4 star3)
	(on_board instrument4 satellite3)
	(power_avail satellite3)
	(pointing satellite3 planet18)
	(supports instrument5 image6)
	(calibration_target instrument5 star3)
	(supports instrument6 infrared5)
	(supports instrument6 image6)
	(calibration_target instrument6 star1)
	(on_board instrument5 satellite4)
	(on_board instrument6 satellite4)
	(power_avail satellite4)
	(pointing satellite4 planet11)
)
(:goal (and
	(pointing satellite0 planet13)
	(pointing satellite1 groundstation2)
	(pointing satellite4 star3)
	(have_image phenomenon5 thermograph2)
	(have_image phenomenon6 thermograph4)
	(have_image phenomenon6 image6)
	(have_image phenomenon7 infrared5)
	(have_image phenomenon7 thermograph4)
	(have_image planet8 thermograph2)
	(have_image phenomenon10 thermograph4)
	(have_image planet12 thermograph2)
	(have_image planet12 image6)
	(have_image planet13 image1)
	(have_image planet13 image6)
	(have_image phenomenon14 image1)
	(have_image phenomenon15 thermograph4)
	(have_image phenomenon16 image1)
	(have_image phenomenon17 thermograph4)
	(have_image planet18 thermograph4)
	(have_image phenomenon20 image6)
	(have_image star21 image6)
	(have_image star23 image1)
	(have_image phenomenon24 thermograph4)
	(have_image phenomenon24 thermograph2)
))

)
