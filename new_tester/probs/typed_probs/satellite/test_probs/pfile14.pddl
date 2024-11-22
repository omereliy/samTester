(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	instrument1 - instrument
	satellite1 - satellite
	instrument2 - instrument
	instrument3 - instrument
	satellite2 - satellite
	instrument4 - instrument
	satellite3 - satellite
	instrument5 - instrument
	satellite4 - satellite
	instrument6 - instrument
	instrument7 - instrument
	instrument8 - instrument
	infrared4 - mode
	thermograph1 - mode
	infrared0 - mode
	spectrograph2 - mode
	thermograph3 - mode
	groundstation2 - direction
	groundstation3 - direction
	groundstation0 - direction
	groundstation1 - direction
	star4 - direction
	star5 - direction
	star6 - direction
	phenomenon7 - direction
	star8 - direction
	star9 - direction
	planet10 - direction
	phenomenon11 - direction
	planet12 - direction
	phenomenon13 - direction
	star14 - direction
	star15 - direction
	planet16 - direction
	planet17 - direction
	planet18 - direction
	planet19 - direction
	star20 - direction
	planet21 - direction
	star22 - direction
	planet23 - direction
	phenomenon24 - direction
)
(:init
	(supports instrument0 thermograph1)
	(supports instrument0 thermograph3)
	(supports instrument0 spectrograph2)
	(calibration_target instrument0 groundstation0)
	(supports instrument1 spectrograph2)
	(supports instrument1 thermograph1)
	(supports instrument1 thermograph3)
	(calibration_target instrument1 star4)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 groundstation3)
	(supports instrument2 infrared4)
	(supports instrument2 thermograph3)
	(calibration_target instrument2 groundstation1)
	(supports instrument3 infrared0)
	(supports instrument3 infrared4)
	(calibration_target instrument3 groundstation1)
	(on_board instrument2 satellite1)
	(on_board instrument3 satellite1)
	(power_avail satellite1)
	(pointing satellite1 star5)
	(supports instrument4 thermograph3)
	(calibration_target instrument4 groundstation1)
	(on_board instrument4 satellite2)
	(power_avail satellite2)
	(pointing satellite2 planet19)
	(supports instrument5 thermograph1)
	(supports instrument5 infrared4)
	(supports instrument5 spectrograph2)
	(calibration_target instrument5 star4)
	(on_board instrument5 satellite3)
	(power_avail satellite3)
	(pointing satellite3 groundstation1)
	(supports instrument6 spectrograph2)
	(supports instrument6 infrared0)
	(calibration_target instrument6 groundstation1)
	(supports instrument7 spectrograph2)
	(calibration_target instrument7 star4)
	(supports instrument8 thermograph3)
	(supports instrument8 spectrograph2)
	(calibration_target instrument8 star4)
	(on_board instrument6 satellite4)
	(on_board instrument7 satellite4)
	(on_board instrument8 satellite4)
	(power_avail satellite4)
	(pointing satellite4 planet16)
)
(:goal (and
	(pointing satellite0 star5)
	(pointing satellite1 phenomenon13)
	(pointing satellite2 star20)
	(pointing satellite3 planet17)
	(have_image star5 infrared4)
	(have_image star6 thermograph1)
	(have_image phenomenon7 infrared0)
	(have_image star8 infrared0)
	(have_image planet10 spectrograph2)
	(have_image phenomenon11 thermograph1)
	(have_image planet12 spectrograph2)
	(have_image phenomenon13 thermograph1)
	(have_image star14 infrared0)
	(have_image star15 thermograph3)
	(have_image planet16 thermograph1)
	(have_image planet17 infrared0)
	(have_image planet18 infrared4)
	(have_image planet19 infrared4)
	(have_image star20 spectrograph2)
	(have_image planet21 thermograph1)
	(have_image star22 infrared4)
	(have_image planet23 thermograph3)
	(have_image phenomenon24 spectrograph2)
))

)
