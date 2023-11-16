(define (problem p40) (:domain courses)
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
		olivia oliver william - student
	)

	(:init
		(takes-course olivia politics year-three)
		(grade p olivia politics year-three)
		(takes-course olivia drama higher)
		(grade a olivia drama higher)
		(takes-course olivia modern-studies higher)
		(grade c olivia modern-studies higher)
		(takes-course olivia music-tech national-four)
		(grade p olivia music-tech national-four)
		(takes-course olivia dance year-two)
		(grade p olivia dance year-two)
		(uses-strategy olivia teamwork)
		(takes-course oliver english year-three)
		(grade p oliver english year-three)
		(takes-course oliver lifeskills national-four)
		(grade p oliver lifeskills national-four)
		(takes-course oliver spanish higher)
		(grade a oliver spanish higher)
		(takes-course oliver cantonese year-two)
		(grade p oliver cantonese year-two)
		(takes-course oliver italian year-two)
		(grade p oliver italian year-two)
		(uses-strategy oliver student-led-class)
		(takes-course william graph-comm year-two)
		(grade p william graph-comm year-two)
		(takes-course william urdu year-two)
		(grade p william urdu year-two)
		(takes-course william home-economics national-four)
		(grade p william home-economics national-four)
		(takes-course william english year-one)
		(grade p william english year-one)
		(takes-course william italian year-one)
		(grade p william italian year-one)
	)

	(:goal
		(and
			(finished-course olivia politics year-three)
			(finished-course olivia drama higher)
			(finished-course olivia modern-studies higher)
			(finished-course olivia music-tech national-four)
			(finished-course olivia dance year-two)
			(given-support olivia improving-comms-workshop)
			(given-support olivia pomo)
			(finished-course oliver english year-three)
			(finished-course oliver lifeskills national-four)
			(finished-course oliver spanish higher)
			(finished-course oliver cantonese year-two)
			(finished-course oliver italian year-two)
			(given-support oliver improving-comms-workshop)
			(finished-course william graph-comm year-two)
			(finished-course william urdu year-two)
			(finished-course william home-economics national-four)
			(finished-course william english year-one)
			(finished-course william italian year-one)
		)
	)
)
