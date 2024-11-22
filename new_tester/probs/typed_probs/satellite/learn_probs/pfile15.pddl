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
	satellite4 - satellite
	instrument8 - instrument
	satellite5 - satellite
	instrument9 - instrument
	instrument10 - instrument
	instrument11 - instrument
	thermograph0 - mode
	spectrograph4 - mode
	image1 - mode
	image3 - mode
	spectrograph2 - mode
	star2 - direction
	groundstation3 - direction
	groundstation1 - direction
	groundstation4 - direction
	groundstation0 - direction
	phenomenon5 - direction
	planet6 - direction
	phenomenon7 - direction
	planet8 - direction
	phenomenon9 - direction
	star10 - direction
	planet11 - direction
	star12 - direction
	star13 - direction
	star14 - direction
	planet15 - direction
	planet16 - direction
	star17 - direction
	planet18 - direction
	phenomenon19 - direction
	star20 - direction
	planet21 - direction
	phenomenon22 - direction
	star23 - direction
	star24 - direction
)
(:init
	(supports instrument0 thermograph0)
	(calibration_target instrument0 groundstation0)
	(supports instrument1 image3)
	(supports instrument1 spectrograph2)
	(calibration_target instrument1 star2)
	(supports instrument2 thermograph0)
	(supports instrument2 spectrograph2)
	(calibration_target instrument2 groundstation4)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 groundstation3)
	(supports instrument3 thermograph0)
	(supports instrument3 image1)
	(supports instrument3 spectrograph2)
	(calibration_target instrument3 groundstation1)
	(on_board instrument3 satellite1)
	(power_avail satellite1)
	(pointing satellite1 phenomenon19)
	(supports instrument4 image3)
	(supports instrument4 spectrograph4)
	(supports instrument4 thermograph0)
	(calibration_target instrument4 groundstation4)
	(supports instrument5 spectrograph2)
	(supports instrument5 image3)
	(supports instrument5 thermograph0)
	(calibration_target instrument5 groundstation1)
	(supports instrument6 spectrograph2)
	(supports instrument6 spectrograph4)
	(calibration_target instrument6 groundstation4)
	(on_board instrument4 satellite2)
	(on_board instrument5 satellite2)
	(on_board instrument6 satellite2)
	(power_avail satellite2)
	(pointing satellite2 star12)
	(supports instrument7 spectrograph4)
	(calibration_target instrument7 groundstation3)
	(on_board instrument7 satellite3)
	(power_avail satellite3)
	(pointing satellite3 groundstation1)
	(supports instrument8 image1)
	(supports instrument8 spectrograph2)
	(supports instrument8 spectrograph4)
	(calibration_target instrument8 groundstation3)
	(on_board instrument8 satellite4)
	(power_avail satellite4)
	(pointing satellite4 planet8)
	(supports instrument9 image3)
	(supports instrument9 image1)
	(calibration_target instrument9 groundstation1)
	(supports instrument10 image3)
	(calibration_target instrument10 groundstation4)
	(supports instrument11 spectrograph2)
	(calibration_target instrument11 groundstation0)
	(on_board instrument9 satellite5)
	(on_board instrument10 satellite5)
	(on_board instrument11 satellite5)
	(power_avail satellite5)
	(pointing satellite5 phenomenon7)
)
(:goal (and
	(pointing satellite0 phenomenon5)
	(have_image phenomenon5 image3)
	(have_image planet6 image3)
	(have_image phenomenon7 spectrograph4)
	(have_image planet8 spectrograph4)
	(have_image phenomenon9 spectrograph4)
	(have_image star10 image1)
	(have_image star12 spectrograph4)
	(have_image star13 thermograph0)
	(have_image star14 spectrograph2)
	(have_image planet15 image1)
	(have_image planet16 image1)
	(have_image star17 thermograph0)
	(have_image planet18 spectrograph4)
	(have_image phenomenon19 image3)
	(have_image star20 thermograph0)
	(have_image planet21 image3)
	(have_image phenomenon22 spectrograph4)
	(have_image star23 spectrograph4)
))

)
