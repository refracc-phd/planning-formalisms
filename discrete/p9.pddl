(define (problem p9) (:domain courses)
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
		oscar travis leo grace ava ivy freddie caleb finn sienna - student
	)

	(:init
		(takes-course oscar phys-ed national-four)
		(grade p oscar phys-ed national-four)
		(takes-course oscar pc-passport adv-higher)
		(grade c oscar pc-passport adv-higher)
		(takes-course oscar english higher)
		(grade d oscar english higher)
		(takes-course oscar numeracy year-one)
		(grade p oscar numeracy year-one)
		(takes-course oscar history adv-higher)
		(grade d oscar history adv-higher)
		(uses-strategy oscar tech)
		(takes-course travis phys-ed national-four)
		(grade p travis phys-ed national-four)
		(takes-course travis mandarin higher)
		(grade b travis mandarin higher)
		(takes-course travis textiles year-three)
		(grade p travis textiles year-three)
		(takes-course travis urdu national-five)
		(grade d travis urdu national-five)
		(takes-course travis drama year-two)
		(grade p travis drama year-two)
		(uses-strategy travis project-based)
		(takes-course leo mandarin national-four)
		(grade p leo mandarin national-four)
		(takes-course leo philosophy national-five)
		(grade b leo philosophy national-five)
		(takes-course leo graph-comm year-two)
		(grade p leo graph-comm year-two)
		(takes-course leo gaelic adv-higher)
		(grade c leo gaelic adv-higher)
		(takes-course leo music-tech year-one)
		(grade p leo music-tech year-one)
		(uses-strategy leo teamwork)
		(takes-course grace textiles national-four)
		(grade p grace textiles national-four)
		(takes-course grace numeracy year-one)
		(grade p grace numeracy year-one)
		(takes-course grace italian higher)
		(grade a grace italian higher)
		(takes-course grace physics adv-higher)
		(grade a grace physics adv-higher)
		(takes-course grace latin higher)
		(grade a grace latin higher)
		(uses-strategy grace tech)
		(takes-course ava music-tech year-one)
		(grade p ava music-tech year-one)
		(takes-course ava politics adv-higher)
		(grade a ava politics adv-higher)
		(takes-course ava latin year-three)
		(grade p ava latin year-three)
		(takes-course ava graph-comm national-five)
		(grade d ava graph-comm national-five)
		(takes-course ava comp-sci year-one)
		(grade p ava comp-sci year-one)
		(uses-strategy ava flex-seating)
		(takes-course ivy lifeskills higher)
		(grade c ivy lifeskills higher)
		(takes-course ivy urdu year-three)
		(grade p ivy urdu year-three)
		(takes-course ivy design-manufacture year-one)
		(grade p ivy design-manufacture year-one)
		(takes-course ivy chemistry year-two)
		(grade p ivy chemistry year-two)
		(takes-course ivy numeracy year-one)
		(grade p ivy numeracy year-one)
		(uses-strategy ivy project-based)
		(takes-course freddie modern-studies year-one)
		(grade p freddie modern-studies year-one)
		(takes-course freddie modern-studies year-three)
		(grade p freddie modern-studies year-three)
		(takes-course freddie numeracy year-two)
		(grade p freddie numeracy year-two)
		(takes-course freddie philosophy year-one)
		(grade p freddie philosophy year-one)
		(takes-course freddie design-manufacture year-one)
		(grade p freddie design-manufacture year-one)
		(uses-strategy freddie teamwork)
		(takes-course caleb pc-passport year-one)
		(grade p caleb pc-passport year-one)
		(takes-course caleb urdu higher)
		(grade a caleb urdu higher)
		(takes-course caleb english year-two)
		(grade p caleb english year-two)
		(takes-course caleb design-manufacture higher)
		(grade b caleb design-manufacture higher)
		(takes-course caleb german higher)
		(grade b caleb german higher)
		(uses-strategy caleb student-led-class)
		(takes-course finn biology year-one)
		(grade p finn biology year-one)
		(takes-course finn drama year-three)
		(grade p finn drama year-three)
		(takes-course finn german adv-higher)
		(grade c finn german adv-higher)
		(takes-course finn admin-it higher)
		(grade d finn admin-it higher)
		(takes-course finn numeracy national-four)
		(grade p finn numeracy national-four)
		(uses-strategy finn flex-seating)
		(takes-course sienna mandarin year-two)
		(grade p sienna mandarin year-two)
		(takes-course sienna admin-it year-one)
		(grade p sienna admin-it year-one)
		(takes-course sienna pc-passport year-one)
		(grade p sienna pc-passport year-one)
		(takes-course sienna admin-it adv-higher)
		(grade d sienna admin-it adv-higher)
		(takes-course sienna practical-woodwork national-five)
		(grade c sienna practical-woodwork national-five)
		(uses-strategy sienna gamification)
	)

	(:goal
		(and
			(finished-course oscar phys-ed national-four)
			(finished-course oscar pc-passport adv-higher)
			(finished-course oscar english higher)
			(finished-course oscar numeracy year-one)
			(finished-course oscar history adv-higher)
			(given-support oscar tech-assist)
			(finished-course travis phys-ed national-four)
			(finished-course travis mandarin higher)
			(finished-course travis textiles year-three)
			(finished-course travis urdu national-five)
			(finished-course travis drama year-two)
			(given-support travis improving-comms-workshop)
			(finished-course leo mandarin national-four)
			(finished-course leo philosophy national-five)
			(finished-course leo graph-comm year-two)
			(finished-course leo gaelic adv-higher)
			(finished-course leo music-tech year-one)
			(given-support leo improving-comms-workshop)
			(given-support leo pomo)
			(finished-course grace textiles national-four)
			(finished-course grace numeracy year-one)
			(finished-course grace italian higher)
			(finished-course grace physics adv-higher)
			(finished-course grace latin higher)
			(given-support grace tech-assist)
			(finished-course ava music-tech year-one)
			(finished-course ava politics adv-higher)
			(finished-course ava latin year-three)
			(finished-course ava graph-comm national-five)
			(finished-course ava comp-sci year-one)
			(given-support ava improving-comms-workshop)
			(finished-course ivy lifeskills higher)
			(finished-course ivy urdu year-three)
			(finished-course ivy design-manufacture year-one)
			(finished-course ivy chemistry year-two)
			(finished-course ivy numeracy year-one)
			(given-support ivy improving-comms-workshop)
			(finished-course freddie modern-studies year-one)
			(finished-course freddie modern-studies year-three)
			(finished-course freddie numeracy year-two)
			(finished-course freddie philosophy year-one)
			(finished-course freddie design-manufacture year-one)
			(given-support freddie improving-comms-workshop)
			(given-support freddie pomo)
			(finished-course caleb pc-passport year-one)
			(finished-course caleb urdu higher)
			(finished-course caleb english year-two)
			(finished-course caleb design-manufacture higher)
			(finished-course caleb german higher)
			(given-support caleb improving-comms-workshop)
			(finished-course finn biology year-one)
			(finished-course finn drama year-three)
			(finished-course finn german adv-higher)
			(finished-course finn admin-it higher)
			(finished-course finn numeracy national-four)
			(given-support finn improving-comms-workshop)
			(finished-course sienna mandarin year-two)
			(finished-course sienna admin-it year-one)
			(finished-course sienna pc-passport year-one)
			(finished-course sienna admin-it adv-higher)
			(finished-course sienna practical-woodwork national-five)
			(given-support sienna gamify-learning)
		)
	)

)
