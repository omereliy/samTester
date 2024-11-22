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
	image3 - mode
	thermograph2 - mode
	thermograph4 - mode
	infrared0 - mode
	spectrograph1 - mode
	groundstation2 - direction
	star0 - direction
	groundstation3 - direction
	star4 - direction
	groundstation1 - direction
	planet5 - direction
	phenomenon6 - direction
	phenomenon7 - direction
	planet8 - direction
	phenomenon9 - direction
	star10 - direction
	planet11 - direction
	planet12 - direction
	planet13 - direction
	planet14 - direction
	star15 - direction
	star16 - direction
	star17 - direction
	planet18 - direction
	planet19 - direction
	star20 - direction
	star21 - direction
	phenomenon22 - direction
	planet23 - direction
	planet24 - direction
	star25 - direction
	star26 - direction
	planet27 - direction
	planet28 - direction
)
(:init
	(supports instrument0 thermograph2)
	(calibration_target instrument0 groundstation3)
	(on_board instrument0 satellite0)
	(power_avail satellite0)
	(pointing satellite0 star0)
	(supports instrument1 infrared0)
	(supports instrument1 thermograph2)
	(calibration_target instrument1 groundstation2)
	(on_board instrument1 satellite1)
	(power_avail satellite1)
	(pointing satellite1 star15)
	(supports instrument2 thermograph4)
	(calibration_target instrument2 groundstation2)
	(supports instrument3 image3)
	(supports instrument3 thermograph4)
	(supports instrument3 spectrograph1)
	(calibration_target instrument3 star0)
	(supports instrument4 thermograph4)
	(supports instrument4 image3)
	(calibration_target instrument4 groundstation1)
	(on_board instrument2 satellite2)
	(on_board instrument3 satellite2)
	(on_board instrument4 satellite2)
	(power_avail satellite2)
	(pointing satellite2 planet12)
	(supports instrument5 thermograph4)
	(supports instrument5 spectrograph1)
	(calibration_target instrument5 star0)
	(on_board instrument5 satellite3)
	(power_avail satellite3)
	(pointing satellite3 planet23)
	(supports instrument6 thermograph2)
	(calibration_target instrument6 groundstation3)
	(supports instrument7 infrared0)
	(calibration_target instrument7 star4)
	(supports instrument8 spectrograph1)
	(supports instrument8 infrared0)
	(supports instrument8 thermograph4)
	(calibration_target instrument8 groundstation1)
	(on_board instrument6 satellite4)
	(on_board instrument7 satellite4)
	(on_board instrument8 satellite4)
	(power_avail satellite4)
	(pointing satellite4 phenomenon9)
)
(:goal (and
	(pointing satellite2 groundstation3)
	(pointing satellite3 star17)
	(have_image planet5 infrared0)
	(have_image phenomenon6 image3)
	(have_image phenomenon7 infrared0)
	(have_image planet8 spectrograph1)
	(have_image phenomenon9 spectrograph1)
	(have_image star10 infrared0)
	(have_image planet11 image3)
	(have_image planet12 image3)
	(have_image planet13 image3)
	(have_image planet14 image3)
	(have_image star16 image3)
	(have_image planet19 spectrograph1)
	(have_image star20 image3)
	(have_image phenomenon22 thermograph4)
	(have_image planet23 spectrograph1)
	(have_image planet24 spectrograph1)
	(have_image star25 infrared0)
	(have_image star26 thermograph2)
	(have_image planet27 infrared0)
	(have_image planet28 thermograph4)
))

)
