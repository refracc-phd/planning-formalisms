(define (problem p27) (:domain courses)
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
		george harry emily - student
	)

	(:init
		(takes-course george english national-five)
		(grade c george english national-five)
		(takes-course george cantonese year-one)
		(grade p george cantonese year-one)
		(takes-course george graph-comm national-five)
		(grade b george graph-comm national-five)
		(takes-course george english year-one)
		(grade p george english year-one)
		(takes-course george music national-four)
		(grade p george music national-four)
		(takes-course george politics adv-higher)
		(grade c george politics adv-higher)
		(uses-strategy george technological-tools)
		(takes-course harry mandarin year-one)
		(grade p harry mandarin year-one)
		(takes-course harry biology year-one)
		(grade p harry biology year-one)
		(takes-course harry rmps year-three)
		(grade p harry rmps year-three)
		(takes-course harry design-manufacture national-four)
		(grade p harry design-manufacture national-four)
		(takes-course harry english year-three)
		(grade p harry english year-three)
		(takes-course harry design-manufacture adv-higher)
		(grade a harry design-manufacture adv-higher)
		(takes-course emily mandarin national-four)
		(grade p emily mandarin national-four)
		(takes-course emily business-management year-two)
		(grade p emily business-management year-two)
		(takes-course emily business-management national-five)
		(grade b emily business-management national-five)
		(takes-course emily pc-passport national-four)
		(grade p emily pc-passport national-four)
		(takes-course emily spanish year-three)
		(grade p emily spanish year-three)
		(takes-course emily geography year-one)
		(grade p emily geography year-one)
		(has-support-need emily asc-asd)
		(uses-strategy emily project-based)
	)

	(:goal
		(and
			(finished-course george english national-five)
			(finished-course george cantonese year-one)
			(finished-course george graph-comm national-five)
			(finished-course george english year-one)
			(finished-course george music national-four)
			(finished-course george politics adv-higher)
			(given-support george tech-assist)
			(finished-course harry mandarin year-one)
			(finished-course harry biology year-one)
			(finished-course harry rmps year-three)
			(finished-course harry design-manufacture national-four)
			(finished-course harry english year-three)
			(finished-course harry design-manufacture adv-higher)
			(finished-course emily mandarin national-four)
			(finished-course emily business-management year-two)
			(finished-course emily business-management national-five)
			(finished-course emily pc-passport national-four)
			(finished-course emily spanish year-three)
			(finished-course emily geography year-one)
			(given-support emily improving-comms-workshop)
			(given-support emily tech-assist)
			(given-support emily pomo)
			(given-support emily gamify-learning)
			(given-support emily improving-comms-workshop)
		)
	)
)
