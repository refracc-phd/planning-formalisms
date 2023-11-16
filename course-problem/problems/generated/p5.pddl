(define (problem p5) (:domain courses)
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
		amelia oliver emily - student
	)

	(:init
		(takes-course amelia pc-passport year-two)
		(grade p amelia pc-passport year-two)
		(takes-course amelia landscape-gardening year-three)
		(grade p amelia landscape-gardening year-three)
		(takes-course amelia landscape-gardening year-two)
		(grade p amelia landscape-gardening year-two)
		(takes-course amelia landscape-gardening national-four)
		(grade p amelia landscape-gardening national-four)
		(takes-course amelia practical-woodwork national-four)
		(grade p amelia practical-woodwork national-four)
		(uses-strategy amelia project-based)
		(takes-course oliver gaelic year-two)
		(grade p oliver gaelic year-two)
		(takes-course oliver chemistry national-five)
		(grade a oliver chemistry national-five)
		(takes-course oliver rmps year-three)
		(grade p oliver rmps year-three)
		(takes-course oliver art-design year-one)
		(grade p oliver art-design year-one)
		(takes-course oliver spanish national-four)
		(grade p oliver spanish national-four)
		(takes-course emily design-manufacture national-five)
		(grade d emily design-manufacture national-five)
		(takes-course emily pc-passport year-one)
		(grade p emily pc-passport year-one)
		(takes-course emily philosophy year-two)
		(grade p emily philosophy year-two)
		(takes-course emily landscape-gardening national-four)
		(grade p emily landscape-gardening national-four)
		(takes-course emily french year-one)
		(grade p emily french year-one)
		(uses-strategy emily blended-learning)
	)

	(:goal
		(and
			(finished-course amelia pc-passport year-two)
			(finished-course amelia landscape-gardening year-three)
			(finished-course amelia landscape-gardening year-two)
			(finished-course amelia landscape-gardening national-four)
			(finished-course amelia practical-woodwork national-four)
			(given-support amelia improving-comms-workshop)
			(finished-course oliver gaelic year-two)
			(finished-course oliver chemistry national-five)
			(finished-course oliver rmps year-three)
			(finished-course oliver art-design year-one)
			(finished-course oliver spanish national-four)
			(finished-course emily design-manufacture national-five)
			(finished-course emily pc-passport year-one)
			(finished-course emily philosophy year-two)
			(finished-course emily landscape-gardening national-four)
			(finished-course emily french year-one)
			(given-support emily improving-comms-workshop)
			(given-support emily tech-assist)
			(given-support emily gamify-learning)
		)
	)
)
