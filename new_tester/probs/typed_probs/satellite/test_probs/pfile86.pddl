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
	satellite3 - satellite
	instrument4 - instrument
	instrument5 - instrument
	satellite4 - satellite
	instrument6 - instrument
	image4 - mode
	infrared3 - mode
	spectrograph0 - mode
	spectrograph2 - mode
	image1 - mode
	groundstation2 - direction
	groundstation3 - direction
	star0 - direction
	groundstation4 - direction
	star1 - direction
	star5 - direction
	planet6 - direction
	star7 - direction
	star8 - direction
	planet9 - direction
	phenomenon10 - direction
	phenomenon11 - direction
	phenomenon12 - direction
	phenomenon13 - direction
	phenomenon14 - direction
	planet15 - direction
)
(:init
	(supports instrument0 spectrograph0)
	(calibration_target instrument0 groundstation4)
	(on_board instrument0 satellite0)
	(power_avail satellite0)
	(pointing satellite0 star7)
	(supports instrument1 image1)
	(supports instrument1 spectrograph2)
	(supports instrument1 image4)
	(calibration_target instrument1 groundstation4)
	(on_board instrument1 satellite1)
	(power_avail satellite1)
	(pointing satellite1 phenomenon13)
	(supports instrument2 image1)
	(supports instrument2 infrared3)
	(supports instrument2 spectrograph2)
	(calibration_target instrument2 star1)
	(supports instrument3 spectrograph0)
	(calibration_target instrument3 groundstation3)
	(on_board instrument2 satellite2)
	(on_board instrument3 satellite2)
	(power_avail satellite2)
	(pointing satellite2 groundstation3)
	(supports instrument4 spectrograph2)
	(calibration_target instrument4 star0)
	(supports instrument5 spectrograph2)
	(calibration_target instrument5 groundstation4)
	(on_board instrument4 satellite3)
	(on_board instrument5 satellite3)
	(power_avail satellite3)
	(pointing satellite3 phenomenon11)
	(supports instrument6 image1)
	(calibration_target instrument6 star1)
	(on_board instrument6 satellite4)
	(power_avail satellite4)
	(pointing satellite4 star0)
)
(:goal (and
	(have_image star5 spectrograph0)
	(have_image planet6 spectrograph2)
	(have_image star7 spectrograph0)
	(have_image planet9 image1)
	(have_image phenomenon10 spectrograph0)
	(have_image phenomenon11 image4)
	(have_image phenomenon12 image1)
	(have_image phenomenon13 image1)
	(have_image phenomenon14 image1)
	(have_image planet15 image4)
))

)
