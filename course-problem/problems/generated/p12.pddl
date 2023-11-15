(define (problem p12) (:domain courses)
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
		harry olivia amelia - student
	)

	(:init
		(takes-course harry history national-four)
		(grade p harry history national-four)
		(takes-course harry maths national-four)
		(grade p harry maths national-four)
		(takes-course harry numeracy year-one)
		(grade p harry numeracy year-one)
		(takes-course harry phys-ed national-four)
		(grade p harry phys-ed national-four)
		(takes-course harry music higher)
		(grade a harry music higher)
		(takes-course harry business-management higher)
		(grade b harry business-management higher)
		(has-support-need harry social-other)
		(takes-course olivia french national-four)
		(grade p olivia french national-four)
		(takes-course olivia landscape-gardening national-four)
		(grade p olivia landscape-gardening national-four)
		(takes-course olivia spanish national-four)
		(grade p olivia spanish national-four)
		(takes-course olivia mandarin national-four)
		(grade p olivia mandarin national-four)
		(takes-course olivia phys-ed national-four)
		(grade p olivia phys-ed national-four)
		(takes-course olivia drama higher)
		(grade c olivia drama higher)
		(takes-course amelia pc-passport year-one)
		(grade p amelia pc-passport year-one)
		(takes-course amelia music-tech national-four)
		(grade p amelia music-tech national-four)
		(takes-course amelia geography adv-higher)
		(grade a amelia geography adv-higher)
		(takes-course amelia modern-studies adv-higher)
		(grade c amelia modern-studies adv-higher)
		(takes-course amelia practical-woodwork year-two)
		(grade p amelia practical-woodwork year-two)
		(takes-course amelia numeracy year-one)
		(grade p amelia numeracy year-one)
	)

	(:goal
		(and
			(finished-course harry history national-four)
			(finished-course harry maths national-four)
			(finished-course harry numeracy year-one)
			(finished-course harry phys-ed national-four)
			(finished-course harry music higher)
			(finished-course harry business-management higher)
			(given-support harry improving-comms-workshop)
			(finished-course olivia french national-four)
			(finished-course olivia landscape-gardening national-four)
			(finished-course olivia spanish national-four)
			(finished-course olivia mandarin national-four)
			(finished-course olivia phys-ed national-four)
			(finished-course olivia drama higher)
			(finished-course amelia pc-passport year-one)
			(finished-course amelia music-tech national-four)
			(finished-course amelia geography adv-higher)
			(finished-course amelia modern-studies adv-higher)
			(finished-course amelia practical-woodwork year-two)
			(finished-course amelia numeracy year-one)
		)
	)
)
