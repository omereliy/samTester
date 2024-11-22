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
	thermograph0 - mode
	spectrograph3 - mode
	thermograph4 - mode
	image1 - mode
	infrared2 - mode
	star4 - direction
	groundstation0 - direction
	groundstation1 - direction
	star2 - direction
	groundstation3 - direction
	phenomenon5 - direction
	star6 - direction
	phenomenon7 - direction
	star8 - direction
	planet9 - direction
	planet10 - direction
	phenomenon11 - direction
	star12 - direction
	star13 - direction
	planet14 - direction
	planet15 - direction
	star16 - direction
	star17 - direction
	star18 - direction
	phenomenon19 - direction
	phenomenon20 - direction
	phenomenon21 - direction
	phenomenon22 - direction
	phenomenon23 - direction
	phenomenon24 - direction
	phenomenon25 - direction
	phenomenon26 - direction
	planet27 - direction
	star28 - direction
)
(:init
	(supports instrument0 infrared2)
	(supports instrument0 spectrograph3)
	(calibration_target instrument0 groundstation0)
	(on_board instrument0 satellite0)
	(power_avail satellite0)
	(pointing satellite0 phenomenon11)
	(supports instrument1 spectrograph3)
	(calibration_target instrument1 star2)
	(on_board instrument1 satellite1)
	(power_avail satellite1)
	(pointing satellite1 star8)
	(supports instrument2 thermograph4)
	(supports instrument2 image1)
	(supports instrument2 spectrograph3)
	(calibration_target instrument2 groundstation0)
	(on_board instrument2 satellite2)
	(power_avail satellite2)
	(pointing satellite2 star13)
	(supports instrument3 image1)
	(calibration_target instrument3 groundstation1)
	(supports instrument4 image1)
	(calibration_target instrument4 star2)
	(on_board instrument3 satellite3)
	(on_board instrument4 satellite3)
	(power_avail satellite3)
	(pointing satellite3 star4)
	(supports instrument5 infrared2)
	(calibration_target instrument5 groundstation3)
	(on_board instrument5 satellite4)
	(power_avail satellite4)
	(pointing satellite4 phenomenon26)
)
(:goal (and
	(pointing satellite0 planet10)
	(have_image phenomenon5 spectrograph3)
	(have_image star6 image1)
	(have_image phenomenon7 image1)
	(have_image star8 thermograph4)
	(have_image planet9 image1)
	(have_image planet10 thermograph4)
	(have_image phenomenon11 infrared2)
	(have_image star13 spectrograph3)
	(have_image star16 image1)
	(have_image phenomenon20 thermograph4)
	(have_image phenomenon21 infrared2)
	(have_image phenomenon22 thermograph4)
	(have_image phenomenon24 image1)
	(have_image phenomenon25 spectrograph3)
	(have_image phenomenon26 spectrograph3)
	(have_image planet27 image1)
	(have_image star28 spectrograph3)
))

)
