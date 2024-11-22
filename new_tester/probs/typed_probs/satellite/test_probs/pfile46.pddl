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
	satellite2 - satellite
	instrument5 - instrument
	satellite3 - satellite
	instrument6 - instrument
	instrument7 - instrument
	satellite4 - satellite
	instrument8 - instrument
	instrument9 - instrument
	infrared1 - mode
	infrared0 - mode
	infrared4 - mode
	infrared3 - mode
	spectrograph2 - mode
	star1 - direction
	groundstation3 - direction
	star0 - direction
	groundstation4 - direction
	groundstation2 - direction
	star5 - direction
	planet6 - direction
	star7 - direction
	phenomenon8 - direction
	phenomenon9 - direction
	star10 - direction
	planet11 - direction
	star12 - direction
	star13 - direction
	phenomenon14 - direction
	star15 - direction
	phenomenon16 - direction
	planet17 - direction
	planet18 - direction
	phenomenon19 - direction
	planet20 - direction
)
(:init
	(supports instrument0 infrared1)
	(supports instrument0 infrared0)
	(calibration_target instrument0 groundstation3)
	(supports instrument1 infrared4)
	(supports instrument1 infrared3)
	(calibration_target instrument1 groundstation4)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 phenomenon16)
	(supports instrument2 spectrograph2)
	(calibration_target instrument2 groundstation4)
	(supports instrument3 infrared3)
	(supports instrument3 infrared4)
	(calibration_target instrument3 groundstation4)
	(supports instrument4 infrared1)
	(supports instrument4 infrared0)
	(calibration_target instrument4 star0)
	(on_board instrument2 satellite1)
	(on_board instrument3 satellite1)
	(on_board instrument4 satellite1)
	(power_avail satellite1)
	(pointing satellite1 star7)
	(supports instrument5 infrared0)
	(supports instrument5 infrared3)
	(supports instrument5 infrared1)
	(calibration_target instrument5 groundstation4)
	(on_board instrument5 satellite2)
	(power_avail satellite2)
	(pointing satellite2 star12)
	(supports instrument6 infrared0)
	(supports instrument6 infrared4)
	(supports instrument6 spectrograph2)
	(calibration_target instrument6 star0)
	(supports instrument7 infrared4)
	(calibration_target instrument7 star0)
	(on_board instrument6 satellite3)
	(on_board instrument7 satellite3)
	(power_avail satellite3)
	(pointing satellite3 star0)
	(supports instrument8 infrared4)
	(supports instrument8 spectrograph2)
	(supports instrument8 infrared3)
	(calibration_target instrument8 groundstation4)
	(supports instrument9 spectrograph2)
	(supports instrument9 infrared3)
	(supports instrument9 infrared4)
	(calibration_target instrument9 groundstation2)
	(on_board instrument8 satellite4)
	(on_board instrument9 satellite4)
	(power_avail satellite4)
	(pointing satellite4 star0)
)
(:goal (and
	(pointing satellite0 groundstation2)
	(pointing satellite1 planet17)
	(pointing satellite2 star1)
	(pointing satellite3 phenomenon19)
	(pointing satellite4 planet18)
	(have_image star5 infrared1)
	(have_image planet6 spectrograph2)
	(have_image star7 infrared0)
	(have_image phenomenon9 infrared4)
	(have_image star10 infrared1)
	(have_image planet11 infrared3)
	(have_image star12 infrared0)
	(have_image star13 infrared3)
	(have_image phenomenon14 infrared0)
	(have_image star15 infrared4)
	(have_image planet18 spectrograph2)
	(have_image phenomenon19 infrared1)
	(have_image planet20 infrared3)
))

)
