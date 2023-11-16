(define (problem p35) (:domain courses)
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
		jack amelia william emily - student
	)

	(:init
		(takes-course jack italian higher)
		(grade c jack italian higher)
		(takes-course jack pc-passport adv-higher)
		(grade b jack pc-passport adv-higher)
		(takes-course jack music-tech national-four)
		(grade p jack music-tech national-four)
		(takes-course jack esol adv-higher)
		(grade a jack esol adv-higher)
		(takes-course jack music-tech year-three)
		(grade p jack music-tech year-three)
		(takes-course amelia politics year-two)
		(grade p amelia politics year-two)
		(takes-course amelia numeracy year-two)
		(grade p amelia numeracy year-two)
		(takes-course amelia politics year-three)
		(grade p amelia politics year-three)
		(takes-course amelia admin-it national-five)
		(grade c amelia admin-it national-five)
		(takes-course amelia italian year-one)
		(grade p amelia italian year-one)
		(takes-course william music-tech year-two)
		(grade p william music-tech year-two)
		(takes-course william landscape-gardening national-five)
		(grade c william landscape-gardening national-five)
		(takes-course william landscape-gardening adv-higher)
		(grade d william landscape-gardening adv-higher)
		(takes-course william geography year-one)
		(grade p william geography year-one)
		(takes-course william philosophy adv-higher)
		(grade a william philosophy adv-higher)
		(has-support-need william deaf-hearing)
		(takes-course emily philosophy year-one)
		(grade p emily philosophy year-one)
		(takes-course emily numeracy adv-higher)
		(grade d emily numeracy adv-higher)
		(takes-course emily rmps national-five)
		(grade a emily rmps national-five)
		(takes-course emily english year-one)
		(grade p emily english year-one)
		(takes-course emily english year-one)
		(grade p emily english year-one)
	)

	(:goal
		(and
			(finished-course jack italian higher)
			(finished-course jack pc-passport adv-higher)
			(finished-course jack music-tech national-four)
			(finished-course jack esol adv-higher)
			(finished-course jack music-tech year-three)
			(finished-course amelia politics year-two)
			(finished-course amelia numeracy year-two)
			(finished-course amelia politics year-three)
			(finished-course amelia admin-it national-five)
			(finished-course amelia italian year-one)
			(finished-course william music-tech year-two)
			(finished-course william landscape-gardening national-five)
			(finished-course william landscape-gardening adv-higher)
			(finished-course william geography year-one)
			(finished-course william philosophy adv-higher)
			(given-support william tech-assist)
			(finished-course emily philosophy year-one)
			(finished-course emily numeracy adv-higher)
			(finished-course emily rmps national-five)
			(finished-course emily english year-one)
			(finished-course emily english year-one)
		)
	)
)
