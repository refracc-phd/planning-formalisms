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

        (takes-course stewart english national-five)
        (grade b stewart english national-five)
        (uses-strategy stewart pomodoro)
        (has-received-support stewart none)
        (student-vark-type stewart multimodal)
    )

    (:goal
        (and
            (finished-course stewart english national-five)
        )
    )
)