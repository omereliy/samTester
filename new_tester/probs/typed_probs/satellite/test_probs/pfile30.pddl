(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	instrument1 - instrument
	instrument2 - instrument
	satellite1 - satellite
	instrument3 - instrument
	satellite2 - satellite
	instrument4 - instrument
	satellite3 - satellite
	instrument5 - instrument
	satellite4 - satellite
	instrument6 - instrument
	instrument7 - instrument
	instrument8 - instrument
	spectrograph3 - mode
	image4 - mode
	thermograph2 - mode
	spectrograph0 - mode
	thermograph1 - mode
	star3 - direction
	star4 - direction
	star2 - direction
	star1 - direction
	star0 - direction
	planet5 - direction
	planet6 - direction
	star7 - direction
	planet8 - direction
	phenomenon9 - direction
	planet10 - direction
	planet11 - direction
	star12 - direction
	planet13 - direction
	phenomenon14 - direction
	star15 - direction
	planet16 - direction
	phenomenon17 - direction
	planet18 - direction
	planet19 - direction
	phenomenon20 - direction
	star21 - direction
	planet22 - direction
	star23 - direction
	star24 - direction
	planet25 - direction
)
(:init
	(supports instrument0 image4)
	(supports instrument0 spectrograph3)
	(calibration_target instrument0 star1)
	(supports instrument1 spectrograph3)
	(supports instrument1 thermograph2)
	(supports instrument1 thermograph1)
	(calibration_target instrument1 star2)
	(supports instrument2 spectrograph0)
	(calibration_target instrument2 star2)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 star2)
	(supports instrument3 thermograph2)
	(supports instrument3 image4)
	(supports instrument3 spectrograph0)
	(calibration_target instrument3 star0)
	(on_board instrument3 satellite1)
	(power_avail satellite1)
	(pointing satellite1 planet16)
	(supports instrument4 thermograph2)
	(supports instrument4 image4)
	(supports instrument4 thermograph1)
	(calibration_target instrument4 star4)
	(on_board instrument4 satellite2)
	(power_avail satellite2)
	(pointing satellite2 phenomenon17)
	(supports instrument5 image4)
	(supports instrument5 spectrograph0)
	(supports instrument5 thermograph1)
	(calibration_target instrument5 star2)
	(on_board instrument5 satellite3)
	(power_avail satellite3)
	(pointing satellite3 planet6)
	(supports instrument6 thermograph2)
	(supports instrument6 image4)
	(calibration_target instrument6 star1)
	(supports instrument7 spectrograph0)
	(calibration_target instrument7 star0)
	(supports instrument8 thermograph1)
	(calibration_target instrument8 star0)
	(on_board instrument6 satellite4)
	(on_board instrument7 satellite4)
	(on_board instrument8 satellite4)
	(power_avail satellite4)
	(pointing satellite4 phenomenon17)
)
(:goal (and
	(pointing satellite0 star7)
	(pointing satellite1 planet25)
	(pointing satellite2 planet11)
	(pointing satellite4 planet18)
	(have_image planet5 spectrograph3)
	(have_image planet6 spectrograph3)
	(have_image star7 spectrograph3)
	(have_image planet8 spectrograph0)
	(have_image planet10 spectrograph0)
	(have_image planet11 spectrograph3)
	(have_image star12 spectrograph3)
	(have_image planet13 image4)
	(have_image phenomenon14 spectrograph0)
	(have_image star15 spectrograph0)
	(have_image planet16 spectrograph3)
	(have_image phenomenon17 thermograph2)
	(have_image planet18 spectrograph3)
	(have_image planet19 spectrograph0)
	(have_image phenomenon20 thermograph2)
	(have_image star21 spectrograph3)
	(have_image planet22 image4)
	(have_image star23 thermograph1)
	(have_image star24 thermograph2)
	(have_image planet25 thermograph1)
))

)
