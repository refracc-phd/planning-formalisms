(define (problem p16) (:domain courses)
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
		emily amelia jack - student
	)

	(:init
		(takes-course emily home-economics national-five)
		(grade c emily home-economics national-five)
		(takes-course emily business-management year-two)
		(grade p emily business-management year-two)
		(takes-course emily german year-one)
		(grade p emily german year-one)
		(takes-course emily textiles year-one)
		(grade p emily textiles year-one)
		(takes-course emily landscape-gardening adv-higher)
		(grade d emily landscape-gardening adv-higher)
		(uses-strategy emily gamification)
		(takes-course amelia latin year-one)
		(grade p amelia latin year-one)
		(takes-course amelia chemistry year-two)
		(grade p amelia chemistry year-two)
		(takes-course amelia history year-three)
		(grade p amelia history year-three)
		(takes-course amelia italian year-two)
		(grade p amelia italian year-two)
		(takes-course amelia biology higher)
		(grade c amelia biology higher)
		(takes-course jack geography higher)
		(grade b jack geography higher)
		(takes-course jack italian year-one)
		(grade p jack italian year-one)
		(takes-course jack mandarin year-two)
		(grade p jack mandarin year-two)
		(takes-course jack history year-one)
		(grade p jack history year-one)
		(takes-course jack gaelic higher)
		(grade d jack gaelic higher)
	)

	(:goal
		(and
			(finished-course emily home-economics national-five)
			(finished-course emily business-management year-two)
			(finished-course emily german year-one)
			(finished-course emily textiles year-one)
			(finished-course emily landscape-gardening adv-higher)
			(given-support emily gamify-learning)
			(finished-course amelia latin year-one)
			(finished-course amelia chemistry year-two)
			(finished-course amelia history year-three)
			(finished-course amelia italian year-two)
			(finished-course amelia biology higher)
			(finished-course jack geography higher)
			(finished-course jack italian year-one)
			(finished-course jack mandarin year-two)
			(finished-course jack history year-one)
			(finished-course jack gaelic higher)
		)
	)
)
