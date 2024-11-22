(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	satellite1 - satellite
	instrument1 - instrument
	satellite2 - satellite
	instrument2 - instrument
	satellite3 - satellite
	instrument3 - instrument
	instrument4 - instrument
	satellite4 - satellite
	instrument5 - instrument
	image3 - mode
	image4 - mode
	spectrograph0 - mode
	image2 - mode
	infrared1 - mode
	groundstation0 - direction
	star2 - direction
	groundstation1 - direction
	star4 - direction
	star3 - direction
	phenomenon5 - direction
	star6 - direction
	phenomenon7 - direction
	phenomenon8 - direction
	phenomenon9 - direction
	phenomenon10 - direction
	phenomenon11 - direction
	planet12 - direction
	planet13 - direction
	star14 - direction
	star15 - direction
	planet16 - direction
	star17 - direction
	star18 - direction
	planet19 - direction
	phenomenon20 - direction
	star21 - direction
	phenomenon22 - direction
)
(:init
	(supports instrument0 image2)
	(supports instrument0 image4)
	(calibration_target instrument0 star2)
	(on_board instrument0 satellite0)
	(power_avail satellite0)
	(pointing satellite0 star17)
	(supports instrument1 infrared1)
	(calibration_target instrument1 groundstation1)
	(on_board instrument1 satellite1)
	(power_avail satellite1)
	(pointing satellite1 star18)
	(supports instrument2 image4)
	(calibration_target instrument2 star3)
	(on_board instrument2 satellite2)
	(power_avail satellite2)
	(pointing satellite2 planet16)
	(supports instrument3 image2)
	(supports instrument3 infrared1)
	(calibration_target instrument3 star3)
	(supports instrument4 image2)
	(supports instrument4 spectrograph0)
	(calibration_target instrument4 star4)
	(on_board instrument3 satellite3)
	(on_board instrument4 satellite3)
	(power_avail satellite3)
	(pointing satellite3 planet19)
	(supports instrument5 infrared1)
	(calibration_target instrument5 star3)
	(on_board instrument5 satellite4)
	(power_avail satellite4)
	(pointing satellite4 star21)
)
(:goal (and
	(pointing satellite0 star21)
	(pointing satellite1 star14)
	(pointing satellite2 planet13)
	(pointing satellite4 planet19)
	(have_image star6 image2)
	(have_image phenomenon8 infrared1)
	(have_image phenomenon9 spectrograph0)
	(have_image star14 infrared1)
	(have_image star15 image2)
	(have_image star18 infrared1)
	(have_image planet19 infrared1)
	(have_image phenomenon22 image2)
))

)
