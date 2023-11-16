(define (problem p31) (:domain courses)
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
		emily - student
	)

	(:init
		(takes-course emily chemistry higher)
		(grade c emily chemistry higher)
		(takes-course emily home-economics higher)
		(grade d emily home-economics higher)
		(takes-course emily modern-studies adv-higher)
		(grade b emily modern-studies adv-higher)
		(takes-course emily drama national-four)
		(grade p emily drama national-four)
		(takes-course emily music-tech year-three)
		(grade p emily music-tech year-three)
		(has-support-need emily language)
		(uses-strategy emily technological-tools)
	)

	(:goal
		(and
			(finished-course emily chemistry higher)
			(finished-course emily home-economics higher)
			(finished-course emily modern-studies adv-higher)
			(finished-course emily drama national-four)
			(finished-course emily music-tech year-three)
			(given-support emily reading-group)
			(given-support emily tech-assist)
			(given-support emily tech-assist)
		)
	)
)
