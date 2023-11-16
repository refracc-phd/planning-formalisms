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
		amelia william - student
	)

	(:init
		(takes-course amelia practical-woodwork national-five)
		(grade b amelia practical-woodwork national-five)
		(takes-course amelia maths year-one)
		(grade p amelia maths year-one)
		(takes-course amelia numeracy year-two)
		(grade p amelia numeracy year-two)
		(takes-course amelia drama adv-higher)
		(grade a amelia drama adv-higher)
		(takes-course amelia english national-five)
		(grade d amelia english national-five)
		(has-support-need amelia social-other)
		(uses-strategy amelia technological-tools)
		(takes-course william art-design higher)
		(grade c william art-design higher)
		(takes-course william business-management year-three)
		(grade p william business-management year-three)
		(takes-course william rmps year-three)
		(grade p william rmps year-three)
		(takes-course william french higher)
		(grade a william french higher)
		(takes-course william lifeskills year-one)
		(grade p william lifeskills year-one)
		(uses-strategy william student-led-class)
	)

	(:goal
		(and
			(finished-course amelia practical-woodwork national-five)
			(finished-course amelia maths year-one)
			(finished-course amelia numeracy year-two)
			(finished-course amelia drama adv-higher)
			(finished-course amelia english national-five)
			(given-support amelia improving-comms-workshop)
			(given-support amelia tech-assist)
			(finished-course william art-design higher)
			(finished-course william business-management year-three)
			(finished-course william rmps year-three)
			(finished-course william french higher)
			(finished-course william lifeskills year-one)
			(given-support william improving-comms-workshop)
		)
	)
)
