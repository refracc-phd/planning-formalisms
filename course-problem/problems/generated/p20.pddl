(define (problem p20) (:domain courses)
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
		amelia william olivia - student
	)

	(:init
		(takes-course amelia landscape-gardening national-four)
		(grade p amelia landscape-gardening national-four)
		(takes-course amelia design-manufacture higher)
		(grade b amelia design-manufacture higher)
		(takes-course amelia chemistry national-five)
		(grade a amelia chemistry national-five)
		(takes-course amelia textiles year-three)
		(grade p amelia textiles year-three)
		(takes-course amelia urdu national-five)
		(grade d amelia urdu national-five)
		(takes-course william numeracy year-one)
		(grade p william numeracy year-one)
		(takes-course william urdu year-two)
		(grade p william urdu year-two)
		(takes-course william practical-woodwork year-two)
		(grade p william practical-woodwork year-two)
		(takes-course william urdu higher)
		(grade a william urdu higher)
		(takes-course william gaelic year-three)
		(grade p william gaelic year-three)
		(uses-strategy william gamification)
		(takes-course olivia practical-woodwork national-four)
		(grade p olivia practical-woodwork national-four)
		(takes-course olivia rmps adv-higher)
		(grade b olivia rmps adv-higher)
		(takes-course olivia spanish national-five)
		(grade c olivia spanish national-five)
		(takes-course olivia french national-four)
		(grade p olivia french national-four)
		(takes-course olivia business-management national-five)
		(grade d olivia business-management national-five)
		(uses-strategy olivia technological-tools)
	)

	(:goal
		(and
			(finished-course amelia landscape-gardening national-four)
			(finished-course amelia design-manufacture higher)
			(finished-course amelia chemistry national-five)
			(finished-course amelia textiles year-three)
			(finished-course amelia urdu national-five)
			(finished-course william numeracy year-one)
			(finished-course william urdu year-two)
			(finished-course william practical-woodwork year-two)
			(finished-course william urdu higher)
			(finished-course william gaelic year-three)
			(given-support william gamify-learning)
			(finished-course olivia practical-woodwork national-four)
			(finished-course olivia rmps adv-higher)
			(finished-course olivia spanish national-five)
			(finished-course olivia french national-four)
			(finished-course olivia business-management national-five)
			(given-support olivia tech-assist)
		)
	)
)
