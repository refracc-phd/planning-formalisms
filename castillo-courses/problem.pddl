(define (problem paper) (:domain castillo)

(:objects 
    ds-graphs ai-search ai-blind-search ai-dfs ai-bfs - course
    ai-search-intro ai-blind-search-intro ai-dfs-algorithm-mm ai-dfs-algorithm ai-dfs-properties ai-dfs-lecture ai-dfs-examples ai-bfs-algorithm-mm ai-bfs-algorithm ai-bfs-properties ai-bfs-lecture ai-bfs-examples - component
    jack jane peter - student
    english - language
)

(:init
    (is-component ai-search-intro ai-search)
    (is-component ai-blind-search-intro ai-blind-search)
    (is-component ai-dfs-algorithm-mm ai-dfs)
    (is-component ai-dfs-algorithm ai-dfs)
    (is-component ai-dfs-properties ai-dfs)
    (is-component ai-dfs-lecture ai-dfs)
    (is-component ai-dfs-examples ai-dfs)
    (is-component ai-bfs-algorithm-mm ai-bfs)
    (is-component ai-bfs-algorithm ai-bfs)
    (is-component ai-bfs-properties ai-bfs)
    (is-component ai-bfs-lecture ai-bfs)
    (is-component ai-bfs-examples ai-bfs)

    (is-prerequisite ai-dfs ai-bfs)
    (is-prerequisite ai-blind-search ai-dfs)
    (is-prerequisite ai-search ai-blind-search)
    (is-prerequisite ds-graphs ai-search)

    (is-proficient english peter)
    (is-proficient english jane)

    (has-completed-course ds-graphs peter)
    (has-completed-course ds-graphs jane)

    (has-multimedia peter)
    (has-multimedia jane)
)

(:goal (and
    ;todo: put the goal condition here
))

;un-comment the following line if metric is needed
;(:metric minimize (???))
)
