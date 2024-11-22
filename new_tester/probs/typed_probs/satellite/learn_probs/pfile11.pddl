(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	instrument1 - instrument
	satellite1 - satellite
	instrument2 - instrument
	instrument3 - instrument
	satellite2 - satellite
	instrument4 - instrument
	instrument5 - instrument
	satellite3 - satellite
	instrument6 - instrument
	satellite4 - satellite
	instrument7 - instrument
	instrument8 - instrument
	satellite5 - satellite
	instrument9 - instrument
	instrument10 - instrument
	instrument11 - instrument
	thermograph3 - mode
	image0 - mode
	thermograph4 - mode
	thermograph1 - mode
	thermograph2 - mode
	groundstation1 - direction
	star0 - direction
	groundstation2 - direction
	star4 - direction
	star3 - direction
	star5 - direction
	phenomenon6 - direction
	phenomenon7 - direction
	star8 - direction
	phenomenon9 - direction
	planet10 - direction
	planet11 - direction
	planet12 - direction
	planet13 - direction
	phenomenon14 - direction
	star15 - direction
	phenomenon16 - direction
	planet17 - direction
	planet18 - direction
	phenomenon19 - direction
	phenomenon20 - direction
	star21 - direction
	phenomenon22 - direction
	star23 - direction
	phenomenon24 - direction
)
(:init
	(supports instrument0 thermograph3)
	(calibration_target instrument0 groundstation2)
	(supports instrument1 thermograph4)
	(supports instrument1 thermograph3)
	(calibration_target instrument1 groundstation1)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 groundstation2)
	(supports instrument2 thermograph1)
	(calibration_target instrument2 star3)
	(supports instrument3 thermograph2)
	(calibration_target instrument3 groundstation1)
	(on_board instrument2 satellite1)
	(on_board instrument3 satellite1)
	(power_avail satellite1)
	(pointing satellite1 star21)
	(supports instrument4 image0)
	(calibration_target instrument4 groundstation1)
	(supports instrument5 thermograph4)
	(supports instrument5 thermograph2)
	(calibration_target instrument5 star0)
	(on_board instrument4 satellite2)
	(on_board instrument5 satellite2)
	(power_avail satellite2)
	(pointing satellite2 planet17)
	(supports instrument6 thermograph2)
	(supports instrument6 thermograph1)
	(calibration_target instrument6 star3)
	(on_board instrument6 satellite3)
	(power_avail satellite3)
	(pointing satellite3 planet10)
	(supports instrument7 thermograph3)
	(calibration_target instrument7 star3)
	(supports instrument8 image0)
	(calibration_target instrument8 groundstation2)
	(on_board instrument7 satellite4)
	(on_board instrument8 satellite4)
	(power_avail satellite4)
	(pointing satellite4 star5)
	(supports instrument9 thermograph1)
	(supports instrument9 thermograph2)
	(supports instrument9 thermograph4)
	(calibration_target instrument9 groundstation2)
	(supports instrument10 thermograph1)
	(calibration_target instrument10 star4)
	(supports instrument11 thermograph2)
	(supports instrument11 thermograph1)
	(calibration_target instrument11 star3)
	(on_board instrument9 satellite5)
	(on_board instrument10 satellite5)
	(on_board instrument11 satellite5)
	(power_avail satellite5)
	(pointing satellite5 star23)
)
(:goal (and
	(pointing satellite1 planet18)
	(have_image star5 thermograph4)
	(have_image phenomenon6 thermograph1)
	(have_image phenomenon7 thermograph1)
	(have_image star8 thermograph2)
	(have_image phenomenon9 thermograph3)
	(have_image planet10 thermograph1)
	(have_image planet11 image0)
	(have_image planet12 thermograph1)
	(have_image phenomenon14 thermograph2)
	(have_image star15 thermograph1)
	(have_image phenomenon16 thermograph1)
	(have_image planet17 thermograph3)
	(have_image planet18 image0)
	(have_image phenomenon19 image0)
	(have_image star21 image0)
	(have_image phenomenon22 thermograph4)
	(have_image star23 thermograph2)
	(have_image phenomenon24 thermograph2)
))

)
