(define (domain castillo)

(:requirements :strips :negative-preconditions :existential-preconditions)

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
        (can-take-component ?s - student ?c - component)
        (has-completed-ai-course ?s)
    )

    (:action begin-ds-graphs
        :parameters (?s - student)
        :precondition (and 
            (not(has-completed-course ds-graphs ?s))
        )
        :effect (and 
            (can-take-component ?s graphs-basics)
            (can-take-component ?s directed-graphs)
            (can-take-component ?s non-directed-graphs)
            (can-take-component ?s graph-analysis)
        )
    )

    (:action begin-ai-search
        :parameters (?s - student)
        :precondition (and 
            (has-completed-course ds-graphs ?s)
            (not(has-completed-course ai-search ?s))
        )
        :effect (and 
            (can-take-component ?s ai-search-intro)
        )
    )

    (:action begin-ai-blind-search
        :parameters (?s - student)
        :precondition (and 
            (has-completed-component ai-search-intro ?s)
            (not(has-completed-course ai-blind-search ?s))
        )
        :effect (and 
            (not(can-take-component ?s ai-search-intro))
            (can-take-component ?s ai-blind-search-intro)
        )
    )

    (:action begin-ai-dfs-mm
        :parameters (?s - student)
        :precondition (and 
            (has-multimedia ?s)
            (has-completed-course ai-blind-search ?s)
            (not(has-completed-course ai-dfs ?s))
        )
        :effect (and 
            (can-take-component ?s ai-dfs-algorithm-mm)
            (can-take-component ?s ai-dfs-properties)
            (can-take-component ?s ai-dfs-examples)
        )
    )

    (:action begin-ai-dfs-mm-lecture
        :parameters (?s - student)
        :precondition (and 
            (has-multimedia ?s)
            (is-proficient english ?s)
            (has-completed-course ai-blind-search ?s)
            (not(has-completed-course ai-dfs ?s))
        )
        :effect (and 
            (can-take-component ?s ai-dfs-algorithm-mm)
            (can-take-component ?s ai-dfs-properties)
            (can-take-component ?s ai-dfs-examples)
            (can-take-component ?s ai-dfs-lecture)
        )
    )

    (:action begin-ai-dfs
        :parameters (?s - student)
        :precondition (and 
            (has-completed-course ai-blind-search ?s)
            (not(has-completed-course ai-dfs ?s))
        )
        :effect (and 
            (can-take-component ?s ai-dfs-algorithm)
            (can-take-component ?s ai-dfs-properties)
            (can-take-component ?s ai-dfs-examples) 
        ) 
    ) 
 
    (:action begin-ai-dfs-lecture 
        :parameters (?s - student) 
        :precondition (and  
            (has-completed-course ai-blind-search ?s) 
            (not(has-completed-course ai-dfs ?s)) 
        ) 
        :effect (and  
            (can-take-component ?s ai-dfs-algorithm) 
            (can-take-component ?s ai-dfs-properties) 
            (can-take-component ?s ai-dfs-examples) 
            (can-take-component ?s ai-dfs-lecture) 
        ) 
    )

    (:action begin-ai-bfs-mm
        :parameters (?s - student)
        :precondition (and 
            (has-multimedia ?s)
            (has-completed-course ai-dfs ?s)
            (not(has-completed-course ai-bfs ?s))
        )
        :effect (and 
            (can-take-component ?s ai-bfs-algorithm-mm)
            (can-take-component ?s ai-bfs-properties)
            (can-take-component ?s ai-bfs-examples)
        )
    )

    (:action begin-ai-bfs-mm-lecture
        :parameters (?s - student)
        :precondition (and 
            (has-multimedia ?s)
            (is-proficient english ?s)
            (has-completed-course ai-dfs ?s)
            (not(has-completed-course ai-bfs ?s))
        )
        :effect (and 
            (can-take-component ?s ai-bfs-algorithm-mm)
            (can-take-component ?s ai-bfs-properties)
            (can-take-component ?s ai-bfs-examples)
            (can-take-component ?s ai-bfs-lecture)
        )
    )

    (:action begin-ai-bfs
        :parameters (?s - student)
        :precondition (and 
            (has-completed-course ai-dfs ?s)
            (not(has-completed-course ai-bfs ?s))
        )
        :effect (and 
            (can-take-component ?s ai-bfs-algorithm)
            (can-take-component ?s ai-bfs-properties)
            (can-take-component ?s ai-bfs-examples)
        )
    )

    (:action begin-ai-bfs-lecture
        :parameters (?s - student)
        :precondition (and 
            (has-completed-course ai-dfs ?s)
            (not(has-completed-course ai-bfs ?s))
        )
        :effect (and 
            (can-take-component ?s ai-bfs-algorithm)
            (can-take-component ?s ai-bfs-properties)
            (can-take-component ?s ai-bfs-examples)
            (can-take-component ?s ai-bfs-lecture)
        )
    )

    (:action complete-ds-graphs
        :parameters (?s - student)
        :precondition (and 
            (has-completed-component graphs-basics ?s)
            (has-completed-component directed-graphs ?s)
            (has-completed-component non-directed-graphs ?s)
            (has-completed-component graph-analysis ?s)
        )
        :effect (and 
            (has-completed-course ds-graphs ?s)
        )
    )

    (:action complete-ai-dfs-mm
        :parameters (?s - student)
        :precondition (and 
            (has-multimedia ?s)
            (has-completed-course ai-blind-search ?s)
            (not(has-completed-course ai-dfs ?s))
            (has-completed-component ai-dfs-algorithm-mm ?s)
            (has-completed-component ai-dfs-properties ?s)
            (has-completed-component ai-dfs-examples ?s)
        )
        :effect (and 
            (not(can-take-component ?s ai-dfs-algorithm-mm))
            (not(can-take-component ?s ai-dfs-properties))
            (not(can-take-component ?s ai-dfs-examples))
            (has-completed-course ai-dfs ?s)
        )
    )

    (:action complete-ai-dfs-mm-lecture
        :parameters (?s - student)
        :precondition (and 
            (has-multimedia ?s)
            (is-proficient english ?s)
            (has-completed-course ai-blind-search ?s)
            (not(has-completed-course ai-dfs ?s))
            (can-take-component ?s ai-dfs-algorithm-mm)
            (can-take-component ?s ai-dfs-properties)
            (can-take-component ?s ai-dfs-examples)
            (can-take-component ?s ai-dfs-lecture)
        )
        :effect (and 
            (not(can-take-component ?s ai-dfs-algorithm-mm))
            (not(can-take-component ?s ai-dfs-properties))
            (not(can-take-component ?s ai-dfs-examples))
            (not(can-take-component ?s ai-dfs-lecture))
            (has-completed-course ai-dfs ?s)
        )
    )

    (:action complete-ai-dfs
        :parameters (?s - student)
        :precondition (and 
            (has-completed-course ai-blind-search ?s)
            (not(has-completed-course ai-dfs ?s))
            (has-completed-component ai-dfs-algorithm ?s)
            (has-completed-component ai-dfs-properties ?s)
            (has-completed-component ai-dfs-examples ?s)
        )
        :effect (and 
            (has-completed-course ai-dfs ?s)
            (not(can-take-component ?s ai-dfs-algorithm))
            (not(can-take-component ?s ai-dfs-properties))
            (not(can-take-component ?s ai-dfs-examples))
        )
    )

    (:action completed-ai-dfs-lecture
        :parameters (?s - student)
        :precondition (and 
            (has-completed-course ai-blind-search ?s)
            (not(has-completed-course ai-dfs ?s))
            (has-completed-component ai-dfs-algorithm ?s)
            (has-completed-component ai-dfs-properties ?s)
            (has-completed-component ai-dfs-examples ?s)
            (has-completed-component ai-dfs-lecture ?s)
        )
        :effect (and 
            (not(can-take-component ?s ai-dfs-algorithm))
            (not(can-take-component ?s ai-dfs-properties))
            (not(can-take-component ?s ai-dfs-examples))
            (not(can-take-component ?s ai-dfs-lecture))
            (has-completed-course ai-dfs ?s)
        )
    )

    (:action complete-ai-bfs-mm
        :parameters (?s - student)
        :precondition (and 
            (has-multimedia ?s)
            (has-completed-course ai-dfs ?s)
            (not(has-completed-course ai-bfs ?s))
            (has-completed-component ai-bfs-algorithm-mm ?s)
            (has-completed-component ai-bfs-properties ?s)
            (has-completed-component ai-bfs-examples ?s)
        )
        :effect (and 
            (not(can-take-component ?s ai-bfs-algorithm-mm))
            (not(can-take-component ?s ai-bfs-properties))
            (not(can-take-component ?s ai-bfs-examples))
            (has-completed-course ai-bfs ?s)
        )
    )

    (:action begin-ai-bfs-mm-lecture
        :parameters (?s - student)
        :precondition (and 
            (has-multimedia ?s)
            (is-proficient english ?s)
            (has-completed-course ai-dfs ?s)
            (not(has-completed-course ai-bfs ?s))
            (has-completed-component ai-bfs-algorithm-mm ?s)
            (has-completed-component ai-bfs-properties ?s)
            (has-completed-component ai-bfs-examples ?s)
            (has-completed-component ai-bfs-lecture ?s)
        )
        :effect (and 
            (not(can-take-component ?s ai-bfs-algorithm-mm))
            (not(can-take-component ?s ai-bfs-properties))
            (not(can-take-component ?s ai-bfs-examples))
            (not(can-take-component ?s ai-bfs-lecture))
            (has-completed-course ai-bfs ?s)
        )
    )

    (:action complete-ai-bfs
        :parameters (?s - student)
        :precondition (and 
            (has-completed-course ai-dfs ?s)
            (not(has-completed-course ai-bfs ?s))
            (has-completed-component ai-bfs-algorithm ?s)
            (has-completed-component ai-bfs-properties ?s)
            (has-completed-component ai-bfs-examples ?s)
        )
        :effect (and 
            (not(can-take-component ?s ai-bfs-algorithm))
            (not(can-take-component ?s ai-bfs-properties))
            (not(can-take-component ?s ai-bfs-examples))
            (has-completed-course ai-bfs ?s)
        )
    )

    (:action complete-ai-bfs-lecture
        :parameters (?s - student)
        :precondition (and 
            (has-completed-course ai-dfs ?s)
            (not(has-completed-course ai-bfs ?s))
            (has-completed-component ai-bfs-algorithm ?s)
            (has-completed-component ai-bfs-properties ?s)
            (has-completed-component ai-bfs-examples ?s)
            (has-completed-component ai-bfs-lecture ?s)
        )
        :effect (and 
            (not(can-take-component ?s ai-bfs-algorithm))
            (not(can-take-component ?s ai-bfs-properties))
            (not(can-take-component ?s ai-bfs-examples))
            (not(can-take-component ?s ai-bfs-lecture))
            (has-completed-course ai-bfs ?s)
        )
    )

    (:action complete-ai-search-course
        :parameters (?s - student)
        :precondition (and 
            (has-completed-course ds-graphs ?s)
            (has-completed-course ai-blind-search ?s)
            (has-completed-course ai-dfs ?s)
            (has-completed-course ai-bfs ?s)
            (has-completed-component ai-search-intro ?s)
        )
        :effect (and 
            (has-completed-ai-course ?s)
        )
    )

    (:action complete-ai-search
        :parameters (?s - student)
        :precondition (and 
            (has-completed-component ai-search-intro ?s)
        )
        :effect (and 
            (not (can-take-component ?s ai-search-intro))
            (can-take-component ?s ai-blind-search-intro)
        )
    )

    (:action complete-ai-blind-search
        :parameters (?s - student)
        :precondition (and 
            (can-take-component ?s ai-blind-search-intro)
        )
        :effect (and 
            (not(can-take-component ?s ai-blind-search-intro))
            (has-completed-course ai-blind-search ?s)
        )
    )
    
    (:action complete-component
        :parameters (?s - student ?c - component ?k - course)
        :precondition (and 
            (can-take-component ?s ?c)
            (is-component ?c ?k)            
        )
        :effect (and 
            (has-completed-component ?c ?s)
        )
    )
)