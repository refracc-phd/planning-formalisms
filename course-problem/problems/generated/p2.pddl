(define (problem p2) (:domain courses)
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
		olivia amelia - student
	)

	(:init
		(takes-course olivia numeracy year-one)
		(grade p olivia numeracy year-one)
		(takes-course olivia german year-three)
		(grade p olivia german year-three)
		(takes-course olivia rmps adv-higher)
		(grade b olivia rmps adv-higher)
		(takes-course olivia chemistry year-three)
		(grade p olivia chemistry year-three)
		(takes-course olivia music higher)
		(grade a olivia music higher)
		(takes-course olivia gaelic year-one)
		(grade p olivia gaelic year-one)
		(takes-course amelia english higher)
		(grade c amelia english higher)
		(takes-course amelia biology national-five)
		(grade c amelia biology national-five)
		(takes-course amelia spanish year-one)
		(grade p amelia spanish year-one)
		(takes-course amelia practical-woodwork higher)
		(grade d amelia practical-woodwork higher)
		(takes-course amelia modern-studies higher)
		(grade c amelia modern-studies higher)
		(takes-course amelia french year-one)
		(grade p amelia french year-one)
		(has-support-need amelia social-other)
	)

	(:goal
		(and
			(finished-course olivia numeracy year-one)
			(finished-course olivia german year-three)
			(finished-course olivia rmps adv-higher)
			(finished-course olivia chemistry year-three)
			(finished-course olivia music higher)
			(finished-course olivia gaelic year-one)
			(finished-course amelia english higher)
			(finished-course amelia biology national-five)
			(finished-course amelia spanish year-one)
			(finished-course amelia practical-woodwork higher)
			(finished-course amelia modern-studies higher)
			(finished-course amelia french year-one)
			(given-support amelia improving-comms-workshop)
		)
	)
)
