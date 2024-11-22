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
	instrument6 - instrument
	satellite3 - satellite
	instrument7 - instrument
	instrument8 - instrument
	instrument9 - instrument
	satellite4 - satellite
	instrument10 - instrument
	instrument11 - instrument
	instrument12 - instrument
	spectrograph1 - mode
	thermograph4 - mode
	spectrograph3 - mode
	infrared0 - mode
	image2 - mode
	star1 - direction
	star2 - direction
	groundstation4 - direction
	star0 - direction
	groundstation3 - direction
	star5 - direction
	phenomenon6 - direction
	star7 - direction
	phenomenon8 - direction
	planet9 - direction
	phenomenon10 - direction
	star11 - direction
	planet12 - direction
	planet13 - direction
	star14 - direction
	star15 - direction
	planet16 - direction
)
(:init
	(supports instrument0 spectrograph3)
	(calibration_target instrument0 star0)
	(supports instrument1 thermograph4)
	(supports instrument1 spectrograph1)
	(calibration_target instrument1 star2)
	(supports instrument2 spectrograph3)
	(calibration_target instrument2 star0)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 star11)
	(supports instrument3 thermograph4)
	(calibration_target instrument3 star0)
	(supports instrument4 spectrograph3)
	(supports instrument4 infrared0)
	(supports instrument4 thermograph4)
	(calibration_target instrument4 star0)
	(on_board instrument3 satellite1)
	(on_board instrument4 satellite1)
	(power_avail satellite1)
	(pointing satellite1 star1)
	(supports instrument5 image2)
	(calibration_target instrument5 star0)
	(supports instrument6 image2)
	(supports instrument6 thermograph4)
	(supports instrument6 spectrograph1)
	(calibration_target instrument6 star2)
	(on_board instrument5 satellite2)
	(on_board instrument6 satellite2)
	(power_avail satellite2)
	(pointing satellite2 groundstation3)
	(supports instrument7 thermograph4)
	(calibration_target instrument7 star2)
	(supports instrument8 spectrograph3)
	(supports instrument8 thermograph4)
	(supports instrument8 image2)
	(calibration_target instrument8 groundstation4)
	(supports instrument9 image2)
	(supports instrument9 spectrograph3)
	(calibration_target instrument9 groundstation4)
	(on_board instrument7 satellite3)
	(on_board instrument8 satellite3)
	(on_board instrument9 satellite3)
	(power_avail satellite3)
	(pointing satellite3 phenomenon8)
	(supports instrument10 spectrograph3)
	(supports instrument10 image2)
	(calibration_target instrument10 star0)
	(supports instrument11 infrared0)
	(calibration_target instrument11 groundstation3)
	(supports instrument12 image2)
	(supports instrument12 infrared0)
	(calibration_target instrument12 groundstation3)
	(on_board instrument10 satellite4)
	(on_board instrument11 satellite4)
	(on_board instrument12 satellite4)
	(power_avail satellite4)
	(pointing satellite4 planet9)
)
(:goal (and
	(pointing satellite1 groundstation4)
	(pointing satellite4 phenomenon10)
	(have_image star5 infrared0)
	(have_image phenomenon6 spectrograph3)
	(have_image star7 spectrograph1)
	(have_image phenomenon8 infrared0)
	(have_image planet9 spectrograph3)
	(have_image phenomenon10 spectrograph1)
	(have_image star11 spectrograph3)
	(have_image star14 spectrograph3)
	(have_image planet16 spectrograph3)
))

)
