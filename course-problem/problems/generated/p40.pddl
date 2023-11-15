(define (problem p40) (:domain courses)
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
		isabella charlie - student
	)

	(:init
		(takes-course isabella rmps higher)
		(grade a isabella rmps higher)
		(takes-course isabella mandarin adv-higher)
		(grade a isabella mandarin adv-higher)
		(takes-course isabella pc-passport national-five)
		(grade a isabella pc-passport national-five)
		(takes-course isabella biology national-five)
		(grade d isabella biology national-five)
		(takes-course isabella graph-comm adv-higher)
		(grade b isabella graph-comm adv-higher)
		(takes-course isabella graph-comm higher)
		(grade c isabella graph-comm higher)
		(takes-course charlie comp-sci year-one)
		(grade p charlie comp-sci year-one)
		(takes-course charlie art-design national-four)
		(grade p charlie art-design national-four)
		(takes-course charlie maths adv-higher)
		(grade a charlie maths adv-higher)
		(takes-course charlie comp-sci year-one)
		(grade p charlie comp-sci year-one)
		(takes-course charlie physics national-four)
		(grade p charlie physics national-four)
		(takes-course charlie english year-three)
		(grade p charlie english year-three)
		(uses-strategy charlie technological-tools)
	)

	(:goal
		(and
		(finished-course isabella rmps higher)
		(finished-course isabella mandarin adv-higher)
		(finished-course isabella pc-passport national-five)
		(finished-course isabella biology national-five)
		(finished-course isabella graph-comm adv-higher)
		(finished-course isabella graph-comm higher)
		(finished-course charlie comp-sci year-one)
		(finished-course charlie art-design national-four)
		(finished-course charlie maths adv-higher)
		(finished-course charlie comp-sci year-one)
		(finished-course charlie physics national-four)
		(finished-course charlie english year-three)
		(given-support charlie tech-assist)
		)
	)
)
