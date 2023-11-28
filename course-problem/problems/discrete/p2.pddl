(define (problem p2) (:domain courses)
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
		(takes-course william cantonese national-five)
		(grade b william cantonese national-five)
		(takes-course william spanish year-one)
		(grade p william spanish year-one)
		(takes-course william dance year-two)
		(grade p william dance year-two)
		(takes-course william chemistry adv-higher)
		(grade c william chemistry adv-higher)
		(uses-strategy william gamification)
	)

	(:goal
		(and
			(finished-course william cantonese national-five)
			(finished-course william spanish year-one)
			(finished-course william dance year-two)
			(finished-course william chemistry adv-higher)
			(given-support william gamify-learning)
		)
	)
)
