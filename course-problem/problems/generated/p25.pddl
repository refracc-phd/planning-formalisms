(define (problem p25) (:domain courses)
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
		sophia isabella - student
	)

	(:init
		(takes-course sophia cantonese national-five)
		(grade d sophia cantonese national-five)
		(takes-course sophia numeracy adv-higher)
		(grade b sophia numeracy adv-higher)
		(takes-course sophia comp-sci year-three)
		(grade p sophia comp-sci year-three)
		(takes-course sophia practical-woodwork adv-higher)
		(grade a sophia practical-woodwork adv-higher)
		(takes-course sophia geography year-one)
		(grade p sophia geography year-one)
		(takes-course sophia music adv-higher)
		(grade d sophia music adv-higher)
		(takes-course isabella french higher)
		(grade c isabella french higher)
		(takes-course isabella philosophy adv-higher)
		(grade d isabella philosophy adv-higher)
		(takes-course isabella landscape-gardening year-one)
		(grade p isabella landscape-gardening year-one)
		(takes-course isabella italian year-two)
		(grade p isabella italian year-two)
		(takes-course isabella textiles national-five)
		(grade a isabella textiles national-five)
		(takes-course isabella landscape-gardening year-one)
		(grade p isabella landscape-gardening year-one)
		(has-support-need isabella language)
		(uses-strategy isabella project-based)
	)

	(:goal
		(and
		(finished-course sophia cantonese national-five)
		(finished-course sophia numeracy adv-higher)
		(finished-course sophia comp-sci year-three)
		(finished-course sophia practical-woodwork adv-higher)
		(finished-course sophia geography year-one)
		(finished-course sophia music adv-higher)
		(finished-course isabella french higher)
		(finished-course isabella philosophy adv-higher)
		(finished-course isabella landscape-gardening year-one)
		(finished-course isabella italian year-two)
		(finished-course isabella textiles national-five)
		(finished-course isabella landscape-gardening year-one)
		(given-support isabella reading-group)
		(given-support isabella tech-assist)
		(given-support isabella improving-comms-workshop)
		)
	)
)
