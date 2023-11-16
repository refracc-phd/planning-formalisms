(define (problem p27) (:domain courses)
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
		amelia - student
	)

	(:init
		(takes-course amelia politics year-three)
		(grade p amelia politics year-three)
		(takes-course amelia maths year-two)
		(grade p amelia maths year-two)
		(takes-course amelia music year-three)
		(grade p amelia music year-three)
		(takes-course amelia landscape-gardening year-one)
		(grade p amelia landscape-gardening year-one)
		(takes-course amelia dance adv-higher)
		(grade b amelia dance adv-higher)
	)

	(:goal
		(and
			(finished-course amelia politics year-three)
			(finished-course amelia maths year-two)
			(finished-course amelia music year-three)
			(finished-course amelia landscape-gardening year-one)
			(finished-course amelia dance adv-higher)
		)
	)
)
