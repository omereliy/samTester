(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	image2 - mode
	infrared0 - mode
	infrared1 - mode
	star1 - direction
	groundstation2 - direction
	star0 - direction
	star3 - direction
	planet4 - direction
	phenomenon5 - direction
	phenomenon6 - direction
	phenomenon7 - direction
	star8 - direction
	star9 - direction
	phenomenon10 - direction
)
(:init
	(supports instrument0 infrared1)
	(supports instrument0 infrared0)
	(calibration_target instrument0 star0)
	(on_board instrument0 satellite0)
	(power_avail satellite0)
	(pointing satellite0 phenomenon6)
)
(:goal (and
	(have_image planet4 infrared0)
	(have_image phenomenon6 infrared0)
	(have_image star8 infrared0)
	(have_image phenomenon10 infrared0)
))

)
