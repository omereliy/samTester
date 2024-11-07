(define (domain rover)
  (:requirements :strips :typing)
  (:types
    rover waypoint store camera mode lander objective)
  (:predicates
    (at ?r - rover ?w - waypoint)
    (at_lander ?l - lander ?w - waypoint)
    (can_traverse ?r - rover ?w1 - waypoint ?w2 - waypoint)
    (equipped_for_soil_analysis ?r - rover)
    (equipped_for_rock_analysis ?r - rover)
    (equipped_for_imaging ?r - rover)
    (empty ?s - store)
    (have_rock_analysis ?r - rover ?w - waypoint)
    (have_soil_analysis ?r - rover ?w - waypoint)
    (full ?s - store)
    (calibrated ?c - camera ?r - rover)
    (supports ?c - camera ?m - mode)
    (available ?r - rover)
    (visible ?w1 - waypoint ?w2 - waypoint)
    (have_image ?r - rover ?o - objective ?m - mode)
    (communicated_soil_data ?w - waypoint)
    (communicated_rock_data ?w - waypoint)
    (communicated_image_data ?o - objective ?m - mode)
    (at_soil_sample ?w - waypoint)
    (at_rock_sample ?w - waypoint)
    (visible_from ?o - objective ?w - waypoint)
    (store_of ?s - store ?r - rover)
    (calibration_target ?c - camera ?o - objective)
    (on_board ?c - camera ?r - rover)
    (channel_free ?l - lander)
  )

  (:action navigate
    :parameters (?r - rover ?w1 - waypoint ?w2 - waypoint)
    :precondition
`      (and (can_traverse ?r ?w1 ?w2) (available ?r) (at ?r ?w1) (visible ?w1 ?w2))
`    :effect
      (and (at ?r ?w2) (not (at ?r ?w1)))
  )

  (:action sample_soil
    :parameters (?r - rover ?s - store ?w - waypoint)
    :precondition
      (and (at ?r ?w) (at_soil_sample ?w) (equipped_for_soil_analysis ?r) (store_of ?s ?r) (empty ?s))
    :effect
      (and (full ?s) (have_soil_analysis ?r ?w) (not (empty ?s)) (not (at_soil_sample ?w)))
  )

  (:action sample_rock
    :parameters (?r - rover ?s - store ?w - waypoint)
    :precondition
      (and (at ?r ?w) (at_rock_sample ?w) (equipped_for_rock_analysis ?r) (store_of ?s ?r) (empty ?s))
    :effect
      (and (full ?s) (have_rock_analysis ?r ?w) (not (empty ?s)) (not (at_rock_sample ?w)))
  )

  (:action drop
    :parameters (?r - rover ?s - store)
    :precondition
      (and (store_of ?s ?r) (full ?s))
    :effect
      (and (empty ?s) (not (full ?s)))
  )

  (:action calibrate
    :parameters (?r - rover ?c - camera ?o - objective ?w - waypoint)
    :precondition
      (and (equipped_for_imaging ?r) (calibration_target ?c ?o) (at ?r ?w) (visible_from ?o ?w) (on_board ?c ?r))
    :effect
      (calibrated ?c ?r)
  )

  (:action take_image
    :parameters (?r - rover ?w - waypoint ?o - objective ?c - camera ?m - mode)
    :precondition
      (and (calibrated ?c ?r) (on_board ?c ?r) (equipped_for_imaging ?r) (supports ?c ?m) (visible_from ?o ?w) (at ?r ?w))
    :effect
      (and (have_image ?r ?o ?m) (not (calibrated ?c ?r)))
  )

  (:action communicate_soil_data
    :parameters (?r - rover ?l - lander ?w1 - waypoint ?w2 - waypoint ?p - waypoint)
    :precondition
      (and (at ?r ?w1) (at_lander ?l ?w2) (have_soil_analysis ?r ?p) (visible ?w1 ?w2) (available ?r) (channel_free ?l))
    :effect
      (and (communicated_soil_data ?p))
  )

  (:action communicate_rock_data
    :parameters (?r - rover ?l - lander ?w1 - waypoint ?w2 - waypoint ?p - waypoint)
    :precondition
      (and (at ?r ?w1) (at_lander ?l ?w2) (have_rock_analysis ?r ?p) (visible ?w1 ?w2) (available ?r) (channel_free ?l))
    :effect
      (and (communicated_rock_data ?p))
  )

  (:action communicate_image_data
    :parameters (?r - rover ?l - lander ?o - objective ?m - mode ?w1 - waypoint ?w2 - waypoint)
    :precondition
      (and (at ?r ?w1) (at_lander ?l ?w2) (have_image ?r ?o ?m) (visible ?w1 ?w2) (available ?r) (channel_free ?l))
    :effect
      (and (communicated_image_data ?o ?m))
  )
)
