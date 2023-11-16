(define (problem p32) (:domain courses)
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
		emily jack william - student
	)

	(:init
		(takes-course emily pc-passport adv-higher)
		(grade d emily pc-passport adv-higher)
		(takes-course emily maths adv-higher)
		(grade a emily maths adv-higher)
		(takes-course emily cantonese year-one)
		(grade p emily cantonese year-one)
		(takes-course emily english adv-higher)
		(grade a emily english adv-higher)
		(takes-course emily design-manufacture national-four)
		(grade p emily design-manufacture national-four)
		(takes-course jack drama adv-higher)
		(grade c jack drama adv-higher)
		(takes-course jack music national-five)
		(grade d jack music national-five)
		(takes-course jack biology national-five)
		(grade a jack biology national-five)
		(takes-course jack art-design adv-higher)
		(grade a jack art-design adv-higher)
		(takes-course jack french year-one)
		(grade p jack french year-one)
		(uses-strategy jack technological-tools)
		(takes-course william philosophy adv-higher)
		(grade d william philosophy adv-higher)
		(takes-course william gaelic national-four)
		(grade p william gaelic national-four)
		(takes-course william lifeskills national-five)
		(grade b william lifeskills national-five)
		(takes-course william biology higher)
		(grade b william biology higher)
		(takes-course william chemistry national-five)
		(grade c william chemistry national-five)
	)

	(:goal
		(and
			(finished-course emily pc-passport adv-higher)
			(finished-course emily maths adv-higher)
			(finished-course emily cantonese year-one)
			(finished-course emily english adv-higher)
			(finished-course emily design-manufacture national-four)
			(finished-course jack drama adv-higher)
			(finished-course jack music national-five)
			(finished-course jack biology national-five)
			(finished-course jack art-design adv-higher)
			(finished-course jack french year-one)
			(given-support jack tech-assist)
			(finished-course william philosophy adv-higher)
			(finished-course william gaelic national-four)
			(finished-course william lifeskills national-five)
			(finished-course william biology higher)
			(finished-course william chemistry national-five)
		)
	)
)
