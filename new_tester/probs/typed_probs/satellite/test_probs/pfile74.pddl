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
	instrument4 - instrument
	instrument5 - instrument
	satellite3 - satellite
	instrument6 - instrument
	satellite4 - satellite
	instrument7 - instrument
	instrument8 - instrument
	instrument9 - instrument
	spectrograph0 - mode
	infrared3 - mode
	thermograph2 - mode
	image1 - mode
	infrared4 - mode
	groundstation1 - direction
	star0 - direction
	groundstation4 - direction
	groundstation2 - direction
	groundstation3 - direction
	star5 - direction
	star6 - direction
	phenomenon7 - direction
	star8 - direction
	star9 - direction
	planet10 - direction
	star11 - direction
	star12 - direction
	planet13 - direction
	planet14 - direction
	planet15 - direction
	star16 - direction
	phenomenon17 - direction
	phenomenon18 - direction
	planet19 - direction
	phenomenon20 - direction
	phenomenon21 - direction
	star22 - direction
)
(:init
	(supports instrument0 image1)
	(supports instrument0 infrared3)
	(calibration_target instrument0 groundstation2)
	(on_board instrument0 satellite0)
	(power_avail satellite0)
	(pointing satellite0 star22)
	(supports instrument1 spectrograph0)
	(supports instrument1 image1)
	(supports instrument1 thermograph2)
	(calibration_target instrument1 groundstation2)
	(supports instrument2 infrared4)
	(supports instrument2 infrared3)
	(supports instrument2 thermograph2)
	(calibration_target instrument2 star0)
	(on_board instrument1 satellite1)
	(on_board instrument2 satellite1)
	(power_avail satellite1)
	(pointing satellite1 groundstation2)
	(supports instrument3 image1)
	(calibration_target instrument3 groundstation3)
	(supports instrument4 spectrograph0)
	(supports instrument4 infrared3)
	(calibration_target instrument4 star0)
	(supports instrument5 image1)
	(supports instrument5 infrared4)
	(supports instrument5 thermograph2)
	(calibration_target instrument5 groundstation4)
	(on_board instrument3 satellite2)
	(on_board instrument4 satellite2)
	(on_board instrument5 satellite2)
	(power_avail satellite2)
	(pointing satellite2 phenomenon7)
	(supports instrument6 infrared4)
	(supports instrument6 image1)
	(calibration_target instrument6 groundstation2)
	(on_board instrument6 satellite3)
	(power_avail satellite3)
	(pointing satellite3 planet10)
	(supports instrument7 image1)
	(supports instrument7 thermograph2)
	(supports instrument7 infrared3)
	(calibration_target instrument7 groundstation3)
	(supports instrument8 thermograph2)
	(supports instrument8 infrared3)
	(supports instrument8 image1)
	(calibration_target instrument8 groundstation3)
	(supports instrument9 infrared4)
	(supports instrument9 image1)
	(calibration_target instrument9 groundstation3)
	(on_board instrument7 satellite4)
	(on_board instrument8 satellite4)
	(on_board instrument9 satellite4)
	(power_avail satellite4)
	(pointing satellite4 planet14)
)
(:goal (and
	(pointing satellite0 phenomenon18)
	(pointing satellite1 phenomenon18)
	(pointing satellite3 star12)
	(have_image star5 spectrograph0)
	(have_image star6 infrared3)
	(have_image star8 thermograph2)
	(have_image star9 spectrograph0)
	(have_image planet10 thermograph2)
	(have_image star11 thermograph2)
	(have_image star12 spectrograph0)
	(have_image planet13 infrared4)
	(have_image planet14 thermograph2)
	(have_image planet15 infrared3)
	(have_image star16 infrared4)
	(have_image phenomenon17 spectrograph0)
	(have_image phenomenon18 image1)
	(have_image phenomenon20 thermograph2)
	(have_image phenomenon21 spectrograph0)
	(have_image star22 infrared4)
))

)
