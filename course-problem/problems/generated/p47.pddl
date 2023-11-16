(define (problem p47) (:domain courses)
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
		(takes-course olivia art-design national-four)
		(grade p olivia art-design national-four)
		(takes-course olivia pc-passport year-three)
		(grade p olivia pc-passport year-three)
		(takes-course olivia phys-ed adv-higher)
		(grade d olivia phys-ed adv-higher)
		(takes-course olivia phys-ed year-three)
		(grade p olivia phys-ed year-three)
		(takes-course olivia music-tech national-four)
		(grade p olivia music-tech national-four)
		(has-support-need olivia social-other)
		(takes-course amelia italian adv-higher)
		(grade b amelia italian adv-higher)
		(takes-course amelia gaelic year-one)
		(grade p amelia gaelic year-one)
		(takes-course amelia phys-ed year-three)
		(grade p amelia phys-ed year-three)
		(takes-course amelia comp-sci year-three)
		(grade p amelia comp-sci year-three)
		(takes-course amelia mandarin year-one)
		(grade p amelia mandarin year-one)
	)

	(:goal
		(and
			(finished-course olivia art-design national-four)
			(finished-course olivia pc-passport year-three)
			(finished-course olivia phys-ed adv-higher)
			(finished-course olivia phys-ed year-three)
			(finished-course olivia music-tech national-four)
			(given-support olivia improving-comms-workshop)
			(finished-course amelia italian adv-higher)
			(finished-course amelia gaelic year-one)
			(finished-course amelia phys-ed year-three)
			(finished-course amelia comp-sci year-three)
			(finished-course amelia mandarin year-one)
		)
	)
)
