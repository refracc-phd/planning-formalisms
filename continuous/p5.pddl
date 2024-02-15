(define (problem p5) (:domain courses)
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
		aiden sienna oliver carter daniel bonnie - student
	)

	(:init
		(= (cost) 0)
		(= (max-units) 4)
		(= (max-weeks) 8)

		(= (week aiden comp-sci year-three) 0)
		(= (week aiden french adv-higher) 0)
		(= (week aiden pc-passport higher) 0)
		(= (week aiden mandarin national-four) 0)
		(= (week aiden spanish year-two) 0)

		(= (unit aiden comp-sci year-three) 0)
		(= (unit aiden french adv-higher) 0)
		(= (unit aiden pc-passport higher) 0)
		(= (unit aiden mandarin national-four) 0)
		(= (unit aiden spanish year-two) 0)

		(= (extra-curricular aiden comp-sci year-three) 0)
		(= (extra-curricular aiden french adv-higher) 0)
		(= (extra-curricular aiden pc-passport higher) 0)
		(= (extra-curricular aiden mandarin national-four) 0)
		(= (extra-curricular aiden spanish year-two) 0)

		(takes-course aiden comp-sci year-three)
		(grade p aiden comp-sci year-three)
		(takes-course aiden french adv-higher)
		(grade a aiden french adv-higher)
		(takes-course aiden pc-passport higher)
		(grade c aiden pc-passport higher)
		(takes-course aiden mandarin national-four)
		(grade p aiden mandarin national-four)
		(takes-course aiden spanish year-two)
		(grade p aiden spanish year-two)
		(uses-strategy aiden tech)

		(= (week sienna phys-ed year-three) 0)
		(= (week sienna german national-five) 0)
		(= (week sienna french national-four) 0)
		(= (week sienna comp-sci national-four) 0)
		(= (week sienna textiles adv-higher) 0)

		(= (unit sienna phys-ed year-three) 0)
		(= (unit sienna german national-five) 0)
		(= (unit sienna french national-four) 0)
		(= (unit sienna comp-sci national-four) 0)
		(= (unit sienna textiles adv-higher) 0)

		(= (extra-curricular sienna phys-ed year-three) 0)
		(= (extra-curricular sienna german national-five) 0)
		(= (extra-curricular sienna french national-four) 0)
		(= (extra-curricular sienna comp-sci national-four) 0)
		(= (extra-curricular sienna textiles adv-higher) 0)

		(takes-course sienna phys-ed year-three)
		(grade p sienna phys-ed year-three)
		(takes-course sienna german national-five)
		(grade a sienna german national-five)
		(takes-course sienna french national-four)
		(grade p sienna french national-four)
		(takes-course sienna comp-sci national-four)
		(grade p sienna comp-sci national-four)
		(takes-course sienna textiles adv-higher)
		(grade b sienna textiles adv-higher)
		(uses-strategy sienna tech)

		(= (week oliver cantonese year-one) 0)
		(= (week oliver philosophy national-five) 0)
		(= (week oliver politics year-two) 0)
		(= (week oliver numeracy year-two) 0)
		(= (week oliver admin-it year-one) 0)

		(= (unit oliver cantonese year-one) 0)
		(= (unit oliver philosophy national-five) 0)
		(= (unit oliver politics year-two) 0)
		(= (unit oliver numeracy year-two) 0)
		(= (unit oliver admin-it year-one) 0)

		(= (extra-curricular oliver cantonese year-one) 0)
		(= (extra-curricular oliver philosophy national-five) 0)
		(= (extra-curricular oliver politics year-two) 0)
		(= (extra-curricular oliver numeracy year-two) 0)
		(= (extra-curricular oliver admin-it year-one) 0)
		(= (uses-strategy oliver student-led-class) 0)

		(takes-course oliver cantonese year-one)
		(grade p oliver cantonese year-one)
		(takes-course oliver philosophy national-five)
		(grade d oliver philosophy national-five)
		(takes-course oliver politics year-two)
		(grade p oliver politics year-two)
		(takes-course oliver numeracy year-two)
		(grade p oliver numeracy year-two)
		(takes-course oliver admin-it year-one)
		(grade p oliver admin-it year-one)
		(uses-strategy oliver student-led-class)

		(= (week carter numeracy year-three) 0)
		(= (week carter admin-it year-three) 0)
		(= (week carter lifeskills year-three) 0)
		(= (week carter home-economics year-one) 0)
		(= (week carter comp-sci national-four) 0)

		(= (unit carter numeracy year-three) 0)
		(= (unit carter admin-it year-three) 0)
		(= (unit carter lifeskills year-three) 0)
		(= (unit carter home-economics year-one) 0)
		(= (unit carter comp-sci national-four) 0)

		(= (extra-curricular carter numeracy year-three) 0)
		(= (extra-curricular carter admin-it year-three) 0)
		(= (extra-curricular carter lifeskills year-three) 0)
		(= (extra-curricular carter home-economics year-one) 0)
		(= (extra-curricular carter comp-sci national-four) 0)
		(= (uses-strategy carter project-based) 0)

		(takes-course carter numeracy year-three)
		(grade p carter numeracy year-three)
		(takes-course carter admin-it year-three)
		(grade p carter admin-it year-three)
		(takes-course carter lifeskills year-three)
		(grade p carter lifeskills year-three)
		(takes-course carter home-economics year-one)
		(grade p carter home-economics year-one)
		(takes-course carter comp-sci national-four)
		(grade p carter comp-sci national-four)
		(uses-strategy carter project-based)

		(= (week daniel chemistry higher) 0)
		(= (week daniel modern-studies national-five) 0)
		(= (week daniel art-design adv-higher) 0)
		(= (week daniel lifeskills year-one) 0)
		(= (week daniel dance national-five) 0)

		(= (unit daniel chemistry higher) 0)
		(= (unit daniel modern-studies national-five) 0)
		(= (unit daniel art-design adv-higher) 0)
		(= (unit daniel lifeskills year-one) 0)
		(= (unit daniel dance national-five) 0)

		(= (extra-curricular daniel chemistry higher) 0)
		(= (extra-curricular daniel modern-studies national-five) 0)
		(= (extra-curricular daniel art-design adv-higher) 0)
		(= (extra-curricular daniel lifeskills year-one) 0)
		(= (extra-curricular daniel dance national-five) 0)
		(= (uses-strategy daniel project-based) 0)

		(takes-course daniel chemistry higher)
		(grade a daniel chemistry higher)
		(takes-course daniel modern-studies national-five)
		(grade b daniel modern-studies national-five)
		(takes-course daniel art-design adv-higher)
		(grade c daniel art-design adv-higher)
		(takes-course daniel lifeskills year-one)
		(grade p daniel lifeskills year-one)
		(takes-course daniel dance national-five)
		(grade b daniel dance national-five)
		(uses-strategy daniel project-based)

		(= (week bonnie home-economics year-two) 0)
		(= (week bonnie landscape-gardening higher) 0)
		(= (week bonnie dance year-three) 0)
		(= (week bonnie music year-three) 0)
		(= (week bonnie lifeskills year-two) 0)

		(= (unit bonnie home-economics year-two) 0)
		(= (unit bonnie landscape-gardening higher) 0)
		(= (unit bonnie dance year-three) 0)
		(= (unit bonnie music year-three) 0)
		(= (unit bonnie lifeskills year-two) 0)

		(= (extra-curricular bonnie home-economics year-two) 0)
		(= (extra-curricular bonnie landscape-gardening higher) 0)
		(= (extra-curricular bonnie dance year-three) 0)
		(= (extra-curricular bonnie music year-three) 0)
		(= (extra-curricular bonnie lifeskills year-two) 0)
		(= (uses-strategy bonnie tech) 0)

		(takes-course bonnie home-economics year-two)
		(grade p bonnie home-economics year-two)
		(takes-course bonnie landscape-gardening higher)
		(grade d bonnie landscape-gardening higher)
		(takes-course bonnie dance year-three)
		(grade p bonnie dance year-three)
		(takes-course bonnie music year-three)
		(grade p bonnie music year-three)
		(takes-course bonnie lifeskills year-two)
		(grade p bonnie lifeskills year-two)
		(uses-strategy bonnie tech)
	)

	(:goal
		(and
			(finished-course aiden comp-sci year-three)
			(finished-course aiden french adv-higher)
			(finished-course aiden pc-passport higher)
			(finished-course aiden mandarin national-four)
			(finished-course aiden spanish year-two)
			(given-support aiden tech-assist)
			(finished-course sienna phys-ed year-three)
			(finished-course sienna german national-five)
			(finished-course sienna french national-four)
			(finished-course sienna comp-sci national-four)
			(finished-course sienna textiles adv-higher)
			(given-support sienna tech-assist)
			(finished-course oliver cantonese year-one)
			(finished-course oliver philosophy national-five)
			(finished-course oliver politics year-two)
			(finished-course oliver numeracy year-two)
			(finished-course oliver admin-it year-one)
			(given-support oliver improving-comms-workshop)
			(finished-course carter numeracy year-three)
			(finished-course carter admin-it year-three)
			(finished-course carter lifeskills year-three)
			(finished-course carter home-economics year-one)
			(finished-course carter comp-sci national-four)
			(given-support carter improving-comms-workshop)
			(finished-course daniel chemistry higher)
			(finished-course daniel modern-studies national-five)
			(finished-course daniel art-design adv-higher)
			(finished-course daniel lifeskills year-one)
			(finished-course daniel dance national-five)
			(given-support daniel improving-comms-workshop)
			(finished-course bonnie home-economics year-two)
			(finished-course bonnie landscape-gardening higher)
			(finished-course bonnie dance year-three)
			(finished-course bonnie music year-three)
			(finished-course bonnie lifeskills year-two)
			(given-support bonnie tech-assist)
		)
	)

	(:metric minimize (cost))
)
