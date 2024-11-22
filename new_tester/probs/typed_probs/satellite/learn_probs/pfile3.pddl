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
	instrument6 - instrument
	satellite3 - satellite
	instrument7 - instrument
	instrument8 - instrument
	instrument9 - instrument
	satellite4 - satellite
	instrument10 - instrument
	instrument11 - instrument
	instrument12 - instrument
	satellite5 - satellite
	instrument13 - instrument
	instrument14 - instrument
	thermograph4 - mode
	spectrograph0 - mode
	spectrograph1 - mode
	infrared2 - mode
	image3 - mode
	star2 - direction
	groundstation3 - direction
	groundstation1 - direction
	groundstation4 - direction
	star0 - direction
	phenomenon5 - direction
	phenomenon6 - direction
	star7 - direction
	phenomenon8 - direction
	phenomenon9 - direction
	planet10 - direction
	star11 - direction
	phenomenon12 - direction
	planet13 - direction
	star14 - direction
	phenomenon15 - direction
	star16 - direction
	star17 - direction
	star18 - direction
	phenomenon19 - direction
	star20 - direction
	planet21 - direction
	planet22 - direction
	star23 - direction
	phenomenon24 - direction
)
(:init
	(supports instrument0 thermograph4)
	(supports instrument0 image3)
	(supports instrument0 spectrograph1)
	(calibration_target instrument0 star2)
	(supports instrument1 spectrograph1)
	(supports instrument1 infrared2)
	(supports instrument1 image3)
	(calibration_target instrument1 groundstation3)
	(supports instrument2 spectrograph0)
	(supports instrument2 image3)
	(supports instrument2 spectrograph1)
	(calibration_target instrument2 star2)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 phenomenon12)
	(supports instrument3 thermograph4)
	(calibration_target instrument3 star2)
	(supports instrument4 image3)
	(supports instrument4 infrared2)
	(calibration_target instrument4 star2)
	(on_board instrument3 satellite1)
	(on_board instrument4 satellite1)
	(power_avail satellite1)
	(pointing satellite1 phenomenon24)
	(supports instrument5 image3)
	(supports instrument5 spectrograph0)
	(calibration_target instrument5 groundstation3)
	(supports instrument6 spectrograph0)
	(supports instrument6 spectrograph1)
	(calibration_target instrument6 groundstation3)
	(on_board instrument5 satellite2)
	(on_board instrument6 satellite2)
	(power_avail satellite2)
	(pointing satellite2 phenomenon5)
	(supports instrument7 image3)
	(supports instrument7 spectrograph0)
	(calibration_target instrument7 groundstation1)
	(supports instrument8 spectrograph0)
	(calibration_target instrument8 groundstation1)
	(supports instrument9 spectrograph1)
	(supports instrument9 infrared2)
	(calibration_target instrument9 groundstation1)
	(on_board instrument7 satellite3)
	(on_board instrument8 satellite3)
	(on_board instrument9 satellite3)
	(power_avail satellite3)
	(pointing satellite3 phenomenon24)
	(supports instrument10 spectrograph0)
	(supports instrument10 spectrograph1)
	(calibration_target instrument10 groundstation4)
	(supports instrument11 spectrograph1)
	(supports instrument11 infrared2)
	(supports instrument11 spectrograph0)
	(calibration_target instrument11 groundstation1)
	(supports instrument12 spectrograph0)
	(calibration_target instrument12 star0)
	(on_board instrument10 satellite4)
	(on_board instrument11 satellite4)
	(on_board instrument12 satellite4)
	(power_avail satellite4)
	(pointing satellite4 star11)
	(supports instrument13 infrared2)
	(supports instrument13 spectrograph1)
	(supports instrument13 spectrograph0)
	(calibration_target instrument13 groundstation4)
	(supports instrument14 image3)
	(calibration_target instrument14 star0)
	(on_board instrument13 satellite5)
	(on_board instrument14 satellite5)
	(power_avail satellite5)
	(pointing satellite5 star14)
)
(:goal (and
	(pointing satellite1 groundstation4)
	(pointing satellite4 phenomenon24)
	(pointing satellite5 groundstation1)
	(have_image phenomenon5 image3)
	(have_image phenomenon6 infrared2)
	(have_image star7 image3)
	(have_image phenomenon8 spectrograph1)
	(have_image phenomenon9 infrared2)
	(have_image planet10 spectrograph0)
	(have_image phenomenon12 infrared2)
	(have_image star14 image3)
	(have_image phenomenon15 image3)
	(have_image star16 thermograph4)
	(have_image star17 spectrograph1)
	(have_image phenomenon19 infrared2)
	(have_image star20 spectrograph0)
	(have_image planet21 spectrograph0)
	(have_image planet22 spectrograph0)
	(have_image star23 spectrograph1)
))

)
