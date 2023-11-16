(define (problem p15) (:domain courses)
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
		emily amelia - student
	)

	(:init
		(takes-course emily music-tech year-three)
		(grade p emily music-tech year-three)
		(takes-course emily graph-comm year-one)
		(grade p emily graph-comm year-one)
		(takes-course emily physics year-three)
		(grade p emily physics year-three)
		(takes-course emily modern-studies national-four)
		(grade p emily modern-studies national-four)
		(takes-course emily maths year-two)
		(grade p emily maths year-two)
		(has-support-need emily asc-asd)
		(takes-course amelia art-design year-two)
		(grade p amelia art-design year-two)
		(takes-course amelia dance year-three)
		(grade p amelia dance year-three)
		(takes-course amelia pc-passport adv-higher)
		(grade a amelia pc-passport adv-higher)
		(takes-course amelia latin national-four)
		(grade p amelia latin national-four)
		(takes-course amelia modern-studies national-five)
		(grade c amelia modern-studies national-five)
	)

	(:goal
		(and
			(finished-course emily music-tech year-three)
			(finished-course emily graph-comm year-one)
			(finished-course emily physics year-three)
			(finished-course emily modern-studies national-four)
			(finished-course emily maths year-two)
			(given-support emily improving-comms-workshop)
			(given-support emily tech-assist)
			(given-support emily pomo)
			(given-support emily gamify-learning)
			(finished-course amelia art-design year-two)
			(finished-course amelia dance year-three)
			(finished-course amelia pc-passport adv-higher)
			(finished-course amelia latin national-four)
			(finished-course amelia modern-studies national-five)
		)
	)
)
