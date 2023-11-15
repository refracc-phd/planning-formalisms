(define (problem p45) (:domain courses)
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
		emily james sophia - student
	)

	(:init
		(takes-course emily maths year-one)
		(grade p emily maths year-one)
		(takes-course emily cantonese higher)
		(grade b emily cantonese higher)
		(takes-course emily geography year-one)
		(grade p emily geography year-one)
		(takes-course emily cantonese national-four)
		(grade p emily cantonese national-four)
		(takes-course emily maths year-two)
		(grade p emily maths year-two)
		(takes-course emily lifeskills year-one)
		(grade p emily lifeskills year-one)
		(has-support-need emily social-other)
		(takes-course james rmps national-four)
		(grade p james rmps national-four)
		(takes-course james numeracy year-two)
		(grade p james numeracy year-two)
		(takes-course james modern-studies year-three)
		(grade p james modern-studies year-three)
		(takes-course james design-manufacture national-four)
		(grade p james design-manufacture national-four)
		(takes-course james comp-sci national-five)
		(grade c james comp-sci national-five)
		(takes-course james comp-sci national-four)
		(grade p james comp-sci national-four)
		(takes-course sophia cantonese year-three)
		(grade p sophia cantonese year-three)
		(takes-course sophia rmps year-two)
		(grade p sophia rmps year-two)
		(takes-course sophia latin year-three)
		(grade p sophia latin year-three)
		(takes-course sophia spanish adv-higher)
		(grade b sophia spanish adv-higher)
		(takes-course sophia english national-four)
		(grade p sophia english national-four)
		(takes-course sophia textiles year-two)
		(grade p sophia textiles year-two)
	)

	(:goal
		(and
		(finished-course emily maths year-one)
		(finished-course emily cantonese higher)
		(finished-course emily geography year-one)
		(finished-course emily cantonese national-four)
		(finished-course emily maths year-two)
		(finished-course emily lifeskills year-one)
		(given-support emily improving-comms-workshop)
		(finished-course james rmps national-four)
		(finished-course james numeracy year-two)
		(finished-course james modern-studies year-three)
		(finished-course james design-manufacture national-four)
		(finished-course james comp-sci national-five)
		(finished-course james comp-sci national-four)
		(finished-course sophia cantonese year-three)
		(finished-course sophia rmps year-two)
		(finished-course sophia latin year-three)
		(finished-course sophia spanish adv-higher)
		(finished-course sophia english national-four)
		(finished-course sophia textiles year-two)
		)
	)
)
