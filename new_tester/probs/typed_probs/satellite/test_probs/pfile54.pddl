(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	instrument1 - instrument
	instrument2 - instrument
	satellite1 - satellite
	instrument3 - instrument
	instrument4 - instrument
	satellite2 - satellite
	instrument5 - instrument
	satellite3 - satellite
	instrument6 - instrument
	instrument7 - instrument
	satellite4 - satellite
	instrument8 - instrument
	spectrograph1 - mode
	thermograph0 - mode
	thermograph3 - mode
	thermograph4 - mode
	infrared2 - mode
	groundstation2 - direction
	star1 - direction
	star3 - direction
	star0 - direction
	star4 - direction
	planet5 - direction
	phenomenon6 - direction
	phenomenon7 - direction
	planet8 - direction
	planet9 - direction
	phenomenon10 - direction
	star11 - direction
	planet12 - direction
	star13 - direction
	planet14 - direction
	star15 - direction
	planet16 - direction
	phenomenon17 - direction
	planet18 - direction
	phenomenon19 - direction
	planet20 - direction
	planet21 - direction
	phenomenon22 - direction
	planet23 - direction
	phenomenon24 - direction
)
(:init
	(supports instrument0 thermograph0)
	(calibration_target instrument0 star0)
	(supports instrument1 thermograph3)
	(supports instrument1 thermograph4)
	(supports instrument1 thermograph0)
	(calibration_target instrument1 groundstation2)
	(supports instrument2 spectrograph1)
	(calibration_target instrument2 groundstation2)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 groundstation2)
	(supports instrument3 thermograph0)
	(supports instrument3 spectrograph1)
	(supports instrument3 thermograph4)
	(calibration_target instrument3 groundstation2)
	(supports instrument4 infrared2)
	(calibration_target instrument4 star1)
	(on_board instrument3 satellite1)
	(on_board instrument4 satellite1)
	(power_avail satellite1)
	(pointing satellite1 star0)
	(supports instrument5 thermograph0)
	(supports instrument5 spectrograph1)
	(calibration_target instrument5 star4)
	(on_board instrument5 satellite2)
	(power_avail satellite2)
	(pointing satellite2 star3)
	(supports instrument6 thermograph3)
	(calibration_target instrument6 star3)
	(supports instrument7 thermograph4)
	(supports instrument7 infrared2)
	(calibration_target instrument7 star0)
	(on_board instrument6 satellite3)
	(on_board instrument7 satellite3)
	(power_avail satellite3)
	(pointing satellite3 phenomenon6)
	(supports instrument8 infrared2)
	(calibration_target instrument8 star4)
	(on_board instrument8 satellite4)
	(power_avail satellite4)
	(pointing satellite4 planet9)
)
(:goal (and
	(pointing satellite0 star15)
	(pointing satellite2 star3)
	(have_image planet5 thermograph0)
	(have_image phenomenon6 spectrograph1)
	(have_image phenomenon7 infrared2)
	(have_image planet8 thermograph0)
	(have_image planet9 thermograph0)
	(have_image phenomenon10 thermograph3)
	(have_image star11 infrared2)
	(have_image planet12 thermograph4)
	(have_image star13 thermograph3)
	(have_image planet14 thermograph0)
	(have_image star15 thermograph3)
	(have_image planet16 thermograph3)
	(have_image phenomenon17 thermograph3)
	(have_image planet18 infrared2)
	(have_image phenomenon19 infrared2)
	(have_image planet20 thermograph4)
	(have_image planet21 infrared2)
	(have_image phenomenon22 spectrograph1)
	(have_image planet23 infrared2)
	(have_image phenomenon24 spectrograph1)
))

)
