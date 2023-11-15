(define (problem p29) (:domain courses)
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
		william - student
	)

	(:init
		(takes-course william numeracy year-two)
		(grade p william numeracy year-two)
		(takes-course william admin-it national-five)
		(grade b william admin-it national-five)
		(takes-course william lifeskills higher)
		(grade a william lifeskills higher)
		(takes-course william graph-comm year-three)
		(grade p william graph-comm year-three)
		(takes-course william esol year-three)
		(grade p william esol year-three)
		(takes-course william maths higher)
		(grade a william maths higher)
	)

	(:goal
		(and
		(finished-course william numeracy year-two)
		(finished-course william admin-it national-five)
		(finished-course william lifeskills higher)
		(finished-course william graph-comm year-three)
		(finished-course william esol year-three)
		(finished-course william maths higher)
		)
	)
)
