(define (problem p5) (:domain courses)
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
		(takes-course william german national-five)
		(grade a william german national-five)
		(takes-course william esol adv-higher)
		(grade a william esol adv-higher)
		(takes-course william italian national-five)
		(grade d william italian national-five)
		(takes-course william italian year-two)
		(grade p william italian year-two)
		(uses-strategy william technological-tools)
	)

	(:goal
		(and
			(finished-course william german national-five)
			(finished-course william esol adv-higher)
			(finished-course william italian national-five)
			(finished-course william italian year-two)
			(given-support william tech-assist)
		)
	)
)
