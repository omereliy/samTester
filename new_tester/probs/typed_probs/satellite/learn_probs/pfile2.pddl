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
	satellite4 - satellite
	instrument5 - instrument
	image0 - mode
	thermograph3 - mode
	infrared1 - mode
	image2 - mode
	infrared4 - mode
	star3 - direction
	star4 - direction
	groundstation2 - direction
	star1 - direction
	star0 - direction
	star5 - direction
	planet6 - direction
	star7 - direction
	planet8 - direction
	phenomenon9 - direction
	planet10 - direction
	star11 - direction
	phenomenon12 - direction
	planet13 - direction
	planet14 - direction
	planet15 - direction
	star16 - direction
	phenomenon17 - direction
	phenomenon18 - direction
	phenomenon19 - direction
	planet20 - direction
	phenomenon21 - direction
	planet22 - direction
	planet23 - direction
)
(:init
	(supports instrument0 thermograph3)
	(supports instrument0 image2)
	(calibration_target instrument0 star3)
	(on_board instrument0 satellite0)
	(power_avail satellite0)
	(pointing satellite0 star16)
	(supports instrument1 image0)
	(supports instrument1 thermograph3)
	(calibration_target instrument1 star1)
	(on_board instrument1 satellite1)
	(power_avail satellite1)
	(pointing satellite1 planet13)
	(supports instrument2 thermograph3)
	(supports instrument2 image0)
	(supports instrument2 infrared4)
	(calibration_target instrument2 star4)
	(supports instrument3 thermograph3)
	(supports instrument3 image0)
	(supports instrument3 infrared1)
	(calibration_target instrument3 groundstation2)
	(on_board instrument2 satellite2)
	(on_board instrument3 satellite2)
	(power_avail satellite2)
	(pointing satellite2 star7)
	(supports instrument4 infrared4)
	(calibration_target instrument4 star1)
	(on_board instrument4 satellite3)
	(power_avail satellite3)
	(pointing satellite3 star1)
	(supports instrument5 infrared4)
	(supports instrument5 image2)
	(supports instrument5 infrared1)
	(calibration_target instrument5 star0)
	(on_board instrument5 satellite4)
	(power_avail satellite4)
	(pointing satellite4 star3)
)
(:goal (and
	(pointing satellite1 star11)
	(pointing satellite2 planet20)
	(pointing satellite3 planet8)
	(have_image star5 image2)
	(have_image planet6 image0)
	(have_image star7 thermograph3)
	(have_image planet8 infrared4)
	(have_image phenomenon9 thermograph3)
	(have_image star11 thermograph3)
	(have_image phenomenon12 image2)
	(have_image planet13 infrared1)
	(have_image planet14 image2)
	(have_image planet15 thermograph3)
	(have_image star16 infrared4)
	(have_image phenomenon17 image2)
	(have_image phenomenon18 image0)
	(have_image phenomenon19 thermograph3)
	(have_image planet20 infrared4)
	(have_image phenomenon21 image0)
	(have_image planet22 infrared4)
	(have_image planet23 image2)
))

)
