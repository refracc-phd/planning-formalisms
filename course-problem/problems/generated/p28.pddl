(define (problem p28) (:domain courses)
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
		emily olivia - student
	)

	(:init
		(takes-course emily pc-passport year-two)
		(grade p emily pc-passport year-two)
		(takes-course emily art-design higher)
		(grade a emily art-design higher)
		(takes-course emily textiles national-five)
		(grade a emily textiles national-five)
		(takes-course emily comp-sci national-five)
		(grade d emily comp-sci national-five)
		(takes-course emily phys-ed national-four)
		(grade p emily phys-ed national-four)
		(has-support-need emily tourettes)
		(takes-course olivia music national-four)
		(grade p olivia music national-four)
		(takes-course olivia cantonese national-four)
		(grade p olivia cantonese national-four)
		(takes-course olivia business-management year-one)
		(grade p olivia business-management year-one)
		(takes-course olivia philosophy higher)
		(grade c olivia philosophy higher)
		(takes-course olivia politics national-four)
		(grade p olivia politics national-four)
		(uses-strategy olivia gamification)
	)

	(:goal
		(and
			(finished-course emily pc-passport year-two)
			(finished-course emily art-design higher)
			(finished-course emily textiles national-five)
			(finished-course emily comp-sci national-five)
			(finished-course emily phys-ed national-four)
			(given-support emily isolated)
			(given-support emily gamify-learning)
			(finished-course olivia music national-four)
			(finished-course olivia cantonese national-four)
			(finished-course olivia business-management year-one)
			(finished-course olivia philosophy higher)
			(finished-course olivia politics national-four)
			(given-support olivia gamify-learning)
		)
	)
)
