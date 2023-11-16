(define (problem p41) (:domain courses)
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
		oliver - student
	)

	(:init
		(takes-course oliver pc-passport national-four)
		(grade p oliver pc-passport national-four)
		(takes-course oliver admin-it year-two)
		(grade p oliver admin-it year-two)
		(takes-course oliver biology year-one)
		(grade p oliver biology year-one)
		(takes-course oliver graph-comm year-two)
		(grade p oliver graph-comm year-two)
		(takes-course oliver spanish year-one)
		(grade p oliver spanish year-one)
		(has-support-need oliver blind-visual)
		(uses-strategy oliver gamification)
	)

	(:goal
		(and
			(finished-course oliver pc-passport national-four)
			(finished-course oliver admin-it year-two)
			(finished-course oliver biology year-one)
			(finished-course oliver graph-comm year-two)
			(finished-course oliver spanish year-one)
			(given-support oliver tech-assist)
			(given-support oliver reading-group)
			(given-support oliver gamify-learning)
		)
	)
)
