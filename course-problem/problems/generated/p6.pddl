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
		charlie james - student
	)

	(:init
		(takes-course charlie latin year-one)
		(grade p charlie latin year-one)
		(takes-course charlie urdu year-one)
		(grade p charlie urdu year-one)
		(takes-course charlie biology national-four)
		(grade p charlie biology national-four)
		(takes-course charlie lifeskills year-one)
		(grade p charlie lifeskills year-one)
		(takes-course charlie mandarin year-three)
		(grade p charlie mandarin year-three)
		(takes-course charlie history higher)
		(grade c charlie history higher)
		(takes-course james gaelic national-five)
		(grade d james gaelic national-five)
		(takes-course james philosophy national-five)
		(grade b james philosophy national-five)
		(takes-course james french national-five)
		(grade b james french national-five)
		(takes-course james pc-passport national-four)
		(grade p james pc-passport national-four)
		(takes-course james textiles adv-higher)
		(grade b james textiles adv-higher)
		(takes-course james german higher)
		(grade d james german higher)
		(has-support-need james deaf-hearing)
	)

	(:goal
		(and
			(finished-course charlie latin year-one)
			(finished-course charlie urdu year-one)
			(finished-course charlie biology national-four)
			(finished-course charlie lifeskills year-one)
			(finished-course charlie mandarin year-three)
			(finished-course charlie history higher)
			(finished-course james gaelic national-five)
			(finished-course james philosophy national-five)
			(finished-course james french national-five)
			(finished-course james pc-passport national-four)
			(finished-course james textiles adv-higher)
			(finished-course james german higher)
			(given-support james tech-assist)
		)
	)
)
