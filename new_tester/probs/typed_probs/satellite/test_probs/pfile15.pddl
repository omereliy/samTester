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
	satellite3 - satellite
	instrument5 - instrument
	satellite4 - satellite
	instrument6 - instrument
	satellite5 - satellite
	instrument7 - instrument
	thermograph3 - mode
	spectrograph2 - mode
	thermograph4 - mode
	infrared0 - mode
	infrared1 - mode
	star0 - direction
	groundstation1 - direction
	star2 - direction
	star3 - direction
	groundstation4 - direction
	planet5 - direction
	phenomenon6 - direction
	star7 - direction
	star8 - direction
	planet9 - direction
	phenomenon10 - direction
	star11 - direction
	star12 - direction
	planet13 - direction
	planet14 - direction
	star15 - direction
	star16 - direction
	planet17 - direction
	planet18 - direction
	star19 - direction
	phenomenon20 - direction
	planet21 - direction
	phenomenon22 - direction
	star23 - direction
	star24 - direction
)
(:init
	(supports instrument0 spectrograph2)
	(supports instrument0 infrared1)
	(calibration_target instrument0 star2)
	(on_board instrument0 satellite0)
	(power_avail satellite0)
	(pointing satellite0 planet5)
	(supports instrument1 thermograph4)
	(calibration_target instrument1 groundstation1)
	(supports instrument2 thermograph4)
	(supports instrument2 infrared0)
	(calibration_target instrument2 groundstation4)
	(supports instrument3 spectrograph2)
	(calibration_target instrument3 star3)
	(on_board instrument1 satellite1)
	(on_board instrument2 satellite1)
	(on_board instrument3 satellite1)
	(power_avail satellite1)
	(pointing satellite1 star15)
	(supports instrument4 thermograph3)
	(supports instrument4 thermograph4)
	(calibration_target instrument4 star2)
	(on_board instrument4 satellite2)
	(power_avail satellite2)
	(pointing satellite2 groundstation1)
	(supports instrument5 thermograph4)
	(supports instrument5 spectrograph2)
	(supports instrument5 infrared1)
	(calibration_target instrument5 groundstation4)
	(on_board instrument5 satellite3)
	(power_avail satellite3)
	(pointing satellite3 star7)
	(supports instrument6 infrared0)
	(supports instrument6 infrared1)
	(supports instrument6 thermograph4)
	(calibration_target instrument6 star3)
	(on_board instrument6 satellite4)
	(power_avail satellite4)
	(pointing satellite4 planet5)
	(supports instrument7 infrared1)
	(calibration_target instrument7 groundstation4)
	(on_board instrument7 satellite5)
	(power_avail satellite5)
	(pointing satellite5 star19)
)
(:goal (and
	(pointing satellite3 planet5)
	(pointing satellite4 star19)
	(have_image phenomenon6 infrared0)
	(have_image star7 spectrograph2)
	(have_image star8 spectrograph2)
	(have_image planet9 infrared1)
	(have_image star11 infrared1)
	(have_image planet13 thermograph3)
	(have_image planet14 infrared1)
	(have_image star15 thermograph4)
	(have_image star16 thermograph4)
	(have_image planet17 thermograph4)
	(have_image planet18 infrared0)
	(have_image phenomenon20 infrared0)
	(have_image planet21 infrared1)
	(have_image phenomenon22 spectrograph2)
	(have_image star23 infrared0)
	(have_image star24 thermograph4)
))

)
