(define (problem p26) (:domain courses)
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
		george jack amelia james sophia olivia isabella grace harry thomas - student
	)

	(:init
		(takes-course george comp-sci national-five)
		(grade a george comp-sci national-five)
		(takes-course george german adv-higher)
		(grade b george german adv-higher)
		(takes-course george chemistry adv-higher)
		(grade c george chemistry adv-higher)
		(takes-course george gaelic national-five)
		(grade d george gaelic national-five)
		(takes-course george business-management adv-higher)
		(grade d george business-management adv-higher)
		(takes-course george chemistry national-five)
		(grade d george chemistry national-five)
		(takes-course jack rmps national-five)
		(grade d jack rmps national-five)
		(takes-course jack italian year-one)
		(grade p jack italian year-one)
		(takes-course jack music-tech higher)
		(grade d jack music-tech higher)
		(takes-course jack modern-studies year-three)
		(grade p jack modern-studies year-three)
		(takes-course jack lifeskills national-five)
		(grade c jack lifeskills national-five)
		(takes-course jack biology adv-higher)
		(grade c jack biology adv-higher)
		(takes-course amelia philosophy higher)
		(grade a amelia philosophy higher)
		(takes-course amelia latin year-three)
		(grade p amelia latin year-three)
		(takes-course amelia mandarin adv-higher)
		(grade a amelia mandarin adv-higher)
		(takes-course amelia philosophy national-five)
		(grade b amelia philosophy national-five)
		(takes-course amelia business-management year-one)
		(grade p amelia business-management year-one)
		(takes-course amelia lifeskills year-two)
		(grade p amelia lifeskills year-two)
		(uses-strategy amelia flex-seating)
		(takes-course james maths year-one)
		(grade p james maths year-one)
		(takes-course james italian year-one)
		(grade p james italian year-one)
		(takes-course james spanish year-two)
		(grade p james spanish year-two)
		(takes-course james german national-five)
		(grade d james german national-five)
		(takes-course james admin-it national-four)
		(grade p james admin-it national-four)
		(takes-course james cantonese year-two)
		(grade p james cantonese year-two)
		(takes-course sophia practical-woodwork year-one)
		(grade p sophia practical-woodwork year-one)
		(takes-course sophia pc-passport national-five)
		(grade a sophia pc-passport national-five)
		(takes-course sophia gaelic national-four)
		(grade p sophia gaelic national-four)
		(takes-course sophia latin higher)
		(grade a sophia latin higher)
		(takes-course sophia gaelic adv-higher)
		(grade a sophia gaelic adv-higher)
		(takes-course sophia lifeskills adv-higher)
		(grade a sophia lifeskills adv-higher)
		(uses-strategy sophia blended-learning)
		(takes-course olivia esol national-five)
		(grade a olivia esol national-five)
		(takes-course olivia textiles national-four)
		(grade p olivia textiles national-four)
		(takes-course olivia physics year-three)
		(grade p olivia physics year-three)
		(takes-course olivia music adv-higher)
		(grade d olivia music adv-higher)
		(takes-course olivia music-tech national-five)
		(grade c olivia music-tech national-five)
		(takes-course olivia physics year-two)
		(grade p olivia physics year-two)
		(uses-strategy olivia gamification)
		(takes-course isabella esol year-two)
		(grade p isabella esol year-two)
		(takes-course isabella history adv-higher)
		(grade c isabella history adv-higher)
		(takes-course isabella mandarin national-four)
		(grade p isabella mandarin national-four)
		(takes-course isabella cantonese national-five)
		(grade a isabella cantonese national-five)
		(takes-course isabella art-design national-five)
		(grade a isabella art-design national-five)
		(takes-course isabella politics national-four)
		(grade p isabella politics national-four)
		(takes-course grace lifeskills higher)
		(grade c grace lifeskills higher)
		(takes-course grace latin national-four)
		(grade p grace latin national-four)
		(takes-course grace landscape-gardening year-one)
		(grade p grace landscape-gardening year-one)
		(takes-course grace lifeskills year-two)
		(grade p grace lifeskills year-two)
		(takes-course grace cantonese year-one)
		(grade p grace cantonese year-one)
		(takes-course grace business-management adv-higher)
		(grade c grace business-management adv-higher)
		(takes-course harry lifeskills national-four)
		(grade p harry lifeskills national-four)
		(takes-course harry art-design year-three)
		(grade p harry art-design year-three)
		(takes-course harry lifeskills higher)
		(grade b harry lifeskills higher)
		(takes-course harry pc-passport higher)
		(grade a harry pc-passport higher)
		(takes-course harry esol national-five)
		(grade d harry esol national-five)
		(takes-course harry english higher)
		(grade b harry english higher)
		(has-support-need harry asc-asd)
		(uses-strategy harry student-led-class)
		(takes-course thomas music-tech adv-higher)
		(grade a thomas music-tech adv-higher)
		(takes-course thomas design-manufacture year-two)
		(grade p thomas design-manufacture year-two)
		(takes-course thomas practical-woodwork year-three)
		(grade p thomas practical-woodwork year-three)
		(takes-course thomas numeracy national-four)
		(grade p thomas numeracy national-four)
		(takes-course thomas home-economics higher)
		(grade a thomas home-economics higher)
		(takes-course thomas gaelic national-four)
		(grade p thomas gaelic national-four)
	)

	(:goal
		(and
			(finished-course george comp-sci national-five)
			(finished-course george german adv-higher)
			(finished-course george chemistry adv-higher)
			(finished-course george gaelic national-five)
			(finished-course george business-management adv-higher)
			(finished-course george chemistry national-five)
			(finished-course jack rmps national-five)
			(finished-course jack italian year-one)
			(finished-course jack music-tech higher)
			(finished-course jack modern-studies year-three)
			(finished-course jack lifeskills national-five)
			(finished-course jack biology adv-higher)
			(finished-course amelia philosophy higher)
			(finished-course amelia latin year-three)
			(finished-course amelia mandarin adv-higher)
			(finished-course amelia philosophy national-five)
			(finished-course amelia business-management year-one)
			(finished-course amelia lifeskills year-two)
			(given-support amelia improving-comms-workshop)
			(finished-course james maths year-one)
			(finished-course james italian year-one)
			(finished-course james spanish year-two)
			(finished-course james german national-five)
			(finished-course james admin-it national-four)
			(finished-course james cantonese year-two)
			(finished-course sophia practical-woodwork year-one)
			(finished-course sophia pc-passport national-five)
			(finished-course sophia gaelic national-four)
			(finished-course sophia latin higher)
			(finished-course sophia gaelic adv-higher)
			(finished-course sophia lifeskills adv-higher)
			(given-support sophia improving-comms-workshop)
			(given-support sophia tech-assist)
			(given-support sophia gamify-learning)
			(finished-course olivia esol national-five)
			(finished-course olivia textiles national-four)
			(finished-course olivia physics year-three)
			(finished-course olivia music adv-higher)
			(finished-course olivia music-tech national-five)
			(finished-course olivia physics year-two)
			(given-support olivia gamify-learning)
			(finished-course isabella esol year-two)
			(finished-course isabella history adv-higher)
			(finished-course isabella mandarin national-four)
			(finished-course isabella cantonese national-five)
			(finished-course isabella art-design national-five)
			(finished-course isabella politics national-four)
			(finished-course grace lifeskills higher)
			(finished-course grace latin national-four)
			(finished-course grace landscape-gardening year-one)
			(finished-course grace lifeskills year-two)
			(finished-course grace cantonese year-one)
			(finished-course grace business-management adv-higher)
			(finished-course harry lifeskills national-four)
			(finished-course harry art-design year-three)
			(finished-course harry lifeskills higher)
			(finished-course harry pc-passport higher)
			(finished-course harry esol national-five)
			(finished-course harry english higher)
			(given-support harry improving-comms-workshop)
			(given-support harry tech-assist)
			(given-support harry pomo)
			(given-support harry gamify-learning)
			(given-support harry improving-comms-workshop)
			(finished-course thomas music-tech adv-higher)
			(finished-course thomas design-manufacture year-two)
			(finished-course thomas practical-woodwork year-three)
			(finished-course thomas numeracy national-four)
			(finished-course thomas home-economics higher)
			(finished-course thomas gaelic national-four)
		)
	)
)
