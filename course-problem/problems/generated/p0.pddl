(define (problem p0) (:domain courses)
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
		(takes-course olivia textiles year-two)
		(grade p olivia textiles year-two)
		(takes-course olivia history higher)
		(grade c olivia history higher)
		(takes-course olivia spanish higher)
		(grade a olivia spanish higher)
		(takes-course olivia business-management national-five)
		(grade d olivia business-management national-five)
		(takes-course olivia urdu higher)
		(grade b olivia urdu higher)
		(takes-course olivia politics national-five)
		(grade b olivia politics national-five)
		(uses-strategy olivia project-based)
	)

	(:goal
		(and
			(finished-course olivia textiles year-two)
			(finished-course olivia history higher)
			(finished-course olivia spanish higher)
			(finished-course olivia business-management national-five)
			(finished-course olivia urdu higher)
			(finished-course olivia politics national-five)
			(given-support olivia improving-comms-workshop)
		)
	)
)
