
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Domain file automatically generated by the Tarski FSTRIPS writer
;;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (domain depot)
    (:requirements :typing)
    (:types
        place - object
        locatable - object
        distributor - place
        depot - place
        truck - locatable
        hoist - locatable
        surface - locatable
        crate - surface
        pallet - surface
        object
    )

    (:constants
        
    )

    (:predicates
        (at ?x1 - locatable ?x2 - place)
        (lifting ?x1 - hoist ?x2 - crate)
        (on ?x1 - crate ?x2 - surface)
        (in ?x1 - crate ?x2 - truck)
        (available ?x1 - hoist)
        (clear ?x1 - surface)
    )

    (:functions
        
    )

    

    
    (:action drop_1
     :parameters (?x0 - hoist ?x1 - crate ?x2 - surface ?x3 - place)
     :precondition (and (at ?x2 ?x3) (lifting ?x0 ?x1) (clear ?x2) (at ?x0 ?x3))
     :effect (and
        (available ?x0)
        (at ?x1 ?x3)
        (clear ?x1)
        (on ?x1 ?x2)
        (not (lifting ?x0 ?x1))
        (not (clear ?x2)))
    )


    (:action unload_1
     :parameters (?x0 - hoist ?x1 - crate ?x2 - truck ?x3 - place)
     :precondition (and (at ?x2 ?x3) (at ?x0 ?x3) (in ?x1 ?x2) (available ?x0))
     :effect (and
        (lifting ?x0 ?x1)
        (not (available ?x0))
        (not (in ?x1 ?x2)))
    )


    (:action load_1
     :parameters (?x0 - hoist ?x1 - crate ?x2 - truck ?x3 - place)
     :precondition (and (at ?x2 ?x3) (lifting ?x0 ?x1) (at ?x0 ?x3))
     :effect (and
        (available ?x0)
        (in ?x1 ?x2)
        (not (lifting ?x0 ?x1)))
    )


    (:action drive_1
     :parameters (?x0 - truck ?x1 - place ?x2 - place)
     :precondition (at ?x0 ?x1)
     :effect (and
        (at ?x0 ?x2)
        (not (at ?x0 ?x1)))
    )


    (:action lift_1
     :parameters (?x0 - hoist ?x1 - crate ?x2 - surface ?x3 - place)
     :precondition (and (at ?x1 ?x3) (on ?x1 ?x2) (at ?x0 ?x3) (clear ?x1) (at ?x2 ?x3) (available ?x0))
     :effect (and
        (lifting ?x0 ?x1)
        (clear ?x2)
        (not (available ?x0))
        (not (at ?x1 ?x3))
        (not (clear ?x1))
        (not (on ?x1 ?x2)))
    )

)