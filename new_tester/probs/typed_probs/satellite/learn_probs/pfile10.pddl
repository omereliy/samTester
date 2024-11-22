(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	instrument1 - instrument
	instrument2 - instrument
	satellite1 - satellite
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
	instrument11 - instrument
	spectrograph0 - mode
	image3 - mode
	infrared1 - mode
	thermograph2 - mode
	spectrograph4 - mode
	star1 - direction
	star0 - direction
	groundstation2 - direction
	groundstation3 - direction
	star4 - direction
	planet5 - direction
	planet6 - direction
	phenomenon7 - direction
	star8 - direction
	phenomenon9 - direction
	star10 - direction
	planet11 - direction
	star12 - direction
	phenomenon13 - direction
	phenomenon14 - direction
	phenomenon15 - direction
	phenomenon16 - direction
	phenomenon17 - direction
	phenomenon18 - direction
	star19 - direction
	star20 - direction
	planet21 - direction
	planet22 - direction
	phenomenon23 - direction
	planet24 - direction
	star25 - direction
	planet26 - direction
	star27 - direction
)
(:init
	(supports instrument0 infrared1)
	(calibration_target instrument0 star1)
	(supports instrument1 spectrograph4)
	(calibration_target instrument1 star1)
	(supports instrument2 spectrograph4)
	(supports instrument2 infrared1)
	(calibration_target instrument2 star4)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 phenomenon16)
	(supports instrument3 image3)
	(supports instrument3 infrared1)
	(supports instrument3 spectrograph0)
	(calibration_target instrument3 groundstation2)
	(on_board instrument3 satellite1)
	(power_avail satellite1)
	(pointing satellite1 planet24)
	(supports instrument4 image3)
	(supports instrument4 spectrograph0)
	(calibration_target instrument4 star4)
	(supports instrument5 image3)
	(calibration_target instrument5 star0)
	(supports instrument6 spectrograph0)
	(calibration_target instrument6 star1)
	(on_board instrument4 satellite2)
	(on_board instrument5 satellite2)
	(on_board instrument6 satellite2)
	(power_avail satellite2)
	(pointing satellite2 phenomenon15)
	(supports instrument7 thermograph2)
	(supports instrument7 infrared1)
	(calibration_target instrument7 star0)
	(supports instrument8 image3)
	(calibration_target instrument8 groundstation3)
	(supports instrument9 thermograph2)
	(supports instrument9 infrared1)
	(supports instrument9 image3)
	(calibration_target instrument9 groundstation2)
	(on_board instrument7 satellite3)
	(on_board instrument8 satellite3)
	(on_board instrument9 satellite3)
	(power_avail satellite3)
	(pointing satellite3 phenomenon7)
	(supports instrument10 thermograph2)
	(supports instrument10 infrared1)
	(supports instrument10 image3)
	(calibration_target instrument10 groundstation3)
	(supports instrument11 spectrograph4)
	(supports instrument11 thermograph2)
	(calibration_target instrument11 star4)
	(on_board instrument10 satellite4)
	(on_board instrument11 satellite4)
	(power_avail satellite4)
	(pointing satellite4 star1)
)
(:goal (and
	(pointing satellite1 phenomenon7)
	(pointing satellite3 phenomenon16)
	(have_image planet5 image3)
	(have_image planet6 thermograph2)
	(have_image phenomenon7 spectrograph0)
	(have_image phenomenon9 spectrograph4)
	(have_image star10 spectrograph0)
	(have_image planet11 thermograph2)
	(have_image star12 infrared1)
	(have_image phenomenon13 infrared1)
	(have_image phenomenon14 thermograph2)
	(have_image phenomenon16 spectrograph0)
	(have_image phenomenon18 infrared1)
	(have_image star19 thermograph2)
	(have_image star20 spectrograph0)
	(have_image planet21 spectrograph0)
	(have_image planet22 spectrograph0)
	(have_image phenomenon23 spectrograph0)
	(have_image planet24 spectrograph0)
	(have_image star25 thermograph2)
	(have_image planet26 spectrograph4)
	(have_image star27 thermograph2)
))

)
