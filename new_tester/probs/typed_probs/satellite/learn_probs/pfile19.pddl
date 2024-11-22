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
	instrument5 - instrument
	instrument6 - instrument
	satellite3 - satellite
	instrument7 - instrument
	instrument8 - instrument
	instrument9 - instrument
	satellite4 - satellite
	instrument10 - instrument
	satellite5 - satellite
	instrument11 - instrument
	thermograph3 - mode
	spectrograph4 - mode
	infrared1 - mode
	thermograph2 - mode
	thermograph0 - mode
	groundstation2 - direction
	groundstation4 - direction
	groundstation3 - direction
	groundstation1 - direction
	star0 - direction
	star5 - direction
	planet6 - direction
	star7 - direction
	planet8 - direction
	star9 - direction
	planet10 - direction
	planet11 - direction
	star12 - direction
	planet13 - direction
	star14 - direction
	planet15 - direction
	planet16 - direction
	phenomenon17 - direction
	phenomenon18 - direction
	phenomenon19 - direction
	planet20 - direction
	phenomenon21 - direction
	star22 - direction
	star23 - direction
	star24 - direction
)
(:init
	(supports instrument0 thermograph2)
	(supports instrument0 infrared1)
	(calibration_target instrument0 star0)
	(on_board instrument0 satellite0)
	(power_avail satellite0)
	(pointing satellite0 star14)
	(supports instrument1 thermograph3)
	(supports instrument1 thermograph2)
	(calibration_target instrument1 groundstation4)
	(supports instrument2 thermograph0)
	(calibration_target instrument2 groundstation1)
	(supports instrument3 thermograph2)
	(supports instrument3 infrared1)
	(calibration_target instrument3 groundstation2)
	(on_board instrument1 satellite1)
	(on_board instrument2 satellite1)
	(on_board instrument3 satellite1)
	(power_avail satellite1)
	(pointing satellite1 planet15)
	(supports instrument4 infrared1)
	(supports instrument4 spectrograph4)
	(calibration_target instrument4 star0)
	(supports instrument5 infrared1)
	(supports instrument5 thermograph0)
	(supports instrument5 thermograph2)
	(calibration_target instrument5 star0)
	(supports instrument6 thermograph3)
	(calibration_target instrument6 groundstation1)
	(on_board instrument4 satellite2)
	(on_board instrument5 satellite2)
	(on_board instrument6 satellite2)
	(power_avail satellite2)
	(pointing satellite2 planet15)
	(supports instrument7 thermograph2)
	(supports instrument7 thermograph0)
	(supports instrument7 infrared1)
	(calibration_target instrument7 groundstation4)
	(supports instrument8 infrared1)
	(supports instrument8 thermograph2)
	(supports instrument8 spectrograph4)
	(calibration_target instrument8 groundstation1)
	(supports instrument9 spectrograph4)
	(supports instrument9 thermograph0)
	(calibration_target instrument9 groundstation3)
	(on_board instrument7 satellite3)
	(on_board instrument8 satellite3)
	(on_board instrument9 satellite3)
	(power_avail satellite3)
	(pointing satellite3 star5)
	(supports instrument10 thermograph2)
	(supports instrument10 thermograph0)
	(supports instrument10 infrared1)
	(calibration_target instrument10 groundstation1)
	(on_board instrument10 satellite4)
	(power_avail satellite4)
	(pointing satellite4 phenomenon17)
	(supports instrument11 thermograph0)
	(calibration_target instrument11 star0)
	(on_board instrument11 satellite5)
	(power_avail satellite5)
	(pointing satellite5 star5)
)
(:goal (and
	(pointing satellite3 star9)
	(have_image star5 thermograph2)
	(have_image planet6 thermograph2)
	(have_image star7 spectrograph4)
	(have_image planet8 thermograph2)
	(have_image star9 thermograph0)
	(have_image planet10 infrared1)
	(have_image planet11 infrared1)
	(have_image star12 infrared1)
	(have_image planet13 thermograph0)
	(have_image star14 infrared1)
	(have_image planet15 infrared1)
	(have_image planet16 thermograph2)
	(have_image phenomenon17 thermograph3)
	(have_image phenomenon18 spectrograph4)
	(have_image phenomenon19 thermograph0)
	(have_image planet20 thermograph0)
	(have_image phenomenon21 thermograph2)
	(have_image star22 thermograph0)
	(have_image star23 thermograph0)
	(have_image star24 thermograph3)
))

)
