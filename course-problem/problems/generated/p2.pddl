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
		emily oliver william olivia - student
	)

	(:init
		(takes-course emily drama national-five)
		(grade c emily drama national-five)
		(takes-course emily phys-ed national-four)
		(grade p emily phys-ed national-four)
		(takes-course emily practical-woodwork year-three)
		(grade p emily practical-woodwork year-three)
		(takes-course emily lifeskills higher)
		(grade a emily lifeskills higher)
		(takes-course emily art-design year-three)
		(grade p emily art-design year-three)
		(takes-course oliver urdu adv-higher)
		(grade c oliver urdu adv-higher)
		(takes-course oliver music-tech national-five)
		(grade d oliver music-tech national-five)
		(takes-course oliver music-tech higher)
		(grade d oliver music-tech higher)
		(takes-course oliver design-manufacture year-three)
		(grade p oliver design-manufacture year-three)
		(takes-course oliver latin national-four)
		(grade p oliver latin national-four)
		(has-support-need oliver deaf-hearing)
		(takes-course william maths higher)
		(grade c william maths higher)
		(takes-course william comp-sci higher)
		(grade b william comp-sci higher)
		(takes-course william comp-sci national-five)
		(grade d william comp-sci national-five)
		(takes-course william practical-woodwork year-two)
		(grade p william practical-woodwork year-two)
		(takes-course william latin national-four)
		(grade p william latin national-four)
		(takes-course olivia numeracy national-four)
		(grade p olivia numeracy national-four)
		(takes-course olivia admin-it national-four)
		(grade p olivia admin-it national-four)
		(takes-course olivia politics year-three)
		(grade p olivia politics year-three)
		(takes-course olivia practical-woodwork year-one)
		(grade p olivia practical-woodwork year-one)
		(takes-course olivia rmps year-three)
		(grade p olivia rmps year-three)
		(has-support-need olivia blind-visual)
	)

	(:goal
		(and
			(finished-course emily drama national-five)
			(finished-course emily phys-ed national-four)
			(finished-course emily practical-woodwork year-three)
			(finished-course emily lifeskills higher)
			(finished-course emily art-design year-three)
			(finished-course oliver urdu adv-higher)
			(finished-course oliver music-tech national-five)
			(finished-course oliver music-tech higher)
			(finished-course oliver design-manufacture year-three)
			(finished-course oliver latin national-four)
			(given-support oliver tech-assist)
			(finished-course william maths higher)
			(finished-course william comp-sci higher)
			(finished-course william comp-sci national-five)
			(finished-course william practical-woodwork year-two)
			(finished-course william latin national-four)
			(finished-course olivia numeracy national-four)
			(finished-course olivia admin-it national-four)
			(finished-course olivia politics year-three)
			(finished-course olivia practical-woodwork year-one)
			(finished-course olivia rmps year-three)
			(given-support olivia tech-assist)
			(given-support olivia reading-group)
		)
	)
)
