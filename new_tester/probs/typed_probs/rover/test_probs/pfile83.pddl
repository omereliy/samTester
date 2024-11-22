(define (problem roverprob1626) (:domain rover)
(:objects
	general - lander
	colour high_res low_res - mode
	rover0 rover1 rover2 rover3 rover4 rover5 rover6 rover7 - rover
	rover0store rover1store rover2store rover3store rover4store rover5store rover6store rover7store - store
	waypoint0 waypoint1 waypoint2 waypoint3 waypoint4 waypoint5 waypoint6 waypoint7 waypoint8 waypoint9 waypoint10 waypoint11 waypoint12 waypoint13 waypoint14 waypoint15 waypoint16 waypoint17 waypoint18 waypoint19 waypoint20 waypoint21 waypoint22 waypoint23 waypoint24 - waypoint
	camera0 camera1 camera2 camera3 camera4 camera5 camera6 camera7 camera8 - camera
	objective0 objective1 objective2 objective3 objective4 objective5 objective6 objective7 - objective
	)
(:init
	(visible waypoint0 waypoint17)
	(visible waypoint17 waypoint0)
	(visible waypoint0 waypoint20)
	(visible waypoint20 waypoint0)
	(visible waypoint1 waypoint0)
	(visible waypoint0 waypoint1)
	(visible waypoint1 waypoint5)
	(visible waypoint5 waypoint1)
	(visible waypoint1 waypoint13)
	(visible waypoint13 waypoint1)
	(visible waypoint1 waypoint14)
	(visible waypoint14 waypoint1)
	(visible waypoint1 waypoint17)
	(visible waypoint17 waypoint1)
	(visible waypoint2 waypoint10)
	(visible waypoint10 waypoint2)
	(visible waypoint2 waypoint23)
	(visible waypoint23 waypoint2)
	(visible waypoint3 waypoint2)
	(visible waypoint2 waypoint3)
	(visible waypoint3 waypoint10)
	(visible waypoint10 waypoint3)
	(visible waypoint3 waypoint19)
	(visible waypoint19 waypoint3)
	(visible waypoint4 waypoint1)
	(visible waypoint1 waypoint4)
	(visible waypoint4 waypoint8)
	(visible waypoint8 waypoint4)
	(visible waypoint4 waypoint9)
	(visible waypoint9 waypoint4)
	(visible waypoint4 waypoint10)
	(visible waypoint10 waypoint4)
	(visible waypoint4 waypoint18)
	(visible waypoint18 waypoint4)
	(visible waypoint5 waypoint13)
	(visible waypoint13 waypoint5)
	(visible waypoint5 waypoint14)
	(visible waypoint14 waypoint5)
	(visible waypoint5 waypoint16)
	(visible waypoint16 waypoint5)
	(visible waypoint6 waypoint0)
	(visible waypoint0 waypoint6)
	(visible waypoint6 waypoint5)
	(visible waypoint5 waypoint6)
	(visible waypoint6 waypoint13)
	(visible waypoint13 waypoint6)
	(visible waypoint6 waypoint15)
	(visible waypoint15 waypoint6)
	(visible waypoint6 waypoint17)
	(visible waypoint17 waypoint6)
	(visible waypoint6 waypoint21)
	(visible waypoint21 waypoint6)
	(visible waypoint7 waypoint1)
	(visible waypoint1 waypoint7)
	(visible waypoint7 waypoint5)
	(visible waypoint5 waypoint7)
	(visible waypoint7 waypoint12)
	(visible waypoint12 waypoint7)
	(visible waypoint7 waypoint18)
	(visible waypoint18 waypoint7)
	(visible waypoint7 waypoint21)
	(visible waypoint21 waypoint7)
	(visible waypoint7 waypoint23)
	(visible waypoint23 waypoint7)
	(visible waypoint8 waypoint3)
	(visible waypoint3 waypoint8)
	(visible waypoint8 waypoint5)
	(visible waypoint5 waypoint8)
	(visible waypoint8 waypoint9)
	(visible waypoint9 waypoint8)
	(visible waypoint8 waypoint15)
	(visible waypoint15 waypoint8)
	(visible waypoint8 waypoint19)
	(visible waypoint19 waypoint8)
	(visible waypoint9 waypoint6)
	(visible waypoint6 waypoint9)
	(visible waypoint9 waypoint12)
	(visible waypoint12 waypoint9)
	(visible waypoint9 waypoint17)
	(visible waypoint17 waypoint9)
	(visible waypoint9 waypoint20)
	(visible waypoint20 waypoint9)
	(visible waypoint10 waypoint6)
	(visible waypoint6 waypoint10)
	(visible waypoint10 waypoint9)
	(visible waypoint9 waypoint10)
	(visible waypoint10 waypoint21)
	(visible waypoint21 waypoint10)
	(visible waypoint10 waypoint22)
	(visible waypoint22 waypoint10)
	(visible waypoint10 waypoint24)
	(visible waypoint24 waypoint10)
	(visible waypoint11 waypoint20)
	(visible waypoint20 waypoint11)
	(visible waypoint12 waypoint0)
	(visible waypoint0 waypoint12)
	(visible waypoint12 waypoint3)
	(visible waypoint3 waypoint12)
	(visible waypoint12 waypoint4)
	(visible waypoint4 waypoint12)
	(visible waypoint12 waypoint5)
	(visible waypoint5 waypoint12)
	(visible waypoint12 waypoint10)
	(visible waypoint10 waypoint12)
	(visible waypoint12 waypoint16)
	(visible waypoint16 waypoint12)
	(visible waypoint12 waypoint23)
	(visible waypoint23 waypoint12)
	(visible waypoint13 waypoint19)
	(visible waypoint19 waypoint13)
	(visible waypoint14 waypoint4)
	(visible waypoint4 waypoint14)
	(visible waypoint14 waypoint7)
	(visible waypoint7 waypoint14)
	(visible waypoint14 waypoint9)
	(visible waypoint9 waypoint14)
	(visible waypoint14 waypoint11)
	(visible waypoint11 waypoint14)
	(visible waypoint15 waypoint1)
	(visible waypoint1 waypoint15)
	(visible waypoint15 waypoint3)
	(visible waypoint3 waypoint15)
	(visible waypoint15 waypoint12)
	(visible waypoint12 waypoint15)
	(visible waypoint16 waypoint0)
	(visible waypoint0 waypoint16)
	(visible waypoint16 waypoint6)
	(visible waypoint6 waypoint16)
	(visible waypoint16 waypoint9)
	(visible waypoint9 waypoint16)
	(visible waypoint16 waypoint11)
	(visible waypoint11 waypoint16)
	(visible waypoint16 waypoint23)
	(visible waypoint23 waypoint16)
	(visible waypoint17 waypoint2)
	(visible waypoint2 waypoint17)
	(visible waypoint17 waypoint3)
	(visible waypoint3 waypoint17)
	(visible waypoint17 waypoint13)
	(visible waypoint13 waypoint17)
	(visible waypoint17 waypoint14)
	(visible waypoint14 waypoint17)
	(visible waypoint17 waypoint23)
	(visible waypoint23 waypoint17)
	(visible waypoint18 waypoint5)
	(visible waypoint5 waypoint18)
	(visible waypoint18 waypoint23)
	(visible waypoint23 waypoint18)
	(visible waypoint19 waypoint0)
	(visible waypoint0 waypoint19)
	(visible waypoint19 waypoint12)
	(visible waypoint12 waypoint19)
	(visible waypoint19 waypoint17)
	(visible waypoint17 waypoint19)
	(visible waypoint20 waypoint8)
	(visible waypoint8 waypoint20)
	(visible waypoint20 waypoint12)
	(visible waypoint12 waypoint20)
	(visible waypoint20 waypoint14)
	(visible waypoint14 waypoint20)
	(visible waypoint20 waypoint22)
	(visible waypoint22 waypoint20)
	(visible waypoint21 waypoint3)
	(visible waypoint3 waypoint21)
	(visible waypoint21 waypoint9)
	(visible waypoint9 waypoint21)
	(visible waypoint21 waypoint12)
	(visible waypoint12 waypoint21)
	(visible waypoint21 waypoint20)
	(visible waypoint20 waypoint21)
	(visible waypoint22 waypoint11)
	(visible waypoint11 waypoint22)
	(visible waypoint22 waypoint12)
	(visible waypoint12 waypoint22)
	(visible waypoint22 waypoint13)
	(visible waypoint13 waypoint22)
	(visible waypoint22 waypoint17)
	(visible waypoint17 waypoint22)
	(visible waypoint22 waypoint21)
	(visible waypoint21 waypoint22)
	(visible waypoint22 waypoint24)
	(visible waypoint24 waypoint22)
	(visible waypoint23 waypoint3)
	(visible waypoint3 waypoint23)
	(visible waypoint23 waypoint4)
	(visible waypoint4 waypoint23)
	(visible waypoint23 waypoint8)
	(visible waypoint8 waypoint23)
	(visible waypoint23 waypoint11)
	(visible waypoint11 waypoint23)
	(visible waypoint23 waypoint13)
	(visible waypoint13 waypoint23)
	(visible waypoint24 waypoint1)
	(visible waypoint1 waypoint24)
	(visible waypoint24 waypoint2)
	(visible waypoint2 waypoint24)
	(visible waypoint24 waypoint12)
	(visible waypoint12 waypoint24)
	(at_soil_sample waypoint0)
	(at_soil_sample waypoint2)
	(at_rock_sample waypoint4)
	(at_soil_sample waypoint6)
	(at_rock_sample waypoint6)
	(at_soil_sample waypoint7)
	(at_rock_sample waypoint7)
	(at_rock_sample waypoint8)
	(at_soil_sample waypoint9)
	(at_soil_sample waypoint13)
	(at_soil_sample waypoint14)
	(at_rock_sample waypoint14)
	(at_soil_sample waypoint15)
	(at_soil_sample waypoint16)
	(at_soil_sample waypoint17)
	(at_rock_sample waypoint17)
	(at_soil_sample waypoint18)
	(at_rock_sample waypoint18)
	(at_soil_sample waypoint19)
	(at_soil_sample waypoint21)
	(at_rock_sample waypoint21)
	(at_rock_sample waypoint22)
	(at_soil_sample waypoint23)
	(at_lander general waypoint12)
	(channel_free general)
	(at rover0 waypoint6)
	(available rover0)
	(store_of rover0store rover0)
	(empty rover0store)
	(equipped_for_soil_analysis rover0)
	(equipped_for_imaging rover0)
	(can_traverse rover0 waypoint6 waypoint0)
	(can_traverse rover0 waypoint0 waypoint6)
	(can_traverse rover0 waypoint6 waypoint5)
	(can_traverse rover0 waypoint5 waypoint6)
	(can_traverse rover0 waypoint6 waypoint9)
	(can_traverse rover0 waypoint9 waypoint6)
	(can_traverse rover0 waypoint6 waypoint10)
	(can_traverse rover0 waypoint10 waypoint6)
	(can_traverse rover0 waypoint6 waypoint13)
	(can_traverse rover0 waypoint13 waypoint6)
	(can_traverse rover0 waypoint6 waypoint15)
	(can_traverse rover0 waypoint15 waypoint6)
	(can_traverse rover0 waypoint6 waypoint16)
	(can_traverse rover0 waypoint16 waypoint6)
	(can_traverse rover0 waypoint6 waypoint17)
	(can_traverse rover0 waypoint17 waypoint6)
	(can_traverse rover0 waypoint6 waypoint21)
	(can_traverse rover0 waypoint21 waypoint6)
	(can_traverse rover0 waypoint0 waypoint12)
	(can_traverse rover0 waypoint12 waypoint0)
	(can_traverse rover0 waypoint0 waypoint19)
	(can_traverse rover0 waypoint19 waypoint0)
	(can_traverse rover0 waypoint0 waypoint20)
	(can_traverse rover0 waypoint20 waypoint0)
	(can_traverse rover0 waypoint5 waypoint7)
	(can_traverse rover0 waypoint7 waypoint5)
	(can_traverse rover0 waypoint9 waypoint4)
	(can_traverse rover0 waypoint4 waypoint9)
	(can_traverse rover0 waypoint9 waypoint14)
	(can_traverse rover0 waypoint14 waypoint9)
	(can_traverse rover0 waypoint10 waypoint3)
	(can_traverse rover0 waypoint3 waypoint10)
	(can_traverse rover0 waypoint13 waypoint22)
	(can_traverse rover0 waypoint22 waypoint13)
	(can_traverse rover0 waypoint13 waypoint23)
	(can_traverse rover0 waypoint23 waypoint13)
	(can_traverse rover0 waypoint16 waypoint11)
	(can_traverse rover0 waypoint11 waypoint16)
	(can_traverse rover0 waypoint17 waypoint1)
	(can_traverse rover0 waypoint1 waypoint17)
	(can_traverse rover0 waypoint17 waypoint2)
	(can_traverse rover0 waypoint2 waypoint17)
	(can_traverse rover0 waypoint12 waypoint24)
	(can_traverse rover0 waypoint24 waypoint12)
	(can_traverse rover0 waypoint19 waypoint8)
	(can_traverse rover0 waypoint8 waypoint19)
	(can_traverse rover0 waypoint7 waypoint18)
	(can_traverse rover0 waypoint18 waypoint7)
	(at rover1 waypoint4)
	(available rover1)
	(store_of rover1store rover1)
	(empty rover1store)
	(equipped_for_soil_analysis rover1)
	(equipped_for_rock_analysis rover1)
	(equipped_for_imaging rover1)
	(can_traverse rover1 waypoint4 waypoint1)
	(can_traverse rover1 waypoint1 waypoint4)
	(can_traverse rover1 waypoint4 waypoint8)
	(can_traverse rover1 waypoint8 waypoint4)
	(can_traverse rover1 waypoint4 waypoint9)
	(can_traverse rover1 waypoint9 waypoint4)
	(can_traverse rover1 waypoint4 waypoint12)
	(can_traverse rover1 waypoint12 waypoint4)
	(can_traverse rover1 waypoint4 waypoint14)
	(can_traverse rover1 waypoint14 waypoint4)
	(can_traverse rover1 waypoint1 waypoint0)
	(can_traverse rover1 waypoint0 waypoint1)
	(can_traverse rover1 waypoint1 waypoint5)
	(can_traverse rover1 waypoint5 waypoint1)
	(can_traverse rover1 waypoint1 waypoint13)
	(can_traverse rover1 waypoint13 waypoint1)
	(can_traverse rover1 waypoint1 waypoint15)
	(can_traverse rover1 waypoint15 waypoint1)
	(can_traverse rover1 waypoint1 waypoint24)
	(can_traverse rover1 waypoint24 waypoint1)
	(can_traverse rover1 waypoint8 waypoint3)
	(can_traverse rover1 waypoint3 waypoint8)
	(can_traverse rover1 waypoint8 waypoint20)
	(can_traverse rover1 waypoint20 waypoint8)
	(can_traverse rover1 waypoint8 waypoint23)
	(can_traverse rover1 waypoint23 waypoint8)
	(can_traverse rover1 waypoint9 waypoint6)
	(can_traverse rover1 waypoint6 waypoint9)
	(can_traverse rover1 waypoint9 waypoint10)
	(can_traverse rover1 waypoint10 waypoint9)
	(can_traverse rover1 waypoint9 waypoint21)
	(can_traverse rover1 waypoint21 waypoint9)
	(can_traverse rover1 waypoint12 waypoint7)
	(can_traverse rover1 waypoint7 waypoint12)
	(can_traverse rover1 waypoint12 waypoint22)
	(can_traverse rover1 waypoint22 waypoint12)
	(can_traverse rover1 waypoint14 waypoint11)
	(can_traverse rover1 waypoint11 waypoint14)
	(can_traverse rover1 waypoint14 waypoint17)
	(can_traverse rover1 waypoint17 waypoint14)
	(can_traverse rover1 waypoint0 waypoint16)
	(can_traverse rover1 waypoint16 waypoint0)
	(can_traverse rover1 waypoint13 waypoint19)
	(can_traverse rover1 waypoint19 waypoint13)
	(can_traverse rover1 waypoint24 waypoint2)
	(can_traverse rover1 waypoint2 waypoint24)
	(can_traverse rover1 waypoint7 waypoint18)
	(can_traverse rover1 waypoint18 waypoint7)
	(at rover2 waypoint14)
	(available rover2)
	(store_of rover2store rover2)
	(empty rover2store)
	(equipped_for_soil_analysis rover2)
	(equipped_for_rock_analysis rover2)
	(equipped_for_imaging rover2)
	(can_traverse rover2 waypoint14 waypoint1)
	(can_traverse rover2 waypoint1 waypoint14)
	(can_traverse rover2 waypoint14 waypoint4)
	(can_traverse rover2 waypoint4 waypoint14)
	(can_traverse rover2 waypoint14 waypoint5)
	(can_traverse rover2 waypoint5 waypoint14)
	(can_traverse rover2 waypoint14 waypoint7)
	(can_traverse rover2 waypoint7 waypoint14)
	(can_traverse rover2 waypoint14 waypoint9)
	(can_traverse rover2 waypoint9 waypoint14)
	(can_traverse rover2 waypoint14 waypoint11)
	(can_traverse rover2 waypoint11 waypoint14)
	(can_traverse rover2 waypoint14 waypoint17)
	(can_traverse rover2 waypoint17 waypoint14)
	(can_traverse rover2 waypoint14 waypoint20)
	(can_traverse rover2 waypoint20 waypoint14)
	(can_traverse rover2 waypoint1 waypoint13)
	(can_traverse rover2 waypoint13 waypoint1)
	(can_traverse rover2 waypoint1 waypoint24)
	(can_traverse rover2 waypoint24 waypoint1)
	(can_traverse rover2 waypoint4 waypoint8)
	(can_traverse rover2 waypoint8 waypoint4)
	(can_traverse rover2 waypoint4 waypoint10)
	(can_traverse rover2 waypoint10 waypoint4)
	(can_traverse rover2 waypoint4 waypoint18)
	(can_traverse rover2 waypoint18 waypoint4)
	(can_traverse rover2 waypoint4 waypoint23)
	(can_traverse rover2 waypoint23 waypoint4)
	(can_traverse rover2 waypoint7 waypoint12)
	(can_traverse rover2 waypoint12 waypoint7)
	(can_traverse rover2 waypoint9 waypoint16)
	(can_traverse rover2 waypoint16 waypoint9)
	(can_traverse rover2 waypoint9 waypoint21)
	(can_traverse rover2 waypoint21 waypoint9)
	(can_traverse rover2 waypoint17 waypoint0)
	(can_traverse rover2 waypoint0 waypoint17)
	(can_traverse rover2 waypoint17 waypoint3)
	(can_traverse rover2 waypoint3 waypoint17)
	(can_traverse rover2 waypoint17 waypoint19)
	(can_traverse rover2 waypoint19 waypoint17)
	(can_traverse rover2 waypoint17 waypoint22)
	(can_traverse rover2 waypoint22 waypoint17)
	(can_traverse rover2 waypoint13 waypoint6)
	(can_traverse rover2 waypoint6 waypoint13)
	(at rover3 waypoint9)
	(available rover3)
	(store_of rover3store rover3)
	(empty rover3store)
	(equipped_for_soil_analysis rover3)
	(equipped_for_imaging rover3)
	(can_traverse rover3 waypoint9 waypoint4)
	(can_traverse rover3 waypoint4 waypoint9)
	(can_traverse rover3 waypoint9 waypoint8)
	(can_traverse rover3 waypoint8 waypoint9)
	(can_traverse rover3 waypoint9 waypoint10)
	(can_traverse rover3 waypoint10 waypoint9)
	(can_traverse rover3 waypoint9 waypoint12)
	(can_traverse rover3 waypoint12 waypoint9)
	(can_traverse rover3 waypoint9 waypoint16)
	(can_traverse rover3 waypoint16 waypoint9)
	(can_traverse rover3 waypoint9 waypoint17)
	(can_traverse rover3 waypoint17 waypoint9)
	(can_traverse rover3 waypoint9 waypoint20)
	(can_traverse rover3 waypoint20 waypoint9)
	(can_traverse rover3 waypoint4 waypoint14)
	(can_traverse rover3 waypoint14 waypoint4)
	(can_traverse rover3 waypoint4 waypoint18)
	(can_traverse rover3 waypoint18 waypoint4)
	(can_traverse rover3 waypoint4 waypoint23)
	(can_traverse rover3 waypoint23 waypoint4)
	(can_traverse rover3 waypoint8 waypoint5)
	(can_traverse rover3 waypoint5 waypoint8)
	(can_traverse rover3 waypoint8 waypoint15)
	(can_traverse rover3 waypoint15 waypoint8)
	(can_traverse rover3 waypoint8 waypoint19)
	(can_traverse rover3 waypoint19 waypoint8)
	(can_traverse rover3 waypoint10 waypoint2)
	(can_traverse rover3 waypoint2 waypoint10)
	(can_traverse rover3 waypoint10 waypoint3)
	(can_traverse rover3 waypoint3 waypoint10)
	(can_traverse rover3 waypoint10 waypoint6)
	(can_traverse rover3 waypoint6 waypoint10)
	(can_traverse rover3 waypoint10 waypoint22)
	(can_traverse rover3 waypoint22 waypoint10)
	(can_traverse rover3 waypoint12 waypoint7)
	(can_traverse rover3 waypoint7 waypoint12)
	(can_traverse rover3 waypoint12 waypoint21)
	(can_traverse rover3 waypoint21 waypoint12)
	(can_traverse rover3 waypoint12 waypoint24)
	(can_traverse rover3 waypoint24 waypoint12)
	(can_traverse rover3 waypoint16 waypoint0)
	(can_traverse rover3 waypoint0 waypoint16)
	(can_traverse rover3 waypoint16 waypoint11)
	(can_traverse rover3 waypoint11 waypoint16)
	(can_traverse rover3 waypoint17 waypoint1)
	(can_traverse rover3 waypoint1 waypoint17)
	(can_traverse rover3 waypoint17 waypoint13)
	(can_traverse rover3 waypoint13 waypoint17)
	(at rover4 waypoint13)
	(available rover4)
	(store_of rover4store rover4)
	(empty rover4store)
	(equipped_for_soil_analysis rover4)
	(equipped_for_imaging rover4)
	(can_traverse rover4 waypoint13 waypoint1)
	(can_traverse rover4 waypoint1 waypoint13)
	(can_traverse rover4 waypoint13 waypoint5)
	(can_traverse rover4 waypoint5 waypoint13)
	(can_traverse rover4 waypoint13 waypoint6)
	(can_traverse rover4 waypoint6 waypoint13)
	(can_traverse rover4 waypoint13 waypoint17)
	(can_traverse rover4 waypoint17 waypoint13)
	(can_traverse rover4 waypoint13 waypoint19)
	(can_traverse rover4 waypoint19 waypoint13)
	(can_traverse rover4 waypoint13 waypoint22)
	(can_traverse rover4 waypoint22 waypoint13)
	(can_traverse rover4 waypoint13 waypoint23)
	(can_traverse rover4 waypoint23 waypoint13)
	(can_traverse rover4 waypoint1 waypoint4)
	(can_traverse rover4 waypoint4 waypoint1)
	(can_traverse rover4 waypoint1 waypoint7)
	(can_traverse rover4 waypoint7 waypoint1)
	(can_traverse rover4 waypoint1 waypoint14)
	(can_traverse rover4 waypoint14 waypoint1)
	(can_traverse rover4 waypoint1 waypoint24)
	(can_traverse rover4 waypoint24 waypoint1)
	(can_traverse rover4 waypoint5 waypoint8)
	(can_traverse rover4 waypoint8 waypoint5)
	(can_traverse rover4 waypoint5 waypoint18)
	(can_traverse rover4 waypoint18 waypoint5)
	(can_traverse rover4 waypoint6 waypoint0)
	(can_traverse rover4 waypoint0 waypoint6)
	(can_traverse rover4 waypoint6 waypoint9)
	(can_traverse rover4 waypoint9 waypoint6)
	(can_traverse rover4 waypoint6 waypoint15)
	(can_traverse rover4 waypoint15 waypoint6)
	(can_traverse rover4 waypoint6 waypoint16)
	(can_traverse rover4 waypoint16 waypoint6)
	(can_traverse rover4 waypoint6 waypoint21)
	(can_traverse rover4 waypoint21 waypoint6)
	(can_traverse rover4 waypoint17 waypoint2)
	(can_traverse rover4 waypoint2 waypoint17)
	(can_traverse rover4 waypoint19 waypoint3)
	(can_traverse rover4 waypoint3 waypoint19)
	(can_traverse rover4 waypoint22 waypoint10)
	(can_traverse rover4 waypoint10 waypoint22)
	(can_traverse rover4 waypoint22 waypoint11)
	(can_traverse rover4 waypoint11 waypoint22)
	(can_traverse rover4 waypoint22 waypoint12)
	(can_traverse rover4 waypoint12 waypoint22)
	(can_traverse rover4 waypoint22 waypoint20)
	(can_traverse rover4 waypoint20 waypoint22)
	(at rover5 waypoint22)
	(available rover5)
	(store_of rover5store rover5)
	(empty rover5store)
	(equipped_for_rock_analysis rover5)
	(equipped_for_imaging rover5)
	(can_traverse rover5 waypoint22 waypoint10)
	(can_traverse rover5 waypoint10 waypoint22)
	(can_traverse rover5 waypoint22 waypoint11)
	(can_traverse rover5 waypoint11 waypoint22)
	(can_traverse rover5 waypoint22 waypoint12)
	(can_traverse rover5 waypoint12 waypoint22)
	(can_traverse rover5 waypoint22 waypoint13)
	(can_traverse rover5 waypoint13 waypoint22)
	(can_traverse rover5 waypoint22 waypoint17)
	(can_traverse rover5 waypoint17 waypoint22)
	(can_traverse rover5 waypoint22 waypoint24)
	(can_traverse rover5 waypoint24 waypoint22)
	(can_traverse rover5 waypoint10 waypoint2)
	(can_traverse rover5 waypoint2 waypoint10)
	(can_traverse rover5 waypoint10 waypoint3)
	(can_traverse rover5 waypoint3 waypoint10)
	(can_traverse rover5 waypoint10 waypoint4)
	(can_traverse rover5 waypoint4 waypoint10)
	(can_traverse rover5 waypoint10 waypoint6)
	(can_traverse rover5 waypoint6 waypoint10)
	(can_traverse rover5 waypoint10 waypoint9)
	(can_traverse rover5 waypoint9 waypoint10)
	(can_traverse rover5 waypoint10 waypoint21)
	(can_traverse rover5 waypoint21 waypoint10)
	(can_traverse rover5 waypoint11 waypoint14)
	(can_traverse rover5 waypoint14 waypoint11)
	(can_traverse rover5 waypoint11 waypoint20)
	(can_traverse rover5 waypoint20 waypoint11)
	(can_traverse rover5 waypoint11 waypoint23)
	(can_traverse rover5 waypoint23 waypoint11)
	(can_traverse rover5 waypoint12 waypoint0)
	(can_traverse rover5 waypoint0 waypoint12)
	(can_traverse rover5 waypoint12 waypoint5)
	(can_traverse rover5 waypoint5 waypoint12)
	(can_traverse rover5 waypoint12 waypoint7)
	(can_traverse rover5 waypoint7 waypoint12)
	(can_traverse rover5 waypoint12 waypoint15)
	(can_traverse rover5 waypoint15 waypoint12)
	(can_traverse rover5 waypoint12 waypoint19)
	(can_traverse rover5 waypoint19 waypoint12)
	(can_traverse rover5 waypoint13 waypoint1)
	(can_traverse rover5 waypoint1 waypoint13)
	(can_traverse rover5 waypoint3 waypoint8)
	(can_traverse rover5 waypoint8 waypoint3)
	(can_traverse rover5 waypoint4 waypoint18)
	(can_traverse rover5 waypoint18 waypoint4)
	(can_traverse rover5 waypoint6 waypoint16)
	(can_traverse rover5 waypoint16 waypoint6)
	(at rover6 waypoint17)
	(available rover6)
	(store_of rover6store rover6)
	(empty rover6store)
	(equipped_for_rock_analysis rover6)
	(equipped_for_imaging rover6)
	(can_traverse rover6 waypoint17 waypoint0)
	(can_traverse rover6 waypoint0 waypoint17)
	(can_traverse rover6 waypoint17 waypoint1)
	(can_traverse rover6 waypoint1 waypoint17)
	(can_traverse rover6 waypoint17 waypoint3)
	(can_traverse rover6 waypoint3 waypoint17)
	(can_traverse rover6 waypoint17 waypoint9)
	(can_traverse rover6 waypoint9 waypoint17)
	(can_traverse rover6 waypoint17 waypoint14)
	(can_traverse rover6 waypoint14 waypoint17)
	(can_traverse rover6 waypoint17 waypoint19)
	(can_traverse rover6 waypoint19 waypoint17)
	(can_traverse rover6 waypoint17 waypoint22)
	(can_traverse rover6 waypoint22 waypoint17)
	(can_traverse rover6 waypoint17 waypoint23)
	(can_traverse rover6 waypoint23 waypoint17)
	(can_traverse rover6 waypoint0 waypoint12)
	(can_traverse rover6 waypoint12 waypoint0)
	(can_traverse rover6 waypoint1 waypoint5)
	(can_traverse rover6 waypoint5 waypoint1)
	(can_traverse rover6 waypoint1 waypoint7)
	(can_traverse rover6 waypoint7 waypoint1)
	(can_traverse rover6 waypoint1 waypoint24)
	(can_traverse rover6 waypoint24 waypoint1)
	(can_traverse rover6 waypoint3 waypoint8)
	(can_traverse rover6 waypoint8 waypoint3)
	(can_traverse rover6 waypoint3 waypoint10)
	(can_traverse rover6 waypoint10 waypoint3)
	(can_traverse rover6 waypoint3 waypoint15)
	(can_traverse rover6 waypoint15 waypoint3)
	(can_traverse rover6 waypoint9 waypoint4)
	(can_traverse rover6 waypoint4 waypoint9)
	(can_traverse rover6 waypoint9 waypoint6)
	(can_traverse rover6 waypoint6 waypoint9)
	(can_traverse rover6 waypoint9 waypoint16)
	(can_traverse rover6 waypoint16 waypoint9)
	(can_traverse rover6 waypoint9 waypoint20)
	(can_traverse rover6 waypoint20 waypoint9)
	(can_traverse rover6 waypoint14 waypoint11)
	(can_traverse rover6 waypoint11 waypoint14)
	(can_traverse rover6 waypoint19 waypoint13)
	(can_traverse rover6 waypoint13 waypoint19)
	(can_traverse rover6 waypoint22 waypoint21)
	(can_traverse rover6 waypoint21 waypoint22)
	(can_traverse rover6 waypoint23 waypoint2)
	(can_traverse rover6 waypoint2 waypoint23)
	(can_traverse rover6 waypoint23 waypoint18)
	(can_traverse rover6 waypoint18 waypoint23)
	(at rover7 waypoint18)
	(available rover7)
	(store_of rover7store rover7)
	(empty rover7store)
	(equipped_for_imaging rover7)
	(can_traverse rover7 waypoint18 waypoint4)
	(can_traverse rover7 waypoint4 waypoint18)
	(can_traverse rover7 waypoint18 waypoint23)
	(can_traverse rover7 waypoint23 waypoint18)
	(can_traverse rover7 waypoint4 waypoint1)
	(can_traverse rover7 waypoint1 waypoint4)
	(can_traverse rover7 waypoint4 waypoint8)
	(can_traverse rover7 waypoint8 waypoint4)
	(can_traverse rover7 waypoint4 waypoint9)
	(can_traverse rover7 waypoint9 waypoint4)
	(can_traverse rover7 waypoint4 waypoint10)
	(can_traverse rover7 waypoint10 waypoint4)
	(can_traverse rover7 waypoint4 waypoint12)
	(can_traverse rover7 waypoint12 waypoint4)
	(can_traverse rover7 waypoint4 waypoint14)
	(can_traverse rover7 waypoint14 waypoint4)
	(can_traverse rover7 waypoint23 waypoint2)
	(can_traverse rover7 waypoint2 waypoint23)
	(can_traverse rover7 waypoint23 waypoint11)
	(can_traverse rover7 waypoint11 waypoint23)
	(can_traverse rover7 waypoint23 waypoint13)
	(can_traverse rover7 waypoint13 waypoint23)
	(can_traverse rover7 waypoint23 waypoint16)
	(can_traverse rover7 waypoint16 waypoint23)
	(can_traverse rover7 waypoint23 waypoint17)
	(can_traverse rover7 waypoint17 waypoint23)
	(can_traverse rover7 waypoint1 waypoint5)
	(can_traverse rover7 waypoint5 waypoint1)
	(can_traverse rover7 waypoint1 waypoint24)
	(can_traverse rover7 waypoint24 waypoint1)
	(can_traverse rover7 waypoint8 waypoint3)
	(can_traverse rover7 waypoint3 waypoint8)
	(can_traverse rover7 waypoint8 waypoint15)
	(can_traverse rover7 waypoint15 waypoint8)
	(can_traverse rover7 waypoint8 waypoint19)
	(can_traverse rover7 waypoint19 waypoint8)
	(can_traverse rover7 waypoint8 waypoint20)
	(can_traverse rover7 waypoint20 waypoint8)
	(can_traverse rover7 waypoint9 waypoint6)
	(can_traverse rover7 waypoint6 waypoint9)
	(can_traverse rover7 waypoint9 waypoint21)
	(can_traverse rover7 waypoint21 waypoint9)
	(can_traverse rover7 waypoint10 waypoint22)
	(can_traverse rover7 waypoint22 waypoint10)
	(can_traverse rover7 waypoint12 waypoint0)
	(can_traverse rover7 waypoint0 waypoint12)
	(can_traverse rover7 waypoint12 waypoint7)
	(can_traverse rover7 waypoint7 waypoint12)
	(on_board camera0 rover3)
	(calibration_target camera0 objective4)
	(supports camera0 colour)
	(supports camera0 high_res)
	(supports camera0 low_res)
	(on_board camera1 rover6)
	(calibration_target camera1 objective0)
	(supports camera1 low_res)
	(on_board camera2 rover5)
	(calibration_target camera2 objective6)
	(supports camera2 colour)
	(on_board camera3 rover5)
	(calibration_target camera3 objective6)
	(supports camera3 colour)
	(supports camera3 high_res)
	(supports camera3 low_res)
	(on_board camera4 rover2)
	(calibration_target camera4 objective7)
	(supports camera4 colour)
	(supports camera4 high_res)
	(on_board camera5 rover0)
	(calibration_target camera5 objective6)
	(supports camera5 high_res)
	(on_board camera6 rover1)
	(calibration_target camera6 objective1)
	(supports camera6 colour)
	(on_board camera7 rover4)
	(calibration_target camera7 objective6)
	(supports camera7 high_res)
	(on_board camera8 rover7)
	(calibration_target camera8 objective7)
	(supports camera8 high_res)
	(visible_from objective0 waypoint0)
	(visible_from objective0 waypoint1)
	(visible_from objective0 waypoint2)
	(visible_from objective0 waypoint3)
	(visible_from objective0 waypoint4)
	(visible_from objective1 waypoint0)
	(visible_from objective1 waypoint1)
	(visible_from objective1 waypoint2)
	(visible_from objective1 waypoint3)
	(visible_from objective1 waypoint4)
	(visible_from objective1 waypoint5)
	(visible_from objective1 waypoint6)
	(visible_from objective2 waypoint0)
	(visible_from objective2 waypoint1)
	(visible_from objective2 waypoint2)
	(visible_from objective2 waypoint3)
	(visible_from objective2 waypoint4)
	(visible_from objective2 waypoint5)
	(visible_from objective2 waypoint6)
	(visible_from objective2 waypoint7)
	(visible_from objective2 waypoint8)
	(visible_from objective2 waypoint9)
	(visible_from objective2 waypoint10)
	(visible_from objective2 waypoint11)
	(visible_from objective2 waypoint12)
	(visible_from objective2 waypoint13)
	(visible_from objective2 waypoint14)
	(visible_from objective2 waypoint15)
	(visible_from objective2 waypoint16)
	(visible_from objective2 waypoint17)
	(visible_from objective2 waypoint18)
	(visible_from objective2 waypoint19)
	(visible_from objective3 waypoint0)
	(visible_from objective3 waypoint1)
	(visible_from objective3 waypoint2)
	(visible_from objective3 waypoint3)
	(visible_from objective3 waypoint4)
	(visible_from objective3 waypoint5)
	(visible_from objective3 waypoint6)
	(visible_from objective3 waypoint7)
	(visible_from objective3 waypoint8)
	(visible_from objective3 waypoint9)
	(visible_from objective3 waypoint10)
	(visible_from objective3 waypoint11)
	(visible_from objective3 waypoint12)
	(visible_from objective3 waypoint13)
	(visible_from objective3 waypoint14)
	(visible_from objective3 waypoint15)
	(visible_from objective3 waypoint16)
	(visible_from objective3 waypoint17)
	(visible_from objective3 waypoint18)
	(visible_from objective3 waypoint19)
	(visible_from objective3 waypoint20)
	(visible_from objective3 waypoint21)
	(visible_from objective3 waypoint22)
	(visible_from objective3 waypoint23)
	(visible_from objective4 waypoint0)
	(visible_from objective4 waypoint1)
	(visible_from objective4 waypoint2)
	(visible_from objective4 waypoint3)
	(visible_from objective4 waypoint4)
	(visible_from objective4 waypoint5)
	(visible_from objective5 waypoint0)
	(visible_from objective5 waypoint1)
	(visible_from objective5 waypoint2)
	(visible_from objective5 waypoint3)
	(visible_from objective5 waypoint4)
	(visible_from objective5 waypoint5)
	(visible_from objective5 waypoint6)
	(visible_from objective5 waypoint7)
	(visible_from objective5 waypoint8)
	(visible_from objective5 waypoint9)
	(visible_from objective5 waypoint10)
	(visible_from objective5 waypoint11)
	(visible_from objective5 waypoint12)
	(visible_from objective5 waypoint13)
	(visible_from objective5 waypoint14)
	(visible_from objective5 waypoint15)
	(visible_from objective5 waypoint16)
	(visible_from objective5 waypoint17)
	(visible_from objective5 waypoint18)
	(visible_from objective6 waypoint0)
	(visible_from objective6 waypoint1)
	(visible_from objective6 waypoint2)
	(visible_from objective6 waypoint3)
	(visible_from objective6 waypoint4)
	(visible_from objective6 waypoint5)
	(visible_from objective6 waypoint6)
	(visible_from objective6 waypoint7)
	(visible_from objective6 waypoint8)
	(visible_from objective6 waypoint9)
	(visible_from objective6 waypoint10)
	(visible_from objective6 waypoint11)
	(visible_from objective6 waypoint12)
	(visible_from objective6 waypoint13)
	(visible_from objective6 waypoint14)
	(visible_from objective6 waypoint15)
	(visible_from objective7 waypoint0)
	(visible_from objective7 waypoint1)
	(visible_from objective7 waypoint2)
)

(:goal (and
(communicated_soil_data waypoint6)
(communicated_soil_data waypoint23)
(communicated_soil_data waypoint21)
(communicated_soil_data waypoint18)
(communicated_soil_data waypoint17)
(communicated_soil_data waypoint13)
(communicated_soil_data waypoint9)
(communicated_soil_data waypoint2)
(communicated_soil_data waypoint14)
(communicated_soil_data waypoint0)
(communicated_soil_data waypoint15)
(communicated_soil_data waypoint16)
(communicated_soil_data waypoint7)
(communicated_soil_data waypoint19)
(communicated_rock_data waypoint22)
(communicated_rock_data waypoint14)
(communicated_rock_data waypoint17)
(communicated_rock_data waypoint18)
(communicated_rock_data waypoint4)
(communicated_rock_data waypoint6)
(communicated_rock_data waypoint21)
(communicated_rock_data waypoint7)
(communicated_rock_data waypoint8)
(communicated_image_data objective5 high_res)
(communicated_image_data objective6 colour)
(communicated_image_data objective6 high_res)
(communicated_image_data objective0 high_res)
(communicated_image_data objective1 high_res)
(communicated_image_data objective2 high_res)
(communicated_image_data objective3 high_res)
(communicated_image_data objective3 colour)
	)
)
)
