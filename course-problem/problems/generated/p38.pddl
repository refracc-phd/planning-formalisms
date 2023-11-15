(define (problem p38) (:domain courses)
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
		isabella charlie - student
	)

	(:init
		(takes-course isabella biology national-four)
		(grade p isabella biology national-four)
		(takes-course isabella biology year-one)
		(grade p isabella biology year-one)
		(takes-course isabella graph-comm year-three)
		(grade p isabella graph-comm year-three)
		(takes-course isabella esol higher)
		(grade a isabella esol higher)
		(takes-course isabella numeracy year-one)
		(grade p isabella numeracy year-one)
		(takes-course isabella philosophy year-one)
		(grade p isabella philosophy year-one)
		(uses-strategy isabella student-led-class)
		(takes-course charlie dance year-two)
		(grade p charlie dance year-two)
		(takes-course charlie cantonese national-five)
		(grade b charlie cantonese national-five)
		(takes-course charlie urdu year-two)
		(grade p charlie urdu year-two)
		(takes-course charlie maths national-four)
		(grade p charlie maths national-four)
		(takes-course charlie mandarin higher)
		(grade c charlie mandarin higher)
		(takes-course charlie textiles year-three)
		(grade p charlie textiles year-three)
		(uses-strategy charlie technological-tools)
	)

	(:goal
		(and
			(finished-course isabella biology national-four)
			(finished-course isabella biology year-one)
			(finished-course isabella graph-comm year-three)
			(finished-course isabella esol higher)
			(finished-course isabella numeracy year-one)
			(finished-course isabella philosophy year-one)
			(given-support isabella improving-comms-workshop)
			(finished-course charlie dance year-two)
			(finished-course charlie cantonese national-five)
			(finished-course charlie urdu year-two)
			(finished-course charlie maths national-four)
			(finished-course charlie mandarin higher)
			(finished-course charlie textiles year-three)
			(given-support charlie tech-assist)
		)
	)
)
