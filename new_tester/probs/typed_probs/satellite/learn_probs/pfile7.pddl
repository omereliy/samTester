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
	satellite4 - satellite
	instrument8 - instrument
	instrument9 - instrument
	satellite5 - satellite
	instrument10 - instrument
	instrument11 - instrument
	spectrograph3 - mode
	thermograph1 - mode
	infrared2 - mode
	image0 - mode
	spectrograph4 - mode
	star2 - direction
	groundstation4 - direction
	groundstation0 - direction
	star1 - direction
	groundstation3 - direction
	phenomenon5 - direction
	star6 - direction
	planet7 - direction
	star8 - direction
	planet9 - direction
	star10 - direction
	planet11 - direction
	phenomenon12 - direction
	planet13 - direction
	planet14 - direction
	phenomenon15 - direction
	phenomenon16 - direction
	star17 - direction
	phenomenon18 - direction
	phenomenon19 - direction
	star20 - direction
	star21 - direction
	star22 - direction
	phenomenon23 - direction
	phenomenon24 - direction
)
(:init
	(supports instrument0 spectrograph4)
	(calibration_target instrument0 groundstation3)
	(supports instrument1 image0)
	(supports instrument1 spectrograph4)
	(calibration_target instrument1 groundstation3)
	(supports instrument2 thermograph1)
	(supports instrument2 infrared2)
	(supports instrument2 spectrograph4)
	(calibration_target instrument2 star1)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 phenomenon12)
	(supports instrument3 thermograph1)
	(supports instrument3 spectrograph3)
	(supports instrument3 spectrograph4)
	(calibration_target instrument3 star1)
	(supports instrument4 spectrograph4)
	(supports instrument4 spectrograph3)
	(supports instrument4 infrared2)
	(calibration_target instrument4 star2)
	(supports instrument5 image0)
	(calibration_target instrument5 groundstation0)
	(on_board instrument3 satellite1)
	(on_board instrument4 satellite1)
	(on_board instrument5 satellite1)
	(power_avail satellite1)
	(pointing satellite1 groundstation0)
	(supports instrument6 image0)
	(calibration_target instrument6 groundstation4)
	(on_board instrument6 satellite2)
	(power_avail satellite2)
	(pointing satellite2 star20)
	(supports instrument7 thermograph1)
	(supports instrument7 image0)
	(calibration_target instrument7 star1)
	(on_board instrument7 satellite3)
	(power_avail satellite3)
	(pointing satellite3 phenomenon5)
	(supports instrument8 spectrograph3)
	(supports instrument8 image0)
	(calibration_target instrument8 star1)
	(supports instrument9 image0)
	(supports instrument9 thermograph1)
	(calibration_target instrument9 groundstation0)
	(on_board instrument8 satellite4)
	(on_board instrument9 satellite4)
	(power_avail satellite4)
	(pointing satellite4 planet14)
	(supports instrument10 image0)
	(supports instrument10 spectrograph4)
	(supports instrument10 infrared2)
	(calibration_target instrument10 star1)
	(supports instrument11 spectrograph4)
	(calibration_target instrument11 groundstation3)
	(on_board instrument10 satellite5)
	(on_board instrument11 satellite5)
	(power_avail satellite5)
	(pointing satellite5 star8)
)
(:goal (and
	(pointing satellite2 star6)
	(have_image star6 spectrograph3)
	(have_image planet7 spectrograph4)
	(have_image star8 thermograph1)
	(have_image planet9 spectrograph4)
	(have_image star10 spectrograph3)
	(have_image planet11 infrared2)
	(have_image phenomenon12 spectrograph4)
	(have_image planet13 infrared2)
	(have_image planet14 infrared2)
	(have_image phenomenon16 spectrograph3)
	(have_image star17 infrared2)
	(have_image phenomenon18 image0)
	(have_image phenomenon19 thermograph1)
	(have_image star20 thermograph1)
	(have_image star21 infrared2)
	(have_image star22 spectrograph3)
	(have_image phenomenon23 image0)
	(have_image phenomenon24 thermograph1)
))

)
