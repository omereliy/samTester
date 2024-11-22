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
	satellite3 - satellite
	instrument4 - instrument
	instrument5 - instrument
	satellite4 - satellite
	instrument6 - instrument
	satellite5 - satellite
	instrument7 - instrument
	infrared0 - mode
	infrared3 - mode
	thermograph2 - mode
	thermograph1 - mode
	image4 - mode
	star1 - direction
	star3 - direction
	star2 - direction
	groundstation4 - direction
	star0 - direction
	phenomenon5 - direction
	star6 - direction
	planet7 - direction
	star8 - direction
	planet9 - direction
	star10 - direction
	phenomenon11 - direction
	phenomenon12 - direction
	star13 - direction
	phenomenon14 - direction
	phenomenon15 - direction
	phenomenon16 - direction
	planet17 - direction
	planet18 - direction
	planet19 - direction
	planet20 - direction
	phenomenon21 - direction
	phenomenon22 - direction
	phenomenon23 - direction
	planet24 - direction
)
(:init
	(supports instrument0 image4)
	(calibration_target instrument0 star2)
	(on_board instrument0 satellite0)
	(power_avail satellite0)
	(pointing satellite0 star2)
	(supports instrument1 infrared3)
	(supports instrument1 infrared0)
	(supports instrument1 image4)
	(calibration_target instrument1 star2)
	(on_board instrument1 satellite1)
	(power_avail satellite1)
	(pointing satellite1 phenomenon12)
	(supports instrument2 infrared0)
	(supports instrument2 infrared3)
	(supports instrument2 image4)
	(calibration_target instrument2 star0)
	(supports instrument3 infrared3)
	(supports instrument3 image4)
	(calibration_target instrument3 star0)
	(on_board instrument2 satellite2)
	(on_board instrument3 satellite2)
	(power_avail satellite2)
	(pointing satellite2 star6)
	(supports instrument4 thermograph1)
	(supports instrument4 infrared0)
	(calibration_target instrument4 star2)
	(supports instrument5 thermograph1)
	(calibration_target instrument5 star0)
	(on_board instrument4 satellite3)
	(on_board instrument5 satellite3)
	(power_avail satellite3)
	(pointing satellite3 phenomenon23)
	(supports instrument6 thermograph2)
	(supports instrument6 thermograph1)
	(supports instrument6 infrared3)
	(calibration_target instrument6 groundstation4)
	(on_board instrument6 satellite4)
	(power_avail satellite4)
	(pointing satellite4 phenomenon15)
	(supports instrument7 image4)
	(supports instrument7 thermograph1)
	(supports instrument7 thermograph2)
	(calibration_target instrument7 star0)
	(on_board instrument7 satellite5)
	(power_avail satellite5)
	(pointing satellite5 star0)
)
(:goal (and
	(pointing satellite0 star6)
	(have_image phenomenon5 thermograph2)
	(have_image star6 thermograph1)
	(have_image planet7 infrared3)
	(have_image star8 thermograph1)
	(have_image planet9 thermograph2)
	(have_image star10 infrared0)
	(have_image phenomenon11 thermograph1)
	(have_image phenomenon12 thermograph2)
	(have_image star13 infrared3)
	(have_image phenomenon14 infrared0)
	(have_image phenomenon15 image4)
	(have_image phenomenon16 thermograph1)
	(have_image planet18 image4)
	(have_image planet19 thermograph2)
	(have_image planet20 thermograph2)
	(have_image phenomenon21 image4)
	(have_image phenomenon22 thermograph1)
	(have_image phenomenon23 infrared0)
	(have_image planet24 thermograph2)
))

)
