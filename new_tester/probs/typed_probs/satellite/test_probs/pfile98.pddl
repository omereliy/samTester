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
	instrument7 - instrument
	instrument8 - instrument
	satellite4 - satellite
	instrument9 - instrument
	instrument10 - instrument
	thermograph4 - mode
	thermograph1 - mode
	infrared0 - mode
	spectrograph3 - mode
	thermograph2 - mode
	groundstation4 - direction
	star2 - direction
	groundstation3 - direction
	groundstation0 - direction
	groundstation1 - direction
	planet5 - direction
	phenomenon6 - direction
	planet7 - direction
	planet8 - direction
	planet9 - direction
	phenomenon10 - direction
	star11 - direction
	planet12 - direction
	planet13 - direction
	phenomenon14 - direction
	planet15 - direction
	phenomenon16 - direction
	phenomenon17 - direction
)
(:init
	(supports instrument0 infrared0)
	(calibration_target instrument0 groundstation3)
	(supports instrument1 thermograph4)
	(supports instrument1 infrared0)
	(calibration_target instrument1 groundstation3)
	(supports instrument2 infrared0)
	(calibration_target instrument2 star2)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 phenomenon10)
	(supports instrument3 spectrograph3)
	(supports instrument3 infrared0)
	(calibration_target instrument3 star2)
	(supports instrument4 thermograph4)
	(supports instrument4 spectrograph3)
	(calibration_target instrument4 groundstation1)
	(on_board instrument3 satellite1)
	(on_board instrument4 satellite1)
	(power_avail satellite1)
	(pointing satellite1 planet7)
	(supports instrument5 thermograph4)
	(supports instrument5 thermograph2)
	(supports instrument5 thermograph1)
	(calibration_target instrument5 groundstation3)
	(on_board instrument5 satellite2)
	(power_avail satellite2)
	(pointing satellite2 groundstation1)
	(supports instrument6 spectrograph3)
	(supports instrument6 thermograph4)
	(calibration_target instrument6 groundstation3)
	(supports instrument7 thermograph2)
	(calibration_target instrument7 groundstation1)
	(supports instrument8 infrared0)
	(supports instrument8 thermograph4)
	(calibration_target instrument8 groundstation0)
	(on_board instrument6 satellite3)
	(on_board instrument7 satellite3)
	(on_board instrument8 satellite3)
	(power_avail satellite3)
	(pointing satellite3 planet7)
	(supports instrument9 spectrograph3)
	(supports instrument9 infrared0)
	(supports instrument9 thermograph1)
	(calibration_target instrument9 groundstation1)
	(supports instrument10 thermograph2)
	(supports instrument10 spectrograph3)
	(calibration_target instrument10 groundstation1)
	(on_board instrument9 satellite4)
	(on_board instrument10 satellite4)
	(power_avail satellite4)
	(pointing satellite4 planet5)
)
(:goal (and
	(pointing satellite4 phenomenon16)
	(have_image planet5 thermograph1)
	(have_image phenomenon6 thermograph1)
	(have_image planet7 infrared0)
	(have_image planet8 infrared0)
	(have_image planet9 thermograph1)
	(have_image star11 thermograph2)
	(have_image planet12 thermograph2)
	(have_image planet13 thermograph2)
	(have_image phenomenon14 thermograph1)
	(have_image planet15 thermograph1)
	(have_image phenomenon16 spectrograph3)
	(have_image phenomenon17 thermograph4)
))

)
