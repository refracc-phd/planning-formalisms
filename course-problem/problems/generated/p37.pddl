(define (problem p37) (:domain courses)
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
		amelia olivia - student
	)

	(:init
		(takes-course amelia politics year-three)
		(grade p amelia politics year-three)
		(takes-course amelia chemistry adv-higher)
		(grade a amelia chemistry adv-higher)
		(takes-course amelia design-manufacture higher)
		(grade d amelia design-manufacture higher)
		(takes-course amelia mandarin year-three)
		(grade p amelia mandarin year-three)
		(takes-course amelia modern-studies higher)
		(grade b amelia modern-studies higher)
		(takes-course olivia modern-studies higher)
		(grade d olivia modern-studies higher)
		(takes-course olivia spanish year-three)
		(grade p olivia spanish year-three)
		(takes-course olivia home-economics national-five)
		(grade a olivia home-economics national-five)
		(takes-course olivia chemistry year-one)
		(grade p olivia chemistry year-one)
		(takes-course olivia pc-passport year-one)
		(grade p olivia pc-passport year-one)
		(has-support-need olivia social-other)
	)

	(:goal
		(and
			(finished-course amelia politics year-three)
			(finished-course amelia chemistry adv-higher)
			(finished-course amelia design-manufacture higher)
			(finished-course amelia mandarin year-three)
			(finished-course amelia modern-studies higher)
			(finished-course olivia modern-studies higher)
			(finished-course olivia spanish year-three)
			(finished-course olivia home-economics national-five)
			(finished-course olivia chemistry year-one)
			(finished-course olivia pc-passport year-one)
			(given-support olivia improving-comms-workshop)
		)
	)
)
