(define (problem BLOCKS-5-2)
(:domain BLOCKS)
(:objects A C E B D a1 a2 a3 a4)
(:INIT (agent a1) (agent a2) (agent a3) (agent a4) (HANDEMPTY a1) (HANDEMPTY a2) (HANDEMPTY a3) (HANDEMPTY a4) (CLEAR D) (ONTABLE B) (ON D E) (ON E C) (ON C A) (ON A B))
(:goal (AND (ON D C) (ON C B) (ON B E) (ON E A)))
)
