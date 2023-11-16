(define (problem p33) (:domain courses)
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
		amelia oliver - student
	)

	(:init
		(takes-course amelia pc-passport adv-higher)
		(grade a amelia pc-passport adv-higher)
		(takes-course amelia physics national-four)
		(grade p amelia physics national-four)
		(takes-course amelia english national-five)
		(grade b amelia english national-five)
		(takes-course amelia esol adv-higher)
		(grade b amelia esol adv-higher)
		(takes-course amelia gaelic national-four)
		(grade p amelia gaelic national-four)
		(takes-course oliver numeracy adv-higher)
		(grade d oliver numeracy adv-higher)
		(takes-course oliver design-manufacture year-one)
		(grade p oliver design-manufacture year-one)
		(takes-course oliver esol higher)
		(grade b oliver esol higher)
		(takes-course oliver urdu year-two)
		(grade p oliver urdu year-two)
		(takes-course oliver lifeskills higher)
		(grade b oliver lifeskills higher)
		(uses-strategy oliver project-based)
	)

	(:goal
		(and
			(finished-course amelia pc-passport adv-higher)
			(finished-course amelia physics national-four)
			(finished-course amelia english national-five)
			(finished-course amelia esol adv-higher)
			(finished-course amelia gaelic national-four)
			(finished-course oliver numeracy adv-higher)
			(finished-course oliver design-manufacture year-one)
			(finished-course oliver esol higher)
			(finished-course oliver urdu year-two)
			(finished-course oliver lifeskills higher)
			(given-support oliver improving-comms-workshop)
		)
	)
)
