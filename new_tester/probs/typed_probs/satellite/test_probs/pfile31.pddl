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
	satellite4 - satellite
	instrument7 - instrument
	satellite5 - satellite
	instrument8 - instrument
	spectrograph3 - mode
	infrared4 - mode
	thermograph0 - mode
	spectrograph1 - mode
	thermograph2 - mode
	star1 - direction
	groundstation4 - direction
	groundstation3 - direction
	groundstation2 - direction
	star0 - direction
	phenomenon5 - direction
	star6 - direction
	planet7 - direction
	star8 - direction
	planet9 - direction
	star10 - direction
	planet11 - direction
	phenomenon12 - direction
	phenomenon13 - direction
	star14 - direction
	planet15 - direction
	planet16 - direction
	planet17 - direction
	star18 - direction
	star19 - direction
	star20 - direction
	phenomenon21 - direction
	star22 - direction
	phenomenon23 - direction
	star24 - direction
)
(:init
	(supports instrument0 thermograph0)
	(supports instrument0 infrared4)
	(supports instrument0 spectrograph3)
	(calibration_target instrument0 groundstation3)
	(supports instrument1 infrared4)
	(supports instrument1 thermograph0)
	(supports instrument1 spectrograph1)
	(calibration_target instrument1 groundstation3)
	(supports instrument2 spectrograph3)
	(supports instrument2 infrared4)
	(supports instrument2 thermograph2)
	(calibration_target instrument2 star0)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 star1)
	(supports instrument3 spectrograph3)
	(calibration_target instrument3 star0)
	(supports instrument4 infrared4)
	(supports instrument4 thermograph0)
	(supports instrument4 spectrograph3)
	(calibration_target instrument4 star0)
	(on_board instrument3 satellite1)
	(on_board instrument4 satellite1)
	(power_avail satellite1)
	(pointing satellite1 planet7)
	(supports instrument5 spectrograph1)
	(supports instrument5 thermograph2)
	(calibration_target instrument5 groundstation3)
	(on_board instrument5 satellite2)
	(power_avail satellite2)
	(pointing satellite2 groundstation2)
	(supports instrument6 spectrograph3)
	(supports instrument6 thermograph0)
	(supports instrument6 thermograph2)
	(calibration_target instrument6 groundstation3)
	(on_board instrument6 satellite3)
	(power_avail satellite3)
	(pointing satellite3 planet9)
	(supports instrument7 thermograph0)
	(supports instrument7 infrared4)
	(supports instrument7 spectrograph1)
	(calibration_target instrument7 groundstation2)
	(on_board instrument7 satellite4)
	(power_avail satellite4)
	(pointing satellite4 phenomenon23)
	(supports instrument8 thermograph2)
	(supports instrument8 spectrograph1)
	(supports instrument8 thermograph0)
	(calibration_target instrument8 star0)
	(on_board instrument8 satellite5)
	(power_avail satellite5)
	(pointing satellite5 star24)
)
(:goal (and
	(pointing satellite1 star24)
	(pointing satellite5 planet7)
	(have_image star6 thermograph0)
	(have_image planet7 thermograph0)
	(have_image star8 infrared4)
	(have_image planet9 thermograph2)
	(have_image star10 spectrograph3)
	(have_image planet11 spectrograph1)
	(have_image phenomenon12 spectrograph3)
	(have_image phenomenon13 spectrograph1)
	(have_image star14 spectrograph3)
	(have_image planet15 spectrograph3)
	(have_image planet16 thermograph0)
	(have_image planet17 infrared4)
	(have_image star18 thermograph0)
	(have_image star19 thermograph0)
	(have_image star20 infrared4)
	(have_image phenomenon21 thermograph0)
	(have_image star22 spectrograph3)
	(have_image phenomenon23 spectrograph1)
	(have_image star24 thermograph0)
))

)
