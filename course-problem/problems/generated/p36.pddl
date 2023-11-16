(define (problem p36) (:domain courses)
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
		(takes-course william italian year-three)
		(grade p william italian year-three)
		(takes-course william german national-four)
		(grade p william german national-four)
		(takes-course william practical-woodwork adv-higher)
		(grade b william practical-woodwork adv-higher)
		(takes-course william comp-sci year-three)
		(grade p william comp-sci year-three)
		(has-support-need william blind-visual)
	)

	(:goal
		(and
			(finished-course william numeracy year-two)
			(finished-course william italian year-three)
			(finished-course william german national-four)
			(finished-course william practical-woodwork adv-higher)
			(finished-course william comp-sci year-three)
			(given-support william tech-assist)
			(given-support william reading-group)
		)
	)
)
