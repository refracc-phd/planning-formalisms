(define (problem p23) (:domain courses)
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
		sophia - student
	)

	(:init
		(takes-course sophia lifeskills adv-higher)
		(grade a sophia lifeskills adv-higher)
		(takes-course sophia gaelic national-five)
		(grade a sophia gaelic national-five)
		(takes-course sophia rmps adv-higher)
		(grade b sophia rmps adv-higher)
		(takes-course sophia rmps year-two)
		(grade p sophia rmps year-two)
		(takes-course sophia art-design higher)
		(grade a sophia art-design higher)
		(takes-course sophia mandarin national-four)
		(grade p sophia mandarin national-four)
	)

	(:goal
		(and
		(finished-course sophia lifeskills adv-higher)
		(finished-course sophia gaelic national-five)
		(finished-course sophia rmps adv-higher)
		(finished-course sophia rmps year-two)
		(finished-course sophia art-design higher)
		(finished-course sophia mandarin national-four)
		)
	)
)
