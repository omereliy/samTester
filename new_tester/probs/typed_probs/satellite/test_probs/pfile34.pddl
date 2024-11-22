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
	satellite4 - satellite
	instrument5 - instrument
	instrument6 - instrument
	thermograph0 - mode
	thermograph4 - mode
	spectrograph3 - mode
	thermograph2 - mode
	thermograph1 - mode
	star0 - direction
	groundstation1 - direction
	groundstation4 - direction
	groundstation3 - direction
	star2 - direction
	star5 - direction
	phenomenon6 - direction
	planet7 - direction
	phenomenon8 - direction
	phenomenon9 - direction
	star10 - direction
	phenomenon11 - direction
	phenomenon12 - direction
	star13 - direction
	phenomenon14 - direction
	star15 - direction
	star16 - direction
	phenomenon17 - direction
	planet18 - direction
	planet19 - direction
	phenomenon20 - direction
	planet21 - direction
	planet22 - direction
	phenomenon23 - direction
	star24 - direction
	phenomenon25 - direction
	star26 - direction
	planet27 - direction
)
(:init
	(supports instrument0 thermograph2)
	(supports instrument0 spectrograph3)
	(calibration_target instrument0 groundstation4)
	(on_board instrument0 satellite0)
	(power_avail satellite0)
	(pointing satellite0 planet19)
	(supports instrument1 thermograph0)
	(supports instrument1 thermograph1)
	(calibration_target instrument1 groundstation3)
	(supports instrument2 thermograph0)
	(calibration_target instrument2 groundstation3)
	(on_board instrument1 satellite1)
	(on_board instrument2 satellite1)
	(power_avail satellite1)
	(pointing satellite1 star16)
	(supports instrument3 thermograph4)
	(calibration_target instrument3 star2)
	(on_board instrument3 satellite2)
	(power_avail satellite2)
	(pointing satellite2 star15)
	(supports instrument4 thermograph4)
	(calibration_target instrument4 groundstation3)
	(on_board instrument4 satellite3)
	(power_avail satellite3)
	(pointing satellite3 star16)
	(supports instrument5 spectrograph3)
	(calibration_target instrument5 groundstation3)
	(supports instrument6 thermograph1)
	(supports instrument6 thermograph2)
	(supports instrument6 spectrograph3)
	(calibration_target instrument6 star2)
	(on_board instrument5 satellite4)
	(on_board instrument6 satellite4)
	(power_avail satellite4)
	(pointing satellite4 phenomenon20)
)
(:goal (and
	(pointing satellite0 star13)
	(have_image star5 spectrograph3)
	(have_image phenomenon6 thermograph0)
	(have_image phenomenon8 thermograph2)
	(have_image phenomenon9 thermograph0)
	(have_image phenomenon11 thermograph1)
	(have_image phenomenon12 thermograph1)
	(have_image star13 thermograph4)
	(have_image phenomenon14 thermograph1)
	(have_image star15 thermograph1)
	(have_image star16 thermograph1)
	(have_image planet18 thermograph1)
	(have_image planet19 thermograph2)
	(have_image phenomenon20 thermograph2)
	(have_image planet22 thermograph2)
	(have_image phenomenon23 thermograph2)
	(have_image star24 thermograph1)
	(have_image phenomenon25 thermograph2)
	(have_image star26 thermograph0)
	(have_image planet27 thermograph1)
))

)
