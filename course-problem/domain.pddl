(define (domain courses)

    ;remove requirements that are not needed
    (:requirements :strips :typing :negative-preconditions :fluents )

    (:types
        course course-level - object
        english-literacy expressive-arts health-wellbeing maths-numeracy languages sciences social-subjects technologies - course
        nq bge - course-level
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
        (predicted-grade ?s - student ?c - course ?l - course-level)
        (grade-a ?s - student ?c - course ?l - course-level)
        (grade-b ?s - student ?c - course ?l - course-level)
        (grade-c ?s - student ?c - course ?l - course-level)
        (grade-d ?s - student ?c - course ?l - course-level)
        (grade-f ?s - student ?c - course ?l - course-level)
        (grade-p ?s - student ?c - course ?l - course-level)
    )

    (:functions
        (class-length ?c - course ?l - course-level)
        (units-taken ?s - student ?c - course ?l - course-level)
        (maximum-units ?c - course ?l - course-level)
        (duration)
        (weeks-to-achieve-unit ?c - course ?l - course-level)
        (week ?s - student ?c - course ?l - course-level)
        (extra-curricular-count ?s - student ?c - course ?l - course-level)
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
            (or
                (grade-p ?s ?c ?l)
                (grade-f ?s ?c ?l)
                (grade-d ?s ?c ?l)
                (grade-c ?s ?c ?l)
            )
        )
        :effect (and 
            (increase (units-taken ?s ?c ?l) 1)
            (assign (week ?s ?c ?l) 0)
            (increase (duration) 60)
            (not(can-take-unit ?s ?c ?l))
        )
    )

    (:action take-unit-extra-curriculuar
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (<= (units-taken ?s ?c ?l) (maximum-units ?c ?l))
            (or
                (and 
                    (grade-a ?s ?c ?l)
                    (<= (extra-curricular-count ?s ?c ?l) 4)
                )
                (and 
                    (grade-b ?s ?c ?l)
                    (<= (extra-curricular-count ?s ?c ?l) 2)
                )
            )
            (can-take-unit ?s ?c ?l)
        )
        :effect (and 
            (increase (units-taken ?s ?c ?l) 1)
            (assign (week ?s ?c ?l) 0)
            (assign (extra-curricular-count ?s ?c ?l) 0)
            (increase (duration) 60)
            (not(can-take-unit ?s ?c ?l))
        )
    )
    
    (:action finish-course
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (= (units-taken ?s ?c ?l) (maximum-units ?c ?l))
            (or
                (grade-p ?s ?c ?l)
                (grade-f ?s ?c ?l)
                (grade-d ?s ?c ?l)
                (grade-c ?s ?c ?l)
            )
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
            (< (week ?s ?c ?l) (weeks-to-achieve-unit ?c ?l))
        )
        :effect (and 
            (increase (week ?s ?c ?l) 1)
            (increase (duration) 450)
        )
    )

    (:action take-week
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (< (week ?s ?c ?l) (weeks-to-achieve-unit ?c ?l))
        )
        :effect (and 
            (increase (week ?s ?c ?l) 1)
            (increase (duration) 360)
        )
    )
    
    (:action do-extra-curricular
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (or
                (grade-a ?s ?c ?l)
                (grade-b ?s ?c ?l)
            )
            (<= (units-taken ?s ?c ?l) (maximum-units ?c ?l))
        )
        :effect (and 
            (increase (duration) 120)
            (increase (extra-curricular-count ?s ?c ?l) 1)
        )
    )

    (:action finish-extra-curricular-course
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (or 
                (grade-a ?s ?c ?l)
                (grade-b ?s ?c ?l)
            )
            (= (units-taken ?s ?c ?l) (maximum-units ?c ?l))
            (takes-course ?s ?c ?l)
        )
        :effect (and 
            (finished-course ?s ?c ?l)
         )
    )
    
    
)