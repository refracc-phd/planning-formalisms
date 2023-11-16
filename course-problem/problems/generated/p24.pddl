(define (problem p24) (:domain courses)
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
		oliver william emily - student
	)

	(:init
		(takes-course oliver english year-two)
		(grade p oliver english year-two)
		(takes-course oliver physics higher)
		(grade c oliver physics higher)
		(takes-course oliver music national-five)
		(grade a oliver music national-five)
		(takes-course oliver admin-it national-five)
		(grade a oliver admin-it national-five)
		(takes-course oliver drama year-three)
		(grade p oliver drama year-three)
		(uses-strategy oliver student-led-class)
		(takes-course william lifeskills year-two)
		(grade p william lifeskills year-two)
		(takes-course william gaelic national-four)
		(grade p william gaelic national-four)
		(takes-course william philosophy adv-higher)
		(grade d william philosophy adv-higher)
		(takes-course william music-tech year-three)
		(grade p william music-tech year-three)
		(takes-course william english national-four)
		(grade p william english national-four)
		(uses-strategy william student-led-class)
		(takes-course emily biology year-three)
		(grade p emily biology year-three)
		(takes-course emily chemistry national-four)
		(grade p emily chemistry national-four)
		(takes-course emily physics national-four)
		(grade p emily physics national-four)
		(takes-course emily lifeskills national-four)
		(grade p emily lifeskills national-four)
		(takes-course emily cantonese higher)
		(grade c emily cantonese higher)
		(has-support-need emily asc-asd)
	)

	(:goal
		(and
			(finished-course oliver english year-two)
			(finished-course oliver physics higher)
			(finished-course oliver music national-five)
			(finished-course oliver admin-it national-five)
			(finished-course oliver drama year-three)
			(given-support oliver improving-comms-workshop)
			(finished-course william lifeskills year-two)
			(finished-course william gaelic national-four)
			(finished-course william philosophy adv-higher)
			(finished-course william music-tech year-three)
			(finished-course william english national-four)
			(given-support william improving-comms-workshop)
			(finished-course emily biology year-three)
			(finished-course emily chemistry national-four)
			(finished-course emily physics national-four)
			(finished-course emily lifeskills national-four)
			(finished-course emily cantonese higher)
			(given-support emily improving-comms-workshop)
			(given-support emily tech-assist)
			(given-support emily pomo)
			(given-support emily gamify-learning)
		)
	)
)
