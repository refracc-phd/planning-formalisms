(define (problem p11) (:domain courses)
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
		oliver william - student
	)

	(:init
		(takes-course oliver dance year-two)
		(grade p oliver dance year-two)
		(takes-course oliver admin-it higher)
		(grade d oliver admin-it higher)
		(takes-course oliver comp-sci year-three)
		(grade p oliver comp-sci year-three)
		(takes-course oliver geography higher)
		(grade a oliver geography higher)
		(takes-course oliver history adv-higher)
		(grade d oliver history adv-higher)
		(takes-course oliver chemistry year-two)
		(grade p oliver chemistry year-two)
		(takes-course william pc-passport national-four)
		(grade p william pc-passport national-four)
		(takes-course william pc-passport year-three)
		(grade p william pc-passport year-three)
		(takes-course william physics year-one)
		(grade p william physics year-one)
		(takes-course william pc-passport year-one)
		(grade p william pc-passport year-one)
		(takes-course william pc-passport year-one)
		(grade p william pc-passport year-one)
		(takes-course william cantonese year-three)
		(grade p william cantonese year-three)
		(uses-strategy william blended-learning)
	)

	(:goal
		(and
			(finished-course oliver dance year-two)
			(finished-course oliver admin-it higher)
			(finished-course oliver comp-sci year-three)
			(finished-course oliver geography higher)
			(finished-course oliver history adv-higher)
			(finished-course oliver chemistry year-two)
			(finished-course william pc-passport national-four)
			(finished-course william pc-passport year-three)
			(finished-course william physics year-one)
			(finished-course william pc-passport year-one)
			(finished-course william pc-passport year-one)
			(finished-course william cantonese year-three)
			(given-support william improving-comms-workshop)
			(given-support william tech-assist)
			(given-support william gamify-learning)
		)
	)
)
