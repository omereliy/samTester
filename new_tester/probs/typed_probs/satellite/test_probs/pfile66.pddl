(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	satellite1 - satellite
	instrument1 - instrument
	instrument2 - instrument
	satellite2 - satellite
	instrument3 - instrument
	instrument4 - instrument
	satellite3 - satellite
	instrument5 - instrument
	satellite4 - satellite
	instrument6 - instrument
	spectrograph0 - mode
	thermograph1 - mode
	infrared3 - mode
	infrared4 - mode
	infrared2 - mode
	star0 - direction
	star2 - direction
	groundstation4 - direction
	groundstation1 - direction
	groundstation3 - direction
	star5 - direction
	planet6 - direction
	planet7 - direction
	planet8 - direction
	star9 - direction
	planet10 - direction
	star11 - direction
	phenomenon12 - direction
	phenomenon13 - direction
	planet14 - direction
	star15 - direction
	star16 - direction
)
(:init
	(supports instrument0 infrared4)
	(calibration_target instrument0 groundstation3)
	(on_board instrument0 satellite0)
	(power_avail satellite0)
	(pointing satellite0 planet8)
	(supports instrument1 infrared3)
	(supports instrument1 spectrograph0)
	(supports instrument1 infrared4)
	(calibration_target instrument1 groundstation4)
	(supports instrument2 thermograph1)
	(supports instrument2 infrared4)
	(calibration_target instrument2 groundstation1)
	(on_board instrument1 satellite1)
	(on_board instrument2 satellite1)
	(power_avail satellite1)
	(pointing satellite1 star2)
	(supports instrument3 infrared4)
	(supports instrument3 spectrograph0)
	(calibration_target instrument3 groundstation1)
	(supports instrument4 infrared2)
	(supports instrument4 thermograph1)
	(calibration_target instrument4 groundstation3)
	(on_board instrument3 satellite2)
	(on_board instrument4 satellite2)
	(power_avail satellite2)
	(pointing satellite2 groundstation4)
	(supports instrument5 infrared4)
	(supports instrument5 infrared2)
	(supports instrument5 infrared3)
	(calibration_target instrument5 groundstation3)
	(on_board instrument5 satellite3)
	(power_avail satellite3)
	(pointing satellite3 phenomenon13)
	(supports instrument6 infrared2)
	(calibration_target instrument6 groundstation3)
	(on_board instrument6 satellite4)
	(power_avail satellite4)
	(pointing satellite4 planet8)
)
(:goal (and
	(pointing satellite3 planet10)
	(have_image planet7 infrared4)
	(have_image planet8 infrared3)
	(have_image star9 infrared2)
	(have_image star11 thermograph1)
	(have_image phenomenon12 infrared4)
	(have_image phenomenon13 infrared2)
	(have_image planet14 infrared4)
	(have_image star15 thermograph1)
	(have_image star16 infrared4)
))

)
