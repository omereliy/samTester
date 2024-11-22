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
	instrument10 - instrument
	satellite5 - satellite
	instrument11 - instrument
	instrument12 - instrument
	infrared3 - mode
	infrared1 - mode
	spectrograph4 - mode
	image0 - mode
	spectrograph2 - mode
	star4 - direction
	groundstation1 - direction
	groundstation0 - direction
	star2 - direction
	groundstation3 - direction
	planet5 - direction
	phenomenon6 - direction
	phenomenon7 - direction
	phenomenon8 - direction
	planet9 - direction
	star10 - direction
	phenomenon11 - direction
	star12 - direction
	star13 - direction
	phenomenon14 - direction
	phenomenon15 - direction
	star16 - direction
	phenomenon17 - direction
	star18 - direction
	phenomenon19 - direction
	planet20 - direction
	star21 - direction
	star22 - direction
	star23 - direction
	planet24 - direction
)
(:init
	(supports instrument0 infrared1)
	(supports instrument0 spectrograph2)
	(supports instrument0 infrared3)
	(calibration_target instrument0 groundstation0)
	(supports instrument1 spectrograph2)
	(supports instrument1 spectrograph4)
	(supports instrument1 image0)
	(calibration_target instrument1 star2)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 groundstation3)
	(supports instrument2 infrared1)
	(supports instrument2 spectrograph2)
	(supports instrument2 spectrograph4)
	(calibration_target instrument2 groundstation3)
	(supports instrument3 infrared1)
	(supports instrument3 spectrograph4)
	(calibration_target instrument3 groundstation3)
	(supports instrument4 image0)
	(supports instrument4 spectrograph4)
	(supports instrument4 infrared3)
	(calibration_target instrument4 groundstation1)
	(on_board instrument2 satellite1)
	(on_board instrument3 satellite1)
	(on_board instrument4 satellite1)
	(power_avail satellite1)
	(pointing satellite1 phenomenon6)
	(supports instrument5 spectrograph2)
	(calibration_target instrument5 groundstation1)
	(on_board instrument5 satellite2)
	(power_avail satellite2)
	(pointing satellite2 star16)
	(supports instrument6 infrared1)
	(supports instrument6 spectrograph2)
	(supports instrument6 image0)
	(calibration_target instrument6 groundstation3)
	(supports instrument7 infrared1)
	(calibration_target instrument7 groundstation0)
	(on_board instrument6 satellite3)
	(on_board instrument7 satellite3)
	(power_avail satellite3)
	(pointing satellite3 planet20)
	(supports instrument8 image0)
	(supports instrument8 spectrograph4)
	(supports instrument8 spectrograph2)
	(calibration_target instrument8 groundstation1)
	(supports instrument9 spectrograph2)
	(calibration_target instrument9 groundstation0)
	(supports instrument10 spectrograph2)
	(supports instrument10 image0)
	(calibration_target instrument10 star2)
	(on_board instrument8 satellite4)
	(on_board instrument9 satellite4)
	(on_board instrument10 satellite4)
	(power_avail satellite4)
	(pointing satellite4 star21)
	(supports instrument11 spectrograph4)
	(calibration_target instrument11 star2)
	(supports instrument12 spectrograph2)
	(supports instrument12 image0)
	(calibration_target instrument12 groundstation3)
	(on_board instrument11 satellite5)
	(on_board instrument12 satellite5)
	(power_avail satellite5)
	(pointing satellite5 phenomenon11)
)
(:goal (and
	(pointing satellite0 planet24)
	(pointing satellite1 star10)
	(pointing satellite3 phenomenon6)
	(have_image planet5 infrared1)
	(have_image phenomenon6 spectrograph2)
	(have_image phenomenon7 spectrograph4)
	(have_image phenomenon8 infrared1)
	(have_image planet9 spectrograph4)
	(have_image star10 infrared3)
	(have_image phenomenon11 spectrograph4)
	(have_image star12 image0)
	(have_image star13 infrared1)
	(have_image phenomenon14 spectrograph2)
	(have_image phenomenon15 infrared1)
	(have_image star16 image0)
	(have_image phenomenon17 infrared1)
	(have_image star18 spectrograph4)
	(have_image phenomenon19 infrared1)
	(have_image planet20 infrared3)
	(have_image star21 image0)
	(have_image star22 image0)
	(have_image star23 spectrograph2)
	(have_image planet24 infrared1)
))

)
