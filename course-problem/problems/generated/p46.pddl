(define (problem p46) (:domain courses)
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
		jack william - student
	)

	(:init
		(takes-course jack cantonese national-four)
		(grade p jack cantonese national-four)
		(takes-course jack history year-two)
		(grade p jack history year-two)
		(takes-course jack english national-five)
		(grade a jack english national-five)
		(takes-course jack business-management higher)
		(grade a jack business-management higher)
		(takes-course jack geography year-two)
		(grade p jack geography year-two)
		(takes-course william chemistry national-four)
		(grade p william chemistry national-four)
		(takes-course william esol adv-higher)
		(grade c william esol adv-higher)
		(takes-course william maths higher)
		(grade d william maths higher)
		(takes-course william biology year-three)
		(grade p william biology year-three)
		(takes-course william chemistry year-one)
		(grade p william chemistry year-one)
		(has-support-need william language)
	)

	(:goal
		(and
			(finished-course jack cantonese national-four)
			(finished-course jack history year-two)
			(finished-course jack english national-five)
			(finished-course jack business-management higher)
			(finished-course jack geography year-two)
			(finished-course william chemistry national-four)
			(finished-course william esol adv-higher)
			(finished-course william maths higher)
			(finished-course william biology year-three)
			(finished-course william chemistry year-one)
			(given-support william reading-group)
			(given-support william tech-assist)
		)
	)
)
