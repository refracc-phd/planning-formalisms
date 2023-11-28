(define (problem p1) (:domain courses)
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
		william - student
	)

	(:init
		(takes-course william urdu adv-higher)
		(grade c william urdu adv-higher)
		(takes-course william chemistry adv-higher)
		(grade b william chemistry adv-higher)
		(takes-course william politics adv-higher)
		(grade b william politics adv-higher)
		(takes-course william comp-sci year-three)
		(grade p william comp-sci year-three)
		(uses-strategy william project-based)
	)

	(:goal
		(and
			(finished-course william urdu adv-higher)
			(finished-course william chemistry adv-higher)
			(finished-course william politics adv-higher)
			(finished-course william comp-sci year-three)
			(given-support william improving-comms-workshop)
		)
	)
)
