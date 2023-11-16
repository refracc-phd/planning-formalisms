(define (problem p26) (:domain courses)
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
		emily - student
	)

	(:init
		(takes-course emily pc-passport higher)
		(grade c emily pc-passport higher)
		(takes-course emily practical-woodwork national-five)
		(grade a emily practical-woodwork national-five)
		(takes-course emily music-tech year-two)
		(grade p emily music-tech year-two)
		(takes-course emily drama national-five)
		(grade b emily drama national-five)
		(takes-course emily maths national-five)
		(grade a emily maths national-five)
	)

	(:goal
		(and
			(finished-course emily pc-passport higher)
			(finished-course emily practical-woodwork national-five)
			(finished-course emily music-tech year-two)
			(finished-course emily drama national-five)
			(finished-course emily maths national-five)
		)
	)
)
