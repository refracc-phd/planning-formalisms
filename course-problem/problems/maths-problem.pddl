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

        (takes-course stewart maths national-four)
        (grade p stewart maths national-four)
        (uses-strategy stewart pomodoro)
        (has-received-support stewart none)
        (student-vark-type stewart multimodal)
    )

    (:goal
        (and
            (finished-course stewart maths national-four)
        )
    )

    (:metric maximize
        (reward)
    )
)