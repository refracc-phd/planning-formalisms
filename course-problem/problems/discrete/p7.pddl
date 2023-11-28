(define (problem p7) (:domain courses)
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
		(takes-course emily phys-ed higher)
		(grade d emily phys-ed higher)
		(takes-course emily english year-one)
		(grade p emily english year-one)
		(takes-course emily physics national-four)
		(grade p emily physics national-four)
		(takes-course emily landscape-gardening adv-higher)
		(grade c emily landscape-gardening adv-higher)
		(uses-strategy emily technological-tools)
	)

	(:goal
		(and
			(finished-course emily phys-ed higher)
			(finished-course emily english year-one)
			(finished-course emily physics national-four)
			(finished-course emily landscape-gardening adv-higher)
			(given-support emily tech-assist)
		)
	)
)
