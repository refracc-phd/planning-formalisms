(define (problem p34) (:domain courses)
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
		oliver olivia amelia william - student
	)

	(:init
		(takes-course oliver politics national-five)
		(grade b oliver politics national-five)
		(takes-course oliver german adv-higher)
		(grade c oliver german adv-higher)
		(takes-course oliver gaelic adv-higher)
		(grade c oliver gaelic adv-higher)
		(takes-course oliver art-design year-two)
		(grade p oliver art-design year-two)
		(takes-course oliver dance adv-higher)
		(grade b oliver dance adv-higher)
		(takes-course olivia dance year-two)
		(grade p olivia dance year-two)
		(takes-course olivia urdu year-one)
		(grade p olivia urdu year-one)
		(takes-course olivia spanish year-three)
		(grade p olivia spanish year-three)
		(takes-course olivia landscape-gardening higher)
		(grade a olivia landscape-gardening higher)
		(takes-course olivia cantonese national-five)
		(grade c olivia cantonese national-five)
		(takes-course amelia biology year-one)
		(grade p amelia biology year-one)
		(takes-course amelia music-tech national-four)
		(grade p amelia music-tech national-four)
		(takes-course amelia modern-studies year-one)
		(grade p amelia modern-studies year-one)
		(takes-course amelia textiles national-five)
		(grade c amelia textiles national-five)
		(takes-course amelia biology national-five)
		(grade d amelia biology national-five)
		(uses-strategy amelia project-based)
		(takes-course william geography year-one)
		(grade p william geography year-one)
		(takes-course william music-tech higher)
		(grade d william music-tech higher)
		(takes-course william physics national-four)
		(grade p william physics national-four)
		(takes-course william comp-sci year-three)
		(grade p william comp-sci year-three)
		(takes-course william design-manufacture higher)
		(grade b william design-manufacture higher)
		(has-support-need william tourettes)
	)

	(:goal
		(and
			(finished-course oliver politics national-five)
			(finished-course oliver german adv-higher)
			(finished-course oliver gaelic adv-higher)
			(finished-course oliver art-design year-two)
			(finished-course oliver dance adv-higher)
			(finished-course olivia dance year-two)
			(finished-course olivia urdu year-one)
			(finished-course olivia spanish year-three)
			(finished-course olivia landscape-gardening higher)
			(finished-course olivia cantonese national-five)
			(finished-course amelia biology year-one)
			(finished-course amelia music-tech national-four)
			(finished-course amelia modern-studies year-one)
			(finished-course amelia textiles national-five)
			(finished-course amelia biology national-five)
			(given-support amelia improving-comms-workshop)
			(finished-course william geography year-one)
			(finished-course william music-tech higher)
			(finished-course william physics national-four)
			(finished-course william comp-sci year-three)
			(finished-course william design-manufacture higher)
			(given-support william isolated)
			(given-support william gamify-learning)
		)
	)
)
