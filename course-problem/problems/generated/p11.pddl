(define (problem p11) (:domain courses)
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
		(takes-course oliver music higher)
		(grade c oliver music higher)
		(takes-course oliver french adv-higher)
		(grade d oliver french adv-higher)
		(takes-course oliver home-economics year-one)
		(grade p oliver home-economics year-one)
		(takes-course oliver italian national-four)
		(grade p oliver italian national-four)
		(takes-course oliver gaelic year-two)
		(grade p oliver gaelic year-two)
		(takes-course oliver biology year-one)
		(grade p oliver biology year-one)
	)

	(:goal
		(and
		(finished-course oliver music higher)
		(finished-course oliver french adv-higher)
		(finished-course oliver home-economics year-one)
		(finished-course oliver italian national-four)
		(finished-course oliver gaelic year-two)
		(finished-course oliver biology year-one)
		)
	)
)
