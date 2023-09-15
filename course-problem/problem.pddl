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
        visual audio read-write kinaesthetic multimodal - vark-type
        visualisation teamwork student-led-class inquiry-based-teaching technological-tools flex-seating summ-assessment form-assessment gamification project-based blended-learning interdisc-teaching - strategy
        adhd asc-asd dyslexia dyscalculia diff-attention-listening dysfluency reluct-selec-talk diff-understand-comm cerebral-palsy fibromyalgia hypermobility multiple-sclerosis spina-bifida tourettes attachment fight-flight freeze-fold low-level social-other deaf-hearing blind-visual - support-requirement
        none - support-received
    )

    (:init
        (=(duration) 0)
        (=(weeks-to-achieve-unit maths adv-higher) 7)
        (=(maximum-units maths adv-higher) 4)

        (takes-course stewart maths adv-higher)
        (=(week stewart maths adv-higher) 0)
        (=(units-taken stewart maths adv-higher) 0)
        (uses-strategy stewart pomodoro)
        (has-received-support stewart none)
    )

    (:goal
        (and
            ; (finished-course stewart maths adv-higher)
            ; (= (units-taken stewart maths adv-higher) 4)
            (= (week stewart maths adv-higher) 7)
        )
    )

    ; (:metric maximize
    ;     (duration)
    ; )
)