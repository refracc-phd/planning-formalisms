(define (problem p13) (:domain courses)
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
		jack - student
	)

	(:init
		(takes-course jack italian national-five)
		(grade a jack italian national-five)
		(takes-course jack modern-studies year-one)
		(grade p jack modern-studies year-one)
		(takes-course jack modern-studies national-four)
		(grade p jack modern-studies national-four)
		(takes-course jack lifeskills national-four)
		(grade p jack lifeskills national-four)
		(takes-course jack numeracy adv-higher)
		(grade c jack numeracy adv-higher)
	)

	(:goal
		(and
			(finished-course jack italian national-five)
			(finished-course jack modern-studies year-one)
			(finished-course jack modern-studies national-four)
			(finished-course jack lifeskills national-four)
			(finished-course jack numeracy adv-higher)
		)
	)
)
