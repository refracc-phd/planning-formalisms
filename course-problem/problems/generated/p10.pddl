(define (problem p10) (:domain courses)
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
		olivia oliver - student
	)

	(:init
		(takes-course olivia music-tech adv-higher)
		(grade c olivia music-tech adv-higher)
		(takes-course olivia gaelic higher)
		(grade c olivia gaelic higher)
		(takes-course olivia pc-passport national-four)
		(grade p olivia pc-passport national-four)
		(takes-course olivia business-management adv-higher)
		(grade b olivia business-management adv-higher)
		(takes-course olivia dance higher)
		(grade d olivia dance higher)
		(has-support-need olivia tourettes)
		(takes-course oliver lifeskills year-one)
		(grade p oliver lifeskills year-one)
		(takes-course oliver gaelic national-five)
		(grade b oliver gaelic national-five)
		(takes-course oliver music adv-higher)
		(grade d oliver music adv-higher)
		(takes-course oliver rmps year-two)
		(grade p oliver rmps year-two)
		(takes-course oliver chemistry national-five)
		(grade d oliver chemistry national-five)
	)

	(:goal
		(and
			(finished-course olivia music-tech adv-higher)
			(finished-course olivia gaelic higher)
			(finished-course olivia pc-passport national-four)
			(finished-course olivia business-management adv-higher)
			(finished-course olivia dance higher)
			(given-support olivia isolated)
			(given-support olivia gamify-learning)
			(finished-course oliver lifeskills year-one)
			(finished-course oliver gaelic national-five)
			(finished-course oliver music adv-higher)
			(finished-course oliver rmps year-two)
			(finished-course oliver chemistry national-five)
		)
	)
)
