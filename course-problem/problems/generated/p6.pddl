(define (problem p6) (:domain courses)
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
		(takes-course olivia italian year-three)
		(grade p olivia italian year-three)
		(takes-course olivia urdu adv-higher)
		(grade b olivia urdu adv-higher)
		(takes-course olivia drama adv-higher)
		(grade b olivia drama adv-higher)
		(takes-course olivia drama year-three)
		(grade p olivia drama year-three)
		(takes-course olivia esol adv-higher)
		(grade d olivia esol adv-higher)
		(takes-course amelia admin-it adv-higher)
		(grade b amelia admin-it adv-higher)
		(takes-course amelia lifeskills adv-higher)
		(grade a amelia lifeskills adv-higher)
		(takes-course amelia textiles year-three)
		(grade p amelia textiles year-three)
		(takes-course amelia landscape-gardening year-one)
		(grade p amelia landscape-gardening year-one)
		(takes-course amelia physics adv-higher)
		(grade b amelia physics adv-higher)
	)

	(:goal
		(and
			(finished-course olivia italian year-three)
			(finished-course olivia urdu adv-higher)
			(finished-course olivia drama adv-higher)
			(finished-course olivia drama year-three)
			(finished-course olivia esol adv-higher)
			(finished-course amelia admin-it adv-higher)
			(finished-course amelia lifeskills adv-higher)
			(finished-course amelia textiles year-three)
			(finished-course amelia landscape-gardening year-one)
			(finished-course amelia physics adv-higher)
		)
	)
)
