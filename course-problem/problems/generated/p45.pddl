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
		(takes-course emily french year-two)
		(grade p emily french year-two)
		(takes-course emily graph-comm national-five)
		(grade c emily graph-comm national-five)
		(takes-course emily numeracy year-one)
		(grade p emily numeracy year-one)
		(takes-course emily home-economics higher)
		(grade a emily home-economics higher)
		(takes-course emily esol year-one)
		(grade p emily esol year-one)
		(takes-course emily home-economics year-two)
		(grade p emily home-economics year-two)
		(uses-strategy emily blended-learning)
		(takes-course james music-tech higher)
		(grade d james music-tech higher)
		(takes-course james geography year-one)
		(grade p james geography year-one)
		(takes-course james drama year-three)
		(grade p james drama year-three)
		(takes-course james mandarin national-four)
		(grade p james mandarin national-four)
		(takes-course james admin-it year-one)
		(grade p james admin-it year-one)
		(takes-course james geography year-three)
		(grade p james geography year-three)
		(uses-strategy james blended-learning)
		(takes-course sophia modern-studies higher)
		(grade d sophia modern-studies higher)
		(takes-course sophia philosophy year-two)
		(grade p sophia philosophy year-two)
		(takes-course sophia art-design national-four)
		(grade p sophia art-design national-four)
		(takes-course sophia lifeskills year-two)
		(grade p sophia lifeskills year-two)
		(takes-course sophia french year-three)
		(grade p sophia french year-three)
		(takes-course sophia textiles national-four)
		(grade p sophia textiles national-four)
		(uses-strategy sophia blended-learning)
	)

	(:goal
		(and
			(finished-course emily french year-two)
			(finished-course emily graph-comm national-five)
			(finished-course emily numeracy year-one)
			(finished-course emily home-economics higher)
			(finished-course emily esol year-one)
			(finished-course emily home-economics year-two)
			(given-support emily improving-comms-workshop)
			(given-support emily tech-assist)
			(given-support emily gamify-learning)
			(finished-course james music-tech higher)
			(finished-course james geography year-one)
			(finished-course james drama year-three)
			(finished-course james mandarin national-four)
			(finished-course james admin-it year-one)
			(finished-course james geography year-three)
			(given-support james improving-comms-workshop)
			(given-support james tech-assist)
			(given-support james gamify-learning)
			(finished-course sophia modern-studies higher)
			(finished-course sophia philosophy year-two)
			(finished-course sophia art-design national-four)
			(finished-course sophia lifeskills year-two)
			(finished-course sophia french year-three)
			(finished-course sophia textiles national-four)
			(given-support sophia improving-comms-workshop)
			(given-support sophia tech-assist)
			(given-support sophia gamify-learning)
		)
	)
)
