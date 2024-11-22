(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	image1 - mode
	image0 - mode
	infrared2 - mode
	star0 - direction
	groundstation1 - direction
	groundstation2 - direction
	planet3 - direction
	phenomenon4 - direction
	planet5 - direction
	planet6 - direction
	star7 - direction
	planet8 - direction
	phenomenon9 - direction
	planet10 - direction
)
(:init
	(supports instrument0 infrared2)
	(supports instrument0 image0)
	(supports instrument0 image1)
	(calibration_target instrument0 groundstation2)
	(on_board instrument0 satellite0)
	(power_avail satellite0)
	(pointing satellite0 planet6)
)
(:goal (and
	(have_image planet3 image1)
	(have_image phenomenon4 image0)
	(have_image planet5 image0)
	(have_image star7 image1)
	(have_image planet8 infrared2)
	(have_image phenomenon9 infrared2)
	(have_image planet10 image1)
))

)
