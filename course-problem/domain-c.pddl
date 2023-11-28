(define (domain courses)

    (:requirements :strips :typing :adl)

    (:types
        course course-level grades - object
        english-literacy expressive-arts health-wellbeing maths-numeracy languages sciences social-subjects technologies - course
        nq bge - course-level
        vark-type
        strategy 
        support-requirement
        support-given
        student
    )

    (:constants
        pomodoro - strategy
        a b c d p - grades
        teamwork student-led-class technological-tools flex-seating gamification project-based blended-learning - strategy
        asc-asd social-other tourettes deaf-hearing blind-visual language - support-requirement
        improving-comms-workshop reading-group tech-assist pomo maths-workshop isolated gamify-learning - support-given
    ) 
    
    (:predicates
        (finished-course ?s - student ?c - course ?l - course-level)
        (takes-course ?s - student ?c - course ?l - course-level)

        (grade ?g - grades ?s - student ?c - course ?l - course-level)

        (study-group ?c - course ?l - course-level)

        (uses-strategy ?s - student ?t - strategy)
        (has-support-need ?s - student ?r - support-requirement)
        (given-support ?s - student ?g - support-given)
    )

    (:functions
        (week ?s - student ?c - course ?l - course-level)
        (unit ?s - student ?c - course ?l - course-level)
        (extra-curricular ?s - student ?c - course ?l - course-level)

        (max-weeks)
        (max-units)
        (max-extra-curricular-a)
        (max-extra-curricular-b)
    )

    (:action recommend-improving-communications-workshop
        :parameters (?s - student)
        :precondition (and
            (or
                (has-support-need ?s asc-asd)
                (has-support-need ?s language)
                (uses-strategy ?s teamwork)
                (uses-strategy ?s project-based)
                (uses-strategy ?s blended-learning)
            )
        )
        :effect (and 
            (given-support ?s improving-comms-workshop)
        )
    )

    (:action recommend-reading-group
        :parameters (?s - student)
        :precondition (and 
            (has-support-need ?s language)
            (has-support-need ?s blind-visual)
        )
        :effect (and 
            (given-support ?s reading-group)
        )
    )

    (:action recommend-technological-assistance
        :parameters (?s - student)
        :precondition (and 
            (or
                (has-support-need ?s asc-asd)
                (has-support-need ?s language)
                (has-support-need ?s deaf-hearing)
                (has-support-need ?s blind-visual)
                (uses-strategy ?s technological-tools)
                (uses-strategy ?s blended-learning)
            )
        )
        :effect (and 
            (given-support ?s tech-assist)
        )
    )

    (:action recommend-pomodoro-study
        :parameters (?s - student)
        :precondition (and 
            (or
                (has-support-need ?s asc-asd)
                (has-support-need ?s tourettes)
                (uses-strategy ?s pomodoro)
                (uses-strategy ?s teamwork)
            )
        )
        :effect (and 
            (given-support ?s pomo)
        )
    )

    (:action recommend-isolated-study-where-appropriate
        :parameters (?s - student)
        :precondition (and 
            (or
                (has-support-need ?s tourettes)
                (has-support-need ?s asc-asd)
                (has-support-need ?s social-other)
            )
        )
        :effect (and 
            (given-support ?s isolated)
        )
    )
    
    (:action recommend-gamify-learning
        :parameters (?s - student)
        :precondition (and
            (or
                (has-support-need ?s asc-asd)
                (has-support-need ?s tourettes)
                (uses-strategy ?s gamification)
                (uses-strategy ?s blended-learning)
            )
        )
        :effect (and 
            (given-support ?s gamify-learning)
        )
    )
    
    
    (:action finish-course
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (= (unit ?s ?c ?l) (max-units ?c ?l))
            (takes-course ?s ?c ?l)
        )
        :effect (and
            (finished-course ?s ?c ?l)
        )
    )

    (:action do-week
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (not (finished-course ?s ?c ?l))
            (< (week ?s ?c ?l) (max-weeks))
        )
        :effect (and 
            (increase (week ?s ?c ?l) 1)
        )
    )

    (:action do-unit
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (not (finished-course ?s ?c ?l))
            (< (unit ?s ?c ?l) (max-units))
        )
        :effect (and 
            (increase (unit ?s ?c ?l) 1)
            (= (week ?s ?c ?l) 0)
        )
    )

    (:action do-extra-curricular-a
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (grade a ?s ?c ?l)
            (takes-course ?s ?c ?l)
            (not (finished-course ?s ?c ?l))
            (< (extra-curricular ?s ?c ?l) (max-extra-curricular-a))
        )
        :effect (and 
            (increase (extra-curricular ?s ?c ?l) 1)
        )
    )

    (:action do-extra-curricular-b
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (grade a ?s ?c ?l)
            (takes-course ?s ?c ?l)
            (not (finished-course ?s ?c ?l))
            (< (extra-curricular ?s ?c ?l) (max-extra-curricular-b))
        )
        :effect (and 
            (increase (extra-curricular ?s ?c ?l) 1)
        )
    )

    (:action do-team-extra-curricular-a
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (grade a ?s ?c ?l)
            (takes-course ?s ?c ?l)
            (study-group ?c ?l)
            (not (finished-course ?s ?c ?l))
            (< (extra-curricular ?s ?c ?l) (max-extra-curricular-a))
        )
        :effect (and 
            (increase (extra-curricular ?s ?c ?l) 1)
        )
    )

    (:action do-team-extra-curricular-b
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (grade a ?s ?c ?l)
            (takes-course ?s ?c ?l)
            (study-group ?c ?l)
            (not (finished-course ?s ?c ?l))
            (< (extra-curricular ?s ?c ?l) (max-extra-curricular-b))
        )
        :effect (and 
            (increase (extra-curricular ?s ?c ?l) 1)
        )
    )
)
