(define (problem p18) (:domain courses)
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
		grace - student
	)

	(:init
		(takes-course grace phys-ed higher)
		(grade c grace phys-ed higher)
		(takes-course grace history national-five)
		(grade c grace history national-five)
		(takes-course grace design-manufacture year-one)
		(grade p grace design-manufacture year-one)
		(takes-course grace textiles year-two)
		(grade p grace textiles year-two)
		(takes-course grace italian year-one)
		(grade p grace italian year-one)
		(takes-course grace chemistry adv-higher)
		(grade d grace chemistry adv-higher)
	)

	(:goal
		(and
		(finished-course grace phys-ed higher)
		(finished-course grace history national-five)
		(finished-course grace design-manufacture year-one)
		(finished-course grace textiles year-two)
		(finished-course grace italian year-one)
		(finished-course grace chemistry adv-higher)
		)
	)
)
