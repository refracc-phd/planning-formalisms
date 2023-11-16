(define (problem p48) (:domain courses)
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
		jack emily william - student
	)

	(:init
		(takes-course jack mandarin year-three)
		(grade p jack mandarin year-three)
		(takes-course jack rmps adv-higher)
		(grade a jack rmps adv-higher)
		(takes-course jack mandarin year-two)
		(grade p jack mandarin year-two)
		(takes-course jack italian adv-higher)
		(grade c jack italian adv-higher)
		(takes-course jack art-design year-one)
		(grade p jack art-design year-one)
		(uses-strategy jack blended-learning)
		(takes-course emily music national-five)
		(grade a emily music national-five)
		(takes-course emily graph-comm year-two)
		(grade p emily graph-comm year-two)
		(takes-course emily music year-one)
		(grade p emily music year-one)
		(takes-course emily italian national-five)
		(grade b emily italian national-five)
		(takes-course emily chemistry year-one)
		(grade p emily chemistry year-one)
		(uses-strategy emily technological-tools)
		(takes-course william design-manufacture year-three)
		(grade p william design-manufacture year-three)
		(takes-course william home-economics national-four)
		(grade p william home-economics national-four)
		(takes-course william gaelic year-three)
		(grade p william gaelic year-three)
		(takes-course william numeracy year-two)
		(grade p william numeracy year-two)
		(takes-course william spanish higher)
		(grade d william spanish higher)
		(has-support-need william tourettes)
		(uses-strategy william technological-tools)
	)

	(:goal
		(and
			(finished-course jack mandarin year-three)
			(finished-course jack rmps adv-higher)
			(finished-course jack mandarin year-two)
			(finished-course jack italian adv-higher)
			(finished-course jack art-design year-one)
			(given-support jack improving-comms-workshop)
			(given-support jack tech-assist)
			(given-support jack gamify-learning)
			(finished-course emily music national-five)
			(finished-course emily graph-comm year-two)
			(finished-course emily music year-one)
			(finished-course emily italian national-five)
			(finished-course emily chemistry year-one)
			(given-support emily tech-assist)
			(finished-course william design-manufacture year-three)
			(finished-course william home-economics national-four)
			(finished-course william gaelic year-three)
			(finished-course william numeracy year-two)
			(finished-course william spanish higher)
			(given-support william isolated)
			(given-support william gamify-learning)
			(given-support william tech-assist)
		)
	)
)
