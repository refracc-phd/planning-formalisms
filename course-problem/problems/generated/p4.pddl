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
		william harry - student
	)

	(:init
		(takes-course william practical-woodwork national-five)
		(grade b william practical-woodwork national-five)
		(takes-course william numeracy national-four)
		(grade p william numeracy national-four)
		(takes-course william chemistry year-one)
		(grade p william chemistry year-one)
		(takes-course william philosophy year-one)
		(grade p william philosophy year-one)
		(takes-course william chemistry year-one)
		(grade p william chemistry year-one)
		(takes-course william physics national-five)
		(grade a william physics national-five)
		(uses-strategy william flex-seating)
		(takes-course harry music-tech national-five)
		(grade d harry music-tech national-five)
		(takes-course harry lifeskills year-two)
		(grade p harry lifeskills year-two)
		(takes-course harry maths higher)
		(grade b harry maths higher)
		(takes-course harry phys-ed year-two)
		(grade p harry phys-ed year-two)
		(takes-course harry graph-comm year-one)
		(grade p harry graph-comm year-one)
		(takes-course harry graph-comm higher)
		(grade c harry graph-comm higher)
		(has-support-need harry blind-visual)
		(uses-strategy harry gamification)
	)

	(:goal
		(and
			(finished-course william practical-woodwork national-five)
			(finished-course william numeracy national-four)
			(finished-course william chemistry year-one)
			(finished-course william philosophy year-one)
			(finished-course william chemistry year-one)
			(finished-course william physics national-five)
			(given-support william improving-comms-workshop)
			(finished-course harry music-tech national-five)
			(finished-course harry lifeskills year-two)
			(finished-course harry maths higher)
			(finished-course harry phys-ed year-two)
			(finished-course harry graph-comm year-one)
			(finished-course harry graph-comm higher)
			(given-support harry tech-assist)
			(given-support harry reading-group)
			(given-support harry gamify-learning)
		)
	)
)
