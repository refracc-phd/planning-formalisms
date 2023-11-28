(define (problem p4) (:domain courses)
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
		emily oliver william - student
	)

	(:init
		(takes-course emily physics year-one)
		(grade p emily physics year-one)
		(takes-course emily practical-woodwork adv-higher)
		(grade d emily practical-woodwork adv-higher)
		(takes-course emily drama year-one)
		(grade p emily drama year-one)
		(takes-course emily comp-sci year-three)
		(grade p emily comp-sci year-three)
		(uses-strategy emily blended-learning)
		(takes-course oliver biology year-one)
		(grade p oliver biology year-one)
		(takes-course oliver german national-five)
		(grade c oliver german national-five)
		(takes-course oliver german year-two)
		(grade p oliver german year-two)
		(takes-course oliver gaelic national-five)
		(grade d oliver gaelic national-five)
		(uses-strategy oliver project-based)
		(takes-course william maths adv-higher)
		(grade a william maths adv-higher)
		(takes-course william drama year-two)
		(grade p william drama year-two)
		(takes-course william biology year-one)
		(grade p william biology year-one)
		(takes-course william spanish year-one)
		(grade p william spanish year-one)
		(uses-strategy william teamwork)
	)

	(:goal
		(and
			(finished-course emily physics year-one)
			(finished-course emily practical-woodwork adv-higher)
			(finished-course emily drama year-one)
			(finished-course emily comp-sci year-three)
			(given-support emily improving-comms-workshop)
			(given-support emily tech-assist)
			(given-support emily gamify-learning)
			(finished-course oliver biology year-one)
			(finished-course oliver german national-five)
			(finished-course oliver german year-two)
			(finished-course oliver gaelic national-five)
			(given-support oliver improving-comms-workshop)
			(finished-course william maths adv-higher)
			(finished-course william drama year-two)
			(finished-course william biology year-one)
			(finished-course william spanish year-one)
			(given-support william improving-comms-workshop)
			(given-support william pomo)
		)
	)
)
