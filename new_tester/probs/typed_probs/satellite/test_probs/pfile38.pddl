(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	instrument1 - instrument
	satellite1 - satellite
	instrument2 - instrument
	satellite2 - satellite
	instrument3 - instrument
	satellite3 - satellite
	instrument4 - instrument
	instrument5 - instrument
	instrument6 - instrument
	satellite4 - satellite
	instrument7 - instrument
	instrument8 - instrument
	thermograph0 - mode
	spectrograph3 - mode
	spectrograph1 - mode
	spectrograph2 - mode
	infrared4 - mode
	star4 - direction
	groundstation3 - direction
	star1 - direction
	groundstation0 - direction
	star2 - direction
	star5 - direction
	star6 - direction
	planet7 - direction
	phenomenon8 - direction
	phenomenon9 - direction
	star10 - direction
	star11 - direction
	star12 - direction
	star13 - direction
	star14 - direction
	phenomenon15 - direction
	planet16 - direction
	star17 - direction
	star18 - direction
	phenomenon19 - direction
	planet20 - direction
	star21 - direction
	planet22 - direction
	phenomenon23 - direction
	phenomenon24 - direction
	planet25 - direction
	phenomenon26 - direction
	phenomenon27 - direction
	star28 - direction
	phenomenon29 - direction
)
(:init
	(supports instrument0 spectrograph2)
	(supports instrument0 thermograph0)
	(calibration_target instrument0 star4)
	(supports instrument1 spectrograph3)
	(supports instrument1 infrared4)
	(calibration_target instrument1 star4)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 star10)
	(supports instrument2 thermograph0)
	(calibration_target instrument2 groundstation3)
	(on_board instrument2 satellite1)
	(power_avail satellite1)
	(pointing satellite1 star17)
	(supports instrument3 thermograph0)
	(supports instrument3 infrared4)
	(calibration_target instrument3 groundstation3)
	(on_board instrument3 satellite2)
	(power_avail satellite2)
	(pointing satellite2 star28)
	(supports instrument4 spectrograph2)
	(supports instrument4 spectrograph1)
	(calibration_target instrument4 groundstation3)
	(supports instrument5 infrared4)
	(supports instrument5 spectrograph3)
	(calibration_target instrument5 star1)
	(supports instrument6 spectrograph1)
	(calibration_target instrument6 star2)
	(on_board instrument4 satellite3)
	(on_board instrument5 satellite3)
	(on_board instrument6 satellite3)
	(power_avail satellite3)
	(pointing satellite3 planet7)
	(supports instrument7 spectrograph1)
	(calibration_target instrument7 groundstation0)
	(supports instrument8 infrared4)
	(supports instrument8 spectrograph2)
	(calibration_target instrument8 star2)
	(on_board instrument7 satellite4)
	(on_board instrument8 satellite4)
	(power_avail satellite4)
	(pointing satellite4 phenomenon27)
)
(:goal (and
	(pointing satellite0 star1)
	(pointing satellite2 groundstation3)
	(pointing satellite3 star28)
	(pointing satellite4 star10)
	(have_image star5 thermograph0)
	(have_image star6 spectrograph2)
	(have_image phenomenon8 infrared4)
	(have_image phenomenon9 infrared4)
	(have_image star10 spectrograph1)
	(have_image star11 spectrograph2)
	(have_image star12 spectrograph3)
	(have_image star13 spectrograph1)
	(have_image star14 spectrograph1)
	(have_image phenomenon15 spectrograph2)
	(have_image planet16 spectrograph3)
	(have_image star17 spectrograph2)
	(have_image star18 spectrograph3)
	(have_image phenomenon19 infrared4)
	(have_image planet20 spectrograph2)
	(have_image star21 spectrograph2)
	(have_image planet22 spectrograph3)
	(have_image phenomenon23 thermograph0)
	(have_image phenomenon24 thermograph0)
	(have_image planet25 spectrograph3)
	(have_image phenomenon26 spectrograph1)
	(have_image phenomenon27 spectrograph1)
	(have_image star28 spectrograph3)
	(have_image phenomenon29 spectrograph1)
))

)
