(define (problem blocks-4-0)
(:domain blocks)
(:objects d b a c a1 a2 a3 a4)
(:init (agent a1) (agent a2) (agent a3) (agent a4) (handempty a1) (handempty a2) (handempty a3) (handempty a4) (clear c) (clear a) (clear b) (clear d) (ontable c) (ontable a)
 (ontable b) (ontable d))
(:goal (and (on d c) (on c b) (on b a)))
)
