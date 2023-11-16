(define (problem p12) (:domain courses)
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
		jack emily olivia - student
	)

	(:init
		(takes-course jack gaelic higher)
		(grade d jack gaelic higher)
		(takes-course jack lifeskills year-one)
		(grade p jack lifeskills year-one)
		(takes-course jack music-tech year-one)
		(grade p jack music-tech year-one)
		(takes-course jack physics year-one)
		(grade p jack physics year-one)
		(takes-course jack biology year-three)
		(grade p jack biology year-three)
		(has-support-need jack tourettes)
		(takes-course emily lifeskills national-four)
		(grade p emily lifeskills national-four)
		(takes-course emily chemistry higher)
		(grade b emily chemistry higher)
		(takes-course emily phys-ed year-one)
		(grade p emily phys-ed year-one)
		(takes-course emily graph-comm year-one)
		(grade p emily graph-comm year-one)
		(takes-course emily history higher)
		(grade b emily history higher)
		(has-support-need emily asc-asd)
		(takes-course olivia italian national-four)
		(grade p olivia italian national-four)
		(takes-course olivia italian year-two)
		(grade p olivia italian year-two)
		(takes-course olivia comp-sci national-five)
		(grade d olivia comp-sci national-five)
		(takes-course olivia art-design national-five)
		(grade b olivia art-design national-five)
		(takes-course olivia textiles adv-higher)
		(grade b olivia textiles adv-higher)
		(has-support-need olivia tourettes)
	)

	(:goal
		(and
			(finished-course jack gaelic higher)
			(finished-course jack lifeskills year-one)
			(finished-course jack music-tech year-one)
			(finished-course jack physics year-one)
			(finished-course jack biology year-three)
			(given-support jack isolated)
			(given-support jack gamify-learning)
			(finished-course emily lifeskills national-four)
			(finished-course emily chemistry higher)
			(finished-course emily phys-ed year-one)
			(finished-course emily graph-comm year-one)
			(finished-course emily history higher)
			(given-support emily improving-comms-workshop)
			(given-support emily tech-assist)
			(given-support emily pomo)
			(given-support emily gamify-learning)
			(finished-course olivia italian national-four)
			(finished-course olivia italian year-two)
			(finished-course olivia comp-sci national-five)
			(finished-course olivia art-design national-five)
			(finished-course olivia textiles adv-higher)
			(given-support olivia isolated)
			(given-support olivia gamify-learning)
		)
	)
)
