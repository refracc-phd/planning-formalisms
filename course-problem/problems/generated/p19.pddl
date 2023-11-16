(define (problem p19) (:domain courses)
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
		emily jack - student
	)

	(:init
		(takes-course emily art-design higher)
		(grade b emily art-design higher)
		(takes-course emily drama national-four)
		(grade p emily drama national-four)
		(takes-course emily phys-ed national-five)
		(grade c emily phys-ed national-five)
		(takes-course emily modern-studies higher)
		(grade a emily modern-studies higher)
		(takes-course emily design-manufacture national-five)
		(grade d emily design-manufacture national-five)
		(takes-course jack music year-two)
		(grade p jack music year-two)
		(takes-course jack french national-four)
		(grade p jack french national-four)
		(takes-course jack spanish year-three)
		(grade p jack spanish year-three)
		(takes-course jack geography year-one)
		(grade p jack geography year-one)
		(takes-course jack spanish national-five)
		(grade b jack spanish national-five)
		(has-support-need jack social-other)
	)

	(:goal
		(and
			(finished-course emily art-design higher)
			(finished-course emily drama national-four)
			(finished-course emily phys-ed national-five)
			(finished-course emily modern-studies higher)
			(finished-course emily design-manufacture national-five)
			(finished-course jack music year-two)
			(finished-course jack french national-four)
			(finished-course jack spanish year-three)
			(finished-course jack geography year-one)
			(finished-course jack spanish national-five)
			(given-support jack improving-comms-workshop)
		)
	)
)
