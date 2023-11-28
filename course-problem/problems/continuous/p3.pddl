(define (problem p3) (:domain courses)
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
		oliver - student
	)

	(:init
		(takes-course oliver french year-three)
		(grade p oliver french year-three)
		(takes-course oliver numeracy national-five)
		(grade c oliver numeracy national-five)
		(takes-course oliver english year-one)
		(grade p oliver english year-one)
		(takes-course oliver german national-five)
		(grade a oliver german national-five)
		(uses-strategy oliver student-led-class)
	)

	(:goal
		(and
			(finished-course oliver french year-three)
			(finished-course oliver numeracy national-five)
			(finished-course oliver english year-one)
			(finished-course oliver german national-five)
			(given-support oliver improving-comms-workshop)
		)
	)
)
