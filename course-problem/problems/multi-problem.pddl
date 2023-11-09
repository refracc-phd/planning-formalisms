(define (problem sqa) (:domain courses)
    (:objects
        stewart - student
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
    )

    (:init
        (= (reward) 0)

        (takes-course stewart comp-sci higher)
        (grade-a stewart comp-sci higher)
        (takes-course stewart maths national-four)
        (grade p stewart maths national-four)
        (takes-course stewart music adv-higher)
        (grade-a stewart music adv-higher)
        (takes-course stewart english national-five)
        (grade-b stewart english national-five)
        (uses-strategy stewart pomodoro)
        (has-received-support stewart none)
        (student-vark-type stewart multimodal)
        (can-pomodoro stewart music adv-higher)
        (can-pomodoro stewart english national-five)
        (can-pomodoro stewart maths national-four)
        (can-pomodoro stewart comp-sci higher)
    )

    (:goal
        (and
            (finished-course stewart english national-five)
        )
    )

    (:metric maximize
        (reward)
    )
)