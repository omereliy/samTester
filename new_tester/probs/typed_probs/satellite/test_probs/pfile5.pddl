(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	instrument1 - instrument
	infrared1 - mode
	thermograph2 - mode
	image0 - mode
	groundstation0 - direction
	groundstation1 - direction
	groundstation2 - direction
	phenomenon3 - direction
	planet4 - direction
	phenomenon5 - direction
	phenomenon6 - direction
	phenomenon7 - direction
	planet8 - direction
	phenomenon9 - direction
	phenomenon10 - direction
	planet11 - direction
)
(:init
	(supports instrument0 thermograph2)
	(supports instrument0 image0)
	(calibration_target instrument0 groundstation1)
	(supports instrument1 image0)
	(supports instrument1 thermograph2)
	(supports instrument1 infrared1)
	(calibration_target instrument1 groundstation2)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 phenomenon9)
)
(:goal (and
	(pointing satellite0 planet4)
	(have_image phenomenon3 thermograph2)
	(have_image planet4 infrared1)
	(have_image phenomenon5 image0)
	(have_image phenomenon6 infrared1)
	(have_image phenomenon7 infrared1)
	(have_image planet8 infrared1)
	(have_image phenomenon9 thermograph2)
	(have_image phenomenon10 thermograph2)
	(have_image planet11 image0)
))

)
