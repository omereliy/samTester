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
	instrument5 - instrument
	satellite2 - satellite
	instrument6 - instrument
	instrument7 - instrument
	instrument8 - instrument
	satellite3 - satellite
	instrument9 - instrument
	satellite4 - satellite
	instrument10 - instrument
	thermograph2 - mode
	spectrograph4 - mode
	thermograph1 - mode
	thermograph0 - mode
	spectrograph3 - mode
	groundstation0 - direction
	groundstation3 - direction
	groundstation2 - direction
	star4 - direction
	star1 - direction
	phenomenon5 - direction
	star6 - direction
	star7 - direction
	star8 - direction
	planet9 - direction
	star10 - direction
	planet11 - direction
	planet12 - direction
	star13 - direction
	star14 - direction
	phenomenon15 - direction
	planet16 - direction
	star17 - direction
	star18 - direction
	phenomenon19 - direction
	star20 - direction
	planet21 - direction
	planet22 - direction
	planet23 - direction
	star24 - direction
	planet25 - direction
	phenomenon26 - direction
	planet27 - direction
	planet28 - direction
)
(:init
	(supports instrument0 thermograph0)
	(supports instrument0 thermograph1)
	(calibration_target instrument0 star1)
	(supports instrument1 thermograph0)
	(supports instrument1 thermograph1)
	(supports instrument1 thermograph2)
	(calibration_target instrument1 groundstation3)
	(supports instrument2 thermograph1)
	(supports instrument2 spectrograph4)
	(calibration_target instrument2 groundstation0)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 groundstation2)
	(supports instrument3 spectrograph4)
	(supports instrument3 thermograph1)
	(supports instrument3 thermograph0)
	(calibration_target instrument3 star1)
	(supports instrument4 thermograph2)
	(supports instrument4 spectrograph3)
	(supports instrument4 thermograph0)
	(calibration_target instrument4 groundstation2)
	(supports instrument5 spectrograph4)
	(supports instrument5 spectrograph3)
	(supports instrument5 thermograph1)
	(calibration_target instrument5 groundstation3)
	(on_board instrument3 satellite1)
	(on_board instrument4 satellite1)
	(on_board instrument5 satellite1)
	(power_avail satellite1)
	(pointing satellite1 star6)
	(supports instrument6 thermograph1)
	(supports instrument6 spectrograph3)
	(supports instrument6 thermograph2)
	(calibration_target instrument6 groundstation2)
	(supports instrument7 thermograph0)
	(calibration_target instrument7 groundstation2)
	(supports instrument8 spectrograph4)
	(supports instrument8 thermograph1)
	(calibration_target instrument8 star4)
	(on_board instrument6 satellite2)
	(on_board instrument7 satellite2)
	(on_board instrument8 satellite2)
	(power_avail satellite2)
	(pointing satellite2 planet16)
	(supports instrument9 spectrograph3)
	(supports instrument9 thermograph1)
	(calibration_target instrument9 star4)
	(on_board instrument9 satellite3)
	(power_avail satellite3)
	(pointing satellite3 planet23)
	(supports instrument10 spectrograph3)
	(supports instrument10 thermograph0)
	(calibration_target instrument10 star1)
	(on_board instrument10 satellite4)
	(power_avail satellite4)
	(pointing satellite4 star1)
)
(:goal (and
	(pointing satellite0 planet25)
	(pointing satellite3 star20)
	(have_image phenomenon5 spectrograph4)
	(have_image star6 thermograph0)
	(have_image star7 thermograph1)
	(have_image star8 thermograph1)
	(have_image planet9 spectrograph4)
	(have_image star10 spectrograph3)
	(have_image planet11 thermograph2)
	(have_image planet12 spectrograph3)
	(have_image star13 thermograph2)
	(have_image star14 thermograph0)
	(have_image phenomenon15 spectrograph3)
	(have_image star17 spectrograph4)
	(have_image star18 thermograph0)
	(have_image phenomenon19 spectrograph4)
	(have_image star20 spectrograph3)
	(have_image planet21 thermograph0)
	(have_image planet22 thermograph1)
	(have_image phenomenon26 spectrograph4)
	(have_image planet27 thermograph2)
	(have_image planet28 spectrograph4)
))

)
