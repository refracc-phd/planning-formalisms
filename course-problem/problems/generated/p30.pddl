(define (problem p30) (:domain courses)
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
		oliver olivia - student
	)

	(:init
		(takes-course oliver practical-woodwork national-four)
		(grade p oliver practical-woodwork national-four)
		(takes-course oliver italian higher)
		(grade d oliver italian higher)
		(takes-course oliver spanish higher)
		(grade d oliver spanish higher)
		(takes-course oliver english year-three)
		(grade p oliver english year-three)
		(takes-course oliver biology adv-higher)
		(grade b oliver biology adv-higher)
		(has-support-need oliver asc-asd)
		(uses-strategy oliver blended-learning)
		(takes-course olivia spanish national-five)
		(grade a olivia spanish national-five)
		(takes-course olivia physics year-three)
		(grade p olivia physics year-three)
		(takes-course olivia urdu year-three)
		(grade p olivia urdu year-three)
		(takes-course olivia chemistry adv-higher)
		(grade c olivia chemistry adv-higher)
		(takes-course olivia graph-comm year-three)
		(grade p olivia graph-comm year-three)
	)

	(:goal
		(and
			(finished-course oliver practical-woodwork national-four)
			(finished-course oliver italian higher)
			(finished-course oliver spanish higher)
			(finished-course oliver english year-three)
			(finished-course oliver biology adv-higher)
			(given-support oliver improving-comms-workshop)
			(given-support oliver tech-assist)
			(given-support oliver pomo)
			(given-support oliver gamify-learning)
			(given-support oliver improving-comms-workshop)
			(given-support oliver tech-assist)
			(given-support oliver gamify-learning)
			(finished-course olivia spanish national-five)
			(finished-course olivia physics year-three)
			(finished-course olivia urdu year-three)
			(finished-course olivia chemistry adv-higher)
			(finished-course olivia graph-comm year-three)
		)
	)
)
