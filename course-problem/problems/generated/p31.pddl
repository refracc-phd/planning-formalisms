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
		olivia isabella sophia - student
	)

	(:init
		(takes-course olivia cantonese higher)
		(grade d olivia cantonese higher)
		(takes-course olivia latin year-three)
		(grade p olivia latin year-three)
		(takes-course olivia pc-passport national-four)
		(grade p olivia pc-passport national-four)
		(takes-course olivia italian year-two)
		(grade p olivia italian year-two)
		(takes-course olivia landscape-gardening year-two)
		(grade p olivia landscape-gardening year-two)
		(takes-course olivia latin adv-higher)
		(grade d olivia latin adv-higher)
		(takes-course isabella practical-woodwork year-one)
		(grade p isabella practical-woodwork year-one)
		(takes-course isabella landscape-gardening national-five)
		(grade d isabella landscape-gardening national-five)
		(takes-course isabella comp-sci year-one)
		(grade p isabella comp-sci year-one)
		(takes-course isabella lifeskills year-two)
		(grade p isabella lifeskills year-two)
		(takes-course isabella german national-five)
		(grade d isabella german national-five)
		(takes-course isabella design-manufacture national-five)
		(grade a isabella design-manufacture national-five)
		(uses-strategy isabella technological-tools)
		(takes-course sophia pc-passport national-five)
		(grade c sophia pc-passport national-five)
		(takes-course sophia german higher)
		(grade d sophia german higher)
		(takes-course sophia urdu national-four)
		(grade p sophia urdu national-four)
		(takes-course sophia business-management year-two)
		(grade p sophia business-management year-two)
		(takes-course sophia drama adv-higher)
		(grade d sophia drama adv-higher)
		(takes-course sophia gaelic year-three)
		(grade p sophia gaelic year-three)
		(uses-strategy sophia teamwork)
	)

	(:goal
		(and
			(finished-course olivia cantonese higher)
			(finished-course olivia latin year-three)
			(finished-course olivia pc-passport national-four)
			(finished-course olivia italian year-two)
			(finished-course olivia landscape-gardening year-two)
			(finished-course olivia latin adv-higher)
			(finished-course isabella practical-woodwork year-one)
			(finished-course isabella landscape-gardening national-five)
			(finished-course isabella comp-sci year-one)
			(finished-course isabella lifeskills year-two)
			(finished-course isabella german national-five)
			(finished-course isabella design-manufacture national-five)
			(given-support isabella tech-assist)
			(finished-course sophia pc-passport national-five)
			(finished-course sophia german higher)
			(finished-course sophia urdu national-four)
			(finished-course sophia business-management year-two)
			(finished-course sophia drama adv-higher)
			(finished-course sophia gaelic year-three)
			(given-support sophia improving-comms-workshop)
			(given-support sophia pomo)
		)
	)
)
