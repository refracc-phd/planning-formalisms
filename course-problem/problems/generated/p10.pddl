(define (problem p10) (:domain courses)
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
		george harry oliver - student
	)

	(:init
		(takes-course george music-tech higher)
		(grade b george music-tech higher)
		(takes-course george biology year-one)
		(grade p george biology year-one)
		(takes-course george urdu year-one)
		(grade p george urdu year-one)
		(takes-course george english higher)
		(grade a george english higher)
		(takes-course george business-management national-four)
		(grade p george business-management national-four)
		(takes-course george practical-woodwork adv-higher)
		(grade c george practical-woodwork adv-higher)
		(takes-course harry german national-four)
		(grade p harry german national-four)
		(takes-course harry philosophy year-three)
		(grade p harry philosophy year-three)
		(takes-course harry french national-five)
		(grade c harry french national-five)
		(takes-course harry history adv-higher)
		(grade c harry history adv-higher)
		(takes-course harry urdu year-two)
		(grade p harry urdu year-two)
		(takes-course harry music national-five)
		(grade c harry music national-five)
		(uses-strategy harry gamification)
		(takes-course oliver music year-three)
		(grade p oliver music year-three)
		(takes-course oliver chemistry year-two)
		(grade p oliver chemistry year-two)
		(takes-course oliver physics higher)
		(grade a oliver physics higher)
		(takes-course oliver esol national-five)
		(grade b oliver esol national-five)
		(takes-course oliver chemistry national-four)
		(grade p oliver chemistry national-four)
		(takes-course oliver design-manufacture year-one)
		(grade p oliver design-manufacture year-one)
		(uses-strategy oliver technological-tools)
	)

	(:goal
		(and
		(finished-course george music-tech higher)
		(finished-course george biology year-one)
		(finished-course george urdu year-one)
		(finished-course george english higher)
		(finished-course george business-management national-four)
		(finished-course george practical-woodwork adv-higher)
		(finished-course harry german national-four)
		(finished-course harry philosophy year-three)
		(finished-course harry french national-five)
		(finished-course harry history adv-higher)
		(finished-course harry urdu year-two)
		(finished-course harry music national-five)
		(given-support harry gamify-learning)
		(finished-course oliver music year-three)
		(finished-course oliver chemistry year-two)
		(finished-course oliver physics higher)
		(finished-course oliver esol national-five)
		(finished-course oliver chemistry national-four)
		(finished-course oliver design-manufacture year-one)
		(given-support oliver tech-assist)
		)
	)
)
