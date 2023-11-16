(define (problem p25) (:domain courses)
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
		amelia emily william - student
	)

	(:init
		(takes-course amelia graph-comm higher)
		(grade a amelia graph-comm higher)
		(takes-course amelia cantonese year-two)
		(grade p amelia cantonese year-two)
		(takes-course amelia latin year-two)
		(grade p amelia latin year-two)
		(takes-course amelia phys-ed national-five)
		(grade c amelia phys-ed national-five)
		(takes-course amelia mandarin year-two)
		(grade p amelia mandarin year-two)
		(takes-course emily urdu higher)
		(grade c emily urdu higher)
		(takes-course emily spanish higher)
		(grade a emily spanish higher)
		(takes-course emily geography year-one)
		(grade p emily geography year-one)
		(takes-course emily numeracy national-four)
		(grade p emily numeracy national-four)
		(takes-course emily chemistry year-one)
		(grade p emily chemistry year-one)
		(has-support-need emily language)
		(uses-strategy emily flex-seating)
		(takes-course william dance adv-higher)
		(grade b william dance adv-higher)
		(takes-course william drama national-five)
		(grade a william drama national-five)
		(takes-course william dance year-three)
		(grade p william dance year-three)
		(takes-course william art-design adv-higher)
		(grade a william art-design adv-higher)
		(takes-course william pc-passport national-four)
		(grade p william pc-passport national-four)
		(uses-strategy william project-based)
	)

	(:goal
		(and
			(finished-course amelia graph-comm higher)
			(finished-course amelia cantonese year-two)
			(finished-course amelia latin year-two)
			(finished-course amelia phys-ed national-five)
			(finished-course amelia mandarin year-two)
			(finished-course emily urdu higher)
			(finished-course emily spanish higher)
			(finished-course emily geography year-one)
			(finished-course emily numeracy national-four)
			(finished-course emily chemistry year-one)
			(given-support emily reading-group)
			(given-support emily tech-assist)
			(given-support emily improving-comms-workshop)
			(finished-course william dance adv-higher)
			(finished-course william drama national-five)
			(finished-course william dance year-three)
			(finished-course william art-design adv-higher)
			(finished-course william pc-passport national-four)
			(given-support william improving-comms-workshop)
		)
	)
)
