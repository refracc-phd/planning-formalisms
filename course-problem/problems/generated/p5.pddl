(define (problem p5) (:domain courses)
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
		ava - student
	)

	(:init
		(takes-course ava geography adv-higher)
		(grade d ava geography adv-higher)
		(takes-course ava biology national-five)
		(grade a ava biology national-five)
		(takes-course ava graph-comm year-one)
		(grade p ava graph-comm year-one)
		(takes-course ava biology year-one)
		(grade p ava biology year-one)
		(takes-course ava physics year-three)
		(grade p ava physics year-three)
		(takes-course ava home-economics year-one)
		(grade p ava home-economics year-one)
	)

	(:goal
		(and
			(finished-course ava geography adv-higher)
			(finished-course ava biology national-five)
			(finished-course ava graph-comm year-one)
			(finished-course ava biology year-one)
			(finished-course ava physics year-three)
			(finished-course ava home-economics year-one)
		)
	)
)
