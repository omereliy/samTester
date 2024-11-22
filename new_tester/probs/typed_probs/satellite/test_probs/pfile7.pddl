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
	infrared1 - mode
	infrared0 - mode
	spectrograph4 - mode
	infrared3 - mode
	image2 - mode
	groundstation4 - direction
	groundstation2 - direction
	groundstation1 - direction
	star0 - direction
	groundstation3 - direction
	phenomenon5 - direction
	phenomenon6 - direction
	planet7 - direction
	star8 - direction
	star9 - direction
	phenomenon10 - direction
	star11 - direction
	star12 - direction
	planet13 - direction
	phenomenon14 - direction
	star15 - direction
	planet16 - direction
	phenomenon17 - direction
	planet18 - direction
	star19 - direction
	phenomenon20 - direction
	star21 - direction
	star22 - direction
	planet23 - direction
	star24 - direction
)
(:init
	(supports instrument0 image2)
	(supports instrument0 infrared1)
	(calibration_target instrument0 groundstation2)
	(supports instrument1 spectrograph4)
	(supports instrument1 infrared1)
	(calibration_target instrument1 groundstation3)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 star22)
	(supports instrument2 infrared0)
	(calibration_target instrument2 groundstation3)
	(on_board instrument2 satellite1)
	(power_avail satellite1)
	(pointing satellite1 planet13)
	(supports instrument3 infrared0)
	(supports instrument3 image2)
	(calibration_target instrument3 groundstation1)
	(supports instrument4 image2)
	(supports instrument4 spectrograph4)
	(supports instrument4 infrared1)
	(calibration_target instrument4 groundstation3)
	(supports instrument5 infrared0)
	(supports instrument5 infrared3)
	(supports instrument5 image2)
	(calibration_target instrument5 groundstation2)
	(on_board instrument3 satellite2)
	(on_board instrument4 satellite2)
	(on_board instrument5 satellite2)
	(power_avail satellite2)
	(pointing satellite2 groundstation3)
	(supports instrument6 infrared0)
	(supports instrument6 spectrograph4)
	(calibration_target instrument6 groundstation4)
	(on_board instrument6 satellite3)
	(power_avail satellite3)
	(pointing satellite3 star22)
	(supports instrument7 infrared3)
	(supports instrument7 image2)
	(supports instrument7 infrared0)
	(calibration_target instrument7 groundstation2)
	(supports instrument8 infrared0)
	(supports instrument8 spectrograph4)
	(supports instrument8 image2)
	(calibration_target instrument8 groundstation1)
	(on_board instrument7 satellite4)
	(on_board instrument8 satellite4)
	(power_avail satellite4)
	(pointing satellite4 planet18)
	(supports instrument9 infrared3)
	(supports instrument9 spectrograph4)
	(supports instrument9 infrared0)
	(calibration_target instrument9 star0)
	(supports instrument10 image2)
	(calibration_target instrument10 groundstation3)
	(on_board instrument9 satellite5)
	(on_board instrument10 satellite5)
	(power_avail satellite5)
	(pointing satellite5 star8)
)
(:goal (and
	(pointing satellite0 planet13)
	(pointing satellite1 star12)
	(pointing satellite2 phenomenon14)
	(pointing satellite4 star22)
	(have_image phenomenon5 spectrograph4)
	(have_image phenomenon6 infrared3)
	(have_image planet7 infrared1)
	(have_image star8 spectrograph4)
	(have_image star9 infrared1)
	(have_image phenomenon10 infrared1)
	(have_image star11 image2)
	(have_image star12 infrared3)
	(have_image planet13 infrared1)
	(have_image phenomenon14 infrared3)
	(have_image star15 infrared3)
	(have_image planet16 spectrograph4)
	(have_image phenomenon17 infrared3)
	(have_image planet18 spectrograph4)
	(have_image star19 infrared0)
	(have_image phenomenon20 infrared0)
	(have_image star21 infrared1)
	(have_image star22 image2)
	(have_image planet23 infrared0)
	(have_image star24 infrared0)
))

)
