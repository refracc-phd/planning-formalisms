(define (problem p24) (:domain courses)
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
		thomas olivia - student
	)

	(:init
		(takes-course thomas music-tech adv-higher)
		(grade c thomas music-tech adv-higher)
		(takes-course thomas business-management adv-higher)
		(grade a thomas business-management adv-higher)
		(takes-course thomas politics year-two)
		(grade p thomas politics year-two)
		(takes-course thomas music higher)
		(grade d thomas music higher)
		(takes-course thomas latin national-four)
		(grade p thomas latin national-four)
		(takes-course thomas practical-woodwork year-one)
		(grade p thomas practical-woodwork year-one)
		(uses-strategy thomas gamification)
		(takes-course olivia maths adv-higher)
		(grade c olivia maths adv-higher)
		(takes-course olivia practical-woodwork national-four)
		(grade p olivia practical-woodwork national-four)
		(takes-course olivia esol higher)
		(grade c olivia esol higher)
		(takes-course olivia politics year-three)
		(grade p olivia politics year-three)
		(takes-course olivia italian year-two)
		(grade p olivia italian year-two)
		(takes-course olivia spanish year-three)
		(grade p olivia spanish year-three)
		(uses-strategy olivia blended-learning)
	)

	(:goal
		(and
		(finished-course thomas music-tech adv-higher)
		(finished-course thomas business-management adv-higher)
		(finished-course thomas politics year-two)
		(finished-course thomas music higher)
		(finished-course thomas latin national-four)
		(finished-course thomas practical-woodwork year-one)
		(given-support thomas gamify-learning)
		(finished-course olivia maths adv-higher)
		(finished-course olivia practical-woodwork national-four)
		(finished-course olivia esol higher)
		(finished-course olivia politics year-three)
		(finished-course olivia italian year-two)
		(finished-course olivia spanish year-three)
		(given-support olivia improving-comms-workshop)
		(given-support olivia tech-assist)
		(given-support olivia gamify-learning)
		)
	)
)
