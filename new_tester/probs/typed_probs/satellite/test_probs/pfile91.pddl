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
	instrument4 - instrument
	satellite3 - satellite
	instrument5 - instrument
	satellite4 - satellite
	instrument6 - instrument
	satellite5 - satellite
	instrument7 - instrument
	thermograph1 - mode
	infrared2 - mode
	spectrograph0 - mode
	thermograph3 - mode
	spectrograph4 - mode
	groundstation4 - direction
	star1 - direction
	groundstation0 - direction
	star3 - direction
	star2 - direction
	star5 - direction
	planet6 - direction
	planet7 - direction
	planet8 - direction
	star9 - direction
	planet10 - direction
	planet11 - direction
	planet12 - direction
	planet13 - direction
	star14 - direction
	planet15 - direction
	phenomenon16 - direction
	phenomenon17 - direction
	phenomenon18 - direction
	phenomenon19 - direction
	phenomenon20 - direction
	phenomenon21 - direction
	star22 - direction
	phenomenon23 - direction
	phenomenon24 - direction
)
(:init
	(supports instrument0 spectrograph4)
	(supports instrument0 thermograph3)
	(supports instrument0 infrared2)
	(calibration_target instrument0 groundstation0)
	(on_board instrument0 satellite0)
	(power_avail satellite0)
	(pointing satellite0 groundstation0)
	(supports instrument1 spectrograph4)
	(supports instrument1 infrared2)
	(calibration_target instrument1 groundstation0)
	(on_board instrument1 satellite1)
	(power_avail satellite1)
	(pointing satellite1 phenomenon18)
	(supports instrument2 infrared2)
	(supports instrument2 spectrograph0)
	(supports instrument2 thermograph1)
	(calibration_target instrument2 star1)
	(supports instrument3 spectrograph4)
	(supports instrument3 thermograph1)
	(calibration_target instrument3 groundstation0)
	(supports instrument4 spectrograph4)
	(supports instrument4 thermograph1)
	(calibration_target instrument4 star2)
	(on_board instrument2 satellite2)
	(on_board instrument3 satellite2)
	(on_board instrument4 satellite2)
	(power_avail satellite2)
	(pointing satellite2 groundstation0)
	(supports instrument5 spectrograph0)
	(supports instrument5 infrared2)
	(calibration_target instrument5 star2)
	(on_board instrument5 satellite3)
	(power_avail satellite3)
	(pointing satellite3 phenomenon20)
	(supports instrument6 thermograph3)
	(supports instrument6 spectrograph0)
	(calibration_target instrument6 star3)
	(on_board instrument6 satellite4)
	(power_avail satellite4)
	(pointing satellite4 star3)
	(supports instrument7 spectrograph4)
	(calibration_target instrument7 star2)
	(on_board instrument7 satellite5)
	(power_avail satellite5)
	(pointing satellite5 star22)
)
(:goal (and
	(pointing satellite2 groundstation0)
	(pointing satellite3 star9)
	(pointing satellite4 groundstation0)
	(have_image star5 thermograph1)
	(have_image planet6 infrared2)
	(have_image planet7 infrared2)
	(have_image planet8 infrared2)
	(have_image star9 infrared2)
	(have_image planet10 thermograph1)
	(have_image planet11 infrared2)
	(have_image planet12 thermograph3)
	(have_image planet13 thermograph3)
	(have_image star14 thermograph3)
	(have_image planet15 infrared2)
	(have_image phenomenon16 spectrograph0)
	(have_image phenomenon17 infrared2)
	(have_image phenomenon18 thermograph1)
	(have_image phenomenon19 spectrograph0)
	(have_image phenomenon20 thermograph1)
	(have_image phenomenon21 thermograph3)
	(have_image phenomenon23 infrared2)
	(have_image phenomenon24 spectrograph4)
))

)
