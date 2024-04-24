(define (problem p1) (:domain courses)
(:objects
adv-higher higher national-five national-four - nq
year-one year-two year-three - bge
english esol - english-literacy
drama art-design music music-tech dance - expressive-arts
phys-ed home-economics textiles - health-wellbeing
maths numeracy lifeskills - maths-numeracy
french german spanish italian latin mandarin cantonese gaelic urdu - languages
biology chemistry physics landscape-gardening - sciences
geography history modern-studies rmps philosophy politics - social-subjects
admin-it business-management comp-sci design-manufacture graph-comm practical-woodwork pc-passport - technologies
harry james - student
)

(:init
(takes-course harry politics year-two)
(grade p harry politics year-two)
(takes-course harry physics year-one)
(grade p harry physics year-one)
(takes-course harry admin-it national-five)
(grade b harry admin-it national-five)
(takes-course harry business-management adv-higher)
(grade b harry business-management adv-higher)
(takes-course harry italian year-three)
(grade p harry italian year-three)
(uses-strategy harry student-led-class)
(takes-course james phys-ed year-two)
(grade p james phys-ed year-two)
(takes-course james drama national-five)
(grade d james drama national-five)
(takes-course james graph-comm year-three)
(grade p james graph-comm year-three)
(takes-course james numeracy year-one)
(grade p james numeracy year-one)
(takes-course james rmps national-five)
(grade d james rmps national-five)
(uses-strategy james teamwork)
)

(:goal
(and
<HYPOTHESIS>
)
)

)
