(define (problem sqa) (:domain courses)
    (:objects
        emily james sophia ben olivia daniel mia alex charlotte will ava sam - student
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

        (takes-course emily english national-five) (grade b emily english national-five)
        (takes-course emily drama higher) (grade a emily drama higher)
        (takes-course emily music-tech national-five) (grade c emily music-tech national-five)
        (takes-course emily maths national-four) (grade p emily maths national-four)
        (takes-course emily french national-five) (grade b emily french national-five)
        (takes-course emily geography national-four) (grade p emily geography national-four)

        (takes-course sophia english higher) (grade a sophia english higher)
        (takes-course sophia dance higher) (grade a sophia dance higher)
        (takes-course sophia music-tech national-five) (grade c sophia music-tech national-five)
        (takes-course sophia maths national-four) (grade p sophia maths national-four)
        (takes-course sophia italian national-five) (grade a sophia italian national-five)
        (takes-course sophia modern-studies national-four) (grade p sophia modern-studies national-four)


        (takes-course mia english higher) (grade a mia english higher)
        (takes-course mia drama higher) (grade b mia drama higher)
        (takes-course mia music-tech national-five) (grade c mia music-tech national-five)
        (takes-course mia phys-ed national-four) (grade p mia phys-ed national-four)
        (takes-course mia spanish national-five) (grade a mia spanish national-five)
        (takes-course mia admin-it national-four) (grade p mia admin-it national-four)


        (takes-course ava english higher) (grade b ava english higher)
        (takes-course ava dance higher) (grade a ava dance higher)
        (takes-course ava maths national-five) (grade a ava maths national-five)
        (takes-course ava textiles national-four) (grade p ava textiles national-four)
        (takes-course ava mandarin national-five) (grade c ava mandarin national-five)
        (takes-course ava graph-comm national-four) (grade p ava graph-comm national-four)


        (study-group english higher)

        (has-support-need emily language)
        (uses-strategy emily pomodoro)
        (has-support-need sophia asc-asd)
        (has-support-need mia deaf-hearing)
        (has-support-need ava tourettes)
    )

    (:goal
        (and
            (finished-course emily english national-five)
            (finished-course emily drama higher)
            (finished-course emily music-tech national-five)
            (finished-course emily maths national-four)
            (finished-course emily french national-five)
            (finished-course emily geography national-four)

            (finished-course sophia english higher)
            (finished-course sophia dance higher)
            (finished-course sophia music-tech national-five)
            (finished-course sophia maths national-four)
            (finished-course sophia italian national-five)
            (finished-course sophia modern-studies national-four)

            (finished-course mia english higher)
            (finished-course mia drama higher)
            (finished-course mia music-tech national-five)
            (finished-course mia phys-ed national-four)
            (finished-course mia spanish national-five)
            (finished-course mia admin-it national-four)

            (finished-course ava english higher)
            (finished-course ava dance higher)
            (finished-course ava maths national-five)
            (finished-course ava textiles national-four)
            (finished-course ava mandarin national-five)
            (finished-course ava graph-comm national-four)

            (given-support emily improving-comms-workshop)
            (given-support emily pomo)
            (given-support sophia improving-comms-workshop)
            (given-support mia tech-assist)
            (given-support ava pomo)
        )
    )
)