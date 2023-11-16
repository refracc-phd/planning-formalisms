(define (problem p8) (:domain courses)
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
		olivia oliver amelia emily - student
	)

	(:init
		(takes-course olivia politics year-one)
		(grade p olivia politics year-one)
		(takes-course olivia lifeskills adv-higher)
		(grade d olivia lifeskills adv-higher)
		(takes-course olivia physics year-two)
		(grade p olivia physics year-two)
		(takes-course olivia philosophy year-one)
		(grade p olivia philosophy year-one)
		(takes-course olivia esol national-four)
		(grade p olivia esol national-four)
		(uses-strategy olivia flex-seating)
		(takes-course oliver italian year-two)
		(grade p oliver italian year-two)
		(takes-course oliver gaelic year-two)
		(grade p oliver gaelic year-two)
		(takes-course oliver gaelic national-five)
		(grade b oliver gaelic national-five)
		(takes-course oliver modern-studies year-one)
		(grade p oliver modern-studies year-one)
		(takes-course oliver philosophy year-three)
		(grade p oliver philosophy year-three)
		(takes-course amelia business-management year-three)
		(grade p amelia business-management year-three)
		(takes-course amelia geography year-three)
		(grade p amelia geography year-three)
		(takes-course amelia phys-ed year-two)
		(grade p amelia phys-ed year-two)
		(takes-course amelia physics higher)
		(grade b amelia physics higher)
		(takes-course amelia esol national-four)
		(grade p amelia esol national-four)
		(uses-strategy amelia student-led-class)
		(takes-course emily physics year-one)
		(grade p emily physics year-one)
		(takes-course emily esol adv-higher)
		(grade b emily esol adv-higher)
		(takes-course emily maths national-four)
		(grade p emily maths national-four)
		(takes-course emily gaelic year-three)
		(grade p emily gaelic year-three)
		(takes-course emily history year-one)
		(grade p emily history year-one)
		(uses-strategy emily gamification)
	)

	(:goal
		(and
			(finished-course olivia politics year-one)
			(finished-course olivia lifeskills adv-higher)
			(finished-course olivia physics year-two)
			(finished-course olivia philosophy year-one)
			(finished-course olivia esol national-four)
			(given-support olivia improving-comms-workshop)
			(finished-course oliver italian year-two)
			(finished-course oliver gaelic year-two)
			(finished-course oliver gaelic national-five)
			(finished-course oliver modern-studies year-one)
			(finished-course oliver philosophy year-three)
			(finished-course amelia business-management year-three)
			(finished-course amelia geography year-three)
			(finished-course amelia phys-ed year-two)
			(finished-course amelia physics higher)
			(finished-course amelia esol national-four)
			(given-support amelia improving-comms-workshop)
			(finished-course emily physics year-one)
			(finished-course emily esol adv-higher)
			(finished-course emily maths national-four)
			(finished-course emily gaelic year-three)
			(finished-course emily history year-one)
			(given-support emily gamify-learning)
		)
	)
)
