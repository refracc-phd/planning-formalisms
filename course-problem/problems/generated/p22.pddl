(define (problem p22) (:domain courses)
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
		amelia william - student
	)

	(:init
		(takes-course amelia music-tech national-four)
		(grade p amelia music-tech national-four)
		(takes-course amelia lifeskills adv-higher)
		(grade c amelia lifeskills adv-higher)
		(takes-course amelia admin-it year-two)
		(grade p amelia admin-it year-two)
		(takes-course amelia graph-comm year-three)
		(grade p amelia graph-comm year-three)
		(takes-course amelia history higher)
		(grade c amelia history higher)
		(uses-strategy amelia teamwork)
		(takes-course william rmps year-one)
		(grade p william rmps year-one)
		(takes-course william politics year-two)
		(grade p william politics year-two)
		(takes-course william spanish higher)
		(grade c william spanish higher)
		(takes-course william cantonese year-one)
		(grade p william cantonese year-one)
		(takes-course william business-management year-two)
		(grade p william business-management year-two)
		(uses-strategy william project-based)
	)

	(:goal
		(and
			(finished-course amelia music-tech national-four)
			(finished-course amelia lifeskills adv-higher)
			(finished-course amelia admin-it year-two)
			(finished-course amelia graph-comm year-three)
			(finished-course amelia history higher)
			(given-support amelia improving-comms-workshop)
			(given-support amelia pomo)
			(finished-course william rmps year-one)
			(finished-course william politics year-two)
			(finished-course william spanish higher)
			(finished-course william cantonese year-one)
			(finished-course william business-management year-two)
			(given-support william improving-comms-workshop)
		)
	)
)
