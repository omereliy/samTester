(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	instrument1 - instrument
	satellite1 - satellite
	instrument2 - instrument
	instrument3 - instrument
	satellite2 - satellite
	instrument4 - instrument
	instrument5 - instrument
	satellite3 - satellite
	instrument6 - instrument
	instrument7 - instrument
	satellite4 - satellite
	instrument8 - instrument
	instrument9 - instrument
	instrument10 - instrument
	image0 - mode
	spectrograph2 - mode
	spectrograph1 - mode
	infrared4 - mode
	image3 - mode
	groundstation4 - direction
	groundstation1 - direction
	groundstation0 - direction
	groundstation3 - direction
	star2 - direction
	phenomenon5 - direction
	phenomenon6 - direction
	star7 - direction
	phenomenon8 - direction
	phenomenon9 - direction
	star10 - direction
	planet11 - direction
	planet12 - direction
	star13 - direction
	phenomenon14 - direction
	phenomenon15 - direction
	planet16 - direction
	phenomenon17 - direction
	phenomenon18 - direction
	star19 - direction
	planet20 - direction
	phenomenon21 - direction
	phenomenon22 - direction
	star23 - direction
	star24 - direction
	phenomenon25 - direction
	phenomenon26 - direction
	star27 - direction
)
(:init
	(supports instrument0 image0)
	(supports instrument0 image3)
	(supports instrument0 spectrograph2)
	(calibration_target instrument0 groundstation3)
	(supports instrument1 spectrograph1)
	(supports instrument1 image3)
	(supports instrument1 image0)
	(calibration_target instrument1 groundstation3)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 groundstation0)
	(supports instrument2 image3)
	(supports instrument2 spectrograph1)
	(calibration_target instrument2 groundstation3)
	(supports instrument3 image3)
	(supports instrument3 spectrograph2)
	(supports instrument3 infrared4)
	(calibration_target instrument3 groundstation1)
	(on_board instrument2 satellite1)
	(on_board instrument3 satellite1)
	(power_avail satellite1)
	(pointing satellite1 star10)
	(supports instrument4 image3)
	(supports instrument4 infrared4)
	(supports instrument4 image0)
	(calibration_target instrument4 groundstation1)
	(supports instrument5 spectrograph1)
	(supports instrument5 infrared4)
	(supports instrument5 image0)
	(calibration_target instrument5 star2)
	(on_board instrument4 satellite2)
	(on_board instrument5 satellite2)
	(power_avail satellite2)
	(pointing satellite2 phenomenon5)
	(supports instrument6 spectrograph1)
	(supports instrument6 image3)
	(supports instrument6 spectrograph2)
	(calibration_target instrument6 groundstation0)
	(supports instrument7 spectrograph1)
	(supports instrument7 image3)
	(supports instrument7 infrared4)
	(calibration_target instrument7 groundstation3)
	(on_board instrument6 satellite3)
	(on_board instrument7 satellite3)
	(power_avail satellite3)
	(pointing satellite3 star7)
	(supports instrument8 image3)
	(calibration_target instrument8 star2)
	(supports instrument9 spectrograph1)
	(calibration_target instrument9 groundstation3)
	(supports instrument10 image3)
	(supports instrument10 infrared4)
	(supports instrument10 spectrograph1)
	(calibration_target instrument10 star2)
	(on_board instrument8 satellite4)
	(on_board instrument9 satellite4)
	(on_board instrument10 satellite4)
	(power_avail satellite4)
	(pointing satellite4 phenomenon9)
)
(:goal (and
	(pointing satellite0 star7)
	(pointing satellite1 planet11)
	(pointing satellite3 groundstation0)
	(pointing satellite4 planet12)
	(have_image phenomenon5 spectrograph2)
	(have_image phenomenon6 infrared4)
	(have_image star7 image3)
	(have_image phenomenon9 image3)
	(have_image star10 infrared4)
	(have_image planet11 spectrograph2)
	(have_image planet12 image0)
	(have_image star13 image3)
	(have_image phenomenon14 spectrograph2)
	(have_image phenomenon15 image0)
	(have_image planet16 image3)
	(have_image phenomenon17 infrared4)
	(have_image phenomenon18 image0)
	(have_image planet20 spectrograph1)
	(have_image phenomenon21 spectrograph1)
	(have_image phenomenon22 spectrograph1)
	(have_image star23 spectrograph2)
	(have_image star24 infrared4)
	(have_image phenomenon26 image3)
	(have_image star27 image0)
))

)
