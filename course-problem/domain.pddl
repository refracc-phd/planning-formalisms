(define (domain courses)

    ;remove requirements that are not needed
    (:requirements :strips :typing :negative-preconditions :fluents )

    (:types
        course course-level - object
        english-literacy expressive-arts health-wellbeing maths-numeracy languages sciences social-subjects technologies - course
        nq bge - course-level
        grade
        vark-type 
        strategy 
        support-requirement
        support-received
        student
    )

    (:constants
        pomodoro - strategy
    )
    
    (:predicates
        (uses-strategy ?s - student ?t - strategy)
        (student-vark-type ?s - student ?v - vark-type)
        (has-received-support ?s - student ?r - support-received)
        (takes-course ?s - student ?c - course ?l - course-level)
        (finished-course ?s - student ?c - course ?l - course-level)
        (can-take-unit ?s - student ?c - course ?l - course-level)
    )

    (:functions
        (class-length ?c - course ?l - course-level)
        (units-taken ?s - student ?c - course ?l - course-level)
        (maximum-units ?c - course ?l - course-level)
        (duration)
        (weeks-to-achieve-unit ?c - course ?l - course-level)
        (week ?s - student ?c - course ?l - course-level)
    )
    
    (:action take-week
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            ; (< (units-taken ?s ?c ?l) (maximum-units ?c ?l))
            (< (week ?s ?c ?l) (weeks-to-achieve-unit ?c ?l))
        )
        :effect (and 
            (increase (week ?s ?c ?l) 1)
            ; (increase (duration) 360)
        )
    )

    (:action make-unit-available
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (= (week ?s ?c ?l) (weeks-to-achieve-unit ?c ?l))
        )
        :effect (and 
            (can-take-unit ?s ?c ?l)
        )
    )
    

    (:action take-unit
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (<= (units-taken ?s ?c ?l) (maximum-units ?c ?l))
            (can-take-unit ?s ?c ?l)
        )
        :effect (and 
            (increase (units-taken ?s ?c ?l) 1)
            (assign (week ?s ?c ?l) 0)
            (increase (duration) 60)
            (not(can-take-unit ?s ?c ?l))
        )
    )
    
    (:action finish-course
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (= (units-taken ?s ?c ?l) (maximum-units ?c ?l))
            (takes-course ?s ?c ?l)
        )
        :effect (and 
            (finished-course ?s ?c ?l)
        )
    )

    (:action take-week-pomodoro
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (uses-strategy ?s pomodoro)
            (< (units-taken ?s ?c ?l) (maximum-units ?c ?l))
            (< (week ?s ?c ?l) (weeks-to-achieve-unit ?c ?l))
        )
        :effect (and 
            (increase (week ?s ?c ?l) 1)
            (increase (duration) 450)
        )
    )
    
)