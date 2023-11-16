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
		emily olivia william - student
	)

	(:init
		(takes-course emily german adv-higher)
		(grade a emily german adv-higher)
		(takes-course emily music-tech year-one)
		(grade p emily music-tech year-one)
		(takes-course emily mandarin year-three)
		(grade p emily mandarin year-three)
		(takes-course emily landscape-gardening adv-higher)
		(grade c emily landscape-gardening adv-higher)
		(takes-course emily design-manufacture adv-higher)
		(grade a emily design-manufacture adv-higher)
		(has-support-need emily language)
		(takes-course olivia admin-it year-three)
		(grade p olivia admin-it year-three)
		(takes-course olivia gaelic adv-higher)
		(grade c olivia gaelic adv-higher)
		(takes-course olivia phys-ed year-three)
		(grade p olivia phys-ed year-three)
		(takes-course olivia esol adv-higher)
		(grade a olivia esol adv-higher)
		(takes-course olivia practical-woodwork year-two)
		(grade p olivia practical-woodwork year-two)
		(takes-course william chemistry adv-higher)
		(grade b william chemistry adv-higher)
		(takes-course william pc-passport year-one)
		(grade p william pc-passport year-one)
		(takes-course william music year-one)
		(grade p william music year-one)
		(takes-course william german year-two)
		(grade p william german year-two)
		(takes-course william physics national-four)
		(grade p william physics national-four)
		(uses-strategy william flex-seating)
	)

	(:goal
		(and
			(finished-course emily german adv-higher)
			(finished-course emily music-tech year-one)
			(finished-course emily mandarin year-three)
			(finished-course emily landscape-gardening adv-higher)
			(finished-course emily design-manufacture adv-higher)
			(given-support emily reading-group)
			(given-support emily tech-assist)
			(finished-course olivia admin-it year-three)
			(finished-course olivia gaelic adv-higher)
			(finished-course olivia phys-ed year-three)
			(finished-course olivia esol adv-higher)
			(finished-course olivia practical-woodwork year-two)
			(finished-course william chemistry adv-higher)
			(finished-course william pc-passport year-one)
			(finished-course william music year-one)
			(finished-course william german year-two)
			(finished-course william physics national-four)
			(given-support william improving-comms-workshop)
		)
	)
)
