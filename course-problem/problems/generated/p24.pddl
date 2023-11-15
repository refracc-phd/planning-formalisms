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
		jack harry amelia grace ava isabella charlie emily william oliver - student
	)

	(:init
		(takes-course jack home-economics year-one)
		(grade p jack home-economics year-one)
		(takes-course jack textiles year-two)
		(grade p jack textiles year-two)
		(takes-course jack business-management year-three)
		(grade p jack business-management year-three)
		(takes-course jack italian year-three)
		(grade p jack italian year-three)
		(takes-course jack chemistry higher)
		(grade c jack chemistry higher)
		(takes-course jack lifeskills national-four)
		(grade p jack lifeskills national-four)
		(takes-course harry gaelic year-three)
		(grade p harry gaelic year-three)
		(takes-course harry music year-one)
		(grade p harry music year-one)
		(takes-course harry history national-four)
		(grade p harry history national-four)
		(takes-course harry spanish higher)
		(grade c harry spanish higher)
		(takes-course harry landscape-gardening year-one)
		(grade p harry landscape-gardening year-one)
		(takes-course harry physics national-four)
		(grade p harry physics national-four)
		(has-support-need harry social-other)
		(uses-strategy harry gamification)
		(takes-course amelia italian higher)
		(grade a amelia italian higher)
		(takes-course amelia latin year-two)
		(grade p amelia latin year-two)
		(takes-course amelia latin year-one)
		(grade p amelia latin year-one)
		(takes-course amelia pc-passport national-four)
		(grade p amelia pc-passport national-four)
		(takes-course amelia modern-studies year-one)
		(grade p amelia modern-studies year-one)
		(takes-course amelia gaelic national-five)
		(grade b amelia gaelic national-five)
		(uses-strategy amelia blended-learning)
		(takes-course grace design-manufacture national-four)
		(grade p grace design-manufacture national-four)
		(takes-course grace urdu national-four)
		(grade p grace urdu national-four)
		(takes-course grace chemistry national-four)
		(grade p grace chemistry national-four)
		(takes-course grace biology year-two)
		(grade p grace biology year-two)
		(takes-course grace phys-ed year-three)
		(grade p grace phys-ed year-three)
		(takes-course grace modern-studies year-three)
		(grade p grace modern-studies year-three)
		(has-support-need grace asc-asd)
		(takes-course ava english adv-higher)
		(grade b ava english adv-higher)
		(takes-course ava esol year-one)
		(grade p ava esol year-one)
		(takes-course ava comp-sci higher)
		(grade c ava comp-sci higher)
		(takes-course ava pc-passport higher)
		(grade d ava pc-passport higher)
		(takes-course ava gaelic year-two)
		(grade p ava gaelic year-two)
		(takes-course ava dance higher)
		(grade d ava dance higher)
		(uses-strategy ava project-based)
		(takes-course isabella art-design national-five)
		(grade d isabella art-design national-five)
		(takes-course isabella lifeskills national-four)
		(grade p isabella lifeskills national-four)
		(takes-course isabella landscape-gardening year-one)
		(grade p isabella landscape-gardening year-one)
		(takes-course isabella graph-comm higher)
		(grade a isabella graph-comm higher)
		(takes-course isabella mandarin year-three)
		(grade p isabella mandarin year-three)
		(takes-course isabella german national-four)
		(grade p isabella german national-four)
		(uses-strategy isabella blended-learning)
		(takes-course charlie italian national-four)
		(grade p charlie italian national-four)
		(takes-course charlie music year-one)
		(grade p charlie music year-one)
		(takes-course charlie english year-one)
		(grade p charlie english year-one)
		(takes-course charlie biology higher)
		(grade a charlie biology higher)
		(takes-course charlie graph-comm year-two)
		(grade p charlie graph-comm year-two)
		(takes-course charlie physics adv-higher)
		(grade a charlie physics adv-higher)
		(uses-strategy charlie flex-seating)
		(takes-course emily music-tech year-one)
		(grade p emily music-tech year-one)
		(takes-course emily home-economics year-one)
		(grade p emily home-economics year-one)
		(takes-course emily modern-studies adv-higher)
		(grade b emily modern-studies adv-higher)
		(takes-course emily business-management higher)
		(grade b emily business-management higher)
		(takes-course emily modern-studies national-five)
		(grade c emily modern-studies national-five)
		(takes-course emily drama year-one)
		(grade p emily drama year-one)
		(has-support-need emily social-other)
		(takes-course william admin-it year-one)
		(grade p william admin-it year-one)
		(takes-course william maths year-one)
		(grade p william maths year-one)
		(takes-course william geography higher)
		(grade d william geography higher)
		(takes-course william phys-ed adv-higher)
		(grade c william phys-ed adv-higher)
		(takes-course william comp-sci adv-higher)
		(grade c william comp-sci adv-higher)
		(takes-course william english year-two)
		(grade p william english year-two)
		(takes-course oliver chemistry year-two)
		(grade p oliver chemistry year-two)
		(takes-course oliver lifeskills national-five)
		(grade c oliver lifeskills national-five)
		(takes-course oliver esol year-two)
		(grade p oliver esol year-two)
		(takes-course oliver lifeskills higher)
		(grade b oliver lifeskills higher)
		(takes-course oliver phys-ed year-two)
		(grade p oliver phys-ed year-two)
		(takes-course oliver design-manufacture adv-higher)
		(grade a oliver design-manufacture adv-higher)
	)

	(:goal
		(and
			(finished-course jack home-economics year-one)
			(finished-course jack textiles year-two)
			(finished-course jack business-management year-three)
			(finished-course jack italian year-three)
			(finished-course jack chemistry higher)
			(finished-course jack lifeskills national-four)
			(finished-course harry gaelic year-three)
			(finished-course harry music year-one)
			(finished-course harry history national-four)
			(finished-course harry spanish higher)
			(finished-course harry landscape-gardening year-one)
			(finished-course harry physics national-four)
			(given-support harry improving-comms-workshop)
			(given-support harry gamify-learning)
			(finished-course amelia italian higher)
			(finished-course amelia latin year-two)
			(finished-course amelia latin year-one)
			(finished-course amelia pc-passport national-four)
			(finished-course amelia modern-studies year-one)
			(finished-course amelia gaelic national-five)
			(given-support amelia improving-comms-workshop)
			(given-support amelia tech-assist)
			(given-support amelia gamify-learning)
			(finished-course grace design-manufacture national-four)
			(finished-course grace urdu national-four)
			(finished-course grace chemistry national-four)
			(finished-course grace biology year-two)
			(finished-course grace phys-ed year-three)
			(finished-course grace modern-studies year-three)
			(given-support grace improving-comms-workshop)
			(given-support grace tech-assist)
			(given-support grace pomo)
			(given-support grace gamify-learning)
			(finished-course ava english adv-higher)
			(finished-course ava esol year-one)
			(finished-course ava comp-sci higher)
			(finished-course ava pc-passport higher)
			(finished-course ava gaelic year-two)
			(finished-course ava dance higher)
			(given-support ava improving-comms-workshop)
			(finished-course isabella art-design national-five)
			(finished-course isabella lifeskills national-four)
			(finished-course isabella landscape-gardening year-one)
			(finished-course isabella graph-comm higher)
			(finished-course isabella mandarin year-three)
			(finished-course isabella german national-four)
			(given-support isabella improving-comms-workshop)
			(given-support isabella tech-assist)
			(given-support isabella gamify-learning)
			(finished-course charlie italian national-four)
			(finished-course charlie music year-one)
			(finished-course charlie english year-one)
			(finished-course charlie biology higher)
			(finished-course charlie graph-comm year-two)
			(finished-course charlie physics adv-higher)
			(given-support charlie improving-comms-workshop)
			(finished-course emily music-tech year-one)
			(finished-course emily home-economics year-one)
			(finished-course emily modern-studies adv-higher)
			(finished-course emily business-management higher)
			(finished-course emily modern-studies national-five)
			(finished-course emily drama year-one)
			(given-support emily improving-comms-workshop)
			(finished-course william admin-it year-one)
			(finished-course william maths year-one)
			(finished-course william geography higher)
			(finished-course william phys-ed adv-higher)
			(finished-course william comp-sci adv-higher)
			(finished-course william english year-two)
			(finished-course oliver chemistry year-two)
			(finished-course oliver lifeskills national-five)
			(finished-course oliver esol year-two)
			(finished-course oliver lifeskills higher)
			(finished-course oliver phys-ed year-two)
			(finished-course oliver design-manufacture adv-higher)
		)
	)
)
