(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	instrument1 - instrument
	instrument2 - instrument
	satellite1 - satellite
	instrument3 - instrument
	satellite2 - satellite
	instrument4 - instrument
	satellite3 - satellite
	instrument5 - instrument
	satellite4 - satellite
	instrument6 - instrument
	instrument7 - instrument
	satellite5 - satellite
	instrument8 - instrument
	instrument9 - instrument
	infrared0 - mode
	spectrograph2 - mode
	infrared4 - mode
	infrared1 - mode
	image3 - mode
	star2 - direction
	groundstation3 - direction
	star1 - direction
	groundstation4 - direction
	groundstation0 - direction
	star5 - direction
	planet6 - direction
	phenomenon7 - direction
	phenomenon8 - direction
	star9 - direction
	phenomenon10 - direction
	star11 - direction
	phenomenon12 - direction
	star13 - direction
	star14 - direction
	star15 - direction
	star16 - direction
	phenomenon17 - direction
	phenomenon18 - direction
	planet19 - direction
	planet20 - direction
	star21 - direction
	star22 - direction
	planet23 - direction
	phenomenon24 - direction
)
(:init
	(supports instrument0 spectrograph2)
	(calibration_target instrument0 star1)
	(supports instrument1 image3)
	(supports instrument1 spectrograph2)
	(calibration_target instrument1 groundstation0)
	(supports instrument2 infrared1)
	(supports instrument2 infrared4)
	(calibration_target instrument2 groundstation4)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 phenomenon17)
	(supports instrument3 infrared1)
	(calibration_target instrument3 star1)
	(on_board instrument3 satellite1)
	(power_avail satellite1)
	(pointing satellite1 planet20)
	(supports instrument4 image3)
	(calibration_target instrument4 star1)
	(on_board instrument4 satellite2)
	(power_avail satellite2)
	(pointing satellite2 star15)
	(supports instrument5 image3)
	(calibration_target instrument5 groundstation0)
	(on_board instrument5 satellite3)
	(power_avail satellite3)
	(pointing satellite3 phenomenon12)
	(supports instrument6 infrared1)
	(supports instrument6 image3)
	(supports instrument6 spectrograph2)
	(calibration_target instrument6 groundstation4)
	(supports instrument7 infrared0)
	(supports instrument7 spectrograph2)
	(calibration_target instrument7 groundstation0)
	(on_board instrument6 satellite4)
	(on_board instrument7 satellite4)
	(power_avail satellite4)
	(pointing satellite4 planet20)
	(supports instrument8 spectrograph2)
	(calibration_target instrument8 groundstation4)
	(supports instrument9 image3)
	(supports instrument9 infrared1)
	(supports instrument9 infrared4)
	(calibration_target instrument9 groundstation0)
	(on_board instrument8 satellite5)
	(on_board instrument9 satellite5)
	(power_avail satellite5)
	(pointing satellite5 star9)
)
(:goal (and
	(pointing satellite0 star15)
	(pointing satellite4 phenomenon10)
	(pointing satellite5 star13)
	(have_image star5 infrared4)
	(have_image planet6 infrared1)
	(have_image phenomenon8 infrared0)
	(have_image star9 spectrograph2)
	(have_image phenomenon10 spectrograph2)
	(have_image star11 spectrograph2)
	(have_image phenomenon12 infrared1)
	(have_image star13 image3)
	(have_image star14 infrared1)
	(have_image star15 infrared4)
	(have_image star16 infrared4)
	(have_image phenomenon17 spectrograph2)
	(have_image phenomenon18 infrared4)
	(have_image planet19 image3)
	(have_image star21 spectrograph2)
	(have_image star22 infrared4)
))

)
