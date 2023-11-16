(define (problem p9) (:domain courses)
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
		william emily - student
	)

	(:init
		(takes-course william biology year-two)
		(grade p william biology year-two)
		(takes-course william modern-studies adv-higher)
		(grade d william modern-studies adv-higher)
		(takes-course william chemistry national-four)
		(grade p william chemistry national-four)
		(takes-course william cantonese year-two)
		(grade p william cantonese year-two)
		(takes-course william chemistry national-four)
		(grade p william chemistry national-four)
		(has-support-need william tourettes)
		(uses-strategy william student-led-class)
		(takes-course emily lifeskills national-five)
		(grade c emily lifeskills national-five)
		(takes-course emily esol year-two)
		(grade p emily esol year-two)
		(takes-course emily admin-it year-one)
		(grade p emily admin-it year-one)
		(takes-course emily dance year-one)
		(grade p emily dance year-one)
		(takes-course emily english year-one)
		(grade p emily english year-one)
		(has-support-need emily deaf-hearing)
	)

	(:goal
		(and
			(finished-course william biology year-two)
			(finished-course william modern-studies adv-higher)
			(finished-course william chemistry national-four)
			(finished-course william cantonese year-two)
			(finished-course william chemistry national-four)
			(given-support william isolated)
			(given-support william gamify-learning)
			(given-support william improving-comms-workshop)
			(finished-course emily lifeskills national-five)
			(finished-course emily esol year-two)
			(finished-course emily admin-it year-one)
			(finished-course emily dance year-one)
			(finished-course emily english year-one)
			(given-support emily tech-assist)
		)
	)
)
