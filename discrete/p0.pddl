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
		lily - student
	)

	(:init
		(takes-course lily lifeskills year-three)
		(grade p lily lifeskills year-three)

		(takes-course lily cantonese national-four)
		(grade p lily cantonese national-four)

		(takes-course lily urdu national-five)
		(grade b lily urdu national-five)

		(takes-course lily comp-sci national-four)
		(grade p lily comp-sci national-four)

		(takes-course lily pc-passport higher)
		(grade c lily pc-passport higher)
		
		(uses-strategy lily flex-seating)
	)

	(:goal
		(and
			(finished-course lily lifeskills year-three)
			(finished-course lily cantonese national-four)
			(finished-course lily urdu national-five)
			(finished-course lily comp-sci national-four)
			(finished-course lily pc-passport higher)
			(given-support lily improving-comms-workshop)
		)
	)

	(:metric minimize (cost))
)
