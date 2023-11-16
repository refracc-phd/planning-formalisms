(define (problem p7) (:domain courses)
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
		emily oliver - student
	)

	(:init
		(takes-course emily philosophy national-four)
		(grade p emily philosophy national-four)
		(takes-course emily cantonese higher)
		(grade b emily cantonese higher)
		(takes-course emily lifeskills year-one)
		(grade p emily lifeskills year-one)
		(takes-course emily textiles year-three)
		(grade p emily textiles year-three)
		(takes-course emily esol year-three)
		(grade p emily esol year-three)
		(takes-course oliver german year-two)
		(grade p oliver german year-two)
		(takes-course oliver lifeskills year-three)
		(grade p oliver lifeskills year-three)
		(takes-course oliver landscape-gardening national-five)
		(grade c oliver landscape-gardening national-five)
		(takes-course oliver graph-comm national-four)
		(grade p oliver graph-comm national-four)
		(takes-course oliver design-manufacture year-two)
		(grade p oliver design-manufacture year-two)
		(has-support-need oliver language)
	)

	(:goal
		(and
			(finished-course emily philosophy national-four)
			(finished-course emily cantonese higher)
			(finished-course emily lifeskills year-one)
			(finished-course emily textiles year-three)
			(finished-course emily esol year-three)
			(finished-course oliver german year-two)
			(finished-course oliver lifeskills year-three)
			(finished-course oliver landscape-gardening national-five)
			(finished-course oliver graph-comm national-four)
			(finished-course oliver design-manufacture year-two)
			(given-support oliver reading-group)
			(given-support oliver tech-assist)
		)
	)
)
