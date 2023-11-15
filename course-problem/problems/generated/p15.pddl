(define (problem p15) (:domain courses)
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
		george emily william sophia grace charlie oliver olivia - student
	)

	(:init
		(takes-course george comp-sci national-four)
		(grade p george comp-sci national-four)
		(takes-course george history national-five)
		(grade a george history national-five)
		(takes-course george cantonese adv-higher)
		(grade d george cantonese adv-higher)
		(takes-course george comp-sci year-three)
		(grade p george comp-sci year-three)
		(takes-course george home-economics adv-higher)
		(grade a george home-economics adv-higher)
		(takes-course george esol national-four)
		(grade p george esol national-four)
		(uses-strategy george technological-tools)
		(takes-course emily physics year-three)
		(grade p emily physics year-three)
		(takes-course emily urdu national-four)
		(grade p emily urdu national-four)
		(takes-course emily phys-ed national-five)
		(grade b emily phys-ed national-five)
		(takes-course emily home-economics adv-higher)
		(grade b emily home-economics adv-higher)
		(takes-course emily comp-sci national-four)
		(grade p emily comp-sci national-four)
		(takes-course emily lifeskills national-five)
		(grade a emily lifeskills national-five)
		(takes-course william business-management year-two)
		(grade p william business-management year-two)
		(takes-course william phys-ed year-three)
		(grade p william phys-ed year-three)
		(takes-course william graph-comm year-one)
		(grade p william graph-comm year-one)
		(takes-course william esol national-five)
		(grade c william esol national-five)
		(takes-course william english national-four)
		(grade p william english national-four)
		(takes-course william urdu higher)
		(grade c william urdu higher)
		(uses-strategy william technological-tools)
		(takes-course sophia landscape-gardening year-two)
		(grade p sophia landscape-gardening year-two)
		(takes-course sophia lifeskills year-two)
		(grade p sophia lifeskills year-two)
		(takes-course sophia admin-it national-four)
		(grade p sophia admin-it national-four)
		(takes-course sophia philosophy year-two)
		(grade p sophia philosophy year-two)
		(takes-course sophia music year-two)
		(grade p sophia music year-two)
		(takes-course sophia physics year-one)
		(grade p sophia physics year-one)
		(has-support-need sophia deaf-hearing)
		(uses-strategy sophia project-based)
		(takes-course grace geography adv-higher)
		(grade b grace geography adv-higher)
		(takes-course grace graph-comm adv-higher)
		(grade d grace graph-comm adv-higher)
		(takes-course grace chemistry year-three)
		(grade p grace chemistry year-three)
		(takes-course grace home-economics national-five)
		(grade a grace home-economics national-five)
		(takes-course grace english year-one)
		(grade p grace english year-one)
		(takes-course grace latin year-two)
		(grade p grace latin year-two)
		(takes-course charlie geography year-one)
		(grade p charlie geography year-one)
		(takes-course charlie maths year-two)
		(grade p charlie maths year-two)
		(takes-course charlie physics national-five)
		(grade b charlie physics national-five)
		(takes-course charlie politics year-three)
		(grade p charlie politics year-three)
		(takes-course charlie history year-three)
		(grade p charlie history year-three)
		(takes-course charlie textiles higher)
		(grade a charlie textiles higher)
		(takes-course oliver english year-three)
		(grade p oliver english year-three)
		(takes-course oliver philosophy higher)
		(grade a oliver philosophy higher)
		(takes-course oliver geography year-one)
		(grade p oliver geography year-one)
		(takes-course oliver latin national-four)
		(grade p oliver latin national-four)
		(takes-course oliver practical-woodwork year-three)
		(grade p oliver practical-woodwork year-three)
		(takes-course oliver rmps national-five)
		(grade d oliver rmps national-five)
		(takes-course olivia philosophy national-five)
		(grade c olivia philosophy national-five)
		(takes-course olivia maths national-four)
		(grade p olivia maths national-four)
		(takes-course olivia history year-two)
		(grade p olivia history year-two)
		(takes-course olivia admin-it year-one)
		(grade p olivia admin-it year-one)
		(takes-course olivia numeracy national-five)
		(grade c olivia numeracy national-five)
		(takes-course olivia politics higher)
		(grade a olivia politics higher)
	)

	(:goal
		(and
			(finished-course george comp-sci national-four)
			(finished-course george history national-five)
			(finished-course george cantonese adv-higher)
			(finished-course george comp-sci year-three)
			(finished-course george home-economics adv-higher)
			(finished-course george esol national-four)
			(given-support george tech-assist)
			(finished-course emily physics year-three)
			(finished-course emily urdu national-four)
			(finished-course emily phys-ed national-five)
			(finished-course emily home-economics adv-higher)
			(finished-course emily comp-sci national-four)
			(finished-course emily lifeskills national-five)
			(finished-course william business-management year-two)
			(finished-course william phys-ed year-three)
			(finished-course william graph-comm year-one)
			(finished-course william esol national-five)
			(finished-course william english national-four)
			(finished-course william urdu higher)
			(given-support william tech-assist)
			(finished-course sophia landscape-gardening year-two)
			(finished-course sophia lifeskills year-two)
			(finished-course sophia admin-it national-four)
			(finished-course sophia philosophy year-two)
			(finished-course sophia music year-two)
			(finished-course sophia physics year-one)
			(given-support sophia tech-assist)
			(given-support sophia improving-comms-workshop)
			(finished-course grace geography adv-higher)
			(finished-course grace graph-comm adv-higher)
			(finished-course grace chemistry year-three)
			(finished-course grace home-economics national-five)
			(finished-course grace english year-one)
			(finished-course grace latin year-two)
			(finished-course charlie geography year-one)
			(finished-course charlie maths year-two)
			(finished-course charlie physics national-five)
			(finished-course charlie politics year-three)
			(finished-course charlie history year-three)
			(finished-course charlie textiles higher)
			(finished-course oliver english year-three)
			(finished-course oliver philosophy higher)
			(finished-course oliver geography year-one)
			(finished-course oliver latin national-four)
			(finished-course oliver practical-woodwork year-three)
			(finished-course oliver rmps national-five)
			(finished-course olivia philosophy national-five)
			(finished-course olivia maths national-four)
			(finished-course olivia history year-two)
			(finished-course olivia admin-it year-one)
			(finished-course olivia numeracy national-five)
			(finished-course olivia politics higher)
		)
	)
)
