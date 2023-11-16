(define (problem p1) (:domain courses)
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
		oliver jack emily olivia - student
	)

	(:init
		(takes-course oliver urdu higher)
		(grade b oliver urdu higher)
		(takes-course oliver numeracy higher)
		(grade b oliver numeracy higher)
		(takes-course oliver comp-sci higher)
		(grade d oliver comp-sci higher)
		(takes-course oliver dance year-two)
		(grade p oliver dance year-two)
		(takes-course oliver philosophy year-one)
		(grade p oliver philosophy year-one)
		(uses-strategy oliver gamification)
		(takes-course jack numeracy year-three)
		(grade p jack numeracy year-three)
		(takes-course jack gaelic national-five)
		(grade b jack gaelic national-five)
		(takes-course jack graph-comm year-three)
		(grade p jack graph-comm year-three)
		(takes-course jack rmps year-three)
		(grade p jack rmps year-three)
		(takes-course jack phys-ed national-five)
		(grade b jack phys-ed national-five)
		(takes-course emily french national-five)
		(grade c emily french national-five)
		(takes-course emily mandarin adv-higher)
		(grade a emily mandarin adv-higher)
		(takes-course emily comp-sci year-one)
		(grade p emily comp-sci year-one)
		(takes-course emily biology year-one)
		(grade p emily biology year-one)
		(takes-course emily rmps year-one)
		(grade p emily rmps year-one)
		(takes-course olivia gaelic year-one)
		(grade p olivia gaelic year-one)
		(takes-course olivia graph-comm adv-higher)
		(grade a olivia graph-comm adv-higher)
		(takes-course olivia physics year-two)
		(grade p olivia physics year-two)
		(takes-course olivia english year-three)
		(grade p olivia english year-three)
		(takes-course olivia art-design year-two)
		(grade p olivia art-design year-two)
		(uses-strategy olivia blended-learning)
	)

	(:goal
		(and
			(finished-course oliver urdu higher)
			(finished-course oliver numeracy higher)
			(finished-course oliver comp-sci higher)
			(finished-course oliver dance year-two)
			(finished-course oliver philosophy year-one)
			(given-support oliver gamify-learning)
			(finished-course jack numeracy year-three)
			(finished-course jack gaelic national-five)
			(finished-course jack graph-comm year-three)
			(finished-course jack rmps year-three)
			(finished-course jack phys-ed national-five)
			(finished-course emily french national-five)
			(finished-course emily mandarin adv-higher)
			(finished-course emily comp-sci year-one)
			(finished-course emily biology year-one)
			(finished-course emily rmps year-one)
			(finished-course olivia gaelic year-one)
			(finished-course olivia graph-comm adv-higher)
			(finished-course olivia physics year-two)
			(finished-course olivia english year-three)
			(finished-course olivia art-design year-two)
			(given-support olivia improving-comms-workshop)
			(given-support olivia tech-assist)
			(given-support olivia gamify-learning)
		)
	)
)
