(define (problem p1) (:domain courses)
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
		amelia - student
	)

	(:init
		(takes-course amelia textiles national-five)
		(grade c amelia textiles national-five)
		(takes-course amelia geography national-five)
		(grade c amelia geography national-five)
		(takes-course amelia history national-five)
		(grade c amelia history national-five)
		(takes-course amelia admin-it national-four)
		(grade p amelia admin-it national-four)
		(takes-course amelia spanish year-one)
		(grade p amelia spanish year-one)
		(takes-course amelia biology national-five)
		(grade d amelia biology national-five)
	)

	(:goal
		(and
		(finished-course amelia textiles national-five)
		(finished-course amelia geography national-five)
		(finished-course amelia history national-five)
		(finished-course amelia admin-it national-four)
		(finished-course amelia spanish year-one)
		(finished-course amelia biology national-five)
		)
	)
)
