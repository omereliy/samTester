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
	instrument5 - instrument
	satellite3 - satellite
	instrument6 - instrument
	satellite4 - satellite
	instrument7 - instrument
	instrument8 - instrument
	spectrograph3 - mode
	thermograph4 - mode
	infrared1 - mode
	image2 - mode
	thermograph0 - mode
	groundstation2 - direction
	groundstation3 - direction
	star1 - direction
	star0 - direction
	groundstation4 - direction
	phenomenon5 - direction
	planet6 - direction
	phenomenon7 - direction
	star8 - direction
	planet9 - direction
	phenomenon10 - direction
	star11 - direction
	star12 - direction
	star13 - direction
	planet14 - direction
	phenomenon15 - direction
	star16 - direction
	phenomenon17 - direction
	planet18 - direction
	planet19 - direction
	planet20 - direction
	planet21 - direction
	planet22 - direction
	star23 - direction
)
(:init
	(supports instrument0 thermograph4)
	(supports instrument0 thermograph0)
	(supports instrument0 spectrograph3)
	(calibration_target instrument0 groundstation4)
	(supports instrument1 spectrograph3)
	(supports instrument1 infrared1)
	(supports instrument1 image2)
	(calibration_target instrument1 groundstation4)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 groundstation4)
	(supports instrument2 spectrograph3)
	(supports instrument2 thermograph0)
	(calibration_target instrument2 groundstation3)
	(on_board instrument2 satellite1)
	(power_avail satellite1)
	(pointing satellite1 star0)
	(supports instrument3 infrared1)
	(supports instrument3 spectrograph3)
	(calibration_target instrument3 star1)
	(supports instrument4 image2)
	(supports instrument4 thermograph0)
	(supports instrument4 infrared1)
	(calibration_target instrument4 groundstation4)
	(supports instrument5 image2)
	(calibration_target instrument5 groundstation4)
	(on_board instrument3 satellite2)
	(on_board instrument4 satellite2)
	(on_board instrument5 satellite2)
	(power_avail satellite2)
	(pointing satellite2 planet6)
	(supports instrument6 thermograph4)
	(supports instrument6 thermograph0)
	(calibration_target instrument6 star1)
	(on_board instrument6 satellite3)
	(power_avail satellite3)
	(pointing satellite3 planet19)
	(supports instrument7 infrared1)
	(supports instrument7 image2)
	(supports instrument7 thermograph4)
	(calibration_target instrument7 star0)
	(supports instrument8 thermograph0)
	(supports instrument8 image2)
	(supports instrument8 infrared1)
	(calibration_target instrument8 groundstation4)
	(on_board instrument7 satellite4)
	(on_board instrument8 satellite4)
	(power_avail satellite4)
	(pointing satellite4 planet9)
)
(:goal (and
	(have_image phenomenon5 spectrograph3)
	(have_image planet6 image2)
	(have_image planet9 thermograph0)
	(have_image phenomenon10 thermograph4)
	(have_image star11 thermograph0)
	(have_image star12 thermograph4)
	(have_image star13 thermograph0)
	(have_image planet14 spectrograph3)
	(have_image phenomenon15 thermograph4)
	(have_image star16 thermograph4)
	(have_image phenomenon17 image2)
	(have_image planet18 spectrograph3)
	(have_image planet19 image2)
	(have_image planet20 thermograph4)
	(have_image planet21 image2)
))

)
