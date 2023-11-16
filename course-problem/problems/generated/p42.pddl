(define (problem p42) (:domain courses)
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
		jack william - student
	)

	(:init
		(takes-course jack art-design national-five)
		(grade d jack art-design national-five)
		(takes-course jack biology adv-higher)
		(grade c jack biology adv-higher)
		(takes-course jack practical-woodwork national-five)
		(grade a jack practical-woodwork national-five)
		(takes-course jack english year-one)
		(grade p jack english year-one)
		(takes-course jack italian year-one)
		(grade p jack italian year-one)
		(has-support-need jack asc-asd)
		(uses-strategy jack student-led-class)
		(takes-course william esol year-three)
		(grade p william esol year-three)
		(takes-course william textiles year-one)
		(grade p william textiles year-one)
		(takes-course william music-tech national-four)
		(grade p william music-tech national-four)
		(takes-course william music-tech year-three)
		(grade p william music-tech year-three)
		(takes-course william english year-three)
		(grade p william english year-three)
	)

	(:goal
		(and
			(finished-course jack art-design national-five)
			(finished-course jack biology adv-higher)
			(finished-course jack practical-woodwork national-five)
			(finished-course jack english year-one)
			(finished-course jack italian year-one)
			(given-support jack improving-comms-workshop)
			(given-support jack tech-assist)
			(given-support jack pomo)
			(given-support jack gamify-learning)
			(given-support jack improving-comms-workshop)
			(finished-course william esol year-three)
			(finished-course william textiles year-one)
			(finished-course william music-tech national-four)
			(finished-course william music-tech year-three)
			(finished-course william english year-three)
		)
	)
)
