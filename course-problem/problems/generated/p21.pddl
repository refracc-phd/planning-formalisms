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
		oliver - student
	)

	(:init
		(takes-course oliver mandarin national-five)
		(grade d oliver mandarin national-five)
		(takes-course oliver esol adv-higher)
		(grade b oliver esol adv-higher)
		(takes-course oliver modern-studies higher)
		(grade d oliver modern-studies higher)
		(takes-course oliver latin year-one)
		(grade p oliver latin year-one)
		(takes-course oliver design-manufacture higher)
		(grade b oliver design-manufacture higher)
		(uses-strategy oliver student-led-class)
	)

	(:goal
		(and
			(finished-course oliver mandarin national-five)
			(finished-course oliver esol adv-higher)
			(finished-course oliver modern-studies higher)
			(finished-course oliver latin year-one)
			(finished-course oliver design-manufacture higher)
			(given-support oliver improving-comms-workshop)
		)
	)
)
