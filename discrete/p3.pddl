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
		alexander aurora zachary robyn - student
	)

	(:init
		(takes-course alexander german national-four)
		(grade p alexander german national-four)
		(takes-course alexander design-manufacture higher)
		(grade d alexander design-manufacture higher)
		(takes-course alexander music-tech year-one)
		(grade p alexander music-tech year-one)
		(takes-course alexander graph-comm adv-higher)
		(grade c alexander graph-comm adv-higher)
		(takes-course alexander art-design year-three)
		(grade p alexander art-design year-three)
		(uses-strategy alexander tech)
		(takes-course aurora maths adv-higher)
		(grade a aurora maths adv-higher)
		(takes-course aurora italian national-five)
		(grade a aurora italian national-five)
		(takes-course aurora history higher)
		(grade b aurora history higher)
		(takes-course aurora dance national-five)
		(grade c aurora dance national-five)
		(takes-course aurora mandarin national-four)
		(grade p aurora mandarin national-four)
		(uses-strategy aurora flex-seating)
		(takes-course zachary mandarin national-five)
		(grade c zachary mandarin national-five)
		(takes-course zachary english national-four)
		(grade p zachary english national-four)
		(takes-course zachary mandarin higher)
		(grade d zachary mandarin higher)
		(takes-course zachary chemistry year-one)
		(grade p zachary chemistry year-one)
		(takes-course zachary urdu higher)
		(grade c zachary urdu higher)
		(uses-strategy zachary gamification)
		(takes-course robyn geography national-five)
		(grade d robyn geography national-five)
		(takes-course robyn music-tech year-two)
		(grade p robyn music-tech year-two)
		(takes-course robyn art-design national-five)
		(grade c robyn art-design national-five)
		(takes-course robyn pc-passport national-five)
		(grade d robyn pc-passport national-five)
		(takes-course robyn numeracy year-one)
		(grade p robyn numeracy year-one)
		(uses-strategy robyn blended-learning)
	)

	(:goal
		(and
			(finished-course alexander german national-four)
			(finished-course alexander design-manufacture higher)
			(finished-course alexander music-tech year-one)
			(finished-course alexander graph-comm adv-higher)
			(finished-course alexander art-design year-three)
			(given-support alexander tech-assist)
			(finished-course aurora maths adv-higher)
			(finished-course aurora italian national-five)
			(finished-course aurora history higher)
			(finished-course aurora dance national-five)
			(finished-course aurora mandarin national-four)
			(given-support aurora improving-comms-workshop)
			(finished-course zachary mandarin national-five)
			(finished-course zachary english national-four)
			(finished-course zachary mandarin higher)
			(finished-course zachary chemistry year-one)
			(finished-course zachary urdu higher)
			(given-support zachary gamify-learning)
			(finished-course robyn geography national-five)
			(finished-course robyn music-tech year-two)
			(finished-course robyn art-design national-five)
			(finished-course robyn pc-passport national-five)
			(finished-course robyn numeracy year-one)
			(given-support robyn improving-comms-workshop)
			(given-support robyn tech-assist)
			(given-support robyn gamify-learning)
		)
	)

)
