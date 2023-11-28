(define (problem p0) (:domain courses)
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
		oliver emily - student
	)

	(:init

				(week ?s - student ?c - course ?l - course-level)
        (unit ?s - student ?c - course ?l - course-level)
        (extra-curricular ?s - student ?c - course ?l - course-level)

        (max-weeks ?c - course ?l - course-level)
        (max-units ?c - course ?l - course-level)
        (max-extra-curricular-a ?c - course ?l - course-level)
        (max-extra-curricular-b ?c - course ?l - course-level)

		(takes-course oliver cantonese national-four)
		(grade p oliver cantonese national-four)
		(takes-course oliver politics national-five)
		(grade b oliver politics national-five)
		(takes-course oliver italian adv-higher)
		(grade d oliver italian adv-higher)
		(takes-course oliver admin-it year-three)
		(grade p oliver admin-it year-three)
		(uses-strategy oliver blended-learning)
		(takes-course emily german adv-higher)
		(grade a emily german adv-higher)
		(takes-course emily maths national-five)
		(grade c emily maths national-five)
		(takes-course emily italian adv-higher)
		(grade b emily italian adv-higher)
		(takes-course emily business-management adv-higher)
		(grade a emily business-management adv-higher)
		(uses-strategy emily student-led-class)
	)

	(:goal
		(and
			(finished-course oliver cantonese national-four)
			(finished-course oliver politics national-five)
			(finished-course oliver italian adv-higher)
			(finished-course oliver admin-it year-three)
			(given-support oliver improving-comms-workshop)
			(given-support oliver tech-assist)
			(given-support oliver gamify-learning)
			(finished-course emily german adv-higher)
			(finished-course emily maths national-five)
			(finished-course emily italian adv-higher)
			(finished-course emily business-management adv-higher)
			(given-support emily improving-comms-workshop)
		)
	)
)
