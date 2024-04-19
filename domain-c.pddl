(define (domain courses)

    (:requirements :strips :typing :adl :fluents)

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
        teamwork student-led-class tech flex-seating gamification project-based blended-learning - strategy
        asc-asd social-other tourettes deaf-hearing blind-visual language - support-requirement
        improving-comms-workshop reading-group tech-assist pomo maths-workshop isolated gamify-learning - support-given
    ) 
    
    (:predicates
        (finished-course ?s - student ?c - course ?l - course-level)
        (takes-course ?s - student ?c - course ?l - course-level)

        (grade ?g - grades ?s - student ?c - course ?l - course-level)

        (study-group ?c - course ?l - course-level)

        (uses-strategy ?s - student ?t - strategy)
        (support-req ?s - student ?r - support-requirement)
        (given-support ?s - student ?g - support-given)
    )

    (:functions
        (week ?s - student ?c - course ?l - course-level)
        (unit ?s - student ?c - course ?l - course-level)
        (ec ?s - student ?c - course ?l - course-level)

        (max-weeks)
        (max-units)
        (max-ec-a)
        (max-ec-b)
        (cost)
    )

    (:action comms-workshop-asc-asd
        :parameters (?s - student)
        :precondition (and (support-req ?s asc-asd))
        :effect (and (given-support ?s improving-comms-workshop) (increase (cost) 1))
    )

    (:action comms-workshop-language
        :parameters (?s - student)
        :precondition (and (support-req ?s language))
        :effect (and (given-support ?s improving-comms-workshop) (increase (cost) 1))
    )

    (:action comms-workshop-teamwork
        :parameters (?s - student)
        :precondition (and (uses-strategy ?s teamwork))
        :effect (and (given-support ?s improving-comms-workshop) (increase (cost) 1))
    )

    (:action comms-workshop-project-based
        :parameters (?s - student)
        :precondition (and (uses-strategy ?s project-based))
        :effect (and (given-support ?s improving-comms-workshop) (increase (cost) 1))
    )

    (:action comms-workshop-blended-learning
        :parameters (?s - student)
        :precondition (and (uses-strategy ?s blended-learning))
        :effect (and (given-support ?s improving-comms-workshop) (increase (cost) 1))
    )

    (:action comms-workshop-flex-seating
        :parameters (?s - student)
        :precondition (and (uses-strategy ?s flex-seating))
        :effect (and (given-support ?s improving-comms-workshop) (increase (cost) 1))
    )

    (:action comms-workshop-student-led-class
        :parameters (?s - student)
        :precondition (and (uses-strategy ?s student-led-class))
        :effect (and (given-support ?s improving-comms-workshop) (increase (cost) 1))
    )

    (:action read-group-language
        :parameters (?s - student)
        :precondition (and (support-req ?s language))
        :effect (and (given-support ?s reading-group) (increase (cost) 1))
    )

    (:action read-group-blind-visual
        :parameters (?s - student)
        :precondition (and (support-req ?s blind-visual))
        :effect (and (given-support ?s reading-group) (increase (cost) 1))
    )


    (:action tech-assist-asc-asd
        :parameters (?s - student)
        :precondition (and (support-req ?s asc-asd))
        :effect (and (given-support ?s tech-assist) (increase (cost) 1))
    )

    (:action tech-assist-language
        :parameters (?s - student)
        :precondition (and (support-req ?s language))
        :effect (and (given-support ?s tech-assist) (increase (cost) 1))
    )

    (:action tech-assist-deaf-hearing
        :parameters (?s - student)
        :precondition (and (support-req ?s deaf-hearing))
        :effect (and (given-support ?s tech-assist) (increase (cost) 1))
    )

    (:action tech-assist-blind-visual
        :parameters (?s - student)
        :precondition (and (support-req ?s blind-visual))
        :effect (and (given-support ?s tech-assist) (increase (cost) 1))
    )

    (:action tech-assist-tech
        :parameters (?s - student)
        :precondition (and (uses-strategy ?s tech))
        :effect (and (given-support ?s tech-assist) (increase (cost) 1))
    )

    (:action tech-assist-blended-learning
        :parameters (?s - student)
        :precondition (and (uses-strategy ?s blended-learning))
        :effect (and (given-support ?s tech-assist) (increase (cost) 1))
    )


    (:action pomo-study-asc-asd
        :parameters (?s - student)
        :precondition (and (support-req ?s asc-asd))
        :effect (and (given-support ?s pomo) (increase (cost) 1))
    )

    (:action pomo-study-tourettes
        :parameters (?s - student)
        :precondition (and (support-req ?s tourettes))
        :effect (and (given-support ?s pomo) (increase (cost) 1))
    )

    (:action pomo-study-pomodoro
        :parameters (?s - student)
        :precondition (and (uses-strategy ?s pomodoro))
        :effect (and (given-support ?s pomo) (increase (cost) 1))
    )

    (:action pomo-study-teamwork
        :parameters (?s - student)
        :precondition (and (uses-strategy ?s teamwork))
        :effect (and (given-support ?s pomo) (increase (cost) 1))
    )


    (:action isolated-study-asc-asd
        :parameters (?s - student)
        :precondition (and (support-req ?s asc-asd))
        :effect (and (given-support ?s isolated) (increase (cost) 1))
    )

    (:action isolated-study-social-other
        :parameters (?s - student)
        :precondition (and (support-req ?s social-other))
        :effect (and (given-support ?s isolated) (increase (cost) 1))
    )

    
    (:action gamify-asc-asd
        :parameters (?s - student)
        :precondition (and (support-req ?s asc-asd))
        :effect (and (given-support ?s gamify-learning) (increase (cost) 1))
    )

    (:action gamify-gamification
        :parameters (?s - student)
        :precondition (and (uses-strategy ?s gamification))
        :effect (and (given-support ?s gamify-learning) (increase (cost) 1))
    )

    (:action gamify-blended-learning
        :parameters (?s - student)
        :precondition (and (uses-strategy ?s blended-learning))
        :effect (and (given-support ?s gamify-learning) (increase (cost) 1))
    )
    
    
    (:action finish-course
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (= (unit ?s ?c ?l) (max-units))
            (takes-course ?s ?c ?l)
        )
        :effect (and
            (finished-course ?s ?c ?l)
            (increase (cost) 1)
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
            (increase (cost) 1)
        )
    )

    (:action do-unit
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (not (finished-course ?s ?c ?l))
            (= (week ?s ?c ?l) (max-weeks))
            (< (unit ?s ?c ?l) (max-units))
        )
        :effect (and 
            (assign (week ?s ?c ?l) 0)
            (increase (unit ?s ?c ?l) 1)
            (increase (cost) 1)
        )
    )

    (:action do-ec-a
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (grade a ?s ?c ?l)
            (takes-course ?s ?c ?l)
            (not (finished-course ?s ?c ?l))
            (< (ec ?s ?c ?l) (max-ec-a))
        )
        :effect (and 
            (increase (ec ?s ?c ?l) 1)
            (increase (cost) 1)
        )
    )

    (:action do-ec-b
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (grade a ?s ?c ?l)
            (takes-course ?s ?c ?l)
            (not (finished-course ?s ?c ?l))
            (< (ec ?s ?c ?l) (max-ec-b))
        )
        :effect (and 
            (increase (ec ?s ?c ?l) 1)
            (increase (cost) 1)
        )
    )

    (:action do-team-ec-a
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (grade a ?s ?c ?l)
            (takes-course ?s ?c ?l)
            (study-group ?c ?l)
            (uses-strategy ?s teamwork)
            (not (finished-course ?s ?c ?l))
            (< (ec ?s ?c ?l) (max-ec-a))
        )
        :effect (and 
            (increase (ec ?s ?c ?l) 1)
            (increase (cost) 1)
        )
    )

    (:action do-team-ec-b
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (grade a ?s ?c ?l)
            (takes-course ?s ?c ?l)
            (study-group ?c ?l)
            (uses-strategy ?s teamwork)
            (not (finished-course ?s ?c ?l))
            (< (ec ?s ?c ?l) (max-ec-b))
        )
        :effect (and 
            (increase (ec ?s ?c ?l) 1)
            (increase (cost) 1)
        )
    )
)
