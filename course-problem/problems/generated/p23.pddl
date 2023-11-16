(define (problem p23) (:domain courses)
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
		olivia william jack - student
	)

	(:init
		(takes-course olivia graph-comm year-one)
		(grade p olivia graph-comm year-one)
		(takes-course olivia philosophy national-four)
		(grade p olivia philosophy national-four)
		(takes-course olivia politics year-three)
		(grade p olivia politics year-three)
		(takes-course olivia biology higher)
		(grade c olivia biology higher)
		(takes-course olivia home-economics adv-higher)
		(grade a olivia home-economics adv-higher)
		(takes-course william landscape-gardening year-two)
		(grade p william landscape-gardening year-two)
		(takes-course william italian national-four)
		(grade p william italian national-four)
		(takes-course william spanish higher)
		(grade b william spanish higher)
		(takes-course william modern-studies higher)
		(grade c william modern-studies higher)
		(takes-course william phys-ed adv-higher)
		(grade b william phys-ed adv-higher)
		(takes-course jack urdu adv-higher)
		(grade d jack urdu adv-higher)
		(takes-course jack design-manufacture year-two)
		(grade p jack design-manufacture year-two)
		(takes-course jack home-economics year-one)
		(grade p jack home-economics year-one)
		(takes-course jack physics year-one)
		(grade p jack physics year-one)
		(takes-course jack pc-passport year-one)
		(grade p jack pc-passport year-one)
		(uses-strategy jack project-based)
	)

	(:goal
		(and
			(finished-course olivia graph-comm year-one)
			(finished-course olivia philosophy national-four)
			(finished-course olivia politics year-three)
			(finished-course olivia biology higher)
			(finished-course olivia home-economics adv-higher)
			(finished-course william landscape-gardening year-two)
			(finished-course william italian national-four)
			(finished-course william spanish higher)
			(finished-course william modern-studies higher)
			(finished-course william phys-ed adv-higher)
			(finished-course jack urdu adv-higher)
			(finished-course jack design-manufacture year-two)
			(finished-course jack home-economics year-one)
			(finished-course jack physics year-one)
			(finished-course jack pc-passport year-one)
			(given-support jack improving-comms-workshop)
		)
	)
)
