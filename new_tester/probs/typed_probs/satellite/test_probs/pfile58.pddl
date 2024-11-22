(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	satellite1 - satellite
	instrument1 - instrument
	instrument2 - instrument
	satellite2 - satellite
	instrument3 - instrument
	instrument4 - instrument
	instrument5 - instrument
	satellite3 - satellite
	instrument6 - instrument
	instrument7 - instrument
	satellite4 - satellite
	instrument8 - instrument
	instrument9 - instrument
	instrument10 - instrument
	spectrograph2 - mode
	spectrograph0 - mode
	spectrograph4 - mode
	infrared3 - mode
	thermograph1 - mode
	groundstation3 - direction
	groundstation4 - direction
	groundstation1 - direction
	star0 - direction
	groundstation2 - direction
	phenomenon5 - direction
	star6 - direction
	phenomenon7 - direction
	star8 - direction
	star9 - direction
	phenomenon10 - direction
	phenomenon11 - direction
	phenomenon12 - direction
	planet13 - direction
	star14 - direction
	planet15 - direction
	star16 - direction
	star17 - direction
	star18 - direction
	star19 - direction
	star20 - direction
	planet21 - direction
	planet22 - direction
	phenomenon23 - direction
)
(:init
	(supports instrument0 spectrograph0)
	(supports instrument0 thermograph1)
	(supports instrument0 spectrograph2)
	(calibration_target instrument0 star0)
	(on_board instrument0 satellite0)
	(power_avail satellite0)
	(pointing satellite0 star20)
	(supports instrument1 infrared3)
	(supports instrument1 spectrograph2)
	(supports instrument1 spectrograph0)
	(calibration_target instrument1 groundstation4)
	(supports instrument2 spectrograph0)
	(calibration_target instrument2 groundstation2)
	(on_board instrument1 satellite1)
	(on_board instrument2 satellite1)
	(power_avail satellite1)
	(pointing satellite1 phenomenon7)
	(supports instrument3 spectrograph0)
	(calibration_target instrument3 groundstation3)
	(supports instrument4 spectrograph2)
	(supports instrument4 spectrograph0)
	(supports instrument4 infrared3)
	(calibration_target instrument4 groundstation4)
	(supports instrument5 spectrograph0)
	(supports instrument5 thermograph1)
	(calibration_target instrument5 groundstation4)
	(on_board instrument3 satellite2)
	(on_board instrument4 satellite2)
	(on_board instrument5 satellite2)
	(power_avail satellite2)
	(pointing satellite2 star19)
	(supports instrument6 spectrograph4)
	(supports instrument6 spectrograph0)
	(supports instrument6 thermograph1)
	(calibration_target instrument6 groundstation2)
	(supports instrument7 infrared3)
	(calibration_target instrument7 star0)
	(on_board instrument6 satellite3)
	(on_board instrument7 satellite3)
	(power_avail satellite3)
	(pointing satellite3 star20)
	(supports instrument8 thermograph1)
	(calibration_target instrument8 groundstation1)
	(supports instrument9 thermograph1)
	(supports instrument9 infrared3)
	(supports instrument9 spectrograph0)
	(calibration_target instrument9 star0)
	(supports instrument10 thermograph1)
	(supports instrument10 infrared3)
	(supports instrument10 spectrograph4)
	(calibration_target instrument10 groundstation2)
	(on_board instrument8 satellite4)
	(on_board instrument9 satellite4)
	(on_board instrument10 satellite4)
	(power_avail satellite4)
	(pointing satellite4 star6)
)
(:goal (and
	(pointing satellite0 planet15)
	(pointing satellite1 star19)
	(pointing satellite2 planet15)
	(pointing satellite3 star18)
	(have_image phenomenon5 spectrograph4)
	(have_image star6 spectrograph4)
	(have_image phenomenon7 spectrograph0)
	(have_image star8 spectrograph2)
	(have_image star9 infrared3)
	(have_image phenomenon11 spectrograph2)
	(have_image phenomenon12 spectrograph2)
	(have_image planet13 infrared3)
	(have_image star14 spectrograph2)
	(have_image planet15 spectrograph2)
	(have_image star16 spectrograph4)
	(have_image star17 thermograph1)
	(have_image star18 infrared3)
	(have_image star20 spectrograph2)
	(have_image planet22 spectrograph2)
))

)
