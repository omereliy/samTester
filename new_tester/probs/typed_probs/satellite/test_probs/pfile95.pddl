(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	satellite1 - satellite
	instrument1 - instrument
	satellite2 - satellite
	instrument2 - instrument
	instrument3 - instrument
	instrument4 - instrument
	satellite3 - satellite
	instrument5 - instrument
	satellite4 - satellite
	instrument6 - instrument
	instrument7 - instrument
	instrument8 - instrument
	satellite5 - satellite
	instrument9 - instrument
	infrared0 - mode
	infrared2 - mode
	spectrograph3 - mode
	spectrograph4 - mode
	image1 - mode
	star2 - direction
	groundstation1 - direction
	groundstation4 - direction
	groundstation3 - direction
	groundstation0 - direction
	phenomenon5 - direction
	planet6 - direction
	planet7 - direction
	planet8 - direction
	planet9 - direction
	phenomenon10 - direction
	planet11 - direction
	phenomenon12 - direction
	phenomenon13 - direction
	planet14 - direction
	phenomenon15 - direction
	planet16 - direction
	phenomenon17 - direction
	planet18 - direction
	star19 - direction
	star20 - direction
	star21 - direction
	phenomenon22 - direction
	phenomenon23 - direction
	phenomenon24 - direction
)
(:init
	(supports instrument0 infrared2)
	(supports instrument0 spectrograph4)
	(supports instrument0 image1)
	(calibration_target instrument0 groundstation0)
	(on_board instrument0 satellite0)
	(power_avail satellite0)
	(pointing satellite0 star21)
	(supports instrument1 infrared0)
	(calibration_target instrument1 star2)
	(on_board instrument1 satellite1)
	(power_avail satellite1)
	(pointing satellite1 phenomenon17)
	(supports instrument2 spectrograph3)
	(calibration_target instrument2 groundstation1)
	(supports instrument3 infrared0)
	(calibration_target instrument3 groundstation1)
	(supports instrument4 spectrograph3)
	(supports instrument4 spectrograph4)
	(supports instrument4 infrared2)
	(calibration_target instrument4 groundstation3)
	(on_board instrument2 satellite2)
	(on_board instrument3 satellite2)
	(on_board instrument4 satellite2)
	(power_avail satellite2)
	(pointing satellite2 phenomenon24)
	(supports instrument5 spectrograph3)
	(supports instrument5 image1)
	(supports instrument5 spectrograph4)
	(calibration_target instrument5 groundstation4)
	(on_board instrument5 satellite3)
	(power_avail satellite3)
	(pointing satellite3 phenomenon10)
	(supports instrument6 infrared2)
	(calibration_target instrument6 groundstation4)
	(supports instrument7 spectrograph4)
	(calibration_target instrument7 groundstation0)
	(supports instrument8 spectrograph3)
	(supports instrument8 infrared2)
	(supports instrument8 spectrograph4)
	(calibration_target instrument8 groundstation3)
	(on_board instrument6 satellite4)
	(on_board instrument7 satellite4)
	(on_board instrument8 satellite4)
	(power_avail satellite4)
	(pointing satellite4 groundstation0)
	(supports instrument9 image1)
	(supports instrument9 spectrograph4)
	(calibration_target instrument9 groundstation0)
	(on_board instrument9 satellite5)
	(power_avail satellite5)
	(pointing satellite5 planet14)
)
(:goal (and
	(pointing satellite1 phenomenon22)
	(pointing satellite2 planet8)
	(pointing satellite3 planet6)
	(have_image phenomenon5 infrared0)
	(have_image planet6 spectrograph4)
	(have_image planet7 image1)
	(have_image planet8 spectrograph4)
	(have_image planet9 infrared2)
	(have_image phenomenon10 spectrograph3)
	(have_image planet11 spectrograph3)
	(have_image phenomenon13 spectrograph4)
	(have_image planet14 image1)
	(have_image phenomenon15 spectrograph4)
	(have_image phenomenon17 infrared0)
	(have_image planet18 infrared2)
	(have_image star19 image1)
	(have_image star20 infrared2)
	(have_image star21 infrared0)
	(have_image phenomenon22 image1)
	(have_image phenomenon23 image1)
))

)
