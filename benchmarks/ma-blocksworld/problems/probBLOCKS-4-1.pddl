(define (problem blocks-4-1)
(:domain blocks)
(:objects a c d b  a1 a2 a3 a4)
(:init (agent a1) (agent a2) (agent a3) (agent a4) (handempty a1) (handempty a2) (handempty a3) (handempty a4) (clear b) (ontable d) (on b c) (on c a) (on a d))
(:goal (and (on d c) (on c a) (on a b)))
)