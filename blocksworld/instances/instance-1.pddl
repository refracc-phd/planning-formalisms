(define (problem blocks-4-0)
(:domain blocks)
(:objects d b a c - block)
(:init (clear c) (clear a) (clear b) (clear d) (ontable c) (ontable a)
 (ontable b) (ontable d) (handempty)
   (= (cost) 0))
(:goal (and (on d c) (on c b) (on b a)))
(:metric minimize (cost))
)