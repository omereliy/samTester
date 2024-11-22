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
	instrument6 - instrument
	satellite3 - satellite
	instrument7 - instrument
	instrument8 - instrument
	satellite4 - satellite
	instrument9 - instrument
	satellite5 - satellite
	instrument10 - instrument
	instrument11 - instrument
	thermograph1 - mode
	spectrograph2 - mode
	image3 - mode
	image4 - mode
	infrared0 - mode
	star2 - direction
	groundstation1 - direction
	groundstation4 - direction
	groundstation0 - direction
	groundstation3 - direction
	star5 - direction
	phenomenon6 - direction
	star7 - direction
	planet8 - direction
	planet9 - direction
	planet10 - direction
	star11 - direction
	star12 - direction
	phenomenon13 - direction
	phenomenon14 - direction
	phenomenon15 - direction
	planet16 - direction
	phenomenon17 - direction
	phenomenon18 - direction
	star19 - direction
	phenomenon20 - direction
	star21 - direction
	phenomenon22 - direction
	phenomenon23 - direction
	star24 - direction
)
(:init
	(supports instrument0 infrared0)
	(supports instrument0 spectrograph2)
	(supports instrument0 image4)
	(calibration_target instrument0 groundstation4)
	(supports instrument1 image4)
	(calibration_target instrument1 groundstation3)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 phenomenon20)
	(supports instrument2 thermograph1)
	(supports instrument2 infrared0)
	(supports instrument2 image3)
	(calibration_target instrument2 groundstation3)
	(supports instrument3 spectrograph2)
	(supports instrument3 thermograph1)
	(supports instrument3 image4)
	(calibration_target instrument3 groundstation4)
	(on_board instrument2 satellite1)
	(on_board instrument3 satellite1)
	(power_avail satellite1)
	(pointing satellite1 star24)
	(supports instrument4 infrared0)
	(supports instrument4 spectrograph2)
	(calibration_target instrument4 groundstation0)
	(supports instrument5 image4)
	(supports instrument5 spectrograph2)
	(supports instrument5 image3)
	(calibration_target instrument5 groundstation0)
	(supports instrument6 image3)
	(calibration_target instrument6 groundstation1)
	(on_board instrument4 satellite2)
	(on_board instrument5 satellite2)
	(on_board instrument6 satellite2)
	(power_avail satellite2)
	(pointing satellite2 planet8)
	(supports instrument7 image4)
	(supports instrument7 image3)
	(supports instrument7 infrared0)
	(calibration_target instrument7 groundstation0)
	(supports instrument8 infrared0)
	(supports instrument8 image3)
	(calibration_target instrument8 groundstation1)
	(on_board instrument7 satellite3)
	(on_board instrument8 satellite3)
	(power_avail satellite3)
	(pointing satellite3 star5)
	(supports instrument9 image4)
	(supports instrument9 spectrograph2)
	(supports instrument9 thermograph1)
	(calibration_target instrument9 groundstation4)
	(on_board instrument9 satellite4)
	(power_avail satellite4)
	(pointing satellite4 groundstation4)
	(supports instrument10 image4)
	(supports instrument10 image3)
	(calibration_target instrument10 groundstation0)
	(supports instrument11 infrared0)
	(calibration_target instrument11 groundstation3)
	(on_board instrument10 satellite5)
	(on_board instrument11 satellite5)
	(power_avail satellite5)
	(pointing satellite5 groundstation3)
)
(:goal (and
	(pointing satellite1 star7)
	(pointing satellite4 phenomenon6)
	(pointing satellite5 phenomenon14)
	(have_image star5 image3)
	(have_image phenomenon6 image4)
	(have_image star7 image3)
	(have_image planet8 thermograph1)
	(have_image planet9 image4)
	(have_image planet10 spectrograph2)
	(have_image star11 thermograph1)
	(have_image phenomenon13 spectrograph2)
	(have_image phenomenon14 image4)
	(have_image phenomenon15 image4)
	(have_image planet16 image4)
	(have_image phenomenon17 infrared0)
	(have_image phenomenon18 infrared0)
	(have_image star19 thermograph1)
	(have_image phenomenon20 image4)
	(have_image star21 thermograph1)
	(have_image phenomenon22 thermograph1)
	(have_image phenomenon23 spectrograph2)
	(have_image star24 infrared0)
))

)
