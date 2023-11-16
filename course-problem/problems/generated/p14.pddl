(define (problem p14) (:domain courses)
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
		olivia emily - student
	)

	(:init
		(takes-course olivia textiles higher)
		(grade d olivia textiles higher)
		(takes-course olivia practical-woodwork national-four)
		(grade p olivia practical-woodwork national-four)
		(takes-course olivia phys-ed national-five)
		(grade a olivia phys-ed national-five)
		(takes-course olivia rmps year-one)
		(grade p olivia rmps year-one)
		(takes-course olivia landscape-gardening national-four)
		(grade p olivia landscape-gardening national-four)
		(has-support-need olivia deaf-hearing)
		(uses-strategy olivia blended-learning)
		(takes-course emily dance year-one)
		(grade p emily dance year-one)
		(takes-course emily history year-two)
		(grade p emily history year-two)
		(takes-course emily design-manufacture adv-higher)
		(grade a emily design-manufacture adv-higher)
		(takes-course emily german higher)
		(grade a emily german higher)
		(takes-course emily geography higher)
		(grade c emily geography higher)
	)

	(:goal
		(and
			(finished-course olivia textiles higher)
			(finished-course olivia practical-woodwork national-four)
			(finished-course olivia phys-ed national-five)
			(finished-course olivia rmps year-one)
			(finished-course olivia landscape-gardening national-four)
			(given-support olivia tech-assist)
			(given-support olivia improving-comms-workshop)
			(given-support olivia tech-assist)
			(given-support olivia gamify-learning)
			(finished-course emily dance year-one)
			(finished-course emily history year-two)
			(finished-course emily design-manufacture adv-higher)
			(finished-course emily german higher)
			(finished-course emily geography higher)
		)
	)
)
