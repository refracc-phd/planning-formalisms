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
        (= (reward) 0)

        (takes-course emily english national-five) (grade b emily english national-five)
        (takes-course emily drama higher) (grade a emily drama higher)
        (takes-course emily music-tech national-five) (grade c emily music-tech national-five)
        (takes-course emily maths national-four) (grade p emily maths national-four)
        (takes-course emily french national-five) (grade b emily french national-five)
        (takes-course emily geography national-four) (grade p emily geography national-four)


        ; (takes-course james esol national-four) (grade p james esol national-four)
        ; (takes-course james art-design higher) (grade b james art-design higher)
        ; (takes-course james music national-five) (grade b james music national-five)
        ; (takes-course james numeracy national-four) (grade p james numeracy national-four)
        ; (takes-course james spanish national-five) (grade a james spanish national-five)
        ; (takes-course james history national-four) (grade p james history national-four)

        (takes-course sophia english higher) (grade a sophia english higher)
        (takes-course sophia dance higher) (grade a sophia dance higher)
        (takes-course sophia music-tech national-five) (grade c sophia music-tech national-five)
        (takes-course sophia maths national-four) (grade p sophia maths national-four)
        (takes-course sophia italian national-five) (grade a sophia italian national-five)
        (takes-course sophia modern-studies national-four) (grade p sophia modern-studies national-four)

        ; (takes-course ben esol national-four) (grade p ben esol national-four)
        ; (takes-course ben drama higher) (grade c ben drama higher)
        ; (takes-course ben music national-five) (grade b ben music national-five)
        ; (takes-course ben numeracy national-four) (grade p ben numeracy national-four)
        ; (takes-course ben latin national-five) (grade b ben latin national-five)
        ; (takes-course ben rmps national-four) (grade p ben rmps national-four)

        ; (takes-course olivia esol national-four) (grade p olivia esol national-four)
        ; (takes-course olivia art-design higher) (grade a olivia art-design higher)
        ; (takes-course olivia music national-five) (grade a olivia music national-five)
        ; (takes-course olivia numeracy national-four) (grade p olivia numeracy national-four)
        ; (takes-course olivia french national-five) (grade a olivia french national-five)
        ; (takes-course olivia philosophy national-four) (grade p olivia philosophy national-four)

        ; (takes-course daniel english national-four) (grade p daniel english national-four)
        ; (takes-course daniel dance higher) (grade a daniel dance higher)
        ; (takes-course daniel music national-five) (grade c daniel music national-five)
        ; (takes-course daniel numeracy national-four) (grade p daniel numeracy national-four)
        ; (takes-course daniel mandarin national-five) (grade b daniel mandarin national-five)
        ; (takes-course daniel politics national-four) (grade p daniel politics national-four)

        (takes-course mia english higher) (grade a mia english higher)
        (takes-course mia drama higher) (grade b mia drama higher)
        (takes-course mia music-tech national-five) (grade c mia music-tech national-five)
        (takes-course mia phys-ed national-four) (grade p mia phys-ed national-four)
        (takes-course mia spanish national-five) (grade a mia spanish national-five)
        (takes-course mia admin-it national-four) (grade p mia admin-it national-four)

        ; (takes-course alex english national-four) (grade p alex english national-four)
        ; (takes-course alex art-design higher) (grade a alex art-design higher)
        ; (takes-course alex music national-five) (grade a alex music national-five)
        ; (takes-course alex phys-ed national-four) (grade p alex phys-ed national-four)
        ; (takes-course alex latin national-five) (grade c alex latin national-five)
        ; (takes-course alex business-management national-four) (grade p alex business-management national-four)

        ; (takes-course charlotte english national-four) (grade p charlotte english national-four)
        ; (takes-course charlotte art-design higher) (grade c charlotte art-design higher)
        ; (takes-course charlotte music national-five) (grade c charlotte music national-five)
        ; (takes-course charlotte textiles national-four) (grade p charlotte textiles national-four)
        ; (takes-course charlotte gaelic national-five) (grade c charlotte gaelic national-five)
        ; (takes-course charlotte comp-sci national-four) (grade p charlotte comp-sci national-four)

        ; (takes-course will esol national-four) (grade p will esol national-four)
        ; (takes-course will drama higher) (grade b will drama higher)
        ; (takes-course will music national-five) (grade b will music national-five)
        ; (takes-course will textiles national-four) (grade p will textiles national-four)
        ; (takes-course will german national-five) (grade a will german national-five)
        ; (takes-course will design-manufacture national-four) (grade p will design-manufacture national-four)

        (takes-course ava english higher) (grade b ava english higher)
        (takes-course ava dance higher) (grade a ava dance higher)
        (takes-course ava maths national-five) (grade a ava maths national-five)
        (takes-course ava textiles national-four) (grade p ava textiles national-four)
        (takes-course ava mandarin national-five) (grade c ava mandarin national-five)
        (takes-course ava graph-comm national-four) (grade p ava graph-comm national-four)

        ; (takes-course sam esol national-four) (grade p sam esol national-four)
        ; (takes-course sam drama higher) (grade c sam drama higher)
        ; (takes-course sam music-tech national-five) (grade d sam music-tech national-five)
        ; (takes-course sam textiles national-four) (grade p sam textiles national-four)
        ; (takes-course sam spanish national-five) (grade a sam spanish national-five)
        ; (takes-course sam practical-woodwork national-four) (grade p sam practical-woodwork national-four)

        (study-group english higher)
    )

    (:goal
        (and
            (finished-course emily english national-five)
            (finished-course emily drama higher)
            (finished-course emily music-tech national-five)
            (finished-course emily maths national-four)
            (finished-course emily french national-five)
            (finished-course emily geography national-four)

            ; (finished-course james esol national-four)
            ; (finished-course james art-design higher)
            ; (finished-course james music national-five)
            ; (finished-course james numeracy national-four)
            ; (finished-course james spanish national-five)
            ; (finished-course james history national-four)

            (finished-course sophia english higher)
            (finished-course sophia dance higher)
            (finished-course sophia music-tech national-five)
            (finished-course sophia maths national-four)
            (finished-course sophia italian national-five)
            (finished-course sophia modern-studies national-four)

            ; (finished-course ben esol national-four)
            ; (finished-course ben drama higher)
            ; (finished-course ben music national-five)
            ; (finished-course ben numeracy national-four)
            ; (finished-course ben latin national-five)
            ; (finished-course ben rmps national-four)

            ; (finished-course olivia esol national-four)
            ; (finished-course olivia art-design higher)
            ; (finished-course olivia music national-five)
            ; (finished-course olivia numeracy national-four)
            ; (finished-course olivia french national-five)
            ; (finished-course olivia philosophy national-four)

            ; (finished-course daniel english national-four)
            ; (finished-course daniel dance higher)
            ; (finished-course daniel music national-five)
            ; (finished-course daniel numeracy national-four)
            ; (finished-course daniel mandarin national-five)
            ; (finished-course daniel politics national-four)

            (finished-course mia english higher)
            (finished-course mia drama higher)
            (finished-course mia music-tech national-five)
            (finished-course mia phys-ed national-four)
            (finished-course mia spanish national-five)
            (finished-course mia admin-it national-four)

            ; (finished-course alex english national-four)
            ; (finished-course alex art-design higher)
            ; (finished-course alex music national-five)
            ; (finished-course alex phys-ed national-four)
            ; (finished-course alex latin national-five)
            ; (finished-course alex business-management national-four)

            ; (finished-course charlotte english national-four)
            ; (finished-course charlotte art-design higher)
            ; (finished-course charlotte music national-five)
            ; (finished-course charlotte textiles national-four)
            ; (finished-course charlotte gaelic national-five)
            ; (finished-course charlotte comp-sci national-four)

            ; (finished-course will esol national-four)
            ; (finished-course will drama higher)
            ; (finished-course will music national-five)
            ; (finished-course will textiles national-four)
            ; (finished-course will german national-five)
            ; (finished-course will design-manufacture national-four)

            (finished-course ava english higher)
            (finished-course ava dance higher)
            (finished-course ava maths national-five)
            (finished-course ava textiles national-four)
            (finished-course ava mandarin national-five)
            (finished-course ava graph-comm national-four)

            ; (finished-course sam esol national-four)
            ; (finished-course sam drama higher)
            ; (finished-course sam music-tech national-five)
            ; (finished-course sam textiles national-four)
            ; (finished-course sam spanish national-five)
            ; (finished-course sam practical-woodwork national-four)

        )
    )

    (:metric maximize
        (reward)
    )
)