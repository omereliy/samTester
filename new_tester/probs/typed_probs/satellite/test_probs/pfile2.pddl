(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	instrument1 - instrument
	satellite1 - satellite
	instrument2 - instrument
	instrument3 - instrument
	satellite2 - satellite
	instrument4 - instrument
	satellite3 - satellite
	instrument5 - instrument
	instrument6 - instrument
	instrument7 - instrument
	satellite4 - satellite
	instrument8 - instrument
	image4 - mode
	spectrograph2 - mode
	image0 - mode
	spectrograph1 - mode
	spectrograph3 - mode
	groundstation0 - direction
	star2 - direction
	groundstation3 - direction
	groundstation1 - direction
	groundstation4 - direction
	planet5 - direction
	phenomenon6 - direction
	phenomenon7 - direction
	planet8 - direction
	planet9 - direction
	planet10 - direction
	phenomenon11 - direction
	star12 - direction
	planet13 - direction
	phenomenon14 - direction
	star15 - direction
	star16 - direction
	star17 - direction
	planet18 - direction
	planet19 - direction
	star20 - direction
	phenomenon21 - direction
	phenomenon22 - direction
	star23 - direction
	star24 - direction
	planet25 - direction
	planet26 - direction
	star27 - direction
	star28 - direction
	star29 - direction
)
(:init
	(supports instrument0 spectrograph1)
	(supports instrument0 spectrograph3)
	(supports instrument0 image0)
	(calibration_target instrument0 groundstation0)
	(supports instrument1 image0)
	(supports instrument1 spectrograph2)
	(calibration_target instrument1 groundstation0)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 star17)
	(supports instrument2 spectrograph3)
	(supports instrument2 image4)
	(calibration_target instrument2 groundstation1)
	(supports instrument3 image4)
	(supports instrument3 spectrograph2)
	(supports instrument3 spectrograph1)
	(calibration_target instrument3 star2)
	(on_board instrument2 satellite1)
	(on_board instrument3 satellite1)
	(power_avail satellite1)
	(pointing satellite1 planet25)
	(supports instrument4 spectrograph2)
	(supports instrument4 image0)
	(calibration_target instrument4 groundstation3)
	(on_board instrument4 satellite2)
	(power_avail satellite2)
	(pointing satellite2 planet5)
	(supports instrument5 spectrograph2)
	(supports instrument5 spectrograph3)
	(supports instrument5 image4)
	(calibration_target instrument5 groundstation3)
	(supports instrument6 image0)
	(supports instrument6 spectrograph2)
	(supports instrument6 spectrograph3)
	(calibration_target instrument6 groundstation3)
	(supports instrument7 image0)
	(supports instrument7 spectrograph2)
	(calibration_target instrument7 groundstation1)
	(on_board instrument5 satellite3)
	(on_board instrument6 satellite3)
	(on_board instrument7 satellite3)
	(power_avail satellite3)
	(pointing satellite3 planet8)
	(supports instrument8 spectrograph3)
	(supports instrument8 spectrograph1)
	(calibration_target instrument8 groundstation4)
	(on_board instrument8 satellite4)
	(power_avail satellite4)
	(pointing satellite4 star15)
)
(:goal (and
	(pointing satellite2 phenomenon22)
	(pointing satellite4 planet19)
	(have_image planet5 spectrograph2)
	(have_image phenomenon6 spectrograph3)
	(have_image phenomenon7 image4)
	(have_image planet8 spectrograph3)
	(have_image planet9 image0)
	(have_image planet10 image4)
	(have_image phenomenon11 image4)
	(have_image star12 image4)
	(have_image planet13 image0)
	(have_image phenomenon14 image4)
	(have_image star15 spectrograph2)
	(have_image star16 image4)
	(have_image planet18 spectrograph2)
	(have_image star20 spectrograph3)
	(have_image phenomenon21 spectrograph3)
	(have_image phenomenon22 image0)
	(have_image star23 spectrograph2)
	(have_image star24 image4)
	(have_image planet25 spectrograph2)
	(have_image star27 spectrograph2)
	(have_image star28 spectrograph1)
	(have_image star29 image0)
))

)
