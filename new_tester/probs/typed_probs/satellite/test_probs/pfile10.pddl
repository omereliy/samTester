(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	satellite1 - satellite
	instrument1 - instrument
	satellite2 - satellite
	instrument2 - instrument
	instrument3 - instrument
	instrument4 - instrument
	satellite3 - satellite
	instrument5 - instrument
	instrument6 - instrument
	instrument7 - instrument
	satellite4 - satellite
	instrument8 - instrument
	instrument9 - instrument
	instrument10 - instrument
	thermograph3 - mode
	spectrograph2 - mode
	infrared0 - mode
	image4 - mode
	image1 - mode
	star3 - direction
	groundstation0 - direction
	star1 - direction
	groundstation2 - direction
	star4 - direction
	star5 - direction
	star6 - direction
	star7 - direction
	planet8 - direction
	phenomenon9 - direction
	phenomenon10 - direction
	planet11 - direction
	planet12 - direction
	phenomenon13 - direction
	planet14 - direction
	star15 - direction
	planet16 - direction
	planet17 - direction
	star18 - direction
	phenomenon19 - direction
	star20 - direction
	planet21 - direction
	star22 - direction
	star23 - direction
	star24 - direction
	star25 - direction
	star26 - direction
	phenomenon27 - direction
	planet28 - direction
	phenomenon29 - direction
)
(:init
	(supports instrument0 infrared0)
	(calibration_target instrument0 groundstation0)
	(on_board instrument0 satellite0)
	(power_avail satellite0)
	(pointing satellite0 star26)
	(supports instrument1 spectrograph2)
	(supports instrument1 image4)
	(supports instrument1 thermograph3)
	(calibration_target instrument1 star3)
	(on_board instrument1 satellite1)
	(power_avail satellite1)
	(pointing satellite1 star23)
	(supports instrument2 spectrograph2)
	(supports instrument2 image1)
	(supports instrument2 infrared0)
	(calibration_target instrument2 groundstation2)
	(supports instrument3 image4)
	(calibration_target instrument3 star4)
	(supports instrument4 spectrograph2)
	(calibration_target instrument4 groundstation2)
	(on_board instrument2 satellite2)
	(on_board instrument3 satellite2)
	(on_board instrument4 satellite2)
	(power_avail satellite2)
	(pointing satellite2 groundstation2)
	(supports instrument5 thermograph3)
	(calibration_target instrument5 groundstation0)
	(supports instrument6 infrared0)
	(supports instrument6 spectrograph2)
	(calibration_target instrument6 star4)
	(supports instrument7 spectrograph2)
	(supports instrument7 image1)
	(calibration_target instrument7 star1)
	(on_board instrument5 satellite3)
	(on_board instrument6 satellite3)
	(on_board instrument7 satellite3)
	(power_avail satellite3)
	(pointing satellite3 star24)
	(supports instrument8 thermograph3)
	(calibration_target instrument8 groundstation2)
	(supports instrument9 infrared0)
	(supports instrument9 spectrograph2)
	(supports instrument9 image4)
	(calibration_target instrument9 groundstation2)
	(supports instrument10 image1)
	(supports instrument10 image4)
	(calibration_target instrument10 star4)
	(on_board instrument8 satellite4)
	(on_board instrument9 satellite4)
	(on_board instrument10 satellite4)
	(power_avail satellite4)
	(pointing satellite4 planet8)
)
(:goal (and
	(pointing satellite0 planet11)
	(pointing satellite3 planet11)
	(pointing satellite4 star22)
	(have_image star5 image4)
	(have_image star6 image1)
	(have_image star7 infrared0)
	(have_image phenomenon9 image1)
	(have_image phenomenon10 thermograph3)
	(have_image planet11 spectrograph2)
	(have_image planet12 image4)
	(have_image phenomenon13 spectrograph2)
	(have_image planet14 image1)
	(have_image star15 image1)
	(have_image planet16 thermograph3)
	(have_image planet17 image4)
	(have_image star18 image4)
	(have_image phenomenon19 image1)
	(have_image star20 spectrograph2)
	(have_image star22 thermograph3)
	(have_image star23 image1)
	(have_image star24 image4)
	(have_image star25 spectrograph2)
	(have_image star26 thermograph3)
	(have_image phenomenon27 image4)
	(have_image planet28 image4)
	(have_image phenomenon29 image1)
))

)
