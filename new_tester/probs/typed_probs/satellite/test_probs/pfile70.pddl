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
	satellite4 - satellite
	instrument9 - instrument
	instrument10 - instrument
	instrument11 - instrument
	thermograph3 - mode
	infrared4 - mode
	image1 - mode
	spectrograph2 - mode
	infrared0 - mode
	groundstation0 - direction
	groundstation3 - direction
	star1 - direction
	groundstation2 - direction
	groundstation4 - direction
	planet5 - direction
	star6 - direction
	planet7 - direction
	phenomenon8 - direction
	planet9 - direction
	phenomenon10 - direction
	star11 - direction
	phenomenon12 - direction
	star13 - direction
	planet14 - direction
	star15 - direction
	phenomenon16 - direction
	phenomenon17 - direction
	star18 - direction
	planet19 - direction
)
(:init
	(supports instrument0 thermograph3)
	(calibration_target instrument0 groundstation2)
	(supports instrument1 spectrograph2)
	(calibration_target instrument1 groundstation2)
	(supports instrument2 image1)
	(supports instrument2 infrared4)
	(calibration_target instrument2 groundstation0)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 star18)
	(supports instrument3 spectrograph2)
	(supports instrument3 thermograph3)
	(supports instrument3 infrared4)
	(calibration_target instrument3 groundstation0)
	(supports instrument4 image1)
	(supports instrument4 thermograph3)
	(supports instrument4 spectrograph2)
	(calibration_target instrument4 groundstation4)
	(on_board instrument3 satellite1)
	(on_board instrument4 satellite1)
	(power_avail satellite1)
	(pointing satellite1 star13)
	(supports instrument5 thermograph3)
	(supports instrument5 infrared4)
	(supports instrument5 spectrograph2)
	(calibration_target instrument5 groundstation4)
	(supports instrument6 spectrograph2)
	(supports instrument6 infrared0)
	(supports instrument6 infrared4)
	(calibration_target instrument6 groundstation3)
	(on_board instrument5 satellite2)
	(on_board instrument6 satellite2)
	(power_avail satellite2)
	(pointing satellite2 phenomenon16)
	(supports instrument7 infrared0)
	(calibration_target instrument7 groundstation3)
	(supports instrument8 infrared0)
	(supports instrument8 spectrograph2)
	(calibration_target instrument8 groundstation2)
	(on_board instrument7 satellite3)
	(on_board instrument8 satellite3)
	(power_avail satellite3)
	(pointing satellite3 phenomenon8)
	(supports instrument9 infrared0)
	(calibration_target instrument9 star1)
	(supports instrument10 infrared0)
	(calibration_target instrument10 groundstation2)
	(supports instrument11 infrared0)
	(supports instrument11 spectrograph2)
	(supports instrument11 image1)
	(calibration_target instrument11 groundstation4)
	(on_board instrument9 satellite4)
	(on_board instrument10 satellite4)
	(on_board instrument11 satellite4)
	(power_avail satellite4)
	(pointing satellite4 star15)
)
(:goal (and
	(pointing satellite2 star1)
	(have_image planet5 thermograph3)
	(have_image star6 image1)
	(have_image planet7 spectrograph2)
	(have_image phenomenon8 infrared4)
	(have_image planet9 spectrograph2)
	(have_image phenomenon10 infrared4)
	(have_image star11 infrared4)
	(have_image phenomenon12 infrared0)
	(have_image star13 infrared0)
	(have_image star15 infrared0)
	(have_image phenomenon16 infrared0)
	(have_image phenomenon17 infrared4)
	(have_image star18 infrared4)
	(have_image planet19 image1)
))

)
