(define (problem p4) (:domain courses)
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
		william - student
	)

	(:init
		(takes-course william philosophy year-one)
		(grade p william philosophy year-one)
		(takes-course william music year-one)
		(grade p william music year-one)
		(takes-course william numeracy adv-higher)
		(grade a william numeracy adv-higher)
		(takes-course william textiles year-three)
		(grade p william textiles year-three)
		(takes-course william business-management national-four)
		(grade p william business-management national-four)
		(has-support-need william language)
		(uses-strategy william student-led-class)
	)

	(:goal
		(and
			(finished-course william philosophy year-one)
			(finished-course william music year-one)
			(finished-course william numeracy adv-higher)
			(finished-course william textiles year-three)
			(finished-course william business-management national-four)
			(given-support william reading-group)
			(given-support william tech-assist)
			(given-support william improving-comms-workshop)
		)
	)
)
