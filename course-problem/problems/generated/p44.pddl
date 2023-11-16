(define (problem p44) (:domain courses)
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
		oliver - student
	)

	(:init
		(takes-course oliver politics adv-higher)
		(grade a oliver politics adv-higher)
		(takes-course oliver biology national-five)
		(grade d oliver biology national-five)
		(takes-course oliver home-economics year-two)
		(grade p oliver home-economics year-two)
		(takes-course oliver maths year-one)
		(grade p oliver maths year-one)
		(takes-course oliver drama year-three)
		(grade p oliver drama year-three)
	)

	(:goal
		(and
			(finished-course oliver politics adv-higher)
			(finished-course oliver biology national-five)
			(finished-course oliver home-economics year-two)
			(finished-course oliver maths year-one)
			(finished-course oliver drama year-three)
		)
	)
)
