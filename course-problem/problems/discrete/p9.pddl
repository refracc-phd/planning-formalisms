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
		emily - student
	)

	(:init
		(takes-course emily business-management year-one)
		(grade p emily business-management year-one)
		(takes-course emily drama adv-higher)
		(grade d emily drama adv-higher)
		(takes-course emily admin-it year-one)
		(grade p emily admin-it year-one)
		(takes-course emily english national-five)
		(grade a emily english national-five)
		(uses-strategy emily teamwork)
	)

	(:goal
		(and
			(finished-course emily business-management year-one)
			(finished-course emily drama adv-higher)
			(finished-course emily admin-it year-one)
			(finished-course emily english national-five)
			(given-support emily improving-comms-workshop)
			(given-support emily pomo)
		)
	)
)
