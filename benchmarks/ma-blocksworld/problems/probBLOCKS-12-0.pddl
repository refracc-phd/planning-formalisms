(define (problem blocks-12-0)
(:domain blocks)
(:objects i d b e k g a f c j l h a1 a2 a3 a4)
(:init (agent a1) (agent a2) (agent a3) (agent a4) (handempty a1) (handempty a2) (handempty a3) (handempty a4) (clear h) (clear l) (clear j) (ontable c) (ontable f) (ontable j)
 (on h a) (on a g) (on g k) (on k e) (on e b) (on b d) (on d i) (on i c)
 (on l f) )
(:goal (and (on i c) (on c b) (on b l) (on l d) (on d j) (on j e) (on e k)
            (on k f) (on f a) (on a h) (on h g)))
)