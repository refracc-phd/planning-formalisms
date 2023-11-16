(define (problem p11) (:domain courses)
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
		(takes-course olivia italian year-two)
		(grade p olivia italian year-two)
		(takes-course olivia admin-it year-three)
		(grade p olivia admin-it year-three)
		(takes-course olivia chemistry adv-higher)
		(grade d olivia chemistry adv-higher)
		(takes-course olivia mandarin year-two)
		(grade p olivia mandarin year-two)
		(takes-course olivia biology year-three)
		(grade p olivia biology year-three)
		(has-support-need olivia tourettes)
		(uses-strategy olivia gamification)
		(takes-course oliver esol higher)
		(grade c oliver esol higher)
		(takes-course oliver dance higher)
		(grade a oliver dance higher)
		(takes-course oliver admin-it higher)
		(grade d oliver admin-it higher)
		(takes-course oliver music-tech year-two)
		(grade p oliver music-tech year-two)
		(takes-course oliver phys-ed higher)
		(grade c oliver phys-ed higher)
		(uses-strategy oliver teamwork)
	)

	(:goal
		(and
			(finished-course olivia italian year-two)
			(finished-course olivia admin-it year-three)
			(finished-course olivia chemistry adv-higher)
			(finished-course olivia mandarin year-two)
			(finished-course olivia biology year-three)
			(given-support olivia isolated)
			(given-support olivia gamify-learning)
			(given-support olivia gamify-learning)
			(finished-course oliver esol higher)
			(finished-course oliver dance higher)
			(finished-course oliver admin-it higher)
			(finished-course oliver music-tech year-two)
			(finished-course oliver phys-ed higher)
			(given-support oliver improving-comms-workshop)
			(given-support oliver pomo)
		)
	)
)
