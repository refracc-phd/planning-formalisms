(define (problem p8) (:domain courses)
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
		(takes-course william politics year-one)
		(grade p william politics year-one)
		(takes-course william chemistry adv-higher)
		(grade a william chemistry adv-higher)
		(takes-course william music national-five)
		(grade c william music national-five)
		(takes-course william chemistry adv-higher)
		(grade c william chemistry adv-higher)
		(study-group chemistry adv-higher)
		(uses-strategy william teamwork)
		(takes-course oliver physics national-four)
		(grade p oliver physics national-four)
		(takes-course oliver business-management national-five)
		(grade b oliver business-management national-five)
		(takes-course oliver philosophy year-one)
		(grade p oliver philosophy year-one)
		(takes-course oliver dance year-three)
		(grade p oliver dance year-three)
		(uses-strategy oliver gamification)
	)

	(:goal
		(and
			(finished-course william politics year-one)
			(finished-course william chemistry adv-higher)
			(finished-course william music national-five)
			(finished-course william chemistry adv-higher)
			(given-support william improving-comms-workshop)
			(given-support william pomo)
			(finished-course oliver physics national-four)
			(finished-course oliver business-management national-five)
			(finished-course oliver philosophy year-one)
			(finished-course oliver dance year-three)
			(given-support oliver gamify-learning)
		)
	)
)
