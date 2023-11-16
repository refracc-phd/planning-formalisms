(define (problem p49) (:domain courses)
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
		(takes-course emily graph-comm national-five)
		(grade a emily graph-comm national-five)
		(takes-course emily pc-passport national-four)
		(grade p emily pc-passport national-four)
		(takes-course emily numeracy national-five)
		(grade a emily numeracy national-five)
		(takes-course emily lifeskills year-one)
		(grade p emily lifeskills year-one)
		(takes-course emily german year-three)
		(grade p emily german year-three)
		(uses-strategy emily student-led-class)
	)

	(:goal
		(and
			(finished-course emily graph-comm national-five)
			(finished-course emily pc-passport national-four)
			(finished-course emily numeracy national-five)
			(finished-course emily lifeskills year-one)
			(finished-course emily german year-three)
			(given-support emily improving-comms-workshop)
		)
	)
)
