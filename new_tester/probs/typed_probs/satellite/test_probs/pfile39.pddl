(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	satellite1 - satellite
	instrument1 - instrument
	instrument2 - instrument
	instrument3 - instrument
	satellite2 - satellite
	instrument4 - instrument
	instrument5 - instrument
	instrument6 - instrument
	satellite3 - satellite
	instrument7 - instrument
	instrument8 - instrument
	instrument9 - instrument
	satellite4 - satellite
	instrument10 - instrument
	instrument11 - instrument
	satellite5 - satellite
	instrument12 - instrument
	infrared3 - mode
	image2 - mode
	spectrograph4 - mode
	spectrograph0 - mode
	infrared1 - mode
	groundstation3 - direction
	groundstation2 - direction
	star1 - direction
	star4 - direction
	star0 - direction
	planet5 - direction
	planet6 - direction
	phenomenon7 - direction
	phenomenon8 - direction
	star9 - direction
	star10 - direction
	planet11 - direction
	phenomenon12 - direction
	star13 - direction
	star14 - direction
	planet15 - direction
	star16 - direction
	star17 - direction
	planet18 - direction
	star19 - direction
	phenomenon20 - direction
	planet21 - direction
	star22 - direction
	planet23 - direction
	star24 - direction
)
(:init
	(supports instrument0 infrared1)
	(calibration_target instrument0 groundstation2)
	(on_board instrument0 satellite0)
	(power_avail satellite0)
	(pointing satellite0 star19)
	(supports instrument1 image2)
	(supports instrument1 spectrograph4)
	(calibration_target instrument1 groundstation3)
	(supports instrument2 infrared1)
	(supports instrument2 spectrograph4)
	(supports instrument2 spectrograph0)
	(calibration_target instrument2 star1)
	(supports instrument3 spectrograph0)
	(calibration_target instrument3 star0)
	(on_board instrument1 satellite1)
	(on_board instrument2 satellite1)
	(on_board instrument3 satellite1)
	(power_avail satellite1)
	(pointing satellite1 star16)
	(supports instrument4 infrared1)
	(calibration_target instrument4 groundstation2)
	(supports instrument5 spectrograph0)
	(calibration_target instrument5 star1)
	(supports instrument6 spectrograph4)
	(supports instrument6 spectrograph0)
	(calibration_target instrument6 star4)
	(on_board instrument4 satellite2)
	(on_board instrument5 satellite2)
	(on_board instrument6 satellite2)
	(power_avail satellite2)
	(pointing satellite2 planet11)
	(supports instrument7 spectrograph4)
	(supports instrument7 infrared3)
	(supports instrument7 infrared1)
	(calibration_target instrument7 star4)
	(supports instrument8 image2)
	(supports instrument8 spectrograph4)
	(calibration_target instrument8 star0)
	(supports instrument9 spectrograph0)
	(supports instrument9 infrared3)
	(supports instrument9 infrared1)
	(calibration_target instrument9 star0)
	(on_board instrument7 satellite3)
	(on_board instrument8 satellite3)
	(on_board instrument9 satellite3)
	(power_avail satellite3)
	(pointing satellite3 star13)
	(supports instrument10 image2)
	(calibration_target instrument10 star0)
	(supports instrument11 spectrograph4)
	(supports instrument11 spectrograph0)
	(calibration_target instrument11 star0)
	(on_board instrument10 satellite4)
	(on_board instrument11 satellite4)
	(power_avail satellite4)
	(pointing satellite4 star24)
	(supports instrument12 infrared1)
	(supports instrument12 spectrograph0)
	(calibration_target instrument12 star0)
	(on_board instrument12 satellite5)
	(power_avail satellite5)
	(pointing satellite5 star24)
)
(:goal (and
	(pointing satellite5 star14)
	(have_image planet5 spectrograph4)
	(have_image planet6 infrared3)
	(have_image phenomenon7 image2)
	(have_image phenomenon8 spectrograph4)
	(have_image star9 infrared1)
	(have_image star10 infrared3)
	(have_image planet11 image2)
	(have_image phenomenon12 infrared1)
	(have_image star13 image2)
	(have_image star14 image2)
	(have_image star16 infrared3)
	(have_image star17 infrared1)
	(have_image planet18 infrared3)
	(have_image star19 infrared1)
	(have_image phenomenon20 infrared1)
	(have_image planet21 spectrograph4)
	(have_image star22 infrared3)
	(have_image planet23 image2)
	(have_image star24 infrared1)
))

)
