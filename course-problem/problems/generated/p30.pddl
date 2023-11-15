(define (problem p30) (:domain courses)
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
		emily george amelia - student
	)

	(:init
		(takes-course emily design-manufacture adv-higher)
		(grade c emily design-manufacture adv-higher)
		(takes-course emily esol national-five)
		(grade d emily esol national-five)
		(takes-course emily drama year-two)
		(grade p emily drama year-two)
		(takes-course emily numeracy national-four)
		(grade p emily numeracy national-four)
		(takes-course emily philosophy national-five)
		(grade d emily philosophy national-five)
		(takes-course emily esol adv-higher)
		(grade d emily esol adv-higher)
		(uses-strategy emily student-led-class)
		(takes-course george music adv-higher)
		(grade b george music adv-higher)
		(takes-course george admin-it year-three)
		(grade p george admin-it year-three)
		(takes-course george music higher)
		(grade d george music higher)
		(takes-course george comp-sci year-two)
		(grade p george comp-sci year-two)
		(takes-course george geography year-three)
		(grade p george geography year-three)
		(takes-course george spanish year-three)
		(grade p george spanish year-three)
		(uses-strategy george blended-learning)
		(takes-course amelia business-management national-five)
		(grade d amelia business-management national-five)
		(takes-course amelia design-manufacture year-one)
		(grade p amelia design-manufacture year-one)
		(takes-course amelia modern-studies national-four)
		(grade p amelia modern-studies national-four)
		(takes-course amelia lifeskills adv-higher)
		(grade b amelia lifeskills adv-higher)
		(takes-course amelia history adv-higher)
		(grade b amelia history adv-higher)
		(takes-course amelia physics national-five)
		(grade c amelia physics national-five)
	)

	(:goal
		(and
			(finished-course emily design-manufacture adv-higher)
			(finished-course emily esol national-five)
			(finished-course emily drama year-two)
			(finished-course emily numeracy national-four)
			(finished-course emily philosophy national-five)
			(finished-course emily esol adv-higher)
			(given-support emily improving-comms-workshop)
			(finished-course george music adv-higher)
			(finished-course george admin-it year-three)
			(finished-course george music higher)
			(finished-course george comp-sci year-two)
			(finished-course george geography year-three)
			(finished-course george spanish year-three)
			(given-support george improving-comms-workshop)
			(given-support george tech-assist)
			(given-support george gamify-learning)
			(finished-course amelia business-management national-five)
			(finished-course amelia design-manufacture year-one)
			(finished-course amelia modern-studies national-four)
			(finished-course amelia lifeskills adv-higher)
			(finished-course amelia history adv-higher)
			(finished-course amelia physics national-five)
		)
	)
)
