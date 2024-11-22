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
	satellite3 - satellite
	instrument7 - instrument
	instrument8 - instrument
	satellite4 - satellite
	instrument9 - instrument
	instrument10 - instrument
	instrument11 - instrument
	spectrograph0 - mode
	image1 - mode
	thermograph4 - mode
	spectrograph2 - mode
	image3 - mode
	star3 - direction
	star4 - direction
	groundstation0 - direction
	star2 - direction
	groundstation1 - direction
	phenomenon5 - direction
	planet6 - direction
	planet7 - direction
	planet8 - direction
	phenomenon9 - direction
	phenomenon10 - direction
	star11 - direction
	phenomenon12 - direction
	planet13 - direction
	phenomenon14 - direction
	planet15 - direction
	planet16 - direction
	star17 - direction
	planet18 - direction
)
(:init
	(supports instrument0 image1)
	(supports instrument0 image3)
	(supports instrument0 spectrograph0)
	(calibration_target instrument0 groundstation1)
	(supports instrument1 spectrograph2)
	(supports instrument1 image3)
	(supports instrument1 thermograph4)
	(calibration_target instrument1 star4)
	(supports instrument2 image1)
	(supports instrument2 spectrograph0)
	(supports instrument2 spectrograph2)
	(calibration_target instrument2 star4)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 groundstation1)
	(supports instrument3 spectrograph0)
	(supports instrument3 spectrograph2)
	(supports instrument3 image1)
	(calibration_target instrument3 groundstation1)
	(supports instrument4 thermograph4)
	(supports instrument4 spectrograph2)
	(calibration_target instrument4 star3)
	(supports instrument5 image3)
	(supports instrument5 thermograph4)
	(supports instrument5 spectrograph2)
	(calibration_target instrument5 groundstation0)
	(on_board instrument3 satellite1)
	(on_board instrument4 satellite1)
	(on_board instrument5 satellite1)
	(power_avail satellite1)
	(pointing satellite1 phenomenon12)
	(supports instrument6 spectrograph0)
	(supports instrument6 image1)
	(calibration_target instrument6 star2)
	(on_board instrument6 satellite2)
	(power_avail satellite2)
	(pointing satellite2 star4)
	(supports instrument7 spectrograph0)
	(supports instrument7 image1)
	(supports instrument7 image3)
	(calibration_target instrument7 star4)
	(supports instrument8 thermograph4)
	(supports instrument8 image1)
	(calibration_target instrument8 groundstation0)
	(on_board instrument7 satellite3)
	(on_board instrument8 satellite3)
	(power_avail satellite3)
	(pointing satellite3 planet6)
	(supports instrument9 image1)
	(calibration_target instrument9 groundstation0)
	(supports instrument10 thermograph4)
	(calibration_target instrument10 star2)
	(supports instrument11 image3)
	(supports instrument11 spectrograph2)
	(calibration_target instrument11 groundstation1)
	(on_board instrument9 satellite4)
	(on_board instrument10 satellite4)
	(on_board instrument11 satellite4)
	(power_avail satellite4)
	(pointing satellite4 planet6)
)
(:goal (and
	(pointing satellite0 planet18)
	(pointing satellite3 phenomenon12)
	(pointing satellite4 planet15)
	(have_image phenomenon5 spectrograph0)
	(have_image planet6 spectrograph0)
	(have_image planet7 spectrograph0)
	(have_image planet8 spectrograph2)
	(have_image phenomenon9 spectrograph0)
	(have_image star11 spectrograph0)
	(have_image phenomenon12 thermograph4)
	(have_image planet13 thermograph4)
	(have_image phenomenon14 spectrograph0)
	(have_image planet15 image1)
	(have_image planet16 spectrograph2)
	(have_image star17 thermograph4)
))

)
