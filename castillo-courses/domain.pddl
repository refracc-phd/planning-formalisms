
(define (domain castillo)

(:requirements :strips :negative-preconditions)

    (:types 
        course
        student
        language
        component
    )

    (:predicates
        (is-component ?c - component ?k - course)
        (is-prerequisite ?c - course ?k - course)
        (is-proficient ?l - language ?s - student)
        (has-completed-component ?c - component ?s - student)
        (has-completed-course ?c - course ?s - student)
        (has-multimedia ?s - student)
    )

    ;define actions here
    (:action begin-ai-search
        :parameters (?s - student)
        :precondition (and 
            (has-completed-course ds-graphs ?s)
            (not(has-completed-course ds-graphs ?s))
        )
        :effect (and 
            (has-completed ds-graphs ?s)
        )
    )
)