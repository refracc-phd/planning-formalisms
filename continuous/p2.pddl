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
		jude grace sofia - student
	)

	(:init
		(= (cost) 0)
		(= (max-units) 4)
		(= (max-weeks) 8)

		(= (week jude spanish national-five) 0)
		(= (week jude art-design year-one) 0)
		(= (week jude modern-studies year-one) 0)
		(= (week jude italian national-five) 0)
		(= (week jude graph-comm national-four) 0)

		(= (unit jude spanish national-five) 0)
		(= (unit jude art-design year-one) 0)
		(= (unit jude modern-studies year-one) 0)
		(= (unit jude italian national-five) 0)
		(= (unit jude graph-comm national-four) 0)

		(= (extra-curricular jude spanish national-five) 0)
		(= (extra-curricular jude art-design year-one) 0)
		(= (extra-curricular jude modern-studies year-one) 0)
		(= (extra-curricular jude italian national-five) 0)
		(= (extra-curricular jude graph-comm national-four) 0)
		(= (uses-strategy jude student-led-class) 0)

		(takes-course jude spanish national-five)
		(grade b jude spanish national-five)
		(takes-course jude art-design year-one)
		(grade p jude art-design year-one)
		(takes-course jude modern-studies year-one)
		(grade p jude modern-studies year-one)
		(takes-course jude italian national-five)
		(grade b jude italian national-five)
		(takes-course jude graph-comm national-four)

		(= (week grace practical-woodwork national-five) 0)
		(= (week grace biology year-two) 0)
		(= (week grace textiles national-four) 0)
		(= (week grace physics higher) 0)
		(= (week grace gaelic higher) 0)

		(= (unit grace practical-woodwork national-five) 0)
		(= (unit grace biology year-two) 0)
		(= (unit grace textiles national-four) 0)
		(= (unit grace physics higher) 0)
		(= (unit grace gaelic higher) 0)

		(= (extra-curricular grace practical-woodwork national-five) 0)
		(= (extra-curricular grace biology year-two) 0)
		(= (extra-curricular grace textiles national-four) 0)
		(= (extra-curricular grace physics higher) 0)
		(= (extra-curricular grace gaelic higher) 0)
		(= (uses-strategy grace teamwork) 0)

		(grade p jude graph-comm national-four)
		(uses-strategy jude student-led-class)
		(takes-course grace practical-woodwork national-five)
		(grade b grace practical-woodwork national-five)
		(takes-course grace biology year-two)
		(grade p grace biology year-two)
		(takes-course grace textiles national-four)
		(grade p grace textiles national-four)
		(takes-course grace physics higher)
		(grade d grace physics higher)
		(takes-course grace gaelic higher)
		(grade d grace gaelic higher)
		(uses-strategy grace teamwork)

		(= (week sofia dance higher) 0)
		(= (week sofia music year-two) 0)
		(= (week sofia cantonese national-four) 0)
		(= (week sofia art-design national-four) 0)
		(= (week sofia urdu adv-higher) 0)

		(= (unit sofia dance higher) 0)
		(= (unit sofia music year-two) 0)
		(= (unit sofia cantonese national-four) 0)
		(= (unit sofia art-design national-four) 0)
		(= (unit sofia urdu adv-higher) 0)

		(= (extra-curricular sofia dance higher) 0)
		(= (extra-curricular sofia music year-two) 0)
		(= (extra-curricular sofia cantonese national-four) 0)
		(= (extra-curricular sofia art-design national-four) 0)
		(= (extra-curricular sofia urdu adv-higher) 0)
		(= (uses-strategy sofia teamwork) 0)

		(takes-course sofia dance higher)
		(grade d sofia dance higher)
		(takes-course sofia music year-two)
		(grade p sofia music year-two)
		(takes-course sofia cantonese national-four)
		(grade p sofia cantonese national-four)
		(takes-course sofia art-design national-four)
		(grade p sofia art-design national-four)
		(takes-course sofia urdu adv-higher)
		(grade c sofia urdu adv-higher)
		(uses-strategy sofia teamwork)
	)

	(:goal
		(and
			(finished-course jude spanish national-five)
			(finished-course jude art-design year-one)
			(finished-course jude modern-studies year-one)
			(finished-course jude italian national-five)
			(finished-course jude graph-comm national-four)
			(given-support jude improving-comms-workshop)
			(finished-course grace practical-woodwork national-five)
			(finished-course grace biology year-two)
			(finished-course grace textiles national-four)
			(finished-course grace physics higher)
			(finished-course grace gaelic higher)
			(given-support grace improving-comms-workshop)
			(given-support grace pomo)
			(finished-course sofia dance higher)
			(finished-course sofia music year-two)
			(finished-course sofia cantonese national-four)
			(finished-course sofia art-design national-four)
			(finished-course sofia urdu adv-higher)
			(given-support sofia improving-comms-workshop)
			(given-support sofia pomo)
		)
	)

	(:metric minimize (cost))
)
