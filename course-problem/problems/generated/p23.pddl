(define (problem p23) (:domain courses)
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
		sophia james isabella jack olivia amelia - student
	)

	(:init
		(takes-course sophia design-manufacture year-one)
		(grade p sophia design-manufacture year-one)
		(takes-course sophia chemistry year-two)
		(grade p sophia chemistry year-two)
		(takes-course sophia dance national-four)
		(grade p sophia dance national-four)
		(takes-course sophia biology year-two)
		(grade p sophia biology year-two)
		(takes-course sophia mandarin national-five)
		(grade b sophia mandarin national-five)
		(takes-course sophia landscape-gardening year-one)
		(grade p sophia landscape-gardening year-one)
		(uses-strategy sophia gamification)
		(takes-course james cantonese year-two)
		(grade p james cantonese year-two)
		(takes-course james lifeskills national-four)
		(grade p james lifeskills national-four)
		(takes-course james textiles higher)
		(grade a james textiles higher)
		(takes-course james phys-ed adv-higher)
		(grade a james phys-ed adv-higher)
		(takes-course james practical-woodwork year-one)
		(grade p james practical-woodwork year-one)
		(takes-course james mandarin national-four)
		(grade p james mandarin national-four)
		(takes-course isabella modern-studies year-three)
		(grade p isabella modern-studies year-three)
		(takes-course isabella design-manufacture year-one)
		(grade p isabella design-manufacture year-one)
		(takes-course isabella italian year-three)
		(grade p isabella italian year-three)
		(takes-course isabella drama adv-higher)
		(grade c isabella drama adv-higher)
		(takes-course isabella cantonese national-five)
		(grade c isabella cantonese national-five)
		(takes-course isabella art-design higher)
		(grade c isabella art-design higher)
		(takes-course jack physics higher)
		(grade b jack physics higher)
		(takes-course jack chemistry adv-higher)
		(grade a jack chemistry adv-higher)
		(takes-course jack music-tech year-two)
		(grade p jack music-tech year-two)
		(takes-course jack pc-passport national-five)
		(grade c jack pc-passport national-five)
		(takes-course jack phys-ed national-five)
		(grade b jack phys-ed national-five)
		(takes-course jack geography higher)
		(grade b jack geography higher)
		(takes-course olivia dance year-one)
		(grade p olivia dance year-one)
		(takes-course olivia music year-two)
		(grade p olivia music year-two)
		(takes-course olivia english national-four)
		(grade p olivia english national-four)
		(takes-course olivia physics year-two)
		(grade p olivia physics year-two)
		(takes-course olivia pc-passport adv-higher)
		(grade d olivia pc-passport adv-higher)
		(takes-course olivia geography year-one)
		(grade p olivia geography year-one)
		(has-support-need olivia deaf-hearing)
		(takes-course amelia physics higher)
		(grade c amelia physics higher)
		(takes-course amelia music-tech national-four)
		(grade p amelia music-tech national-four)
		(takes-course amelia esol higher)
		(grade a amelia esol higher)
		(takes-course amelia modern-studies year-two)
		(grade p amelia modern-studies year-two)
		(takes-course amelia practical-woodwork year-three)
		(grade p amelia practical-woodwork year-three)
		(takes-course amelia urdu national-five)
		(grade b amelia urdu national-five)
	)

	(:goal
		(and
			(finished-course sophia design-manufacture year-one)
			(finished-course sophia chemistry year-two)
			(finished-course sophia dance national-four)
			(finished-course sophia biology year-two)
			(finished-course sophia mandarin national-five)
			(finished-course sophia landscape-gardening year-one)
			(given-support sophia gamify-learning)
			(finished-course james cantonese year-two)
			(finished-course james lifeskills national-four)
			(finished-course james textiles higher)
			(finished-course james phys-ed adv-higher)
			(finished-course james practical-woodwork year-one)
			(finished-course james mandarin national-four)
			(finished-course isabella modern-studies year-three)
			(finished-course isabella design-manufacture year-one)
			(finished-course isabella italian year-three)
			(finished-course isabella drama adv-higher)
			(finished-course isabella cantonese national-five)
			(finished-course isabella art-design higher)
			(finished-course jack physics higher)
			(finished-course jack chemistry adv-higher)
			(finished-course jack music-tech year-two)
			(finished-course jack pc-passport national-five)
			(finished-course jack phys-ed national-five)
			(finished-course jack geography higher)
			(finished-course olivia dance year-one)
			(finished-course olivia music year-two)
			(finished-course olivia english national-four)
			(finished-course olivia physics year-two)
			(finished-course olivia pc-passport adv-higher)
			(finished-course olivia geography year-one)
			(given-support olivia tech-assist)
			(finished-course amelia physics higher)
			(finished-course amelia music-tech national-four)
			(finished-course amelia esol higher)
			(finished-course amelia modern-studies year-two)
			(finished-course amelia practical-woodwork year-three)
			(finished-course amelia urdu national-five)
		)
	)
)
