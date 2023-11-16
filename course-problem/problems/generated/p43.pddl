(define (problem p43) (:domain courses)
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
		olivia - student
	)

	(:init
		(takes-course olivia spanish national-five)
		(grade a olivia spanish national-five)
		(takes-course olivia italian higher)
		(grade c olivia italian higher)
		(takes-course olivia spanish year-three)
		(grade p olivia spanish year-three)
		(takes-course olivia politics adv-higher)
		(grade a olivia politics adv-higher)
		(takes-course olivia german adv-higher)
		(grade a olivia german adv-higher)
	)

	(:goal
		(and
			(finished-course olivia spanish national-five)
			(finished-course olivia italian higher)
			(finished-course olivia spanish year-three)
			(finished-course olivia politics adv-higher)
			(finished-course olivia german adv-higher)
		)
	)
)
