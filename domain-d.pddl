(define (domain courses)

    (:requirements :strips :typing :adl)

    (:types
        course course-level week unit ec grades - object
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
        week-one week-two week-three week-four week-five week-six week-seven week-eight - week
        unit-one unit-two unit-three unit-four - unit
        ec-one ec-two ec-three ec-four ec-five ec-six ec-seven ec-eight - ec
        a b c d p - grades
        teamwork student-led-class tech flex-seating gamification project-based blended-learning - strategy
        asc-asd social-other tourettes deaf-hearing blind-visual language - support-requirement
        improving-comms-workshop reading-group tech-assist pomo maths-workshop isolated gamify-learning - support-given
    ) 
    
    (:predicates
        (finished-course ?s - student ?c - course ?l - course-level)
        (takes-course ?s - student ?c - course ?l - course-level)

        (grade ?g - grades ?s - student ?c - course ?l - course-level)

        (done-week ?w - week ?s - student ?c - course ?l - course-level)
        (done-unit ?u - unit ?s - student ?c - course ?l - course-level)
        (done-ec ?e - ec ?s - student ?c - course ?l - course-level)

        (study-group ?c - course ?l - course-level)

        (uses-strategy ?s - student ?t - strategy)
        (support-req ?s - student ?r - support-requirement)
        (given-support ?s - student ?g - support-given)
    )

    (:action comms-workshop-asc-asd
        :parameters (?s - student)
        :precondition (and (support-req ?s asc-asd))
        :effect (and (given-support ?s improving-comms-workshop))
    )

    (:action comms-workshop-language
        :parameters (?s - student)
        :precondition (and (support-req ?s language))
        :effect (and (given-support ?s improving-comms-workshop))
    )

    (:action comms-workshop-teamwork
        :parameters (?s - student)
        :precondition (and (uses-strategy ?s teamwork))
        :effect (and (given-support ?s improving-comms-workshop))
    )

    (:action comms-workshop-project-based
        :parameters (?s - student)
        :precondition (and (uses-strategy ?s project-based))
        :effect (and (given-support ?s improving-comms-workshop))
    )

    (:action comms-workshop-blended-learning
        :parameters (?s - student)
        :precondition (and (uses-strategy ?s blended-learning))
        :effect (and (given-support ?s improving-comms-workshop))
    )

    (:action comms-workshop-flex-seating
        :parameters (?s - student)
        :precondition (and (uses-strategy ?s flex-seating))
        :effect (and (given-support ?s improving-comms-workshop))
    )

    (:action comms-workshop-student-led-class
        :parameters (?s - student)
        :precondition (and (uses-strategy ?s student-led-class))
        :effect (and (given-support ?s improving-comms-workshop))
    )

    (:action read-group-language
        :parameters (?s - student)
        :precondition (and (support-req ?s language))
        :effect (and (given-support ?s reading-group))
    )

    (:action read-group-blind-visual
        :parameters (?s - student)
        :precondition (and (support-req ?s blind-visual))
        :effect (and (given-support ?s reading-group))
    )


    (:action tech-assist-asc-asd
        :parameters (?s - student)
        :precondition (and (support-req ?s asc-asd))
        :effect (and (given-support ?s tech-assist))
    )

    (:action tech-assist-language
        :parameters (?s - student)
        :precondition (and (support-req ?s language))
        :effect (and (given-support ?s tech-assist))
    )

    (:action tech-assist-deaf-hearing
        :parameters (?s - student)
        :precondition (and (support-req ?s deaf-hearing))
        :effect (and (given-support ?s tech-assist))
    )

    (:action tech-assist-blind-visual
        :parameters (?s - student)
        :precondition (and (support-req ?s blind-visual))
        :effect (and (given-support ?s tech-assist))
    )

    (:action tech-assist-tech
        :parameters (?s - student)
        :precondition (and (uses-strategy ?s tech))
        :effect (and (given-support ?s tech-assist))
    )

    (:action tech-assist-blended-learning
        :parameters (?s - student)
        :precondition (and (uses-strategy ?s blended-learning))
        :effect (and (given-support ?s tech-assist))
    )


    (:action pomo-study-asc-asd
        :parameters (?s - student)
        :precondition (and (support-req ?s asc-asd))
        :effect (and (given-support ?s pomo))
    )

    (:action pomo-study-tourettes
        :parameters (?s - student)
        :precondition (and (support-req ?s tourettes))
        :effect (and (given-support ?s pomo))
    )

    (:action pomo-study-pomodoro
        :parameters (?s - student)
        :precondition (and (uses-strategy ?s pomodoro))
        :effect (and (given-support ?s pomo))
    )

    (:action pomo-study-teamwork
        :parameters (?s - student)
        :precondition (and (uses-strategy ?s teamwork))
        :effect (and (given-support ?s pomo))
    )


    (:action isolated-study-asc-asd
        :parameters (?s - student)
        :precondition (and (support-req ?s asc-asd))
        :effect (and (given-support ?s isolated))
    )

    (:action isolated-study-social-other
        :parameters (?s - student)
        :precondition (and (support-req ?s social-other))
        :effect (and (given-support ?s isolated))
    )

    
    (:action gamify-asc-asd
        :parameters (?s - student)
        :precondition (and (support-req ?s asc-asd))
        :effect (and (given-support ?s gamify-learning))
    )

    (:action gamify-gamification
        :parameters (?s - student)
        :precondition (and (uses-strategy ?s gamification))
        :effect (and (given-support ?s gamify-learning))
    )

    (:action gamify-blended-learning
        :parameters (?s - student)
        :precondition (and (uses-strategy ?s blended-learning))
        :effect (and (given-support ?s gamify-learning))
    )

    
    
    (:action finish-course
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (done-unit unit-four ?s ?c ?l)
            (takes-course ?s ?c ?l)
        )
        :effect (and
            (finished-course ?s ?c ?l)
            

        )
    )

    (:action do-ec-one-grade-a
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (grade a ?s ?c ?l)
            (not (done-ec ec-one ?s ?c ?l))
        )
        :effect (and 
            (done-ec ec-one ?s ?c ?l)
        )
    )

    (:action do-ec-one-grade-b
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (grade b ?s ?c ?l)
            (not (done-ec ec-one ?s ?c ?l))
        )
        :effect (and 
            (done-ec ec-one ?s ?c ?l)
        )
    )



    (:action do-ec-two
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (grade a ?s ?c ?l)
            (not
                (done-ec ec-two ?s ?c ?l)
            )
            (done-ec ec-one ?s ?c ?l)
        )
        :effect (and 
            (done-ec ec-two ?s ?c ?l)
            

        )
    )

    (:action do-ec-three-grade-a
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (grade a ?s ?c ?l)
            (not (done-ec ec-three ?s ?c ?l))
            (done-ec ec-two ?s ?c ?l)
            (done-unit unit-one ?s ?c ?l)
        )
        :effect (and 
            (done-ec ec-three ?s ?c ?l)
        )
    )

    (:action do-ec-three-grade-b
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (grade b ?s ?c ?l)
            (not (done-ec ec-three ?s ?c ?l))
            (done-ec ec-two ?s ?c ?l)
            (done-unit unit-one ?s ?c ?l)
        )
        :effect (and 
            (done-ec ec-three ?s ?c ?l)
        )
    )

    (:action do-ec-four
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (grade a ?s ?c ?l)
            (not
                (done-ec ec-four ?s ?c ?l)
            )
            (done-ec ec-three ?s ?c ?l)
            (done-unit unit-one ?s ?c ?l)
        )
        :effect (and 
            (done-ec ec-four ?s ?c ?l)
            

        )
    )

    (:action do-ec-five-grade-a
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (grade a ?s ?c ?l)
            (not (done-ec ec-five ?s ?c ?l))
            (done-ec ec-four ?s ?c ?l)
            (done-unit unit-two ?s ?c ?l)
        )
        :effect (and 
            (done-ec ec-five ?s ?c ?l)
        )
    )

    (:action do-ec-five-grade-b
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (grade b ?s ?c ?l)
            (not (done-ec ec-five ?s ?c ?l))
            (done-ec ec-four ?s ?c ?l)
            (done-unit unit-two ?s ?c ?l)
        )
        :effect (and 
            (done-ec ec-five ?s ?c ?l)
        )
    )

    (:action do-ec-six
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (grade a ?s ?c ?l)
            (not
                (done-ec ec-six ?s ?c ?l)
            )
            (done-ec ec-five ?s ?c ?l)
            (done-unit unit-two ?s ?c ?l)
        )
        :effect (and 
            (done-ec ec-six ?s ?c ?l)
            

        )
    )

    (:action do-ec-seven-grade-a
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (grade a ?s ?c ?l)
            (not (done-ec ec-seven ?s ?c ?l))
            (done-ec ec-six ?s ?c ?l)
            (done-unit unit-three ?s ?c ?l)
        )
        :effect (and 
            (done-ec ec-seven ?s ?c ?l)
        )
    )

    (:action do-ec-seven-grade-b
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (grade b ?s ?c ?l)
            (not (done-ec ec-seven ?s ?c ?l))
            (done-ec ec-six ?s ?c ?l)
            (done-unit unit-three ?s ?c ?l)
        )
        :effect (and 
            (done-ec ec-seven ?s ?c ?l)
        )
    )

    (:action do-ec-eight
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (grade a ?s ?c ?l)
            (not
                (done-ec ec-eight ?s ?c ?l)
            )
            (done-ec ec-seven ?s ?c ?l)
            (done-unit unit-three ?s ?c ?l)
        )
        :effect (and 
            (done-ec ec-eight ?s ?c ?l)
            

        )
    )

    (:action do-team-ec-one-grade-a
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (grade a ?s ?c ?l)
            (study-group ?c ?l)
            (uses-strategy ?s teamwork)
            (not (done-ec ec-one ?s ?c ?l))
        )
        :effect (and 
            (done-ec ec-one ?s ?c ?l)
        )
    )

    (:action do-team-ec-one-grade-b
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (grade b ?s ?c ?l)
            (study-group ?c ?l)
            (uses-strategy ?s teamwork)
            (not (done-ec ec-one ?s ?c ?l))
        )
        :effect (and 
            (done-ec ec-one ?s ?c ?l)
        )
    )

    (:action do-team-ec-two
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (grade a ?s ?c ?l)
            (not
                (done-ec ec-two ?s ?c ?l)
            )
            (study-group ?c ?l)
            (uses-strategy ?s teamwork)
            (done-ec ec-one ?s ?c ?l)
        )
        :effect (and 
            (done-ec ec-two ?s ?c ?l)
            

        )
    )

    (:action do-team-ec-three-grade-a
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (grade a ?s ?c ?l)
            (study-group ?c ?l)
            (uses-strategy ?s teamwork)
            (not (done-ec ec-three ?s ?c ?l))
            (done-ec ec-two ?s ?c ?l)
            (done-unit unit-one ?s ?c ?l)
        )
        :effect (and 
            (done-ec ec-three ?s ?c ?l)
        )
    )

    (:action do-team-ec-three-grade-b
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (grade b ?s ?c ?l)
            (study-group ?c ?l)
            (uses-strategy ?s teamwork)
            (not (done-ec ec-three ?s ?c ?l))
            (done-ec ec-two ?s ?c ?l)
            (done-unit unit-one ?s ?c ?l)
        )
        :effect (and 
            (done-ec ec-three ?s ?c ?l)
        )
    )

    (:action do-team-ec-four
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (grade a ?s ?c ?l)
            (study-group ?c ?l)
            (uses-strategy ?s teamwork)
            (not(done-ec ec-four ?s ?c ?l))
            (done-ec ec-three ?s ?c ?l)
            (done-unit unit-one ?s ?c ?l)
        )
        :effect (and 
            (done-ec ec-four ?s ?c ?l)
            

        )
    )

    (:action do-team-ec-five-grade-a
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (grade a ?s ?c ?l)
            (study-group ?c ?l)
            (uses-strategy ?s teamwork)
            (not (done-ec ec-five ?s ?c ?l))
            (done-ec ec-four ?s ?c ?l)
            (done-unit unit-two ?s ?c ?l)
        )
        :effect (and 
            (done-ec ec-five ?s ?c ?l)
        )
    )

    (:action do-team-ec-five-grade-b
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (grade b ?s ?c ?l)
            (study-group ?c ?l)
            (uses-strategy ?s teamwork)
            (not (done-ec ec-five ?s ?c ?l))
            (done-ec ec-four ?s ?c ?l)
            (done-unit unit-two ?s ?c ?l)
        )
        :effect (and 
            (done-ec ec-five ?s ?c ?l)
        )
    )

    (:action do-team-ec-six
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (grade a ?s ?c ?l)
            (study-group ?c ?l)
            (uses-strategy ?s teamwork)
            (not(done-ec ec-six ?s ?c ?l))
            (done-ec ec-five ?s ?c ?l)
            (done-unit unit-two ?s ?c ?l)
        )
        :effect (and 
            (done-ec ec-six ?s ?c ?l)
            

        )
    )

    (:action do-team-ec-seven-grade-a
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (grade a ?s ?c ?l)
            (study-group ?c ?l)
            (uses-strategy ?s teamwork)
            (not (done-ec ec-seven ?s ?c ?l))
            (done-ec ec-six ?s ?c ?l)
            (done-unit unit-three ?s ?c ?l)
        )
        :effect (and 
            (done-ec ec-seven ?s ?c ?l)
        )
    )

    (:action do-team-ec-seven-grade-b
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (grade b ?s ?c ?l)
            (study-group ?c ?l)
            (uses-strategy ?s teamwork)
            (not (done-ec ec-seven ?s ?c ?l))
            (done-ec ec-six ?s ?c ?l)
            (done-unit unit-three ?s ?c ?l)
        )
        :effect (and 
            (done-ec ec-seven ?s ?c ?l)
        )
    )

    (:action do-team-ec-eight
        :parameters (?s - student ?c - course ?l - course-level)
        :precondition (and 
            (takes-course ?s ?c ?l)
            (grade a ?s ?c ?l)
            (study-group ?c ?l)
            (uses-strategy ?s teamwork)
            (not(done-ec ec-eight ?s ?c ?l))
            (done-ec ec-seven ?s ?c ?l)
            (done-unit unit-three ?s ?c ?l)
        )
        :effect (and 
            (done-ec ec-eight ?s ?c ?l)
            

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
            

        )
    )
)
