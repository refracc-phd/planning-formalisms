(define (problem p3) (:domain courses)
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
		olivia - student
	)

	(:init
		(takes-course olivia geography national-four)
		(grade p olivia geography national-four)
		(takes-course olivia admin-it national-four)
		(grade p olivia admin-it national-four)
		(takes-course olivia history year-three)
		(grade p olivia history year-three)
		(takes-course olivia physics year-two)
		(grade p olivia physics year-two)
		(takes-course olivia english year-three)
		(grade p olivia english year-three)
		(uses-strategy olivia teamwork)
	)

	(:goal
		(and
			(finished-course olivia geography national-four)
			(finished-course olivia admin-it national-four)
			(finished-course olivia history year-three)
			(finished-course olivia physics year-two)
			(finished-course olivia english year-three)
			(given-support olivia improving-comms-workshop)
			(given-support olivia pomo)
		)
	)
)
