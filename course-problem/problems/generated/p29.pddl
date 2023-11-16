(define (problem p29) (:domain courses)
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
		(takes-course amelia phys-ed higher)
		(grade b amelia phys-ed higher)
		(takes-course amelia english national-four)
		(grade p amelia english national-four)
		(takes-course amelia biology higher)
		(grade d amelia biology higher)
		(takes-course amelia german higher)
		(grade d amelia german higher)
		(takes-course amelia chemistry year-three)
		(grade p amelia chemistry year-three)
		(uses-strategy amelia flex-seating)
	)

	(:goal
		(and
			(finished-course amelia phys-ed higher)
			(finished-course amelia english national-four)
			(finished-course amelia biology higher)
			(finished-course amelia german higher)
			(finished-course amelia chemistry year-three)
			(given-support amelia improving-comms-workshop)
		)
	)
)
