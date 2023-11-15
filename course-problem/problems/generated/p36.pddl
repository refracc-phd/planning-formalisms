(define (problem p36) (:domain courses)
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
		oliver thomas george - student
	)

	(:init
		(takes-course oliver business-management national-four)
		(grade p oliver business-management national-four)
		(takes-course oliver graph-comm higher)
		(grade c oliver graph-comm higher)
		(takes-course oliver english year-one)
		(grade p oliver english year-one)
		(takes-course oliver phys-ed year-one)
		(grade p oliver phys-ed year-one)
		(takes-course oliver french year-three)
		(grade p oliver french year-three)
		(takes-course oliver textiles year-three)
		(grade p oliver textiles year-three)
		(uses-strategy oliver project-based)
		(takes-course thomas french adv-higher)
		(grade c thomas french adv-higher)
		(takes-course thomas german national-five)
		(grade d thomas german national-five)
		(takes-course thomas music national-five)
		(grade d thomas music national-five)
		(takes-course thomas spanish higher)
		(grade b thomas spanish higher)
		(takes-course thomas art-design higher)
		(grade c thomas art-design higher)
		(takes-course thomas pc-passport year-one)
		(grade p thomas pc-passport year-one)
		(uses-strategy thomas student-led-class)
		(takes-course george french adv-higher)
		(grade b george french adv-higher)
		(takes-course george landscape-gardening year-two)
		(grade p george landscape-gardening year-two)
		(takes-course george business-management adv-higher)
		(grade a george business-management adv-higher)
		(takes-course george english higher)
		(grade d george english higher)
		(takes-course george lifeskills year-two)
		(grade p george lifeskills year-two)
		(takes-course george music national-five)
		(grade a george music national-five)
		(uses-strategy george flex-seating)
	)

	(:goal
		(and
			(finished-course oliver business-management national-four)
			(finished-course oliver graph-comm higher)
			(finished-course oliver english year-one)
			(finished-course oliver phys-ed year-one)
			(finished-course oliver french year-three)
			(finished-course oliver textiles year-three)
			(given-support oliver improving-comms-workshop)
			(finished-course thomas french adv-higher)
			(finished-course thomas german national-five)
			(finished-course thomas music national-five)
			(finished-course thomas spanish higher)
			(finished-course thomas art-design higher)
			(finished-course thomas pc-passport year-one)
			(given-support thomas improving-comms-workshop)
			(finished-course george french adv-higher)
			(finished-course george landscape-gardening year-two)
			(finished-course george business-management adv-higher)
			(finished-course george english higher)
			(finished-course george lifeskills year-two)
			(finished-course george music national-five)
			(given-support george improving-comms-workshop)
		)
	)
)
