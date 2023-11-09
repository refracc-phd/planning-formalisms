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
        ec-one ec-two ec-three ec-four ec-five ec-six ec-seven ec-eight - extra-curricular
        a b c d p - grades
    )
    
    (:predicates
        (finished-course ?s - student ?c - course ?l - course-level)

        (grade ?g - grades ?s - student ?c - course ?l - course-level)

        (done-week ?w - week ?s - student ?c - course ?l - course-level)
        (done-unit ?u - unit ?s - student ?c - course ?l - course-level)
        (done-extra-curricular ?e - extra-curricular ?s - student ?c - course ?l - course-level)

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
            (done-unit unit-four ?s ?c ?l)
            (takes-course ?s ?c ?l)
        )
        :effect (and
            (finished-course ?s ?c ?l)
            (increase (reward) 250)
        )
    )

    (:action do-extra-curricular-one
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (or
                (grade a ?s ?c ?l)
                (grade b ?s ?c ?l)
            )
            (not
                (done-extra-curricular ec-one ?s ?c ?l)
            )
        )
        :effect (and 
            (done-extra-curricular ec-one ?s ?c ?l)
            (increase (reward) 100)
        )
    )

    (:action do-extra-curricular-two
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (grade a ?s ?c ?l)
            (not
                (done-extra-curricular ec-two ?s ?c ?l)
            )
            (done-extra-curricular ec-one ?s ?c ?l)
        )
        :effect (and 
            (done-extra-curricular ec-two ?s ?c ?l)
            (increase (reward) 100)
        )
    )

    (:action do-extra-curricular-three
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (or
                (grade a ?s ?c ?l)
                (grade b ?s ?c ?l)
            )
            (not
                (done-extra-curricular ec-three ?s ?c ?l)
            )
            (done-extra-curricular ec-two ?s ?c ?l)
            (done-unit unit-one ?s ?c ?l)
        )
        :effect (and 
            (done-extra-curricular ec-three ?s ?c ?l)
            (increase (reward) 100)
        )
    )

    (:action do-extra-curricular-four
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (grade a ?s ?c ?l)
            (not
                (done-extra-curricular ec-four ?s ?c ?l)
            )
            (done-extra-curricular ec-three ?s ?c ?l)
            (done-unit unit-one ?s ?c ?l)
        )
        :effect (and 
            (done-extra-curricular ec-four ?s ?c ?l)
            (increase (reward) 100)
        )
    )

    (:action do-extra-curricular-five
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (or
                (grade a ?s ?c ?l)
                (grade b ?s ?c ?l)
            )
            (not
                (done-extra-curricular ec-five ?s ?c ?l)
            )
            (done-extra-curricular ec-four ?s ?c ?l)
            (done-unit unit-two ?s ?c ?l)
        )
        :effect (and 
            (done-extra-curricular ec-five ?s ?c ?l)
            (increase (reward) 100)
        )
    )

    (:action do-extra-curricular-six
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (grade a ?s ?c ?l)
            (not
                (done-extra-curricular ec-six ?s ?c ?l)
            )
            (done-extra-curricular ec-five ?s ?c ?l)
            (done-unit unit-two ?s ?c ?l)
        )
        :effect (and 
            (done-extra-curricular ec-six ?s ?c ?l)
            (increase (reward) 100)
        )
    )

    (:action do-extra-curricular-seven
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (or
                (grade a ?s ?c ?l)
                (grade b ?s ?c ?l)
            )
            (not
                (done-extra-curricular ec-seven ?s ?c ?l)
            )
            (done-extra-curricular ec-six ?s ?c ?l)
            (done-unit unit-three ?s ?c ?l)
        )
        :effect (and 
            (done-extra-curricular ec-seven ?s ?c ?l)
            (increase (reward) 100)
        )
    )

    (:action do-extra-curricular-eight
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (grade a ?s ?c ?l)
            (not
                (done-extra-curricular ec-eight ?s ?c ?l)
            )
            (done-extra-curricular ec-seven ?s ?c ?l)
            (done-unit unit-three ?s ?c ?l)
        )
        :effect (and 
            (done-extra-curricular ec-eight ?s ?c ?l)
            (increase (reward) 100)
        )
    )

    (:action do-team-extra-curricular-one
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (or
                (grade a ?s ?c ?l)
                (grade b ?s ?c ?l)
            )
            (study-group ?c ?l)
            (not
                (done-extra-curricular ec-one ?s ?c ?l)
            )
        )
        :effect (and 
            (done-extra-curricular ec-one ?s ?c ?l)
            (increase (reward) 200)
        )
    )

    (:action do-team-extra-curricular-two
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (grade a ?s ?c ?l)
            (not
                (done-extra-curricular ec-two ?s ?c ?l)
            )
            (study-group ?c ?l)
            (done-extra-curricular ec-one ?s ?c ?l)
        )
        :effect (and 
            (done-extra-curricular ec-two ?s ?c ?l)
            (increase (reward) 200)
        )
    )

    (:action do-team-extra-curricular-three
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (or
                (grade a ?s ?c ?l)
                (grade b ?s ?c ?l)
            )
            (not
                (done-extra-curricular ec-three ?s ?c ?l)
            )
            (study-group ?c ?l)
            (done-extra-curricular ec-two ?s ?c ?l)
            (done-unit unit-one ?s ?c ?l)
        )
        :effect (and 
            (done-extra-curricular ec-three ?s ?c ?l)
            (increase (reward) 200)
        )
    )

    (:action do-team-extra-curricular-four
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (grade a ?s ?c ?l)
            (not
                (done-extra-curricular ec-four ?s ?c ?l)
            )
            (study-group ?c ?l)
            (done-extra-curricular ec-three ?s ?c ?l)
            (done-unit unit-one ?s ?c ?l)
        )
        :effect (and 
            (done-extra-curricular ec-four ?s ?c ?l)
            (increase (reward) 200)
        )
    )

    (:action do-team-extra-curricular-five
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (or
                (grade a ?s ?c ?l)
                (grade b ?s ?c ?l)
            )
            (not
                (done-extra-curricular ec-five ?s ?c ?l)
            )
            (study-group ?c ?l)
            (done-extra-curricular ec-four ?s ?c ?l)
            (done-unit unit-two ?s ?c ?l)
        )
        :effect (and 
            (done-extra-curricular ec-five ?s ?c ?l)
            (increase (reward) 200)
        )
    )

    (:action do-team-extra-curricular-six
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (grade a ?s ?c ?l)
            (not
                (done-extra-curricular ec-six ?s ?c ?l)
            )
            (study-group ?c ?l)
            (done-extra-curricular ec-five ?s ?c ?l)
            (done-unit unit-two ?s ?c ?l)
        )
        :effect (and 
            (done-extra-curricular ec-six ?s ?c ?l)
            (increase (reward) 200)
        )
    )

    (:action do-team-extra-curricular-seven
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (or
                (grade a ?s ?c ?l)
                (grade b ?s ?c ?l)
            )
            (study-group ?c ?l)
            (not
                (done-extra-curricular ec-seven ?s ?c ?l)
            )
            (done-extra-curricular ec-six ?s ?c ?l)
            (done-unit unit-three ?s ?c ?l)
        )
        :effect (and 
            (done-extra-curricular ec-seven ?s ?c ?l)
            (increase (reward) 200)
        )
    )

    (:action do-team-extra-curricular-eight
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (grade a ?s ?c ?l)
            (not
                (done-extra-curricular ec-eight ?s ?c ?l)
            )
            (study-group ?c ?l)
            (done-extra-curricular ec-seven ?s ?c ?l)
            (done-unit unit-three ?s ?c ?l)
        )
        :effect (and 
            (done-extra-curricular ec-eight ?s ?c ?l)
            (increase (reward) 200)
        )
    )
    

    (:action take-unit-one
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (not(done-unit unit-one ?s ?c ?l))
            (done-week week-eight ?s ?c ?l)
        )
        :effect (and
            (increase (reward) 60)
            (done-unit unit-one ?s ?c ?l)
            (not(done-week week-eight ?s ?c ?l))
            (not(done-week week-seven ?s ?c ?l))
            (not(done-week week-six ?s ?c ?l))
            (not(done-week week-five ?s ?c ?l))
            (not(done-week week-four ?s ?c ?l))
            (not(done-week week-three ?s ?c ?l))
            (not(done-week week-two ?s ?c ?l))
            (not(done-week week-one ?s ?c ?l))
        )
    )

    (:action take-unit-two
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (not(done-unit unit-two ?s ?c ?l))
            (done-unit unit-one ?s ?c ?l)
            (done-week week-eight ?s ?c ?l)
        )
        :effect (and
            (increase (reward) 60)
            (done-unit unit-two ?s ?c ?l)
            (not(done-week week-eight ?s ?c ?l))
            (not(done-week week-seven ?s ?c ?l))
            (not(done-week week-six ?s ?c ?l))
            (not(done-week week-five ?s ?c ?l))
            (not(done-week week-four ?s ?c ?l))
            (not(done-week week-three ?s ?c ?l))
            (not(done-week week-two ?s ?c ?l))
            (not(done-week week-one ?s ?c ?l))
        )
    )

    (:action take-unit-three
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (not(done-unit unit-three ?s ?c ?l))
            (done-unit unit-two ?s ?c ?l)
            (done-week week-eight ?s ?c ?l)
        )
        :effect (and
            (increase (reward) 60)
            (done-unit unit-three ?s ?c ?l)
            (not(done-week week-eight ?s ?c ?l))
            (not(done-week week-seven ?s ?c ?l))
            (not(done-week week-six ?s ?c ?l))
            (not(done-week week-five ?s ?c ?l))
            (not(done-week week-four ?s ?c ?l))
            (not(done-week week-three ?s ?c ?l))
            (not(done-week week-two ?s ?c ?l))
            (not(done-week week-one ?s ?c ?l))
        )
    )

    (:action take-unit-four
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (not(done-unit unit-four ?s ?c ?l))
            (done-unit unit-three ?s ?c ?l)
            (done-week week-eight ?s ?c ?l)
        )
        :effect (and
            (increase (reward) 60)
            (done-unit unit-four ?s ?c ?l)
            (not(done-week week-eight ?s ?c ?l))
            (not(done-week week-seven ?s ?c ?l))
            (not(done-week week-six ?s ?c ?l))
            (not(done-week week-five ?s ?c ?l))
            (not(done-week week-four ?s ?c ?l))
            (not(done-week week-three ?s ?c ?l))
            (not(done-week week-two ?s ?c ?l))
            (not(done-week week-one ?s ?c ?l))
        )
    )

    (:action do-week-one
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (not(done-week week-one ?s ?c ?l))
        )
        :effect (and 
            (done-week week-one ?s ?c ?l)
            (increase (reward) 50)
        )
    )

    (:action do-week-two
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (not(done-week week-two ?s ?c ?l))
            (done-week week-one ?s ?c ?l)
        )
        :effect (and 
            (done-week week-two ?s ?c ?l)
            (increase (reward) 50)
        )
    )

    (:action do-week-three
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (not(done-week week-three ?s ?c ?l))
            (done-week week-two ?s ?c ?l)
        )
        :effect (and 
            (done-week week-three ?s ?c ?l)
            (increase (reward) 50)
        )
    )

    (:action do-week-four
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (not(done-week week-four ?s ?c ?l))
            (done-week week-three ?s ?c ?l)
        )
        :effect (and 
            (done-week week-four ?s ?c ?l)
            (increase (reward) 50)
        )
    )

    (:action do-week-five
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (not(done-week week-five ?s ?c ?l))
            (done-week week-four ?s ?c ?l)
        )
        :effect (and 
            (done-week week-five ?s ?c ?l)
            (increase (reward) 50)
        )
    )

    (:action do-week-six
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (not(done-week week-six ?s ?c ?l))
            (done-week week-five ?s ?c ?l)
        )
        :effect (and 
            (done-week week-six ?s ?c ?l)
            (increase (reward) 50)
        )
    )

    (:action do-week-seven
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (not(done-week week-seven ?s ?c ?l))
            (done-week week-six ?s ?c ?l)
        )
        :effect (and 
            (done-week week-seven ?s ?c ?l)
            (increase (reward) 50)
        )
    )

    (:action do-week-eight
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (not(done-week week-eight ?s ?c ?l))
            (done-week week-seven ?s ?c ?l)
        )
        :effect (and 
            (done-week week-eight ?s ?c ?l)
            (increase (reward) 50)
        )
    )
)