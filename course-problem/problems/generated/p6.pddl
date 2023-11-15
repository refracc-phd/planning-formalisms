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
		amelia george grace - student
	)

	(:init
		(takes-course amelia french adv-higher)
		(grade d amelia french adv-higher)
		(takes-course amelia admin-it national-five)
		(grade c amelia admin-it national-five)
		(takes-course amelia mandarin year-two)
		(grade p amelia mandarin year-two)
		(takes-course amelia german year-one)
		(grade p amelia german year-one)
		(takes-course amelia urdu year-one)
		(grade p amelia urdu year-one)
		(takes-course amelia music-tech year-three)
		(grade p amelia music-tech year-three)
		(uses-strategy amelia technological-tools)
		(takes-course george spanish adv-higher)
		(grade a george spanish adv-higher)
		(takes-course george maths year-one)
		(grade p george maths year-one)
		(takes-course george drama adv-higher)
		(grade b george drama adv-higher)
		(takes-course george modern-studies national-four)
		(grade p george modern-studies national-four)
		(takes-course george mandarin year-two)
		(grade p george mandarin year-two)
		(takes-course george biology national-four)
		(grade p george biology national-four)
		(has-support-need george tourettes)
		(takes-course grace italian national-five)
		(grade c grace italian national-five)
		(takes-course grace chemistry national-four)
		(grade p grace chemistry national-four)
		(takes-course grace practical-woodwork national-four)
		(grade p grace practical-woodwork national-four)
		(takes-course grace art-design adv-higher)
		(grade c grace art-design adv-higher)
		(takes-course grace pc-passport year-two)
		(grade p grace pc-passport year-two)
		(takes-course grace dance national-five)
		(grade c grace dance national-five)
	)

	(:goal
		(and
		(finished-course amelia french adv-higher)
		(finished-course amelia admin-it national-five)
		(finished-course amelia mandarin year-two)
		(finished-course amelia german year-one)
		(finished-course amelia urdu year-one)
		(finished-course amelia music-tech year-three)
		(given-support amelia tech-assist)
		(finished-course george spanish adv-higher)
		(finished-course george maths year-one)
		(finished-course george drama adv-higher)
		(finished-course george modern-studies national-four)
		(finished-course george mandarin year-two)
		(finished-course george biology national-four)
		(given-support george isolated)
		(given-support george gamify-learning)
		(finished-course grace italian national-five)
		(finished-course grace chemistry national-four)
		(finished-course grace practical-woodwork national-four)
		(finished-course grace art-design adv-higher)
		(finished-course grace pc-passport year-two)
		(finished-course grace dance national-five)
		)
	)
)
