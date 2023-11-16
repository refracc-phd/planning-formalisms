(define (problem p18) (:domain courses)
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
		william oliver - student
	)

	(:init
		(takes-course william mandarin year-three)
		(grade p william mandarin year-three)
		(takes-course william comp-sci national-four)
		(grade p william comp-sci national-four)
		(takes-course william rmps year-two)
		(grade p william rmps year-two)
		(takes-course william politics higher)
		(grade a william politics higher)
		(takes-course william english year-three)
		(grade p william english year-three)
		(uses-strategy william teamwork)
		(takes-course oliver lifeskills year-three)
		(grade p oliver lifeskills year-three)
		(takes-course oliver music-tech year-two)
		(grade p oliver music-tech year-two)
		(takes-course oliver design-manufacture year-one)
		(grade p oliver design-manufacture year-one)
		(takes-course oliver spanish year-three)
		(grade p oliver spanish year-three)
		(takes-course oliver admin-it adv-higher)
		(grade a oliver admin-it adv-higher)
		(has-support-need oliver asc-asd)
		(uses-strategy oliver flex-seating)
	)

	(:goal
		(and
			(finished-course william mandarin year-three)
			(finished-course william comp-sci national-four)
			(finished-course william rmps year-two)
			(finished-course william politics higher)
			(finished-course william english year-three)
			(given-support william improving-comms-workshop)
			(given-support william pomo)
			(finished-course oliver lifeskills year-three)
			(finished-course oliver music-tech year-two)
			(finished-course oliver design-manufacture year-one)
			(finished-course oliver spanish year-three)
			(finished-course oliver admin-it adv-higher)
			(given-support oliver improving-comms-workshop)
			(given-support oliver tech-assist)
			(given-support oliver pomo)
			(given-support oliver gamify-learning)
			(given-support oliver improving-comms-workshop)
		)
	)
)
