(define (problem p4) (:domain courses)
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
jack william alexander aurora pippa - student
)

(:init
(takes-course jack textiles higher)
(grade d jack textiles higher)
(takes-course jack french national-five)
(grade a jack french national-five)
(takes-course jack chemistry higher)
(grade a jack chemistry higher)
(takes-course jack physics national-four)
(grade p jack physics national-four)
(takes-course jack admin-it year-two)
(grade p jack admin-it year-two)
(uses-strategy jack teamwork)
(takes-course william latin national-five)
(grade b william latin national-five)
(takes-course william cantonese higher)
(grade b william cantonese higher)
(takes-course william dance higher)
(grade a william dance higher)
(takes-course william geography year-three)
(grade p william geography year-three)
(takes-course william english higher)
(grade a william english higher)
(uses-strategy william gamification)
(takes-course alexander practical-woodwork year-one)
(grade p alexander practical-woodwork year-one)
(takes-course alexander drama national-four)
(grade p alexander drama national-four)
(takes-course alexander biology year-one)
(grade p alexander biology year-one)
(takes-course alexander business-management adv-higher)
(grade c alexander business-management adv-higher)
(takes-course alexander chemistry adv-higher)
(grade b alexander chemistry adv-higher)
(uses-strategy alexander student-led-class)
(takes-course aurora music higher)
(grade d aurora music higher)
(takes-course aurora urdu higher)
(grade b aurora urdu higher)
(takes-course aurora latin year-one)
(grade p aurora latin year-one)
(takes-course aurora textiles year-one)
(grade p aurora textiles year-one)
(takes-course aurora chemistry year-two)
(grade p aurora chemistry year-two)
(uses-strategy aurora flex-seating)
(takes-course pippa cantonese adv-higher)
(grade a pippa cantonese adv-higher)
(takes-course pippa history national-four)
(grade p pippa history national-four)
(takes-course pippa drama year-two)
(grade p pippa drama year-two)
(takes-course pippa mandarin adv-higher)
(grade a pippa mandarin adv-higher)
(takes-course pippa maths adv-higher)
(grade d pippa maths adv-higher)
(uses-strategy pippa flex-seating)
)

(:goal
(and
<HYPOTHESIS>
)
)

)
