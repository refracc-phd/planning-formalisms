(define (problem p6) (:domain courses)
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
		emily oliver william - student
	)

	(:init
		(takes-course emily music-tech national-five)
		(grade d emily music-tech national-five)
		(takes-course emily biology year-three)
		(grade p emily biology year-three)
		(takes-course emily history year-two)
		(grade p emily history year-two)
		(takes-course emily politics year-three)
		(grade p emily politics year-three)
		(uses-strategy emily technological-tools)
		(takes-course oliver german national-four)
		(grade p oliver german national-four)
		(takes-course oliver latin national-five)
		(grade d oliver latin national-five)
		(takes-course oliver practical-woodwork year-three)
		(grade p oliver practical-woodwork year-three)
		(takes-course oliver lifeskills higher)
		(grade d oliver lifeskills higher)
		(uses-strategy oliver technological-tools)
		(takes-course william landscape-gardening adv-higher)
		(grade b william landscape-gardening adv-higher)
		(takes-course william phys-ed year-two)
		(grade p william phys-ed year-two)
		(takes-course william dance national-four)
		(grade p william dance national-four)
		(takes-course william french national-four)
		(grade p william french national-four)
		(uses-strategy william teamwork)
	)

	(:goal
		(and
			(finished-course emily music-tech national-five)
			(finished-course emily biology year-three)
			(finished-course emily history year-two)
			(finished-course emily politics year-three)
			(given-support emily tech-assist)
			(finished-course oliver german national-four)
			(finished-course oliver latin national-five)
			(finished-course oliver practical-woodwork year-three)
			(finished-course oliver lifeskills higher)
			(given-support oliver tech-assist)
			(finished-course william landscape-gardening adv-higher)
			(finished-course william phys-ed year-two)
			(finished-course william dance national-four)
			(finished-course william french national-four)
			(given-support william improving-comms-workshop)
			(given-support william pomo)
		)
	)
)
