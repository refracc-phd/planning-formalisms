(define (problem p29) (:domain courses)
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
		harry amelia grace ava william sophia james - student
	)

	(:init
		(takes-course harry physics higher)
		(grade b harry physics higher)
		(takes-course harry pc-passport year-three)
		(grade p harry pc-passport year-three)
		(takes-course harry dance higher)
		(grade d harry dance higher)
		(takes-course harry english year-three)
		(grade p harry english year-three)
		(takes-course harry italian higher)
		(grade d harry italian higher)
		(takes-course harry history year-three)
		(grade p harry history year-three)
		(has-support-need harry social-other)
		(takes-course amelia art-design year-two)
		(grade p amelia art-design year-two)
		(takes-course amelia spanish year-one)
		(grade p amelia spanish year-one)
		(takes-course amelia admin-it higher)
		(grade a amelia admin-it higher)
		(takes-course amelia design-manufacture national-four)
		(grade p amelia design-manufacture national-four)
		(takes-course amelia music year-three)
		(grade p amelia music year-three)
		(takes-course amelia geography national-four)
		(grade p amelia geography national-four)
		(has-support-need amelia social-other)
		(uses-strategy amelia flex-seating)
		(takes-course grace music-tech adv-higher)
		(grade b grace music-tech adv-higher)
		(takes-course grace design-manufacture year-three)
		(grade p grace design-manufacture year-three)
		(takes-course grace home-economics year-three)
		(grade p grace home-economics year-three)
		(takes-course grace dance higher)
		(grade d grace dance higher)
		(takes-course grace drama higher)
		(grade c grace drama higher)
		(takes-course grace latin higher)
		(grade c grace latin higher)
		(uses-strategy grace teamwork)
		(takes-course ava latin national-five)
		(grade c ava latin national-five)
		(takes-course ava esol national-five)
		(grade b ava esol national-five)
		(takes-course ava design-manufacture national-five)
		(grade a ava design-manufacture national-five)
		(takes-course ava drama higher)
		(grade c ava drama higher)
		(takes-course ava urdu year-three)
		(grade p ava urdu year-three)
		(takes-course ava biology national-four)
		(grade p ava biology national-four)
		(takes-course william urdu national-five)
		(grade b william urdu national-five)
		(takes-course william lifeskills adv-higher)
		(grade b william lifeskills adv-higher)
		(takes-course william admin-it year-two)
		(grade p william admin-it year-two)
		(takes-course william maths national-five)
		(grade d william maths national-five)
		(takes-course william graph-comm year-two)
		(grade p william graph-comm year-two)
		(takes-course william numeracy national-five)
		(grade c william numeracy national-five)
		(uses-strategy william technological-tools)
		(takes-course sophia spanish adv-higher)
		(grade b sophia spanish adv-higher)
		(takes-course sophia english year-two)
		(grade p sophia english year-two)
		(takes-course sophia music-tech year-two)
		(grade p sophia music-tech year-two)
		(takes-course sophia chemistry national-four)
		(grade p sophia chemistry national-four)
		(takes-course sophia spanish year-one)
		(grade p sophia spanish year-one)
		(takes-course sophia textiles national-five)
		(grade a sophia textiles national-five)
		(takes-course james admin-it national-five)
		(grade b james admin-it national-five)
		(takes-course james home-economics year-one)
		(grade p james home-economics year-one)
		(takes-course james german higher)
		(grade b james german higher)
		(takes-course james business-management higher)
		(grade d james business-management higher)
		(takes-course james business-management year-one)
		(grade p james business-management year-one)
		(takes-course james lifeskills year-three)
		(grade p james lifeskills year-three)
		(uses-strategy james student-led-class)
	)

	(:goal
		(and
			(finished-course harry physics higher)
			(finished-course harry pc-passport year-three)
			(finished-course harry dance higher)
			(finished-course harry english year-three)
			(finished-course harry italian higher)
			(finished-course harry history year-three)
			(given-support harry improving-comms-workshop)
			(finished-course amelia art-design year-two)
			(finished-course amelia spanish year-one)
			(finished-course amelia admin-it higher)
			(finished-course amelia design-manufacture national-four)
			(finished-course amelia music year-three)
			(finished-course amelia geography national-four)
			(given-support amelia improving-comms-workshop)
			(given-support amelia improving-comms-workshop)
			(finished-course grace music-tech adv-higher)
			(finished-course grace design-manufacture year-three)
			(finished-course grace home-economics year-three)
			(finished-course grace dance higher)
			(finished-course grace drama higher)
			(finished-course grace latin higher)
			(given-support grace improving-comms-workshop)
			(given-support grace pomo)
			(finished-course ava latin national-five)
			(finished-course ava esol national-five)
			(finished-course ava design-manufacture national-five)
			(finished-course ava drama higher)
			(finished-course ava urdu year-three)
			(finished-course ava biology national-four)
			(finished-course william urdu national-five)
			(finished-course william lifeskills adv-higher)
			(finished-course william admin-it year-two)
			(finished-course william maths national-five)
			(finished-course william graph-comm year-two)
			(finished-course william numeracy national-five)
			(given-support william tech-assist)
			(finished-course sophia spanish adv-higher)
			(finished-course sophia english year-two)
			(finished-course sophia music-tech year-two)
			(finished-course sophia chemistry national-four)
			(finished-course sophia spanish year-one)
			(finished-course sophia textiles national-five)
			(finished-course james admin-it national-five)
			(finished-course james home-economics year-one)
			(finished-course james german higher)
			(finished-course james business-management higher)
			(finished-course james business-management year-one)
			(finished-course james lifeskills year-three)
			(given-support james improving-comms-workshop)
		)
	)
)
