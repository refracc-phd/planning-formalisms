(define (domain courses)

    ;remove requirements that are not needed
    (:requirements :strips :typing :fluents :adl)

    (:types
        course course-level week unit - object
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
        week-one week-two week-three week-four week-five week-six week-seven week-eight - week
        unit-one unit-two unit-three unit-four - unit
    )
    
    (:predicates
        (finished-course ?s - student ?c - course ?l - course-level)

        (grade-a ?s - student ?c - course ?l - course-level)
        (grade-b ?s - student ?c - course ?l - course-level)
        (grade-c ?s - student ?c - course ?l - course-level)
        (grade-d ?s - student ?c - course ?l - course-level)
        (grade-p ?s - student ?c - course ?l - course-level)

        (done-week-one ?s - student ?c - course ?l - course-level)
        (done-week-two ?s - student ?c - course ?l - course-level)
        (done-week-three ?s - student ?c - course ?l - course-level)
        (done-week-four ?s - student ?c - course ?l - course-level)
        (done-week-five ?s - student ?c - course ?l - course-level)
        (done-week-six ?s - student ?c - course ?l - course-level)
        (done-week-seven ?s - student ?c - course ?l - course-level)
        (done-week-eight ?s - student ?c - course ?l - course-level)

        (done-unit-one ?s - student ?c - course ?l - course-level)
        (done-unit-two ?s - student ?c - course ?l - course-level)
        (done-unit-three ?s - student ?c - course ?l - course-level)
        (done-unit-four ?s - student ?c - course ?l - course-level)

        (done-extra-curricular-one ?s - student ?c - course ?l - course-level)
        (done-extra-curricular-two ?s - student ?c - course ?l - course-level)
        (done-extra-curricular-three ?s - student ?c - course ?l - course-level)
        (done-extra-curricular-four ?s - student ?c - course ?l - course-level)
        (done-extra-curricular-five ?s - student ?c - course ?l - course-level)
        (done-extra-curricular-six ?s - student ?c - course ?l - course-level)
        (done-extra-curricular-seven ?s - student ?c - course ?l - course-level)
        (done-extra-curricular-eight ?s - student ?c - course ?l - course-level)

        (study-group ?c - course ?l - level)

        (uses-strategy ?s - student ?t - strategy)
        (student-vark-type ?s - student ?v - vark-type)
        (has-received-support ?s - student ?r - support-received)
        (takes-course ?s - student ?c - course ?l - course-level)
    )

    (:functions
        (reward)
    )
    
    (:action finish-course
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (done-unit-four ?s ?c ?l)
            (takes-course ?s ?c ?l)
        )
        :effect (and
            (finished-course ?s ?c ?l)
            (increase (reward) 250)
        )
    )

    (:action finish-course-pomodoro
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (done-unit-four ?s ?c ?l)
            (takes-course ?s ?c ?l)
            (uses-strategy ?s pomodoro)
        )
        :effect (and 
            (increase (reward) 250) ; make higher :)
            (finished-course ?s ?c ?l)
        )
    )

    (:action do-extra-curricular-one
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (or
                (grade-a ?s ?c ?l)
                (grade-b ?s ?c ?l)
            )
            (not
                (done-extra-curricular-one ?s ?c ?l)
            )
        )
        :effect (and 
            (done-extra-curricular-one ?s ?c ?l)
            (increase (reward) 100)
        )
    )

    (:action do-extra-curricular-two
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (grade-a ?s ?c ?l)
            (not
                (done-extra-curricular-two ?s ?c ?l)
            )
            (done-extra-curricular-one ?s ?c ?l)
        )
        :effect (and 
            (done-extra-curricular-two ?s ?c ?l)
            (increase (reward) 100)
        )
    )

    (:action do-extra-curricular-three
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (or
                (grade-a ?s ?c ?l)
                (grade-b ?s ?c ?l)
            )
            (not
                (done-extra-curricular-three ?s ?c ?l)
            )
            (done-extra-curricular-two ?s ?c ?l)
            (done-unit-one ?s ?c ?l)
        )
        :effect (and 
            (done-extra-curricular-three ?s ?c ?l)
            (increase (reward) 100)
        )
    )

    (:action do-extra-curricular-four
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (grade-a ?s ?c ?l)
            (not
                (done-extra-curricular-four ?s ?c ?l)
            )
            (done-extra-curricular-three ?s ?c ?l)
            (done-unit-one ?s ?c ?l)
        )
        :effect (and 
            (done-extra-curricular-four ?s ?c ?l)
            (increase (reward) 100)
        )
    )

    (:action do-extra-curricular-five
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (or
                (grade-a ?s ?c ?l)
                (grade-b ?s ?c ?l)
            )
            (not
                (done-extra-curricular-five ?s ?c ?l)
            )
            (done-extra-curricular-four ?s ?c ?l)
            (done-unit-two ?s ?c ?l)
        )
        :effect (and 
            (done-extra-curricular-five ?s ?c ?l)
            (increase (reward) 100)
        )
    )

    (:action do-extra-curricular-six
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (grade-a ?s ?c ?l)
            (not
                (done-extra-curricular-six ?s ?c ?l)
            )
            (done-extra-curricular-five ?s ?c ?l)
            (done-unit-two ?s ?c ?l)
        )
        :effect (and 
            (done-extra-curricular-six ?s ?c ?l)
            (increase (reward) 100)
        )
    )

    (:action do-extra-curricular-seven
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (or
                (grade-a ?s ?c ?l)
                (grade-b ?s ?c ?l)
            )
            (not
                (done-extra-curricular-seven ?s ?c ?l)
            )
            (done-extra-curricular-six ?s ?c ?l)
            (done-unit-three ?s ?c ?l)
        )
        :effect (and 
            (done-extra-curricular-seven ?s ?c ?l)
            (increase (reward) 100)
        )
    )

    (:action do-extra-curricular-eight
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (grade-a ?s ?c ?l)
            (not
                (done-extra-curricular-eight ?s ?c ?l)
            )
            (done-extra-curricular-seven ?s ?c ?l)
            (done-unit-three ?s ?c ?l)
        )
        :effect (and 
            (done-extra-curricular-eight ?s ?c ?l)
            (increase (reward) 100)
        )
    )

    (:action do-team-extra-curricular-one
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (or
                (grade-a ?s ?c ?l)
                (grade-b ?s ?c ?l)
            )
            (study-group ?c ?l)
            (not
                (done-extra-curricular-one ?s ?c ?l)
            )
        )
        :effect (and 
            (done-extra-curricular-one ?s ?c ?l)
            (increase (reward) 200)
        )
    )

    (:action do-team-extra-curricular-two
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (grade-a ?s ?c ?l)
            (not
                (done-extra-curricular-two ?s ?c ?l)
            )
            (study-group ?c ?l)
            (done-extra-curricular-one ?s ?c ?l)
        )
        :effect (and 
            (done-extra-curricular-two ?s ?c ?l)
            (increase (reward) 200)
        )
    )

    (:action do-team-extra-curricular-three
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (or
                (grade-a ?s ?c ?l)
                (grade-b ?s ?c ?l)
            )
            (not
                (done-extra-curricular-three ?s ?c ?l)
            )
            (study-group ?c ?l)
            (done-extra-curricular-two ?s ?c ?l)
            (done-unit-one ?s ?c ?l)
        )
        :effect (and 
            (done-extra-curricular-three ?s ?c ?l)
            (increase (reward) 200)
        )
    )

    (:action do-team-extra-curricular-four
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (grade-a ?s ?c ?l)
            (not
                (done-extra-curricular-four ?s ?c ?l)
            )
            (study-group ?c ?l)
            (done-extra-curricular-three ?s ?c ?l)
            (done-unit-one ?s ?c ?l)
        )
        :effect (and 
            (done-extra-curricular-four ?s ?c ?l)
            (increase (reward) 200)
        )
    )

    (:action do-team-extra-curricular-five
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (or
                (grade-a ?s ?c ?l)
                (grade-b ?s ?c ?l)
            )
            (not
                (done-extra-curricular-five ?s ?c ?l)
            )
            (study-group ?c ?l)
            (done-extra-curricular-four ?s ?c ?l)
            (done-unit-two ?s ?c ?l)
        )
        :effect (and 
            (done-extra-curricular-five ?s ?c ?l)
            (increase (reward) 200)
        )
    )

    (:action do-team-extra-curricular-six
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (grade-a ?s ?c ?l)
            (not
                (done-extra-curricular-six ?s ?c ?l)
            )
            (study-group ?c ?l)
            (done-extra-curricular-five ?s ?c ?l)
            (done-unit-two ?s ?c ?l)
        )
        :effect (and 
            (done-extra-curricular-six ?s ?c ?l)
            (increase (reward) 200)
        )
    )

    (:action do-team-extra-curricular-seven
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (or
                (grade-a ?s ?c ?l)
                (grade-b ?s ?c ?l)
            )
            (study-group ?c ?l)
            (not
                (done-extra-curricular-seven ?s ?c ?l)
            )
            (done-extra-curricular-six ?s ?c ?l)
            (done-unit-three ?s ?c ?l)
        )
        :effect (and 
            (done-extra-curricular-seven ?s ?c ?l)
            (increase (reward) 200)
        )
    )

    (:action do-team-extra-curricular-eight
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (grade-a ?s ?c ?l)
            (not
                (done-extra-curricular-eight ?s ?c ?l)
            )
            (study-group ?c ?l)
            (done-extra-curricular-seven ?s ?c ?l)
            (done-unit-three ?s ?c ?l)
        )
        :effect (and 
            (done-extra-curricular-eight ?s ?c ?l)
            (increase (reward) 200)
        )
    )
    

    (:action take-unit-one
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (not(done-unit-one ?s ?c ?l))
            (done-week-eight ?s ?c ?l)
        )
        :effect (and
            (increase (reward) 60)
            (done-unit-one ?s ?c ?l)
            (not(done-week-eight ?s ?c ?l))
            (not(done-week-seven ?s ?c ?l))
            (not(done-week-six ?s ?c ?l))
            (not(done-week-five ?s ?c ?l))
            (not(done-week-four ?s ?c ?l))
            (not(done-week-three ?s ?c ?l))
            (not(done-week-two ?s ?c ?l))
            (not(done-week-one ?s ?c ?l))
        )
    )

    (:action take-unit-two
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (not(done-unit-two ?s ?c ?l))
            (done-unit-one ?s ?c ?l)
            (done-week-eight ?s ?c ?l)
        )
        :effect (and
            (increase (reward) 60)
            (done-unit-two ?s ?c ?l)
            (not(done-week-eight ?s ?c ?l))
            (not(done-week-seven ?s ?c ?l))
            (not(done-week-six ?s ?c ?l))
            (not(done-week-five ?s ?c ?l))
            (not(done-week-four ?s ?c ?l))
            (not(done-week-three ?s ?c ?l))
            (not(done-week-two ?s ?c ?l))
            (not(done-week-one ?s ?c ?l))
        )
    )

    (:action take-unit-three
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (not(done-unit-three ?s ?c ?l))
            (done-unit-two ?s ?c ?l)
            (done-week-eight ?s ?c ?l)
        )
        :effect (and
            (increase (reward) 60)
            (done-unit-three ?s ?c ?l)
            (not(done-week-eight ?s ?c ?l))
            (not(done-week-seven ?s ?c ?l))
            (not(done-week-six ?s ?c ?l))
            (not(done-week-five ?s ?c ?l))
            (not(done-week-four ?s ?c ?l))
            (not(done-week-three ?s ?c ?l))
            (not(done-week-two ?s ?c ?l))
            (not(done-week-one ?s ?c ?l))
        )
    )

    (:action take-unit-four
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (not(done-unit-four ?s ?c ?l))
            (done-unit-three ?s ?c ?l)
            (done-week-eight ?s ?c ?l)
        )
        :effect (and
            (increase (reward) 60)
            (done-unit-four ?s ?c ?l)
            (not(done-week-eight ?s ?c ?l))
            (not(done-week-seven ?s ?c ?l))
            (not(done-week-six ?s ?c ?l))
            (not(done-week-five ?s ?c ?l))
            (not(done-week-four ?s ?c ?l))
            (not(done-week-three ?s ?c ?l))
            (not(done-week-two ?s ?c ?l))
            (not(done-week-one ?s ?c ?l))
        )
    )

    (:action do-week-one
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (not(done-week-one ?s ?c ?l))
        )
        :effect (and 
            (done-week-one ?s ?c ?l)
            (increase (reward) 50)
        )
    )

    (:action do-week-two
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (not(done-week-two ?s ?c ?l))
            (done-week-one ?s ?c ?l)
        )
        :effect (and 
            (done-week-two ?s ?c ?l)
            (increase (reward) 50)
        )
    )

    (:action do-week-three
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (not(done-week-three ?s ?c ?l))
            (done-week-two ?s ?c ?l)
        )
        :effect (and 
            (done-week-three ?s ?c ?l)
            (increase (reward) 50)
        )
    )

    (:action do-week-four
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (not(done-week-four ?s ?c ?l))
            (done-week-three ?s ?c ?l)
        )
        :effect (and 
            (done-week-four ?s ?c ?l)
            (increase (reward) 50)
        )
    )

    (:action do-week-five
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (not(done-week-five ?s ?c ?l))
            (done-week-four ?s ?c ?l)
        )
        :effect (and 
            (done-week-five ?s ?c ?l)
            (increase (reward) 50)
        )
    )

    (:action do-week-six
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (not(done-week-six ?s ?c ?l))
            (done-week-five ?s ?c ?l)
        )
        :effect (and 
            (done-week-six ?s ?c ?l)
            (increase (reward) 50)
        )
    )

    (:action do-week-seven
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (not(done-week-seven ?s ?c ?l))
            (done-week-six ?s ?c ?l)
        )
        :effect (and 
            (done-week-seven ?s ?c ?l)
            (increase (reward) 50)
        )
    )

    (:action do-week-eight
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (not(done-week-eight ?s ?c ?l))
            (done-week-seven ?s ?c ?l)
        )
        :effect (and 
            (done-week-eight ?s ?c ?l)
            (increase (reward) 50)
        )
    )
)