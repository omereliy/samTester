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
	instrument6 - instrument
	satellite3 - satellite
	instrument7 - instrument
	satellite4 - satellite
	instrument8 - instrument
	instrument9 - instrument
	satellite5 - satellite
	instrument10 - instrument
	instrument11 - instrument
	spectrograph3 - mode
	image2 - mode
	spectrograph0 - mode
	thermograph4 - mode
	thermograph1 - mode
	star0 - direction
	groundstation3 - direction
	star1 - direction
	star4 - direction
	groundstation2 - direction
	phenomenon5 - direction
	star6 - direction
	phenomenon7 - direction
	phenomenon8 - direction
	planet9 - direction
	planet10 - direction
	star11 - direction
	star12 - direction
	star13 - direction
	star14 - direction
	planet15 - direction
	phenomenon16 - direction
	planet17 - direction
	planet18 - direction
	star19 - direction
	star20 - direction
	star21 - direction
	star22 - direction
	star23 - direction
	star24 - direction
)
(:init
	(supports instrument0 spectrograph3)
	(calibration_target instrument0 star4)
	(supports instrument1 spectrograph3)
	(supports instrument1 spectrograph0)
	(calibration_target instrument1 groundstation3)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 groundstation2)
	(supports instrument2 spectrograph3)
	(supports instrument2 thermograph4)
	(calibration_target instrument2 star1)
	(supports instrument3 thermograph4)
	(supports instrument3 image2)
	(supports instrument3 thermograph1)
	(calibration_target instrument3 star0)
	(supports instrument4 thermograph1)
	(supports instrument4 spectrograph0)
	(supports instrument4 image2)
	(calibration_target instrument4 star1)
	(on_board instrument2 satellite1)
	(on_board instrument3 satellite1)
	(on_board instrument4 satellite1)
	(power_avail satellite1)
	(pointing satellite1 planet17)
	(supports instrument5 thermograph1)
	(supports instrument5 image2)
	(supports instrument5 spectrograph0)
	(calibration_target instrument5 groundstation3)
	(supports instrument6 image2)
	(calibration_target instrument6 star1)
	(on_board instrument5 satellite2)
	(on_board instrument6 satellite2)
	(power_avail satellite2)
	(pointing satellite2 star12)
	(supports instrument7 thermograph4)
	(supports instrument7 spectrograph3)
	(calibration_target instrument7 star1)
	(on_board instrument7 satellite3)
	(power_avail satellite3)
	(pointing satellite3 star20)
	(supports instrument8 spectrograph0)
	(supports instrument8 image2)
	(supports instrument8 thermograph1)
	(calibration_target instrument8 groundstation2)
	(supports instrument9 thermograph4)
	(calibration_target instrument9 groundstation2)
	(on_board instrument8 satellite4)
	(on_board instrument9 satellite4)
	(power_avail satellite4)
	(pointing satellite4 phenomenon8)
	(supports instrument10 thermograph4)
	(supports instrument10 image2)
	(supports instrument10 thermograph1)
	(calibration_target instrument10 star4)
	(supports instrument11 thermograph1)
	(supports instrument11 thermograph4)
	(supports instrument11 spectrograph0)
	(calibration_target instrument11 groundstation2)
	(on_board instrument10 satellite5)
	(on_board instrument11 satellite5)
	(power_avail satellite5)
	(pointing satellite5 star20)
)
(:goal (and
	(pointing satellite3 planet18)
	(pointing satellite4 star13)
	(have_image star6 image2)
	(have_image phenomenon8 spectrograph0)
	(have_image planet9 spectrograph0)
	(have_image planet10 spectrograph3)
	(have_image star11 thermograph1)
	(have_image star12 thermograph4)
	(have_image star13 image2)
	(have_image star14 image2)
	(have_image planet15 thermograph4)
	(have_image phenomenon16 image2)
	(have_image planet18 spectrograph3)
	(have_image star19 spectrograph3)
	(have_image star20 spectrograph0)
	(have_image star21 spectrograph3)
	(have_image star22 spectrograph3)
	(have_image star23 thermograph4)
	(have_image star24 spectrograph0)
))

)
