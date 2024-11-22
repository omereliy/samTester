(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	instrument1 - instrument
	satellite1 - satellite
	instrument2 - instrument
	satellite2 - satellite
	instrument3 - instrument
	satellite3 - satellite
	instrument4 - instrument
	instrument5 - instrument
	instrument6 - instrument
	satellite4 - satellite
	instrument7 - instrument
	instrument8 - instrument
	instrument9 - instrument
	thermograph4 - mode
	thermograph2 - mode
	image3 - mode
	infrared0 - mode
	infrared1 - mode
	groundstation4 - direction
	star0 - direction
	star3 - direction
	groundstation1 - direction
	groundstation2 - direction
	planet5 - direction
	star6 - direction
	star7 - direction
	planet8 - direction
	star9 - direction
	phenomenon10 - direction
	phenomenon11 - direction
	phenomenon12 - direction
	star13 - direction
	star14 - direction
	phenomenon15 - direction
	planet16 - direction
	star17 - direction
	star18 - direction
	planet19 - direction
	phenomenon20 - direction
	planet21 - direction
	planet22 - direction
	star23 - direction
	star24 - direction
	planet25 - direction
	phenomenon26 - direction
	phenomenon27 - direction
	star28 - direction
)
(:init
	(supports instrument0 thermograph4)
	(calibration_target instrument0 groundstation2)
	(supports instrument1 infrared0)
	(supports instrument1 thermograph2)
	(supports instrument1 image3)
	(calibration_target instrument1 groundstation2)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 planet16)
	(supports instrument2 infrared0)
	(supports instrument2 thermograph4)
	(calibration_target instrument2 groundstation4)
	(on_board instrument2 satellite1)
	(power_avail satellite1)
	(pointing satellite1 star0)
	(supports instrument3 image3)
	(supports instrument3 thermograph4)
	(calibration_target instrument3 star0)
	(on_board instrument3 satellite2)
	(power_avail satellite2)
	(pointing satellite2 planet21)
	(supports instrument4 thermograph2)
	(calibration_target instrument4 groundstation1)
	(supports instrument5 infrared1)
	(supports instrument5 infrared0)
	(supports instrument5 thermograph2)
	(calibration_target instrument5 star3)
	(supports instrument6 image3)
	(supports instrument6 infrared1)
	(calibration_target instrument6 groundstation2)
	(on_board instrument4 satellite3)
	(on_board instrument5 satellite3)
	(on_board instrument6 satellite3)
	(power_avail satellite3)
	(pointing satellite3 planet16)
	(supports instrument7 infrared0)
	(supports instrument7 infrared1)
	(supports instrument7 image3)
	(calibration_target instrument7 groundstation1)
	(supports instrument8 infrared0)
	(calibration_target instrument8 groundstation2)
	(supports instrument9 infrared1)
	(calibration_target instrument9 groundstation2)
	(on_board instrument7 satellite4)
	(on_board instrument8 satellite4)
	(on_board instrument9 satellite4)
	(power_avail satellite4)
	(pointing satellite4 star13)
)
(:goal (and
	(pointing satellite2 groundstation4)
	(pointing satellite3 star23)
	(have_image planet5 thermograph4)
	(have_image star6 infrared0)
	(have_image star7 infrared0)
	(have_image planet8 thermograph4)
	(have_image star9 image3)
	(have_image phenomenon10 thermograph2)
	(have_image phenomenon11 image3)
	(have_image phenomenon12 infrared0)
	(have_image star13 infrared1)
	(have_image star14 image3)
	(have_image phenomenon15 infrared0)
	(have_image planet16 image3)
	(have_image star17 image3)
	(have_image star18 image3)
	(have_image phenomenon20 infrared0)
	(have_image planet21 thermograph4)
	(have_image planet22 infrared1)
	(have_image star23 thermograph4)
	(have_image star24 infrared1)
	(have_image planet25 thermograph4)
	(have_image phenomenon26 image3)
	(have_image phenomenon27 image3)
	(have_image star28 thermograph2)
))

)
