(define (problem blocks-10-2)
(:domain blocks)
(:objects b g e d f h i a c j a1 a2 a3 a4)
(:init (agent a1) (agent a2) (agent a3) (agent a4) (handempty a1) (handempty a2) (handempty a3) (handempty a4) (clear j) (clear c) (ontable a) (ontable c) (on j i) (on i h) (on h f)
 (on f d) (on d e) (on e g) (on g b) (on b a))
(:goal (and (on b e) (on e i) (on i g) (on g h) (on h c) (on c a) (on a f)
            (on f j) (on j d)))
)