(define (problem p39) (:domain courses)
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
		(takes-course amelia comp-sci national-five)
		(grade b amelia comp-sci national-five)
		(takes-course amelia german adv-higher)
		(grade c amelia german adv-higher)
		(takes-course amelia german higher)
		(grade b amelia german higher)
		(takes-course amelia french national-four)
		(grade p amelia french national-four)
		(takes-course amelia esol national-four)
		(grade p amelia esol national-four)
		(uses-strategy amelia teamwork)
		(takes-course oliver landscape-gardening year-two)
		(grade p oliver landscape-gardening year-two)
		(takes-course oliver history national-four)
		(grade p oliver history national-four)
		(takes-course oliver home-economics year-two)
		(grade p oliver home-economics year-two)
		(takes-course oliver dance year-one)
		(grade p oliver dance year-one)
		(takes-course oliver pc-passport year-two)
		(grade p oliver pc-passport year-two)
		(uses-strategy oliver blended-learning)
	)

	(:goal
		(and
			(finished-course amelia comp-sci national-five)
			(finished-course amelia german adv-higher)
			(finished-course amelia german higher)
			(finished-course amelia french national-four)
			(finished-course amelia esol national-four)
			(given-support amelia improving-comms-workshop)
			(given-support amelia pomo)
			(finished-course oliver landscape-gardening year-two)
			(finished-course oliver history national-four)
			(finished-course oliver home-economics year-two)
			(finished-course oliver dance year-one)
			(finished-course oliver pc-passport year-two)
			(given-support oliver improving-comms-workshop)
			(given-support oliver tech-assist)
			(given-support oliver gamify-learning)
		)
	)
)
