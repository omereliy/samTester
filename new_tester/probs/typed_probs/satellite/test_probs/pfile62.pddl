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
	instrument4 - instrument
	satellite3 - satellite
	instrument5 - instrument
	instrument6 - instrument
	satellite4 - satellite
	instrument7 - instrument
	spectrograph3 - mode
	thermograph2 - mode
	thermograph4 - mode
	thermograph0 - mode
	image1 - mode
	star2 - direction
	groundstation0 - direction
	groundstation4 - direction
	groundstation3 - direction
	star1 - direction
	planet5 - direction
	planet6 - direction
	phenomenon7 - direction
	phenomenon8 - direction
	planet9 - direction
	phenomenon10 - direction
	star11 - direction
	star12 - direction
	phenomenon13 - direction
	phenomenon14 - direction
	phenomenon15 - direction
	phenomenon16 - direction
	planet17 - direction
	star18 - direction
	star19 - direction
	planet20 - direction
	planet21 - direction
	planet22 - direction
	star23 - direction
	phenomenon24 - direction
	phenomenon25 - direction
	star26 - direction
)
(:init
	(supports instrument0 thermograph4)
	(calibration_target instrument0 groundstation3)
	(supports instrument1 thermograph2)
	(supports instrument1 spectrograph3)
	(supports instrument1 thermograph0)
	(calibration_target instrument1 groundstation3)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 planet20)
	(supports instrument2 thermograph2)
	(supports instrument2 spectrograph3)
	(supports instrument2 image1)
	(calibration_target instrument2 star1)
	(on_board instrument2 satellite1)
	(power_avail satellite1)
	(pointing satellite1 phenomenon24)
	(supports instrument3 thermograph4)
	(calibration_target instrument3 star1)
	(supports instrument4 thermograph4)
	(supports instrument4 image1)
	(calibration_target instrument4 groundstation0)
	(on_board instrument3 satellite2)
	(on_board instrument4 satellite2)
	(power_avail satellite2)
	(pointing satellite2 planet22)
	(supports instrument5 thermograph4)
	(supports instrument5 thermograph2)
	(calibration_target instrument5 groundstation4)
	(supports instrument6 thermograph0)
	(supports instrument6 thermograph4)
	(calibration_target instrument6 groundstation3)
	(on_board instrument5 satellite3)
	(on_board instrument6 satellite3)
	(power_avail satellite3)
	(pointing satellite3 planet6)
	(supports instrument7 image1)
	(calibration_target instrument7 star1)
	(on_board instrument7 satellite4)
	(power_avail satellite4)
	(pointing satellite4 phenomenon15)
)
(:goal (and
	(pointing satellite2 phenomenon14)
	(pointing satellite3 planet21)
	(pointing satellite4 planet17)
	(have_image planet5 thermograph4)
	(have_image planet6 thermograph0)
	(have_image phenomenon7 thermograph2)
	(have_image phenomenon8 thermograph0)
	(have_image planet9 thermograph0)
	(have_image phenomenon10 thermograph0)
	(have_image star11 spectrograph3)
	(have_image star12 thermograph4)
	(have_image phenomenon13 thermograph2)
	(have_image phenomenon14 image1)
	(have_image phenomenon16 spectrograph3)
	(have_image star18 thermograph2)
	(have_image star19 image1)
	(have_image planet20 thermograph4)
	(have_image planet21 thermograph0)
	(have_image planet22 thermograph0)
	(have_image star23 thermograph2)
	(have_image phenomenon24 image1)
	(have_image phenomenon25 spectrograph3)
	(have_image star26 image1)
))

)
