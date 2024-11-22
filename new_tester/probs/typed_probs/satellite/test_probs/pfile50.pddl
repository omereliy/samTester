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
	instrument8 - instrument
	satellite4 - satellite
	instrument9 - instrument
	thermograph0 - mode
	spectrograph2 - mode
	thermograph1 - mode
	spectrograph4 - mode
	image3 - mode
	groundstation1 - direction
	groundstation3 - direction
	groundstation2 - direction
	groundstation4 - direction
	star0 - direction
	star5 - direction
	planet6 - direction
	star7 - direction
	phenomenon8 - direction
	star9 - direction
	phenomenon10 - direction
	star11 - direction
	planet12 - direction
	phenomenon13 - direction
	star14 - direction
	planet15 - direction
	phenomenon16 - direction
	planet17 - direction
	planet18 - direction
	star19 - direction
	star20 - direction
	star21 - direction
	planet22 - direction
	phenomenon23 - direction
	phenomenon24 - direction
)
(:init
	(supports instrument0 spectrograph4)
	(supports instrument0 spectrograph2)
	(supports instrument0 image3)
	(calibration_target instrument0 groundstation2)
	(supports instrument1 thermograph0)
	(supports instrument1 image3)
	(supports instrument1 spectrograph4)
	(calibration_target instrument1 groundstation3)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 planet17)
	(supports instrument2 spectrograph2)
	(supports instrument2 thermograph1)
	(supports instrument2 image3)
	(calibration_target instrument2 groundstation2)
	(supports instrument3 image3)
	(supports instrument3 thermograph1)
	(supports instrument3 spectrograph2)
	(calibration_target instrument3 groundstation4)
	(supports instrument4 spectrograph4)
	(calibration_target instrument4 groundstation4)
	(on_board instrument2 satellite1)
	(on_board instrument3 satellite1)
	(on_board instrument4 satellite1)
	(power_avail satellite1)
	(pointing satellite1 planet22)
	(supports instrument5 thermograph1)
	(supports instrument5 spectrograph2)
	(supports instrument5 spectrograph4)
	(calibration_target instrument5 star0)
	(on_board instrument5 satellite2)
	(power_avail satellite2)
	(pointing satellite2 planet17)
	(supports instrument6 image3)
	(supports instrument6 thermograph0)
	(calibration_target instrument6 groundstation2)
	(supports instrument7 image3)
	(supports instrument7 spectrograph4)
	(supports instrument7 spectrograph2)
	(calibration_target instrument7 star0)
	(supports instrument8 thermograph1)
	(supports instrument8 image3)
	(supports instrument8 spectrograph4)
	(calibration_target instrument8 groundstation4)
	(on_board instrument6 satellite3)
	(on_board instrument7 satellite3)
	(on_board instrument8 satellite3)
	(power_avail satellite3)
	(pointing satellite3 planet18)
	(supports instrument9 image3)
	(supports instrument9 spectrograph4)
	(supports instrument9 thermograph1)
	(calibration_target instrument9 star0)
	(on_board instrument9 satellite4)
	(power_avail satellite4)
	(pointing satellite4 phenomenon23)
)
(:goal (and
	(pointing satellite0 planet17)
	(pointing satellite1 star7)
	(have_image star5 spectrograph2)
	(have_image planet6 thermograph0)
	(have_image star7 spectrograph4)
	(have_image star9 image3)
	(have_image phenomenon10 image3)
	(have_image star11 spectrograph2)
	(have_image planet12 image3)
	(have_image phenomenon13 thermograph1)
	(have_image star14 thermograph1)
	(have_image planet15 spectrograph2)
	(have_image planet17 spectrograph4)
	(have_image planet18 image3)
	(have_image star20 image3)
	(have_image star21 spectrograph4)
	(have_image planet22 spectrograph4)
	(have_image phenomenon23 thermograph0)
	(have_image phenomenon24 spectrograph2)
))

)
