(define (problem blocks-colour) (:domain BLOCKS)
(:objects 
    black pink blue brown green yellow red
)

(:init
    ;todo: put the initial state's facts and numeric values here
    (handempty) 
    (ontable red) (on red yellow) (clear yellow) 
    (ontable brown) (on brown black) (on black green) (clear green) 
    (ontable blue) (on blue pink) (clear pink)

)

(:goal (and
    ;todo: put the goal condition here
    (ontable black) (on black blue) (on blue red)
    (ontable yellow) (on yellow brown) (on brown pink) (on pink green)
    (handempty)
))

;un-comment the following line if metric is needed
;(:metric minimize (???))
)
