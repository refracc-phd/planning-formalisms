(define (problem p2) (:domain courses)
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
		emily william olivia - student
	)

	(:init
		(takes-course emily french year-two)
		(grade p emily french year-two)
		(takes-course emily design-manufacture year-one)
		(grade p emily design-manufacture year-one)
		(takes-course emily urdu adv-higher)
		(grade a emily urdu adv-higher)
		(takes-course emily biology year-one)
		(grade p emily biology year-one)
		(takes-course emily numeracy year-one)
		(grade p emily numeracy year-one)
		(takes-course emily english national-four)
		(grade p emily english national-four)
		(uses-strategy emily flex-seating)
		(takes-course william italian year-two)
		(grade p william italian year-two)
		(takes-course william geography higher)
		(grade b william geography higher)
		(takes-course william textiles national-five)
		(grade c william textiles national-five)
		(takes-course william graph-comm adv-higher)
		(grade c william graph-comm adv-higher)
		(takes-course william maths higher)
		(grade a william maths higher)
		(takes-course william history year-two)
		(grade p william history year-two)
		(uses-strategy william teamwork)
		(takes-course olivia spanish year-one)
		(grade p olivia spanish year-one)
		(takes-course olivia esol year-three)
		(grade p olivia esol year-three)
		(takes-course olivia numeracy national-four)
		(grade p olivia numeracy national-four)
		(takes-course olivia design-manufacture higher)
		(grade c olivia design-manufacture higher)
		(takes-course olivia design-manufacture year-two)
		(grade p olivia design-manufacture year-two)
		(takes-course olivia home-economics higher)
		(grade d olivia home-economics higher)
		(has-support-need olivia tourettes)
		(uses-strategy olivia student-led-class)
	)

	(:goal
		(and
		(finished-course emily french year-two)
		(finished-course emily design-manufacture year-one)
		(finished-course emily urdu adv-higher)
		(finished-course emily biology year-one)
		(finished-course emily numeracy year-one)
		(finished-course emily english national-four)
		(given-support emily improving-comms-workshop)
		(finished-course william italian year-two)
		(finished-course william geography higher)
		(finished-course william textiles national-five)
		(finished-course william graph-comm adv-higher)
		(finished-course william maths higher)
		(finished-course william history year-two)
		(given-support william improving-comms-workshop)
		(given-support william pomo)
		(finished-course olivia spanish year-one)
		(finished-course olivia esol year-three)
		(finished-course olivia numeracy national-four)
		(finished-course olivia design-manufacture higher)
		(finished-course olivia design-manufacture year-two)
		(finished-course olivia home-economics higher)
		(given-support olivia isolated)
		(given-support olivia gamify-learning)
		(given-support olivia improving-comms-workshop)
		)
	)
)
