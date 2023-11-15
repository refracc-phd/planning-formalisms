(define (problem p21) (:domain courses)
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
		(takes-course grace esol year-one)
		(grade p grace esol year-one)
		(takes-course grace german year-one)
		(grade p grace german year-one)
		(takes-course grace biology national-four)
		(grade p grace biology national-four)
		(takes-course grace music-tech national-five)
		(grade c grace music-tech national-five)
		(takes-course grace spanish national-five)
		(grade a grace spanish national-five)
		(takes-course grace comp-sci national-five)
		(grade a grace comp-sci national-five)
	)

	(:goal
		(and
			(finished-course grace esol year-one)
			(finished-course grace german year-one)
			(finished-course grace biology national-four)
			(finished-course grace music-tech national-five)
			(finished-course grace spanish national-five)
			(finished-course grace comp-sci national-five)
		)
	)
)
