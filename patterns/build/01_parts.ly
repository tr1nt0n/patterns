    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \time 10/16
            s1 * 5/8
              %! +SCORE
        %%% \break
            \time 6/4
            s1 * 3/2
              %! +SCORE
        %%% \break
            \time 12/8
            s1 * 3/2
              %! +SCORE
        %%% \noBreak
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            - \tweak font-size #'10
            _ \middle-fermata
            \once \override Score.BarLine.transparent = ##f
        }
        \tag #'group1
        {
            \context StaffGroup = "Staff Group"
            <<
                \tag #'group2
                {
                    \context GrandStaff = "sub group 1"
                    <<
                        \tag #'voice1
                        {
                            \context Staff = "violin 1 staff"
                            {
                                \context Voice = "violin 1 voice"
                                {
                                    \big-half-harmonic
                                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { Violin 1 }
                                      %! +SCORE
                                %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { V1 }
                                    c'32
                                    - \tweak padding #1
                                    - \punta-to-talon
                                    ^ \markup 0
                                      %! +SCORE
                                %%% ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #2 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #1.5 } \fontsize #5.5 { "= 60" } } }
                                    [
                                    ~
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 11/12
                                    {
                                        c'8
                                        ^ \markup 1
                                        \big-half-harmonic
                                        c'8
                                        - \tweak padding #1
                                        - \talon-to-punta
                                        ^ \markup 2
                                        \big-half-harmonic
                                        c'8
                                        - \tweak padding #1
                                        - \punta-to-talon
                                        ^ \markup 3
                                        ]
                                        ~
                                    }
                                    c'8
                                    ^ \markup 4
                                    [
                                    ~
                                    c'32
                                    ^ \markup 5
                                    \big-half-harmonic
                                    c'32
                                    - \tweak padding #1
                                    - \talon-to-punta
                                    ^ \markup 6
                                    ~
                                    c'16
                                    ^ \markup 7
                                    ]
                                    ~
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/5
                                    {
                                        c'32
                                        ^ \markup 8
                                        [
                                        - \tweak padding #5
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " accel. ( to " } \fontsize #-0.5 { \note { 8 } #1.5 } \fontsize #3 { "= 160 )" } } } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #1.5 } \fontsize #5.5 { "= 160" } } }
                                        \startTextSpanThree
                                        \big-half-harmonic
                                        c'32
                                        - \tweak padding #1
                                        - \punta-to-talon
                                        ^ \markup 9
                                        \big-half-harmonic
                                        c'32
                                        - \tweak padding #1
                                        - \talon-to-punta
                                        ^ \markup 10
                                        \big-half-harmonic
                                        c'32
                                        - \tweak padding #1
                                        - \punta-to-talon
                                        ^ \markup 11
                                        \big-half-harmonic
                                        \set stemLeftBeamCount = 3
                                        \set stemRightBeamCount = 1
                                        c'32
                                        - \tweak padding #1
                                        - \talon-to-punta
                                        ^ \markup 12
                                        ~
                                    }
                                    \set stemLeftBeamCount = 2
                                    \set stemRightBeamCount = 0
                                    c'16
                                    ^ \markup 13
                                    ]
                                    ~
                                    c'4
                                    ^ \markup 14
                                    ~
                                    c'16
                                    ^ \markup 15
                                    [
                                    \big-half-harmonic
                                    c'8.
                                    - \tweak padding #1
                                    - \punta-to-talon
                                    ^ \markup 16
                                    ]
                                    ~
                                    c'4
                                    ^ \markup 17
                                    ~
                                    c'8.
                                    ^ \markup 18
                                    [
                                    \big-half-harmonic
                                    c'16
                                    - \tweak padding #1
                                    - \talon-to-punta
                                    ^ \markup 19
                                    ]
                                    ~
                                    c'8
                                    ^ \markup 20
                                    [
                                    \big-half-harmonic
                                    c'16
                                    - \tweak padding #1
                                    - \punta-to-talon
                                    ^ \markup 21
                                    \big-half-harmonic
                                    c'16
                                    - \tweak padding #1
                                    - \talon-to-punta
                                    ^ \markup 22
                                    ]
                                    ~
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 15/12
                                    {
                                        c'8
                                        ^ \markup 23
                                        \stopTextSpanThree
                                        [
                                        \big-half-harmonic
                                        c'8
                                        - \tweak padding #1
                                        - \punta-to-talon
                                        ^ \markup 24
                                        \big-half-harmonic
                                        c'8
                                        - \tweak padding #1
                                        - \talon-to-punta
                                        ^ \markup 25
                                        ~
                                    }
                                    c'32
                                    ^ \markup 26
                                    ]
                                    ~
                                    c'4
                                    ^ \markup 27
                                    ~
                                    c'32
                                    ^ \markup 28
                                    [
                                    \big-half-harmonic
                                    c'16
                                    - \tweak padding #1
                                    - \punta-to-talon
                                    ^ \markup 29
                                    \big-half-harmonic
                                    c'32
                                    - \tweak padding #1
                                    - \talon-to-punta
                                    ^ \markup 30
                                    ]
                                    ~
                                    c'4
                                    ^ \markup 31
                                    \big-half-harmonic
                                    c'16.
                                    - \tweak padding #1
                                    - \punta-to-talon
                                    ^ \markup 32
                                    [
                                    \big-half-harmonic
                                    \set stemLeftBeamCount = 3
                                    \set stemRightBeamCount = 1
                                    c'32
                                    - \tweak padding #1
                                    - \talon-to-punta
                                    ^ \markup 33
                                    ~
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 2
                                    c'16
                                    ^ \markup 34
                                    \big-half-harmonic
                                    \set stemLeftBeamCount = 2
                                    \set stemRightBeamCount = 1
                                    c'16
                                    - \tweak padding #1
                                    - \punta-to-talon
                                    ^ \markup 35
                                    ~
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 3
                                    c'32
                                    ^ \markup 36
                                    \big-half-harmonic
                                    c'16.
                                    - \tweak padding #1
                                    - \talon-to-punta
                                    ^ \markup 37
                                    ]
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \once \override Rest.transparent = ##t
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice2
                        {
                            \context Staff = "violin 2 staff"
                            {
                                \context Voice = "violin 2 voice"
                                {
                                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { Violin 2 }
                                      %! +SCORE
                                %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { V2 }
                                    r8.
                                      %! +SCORE
                                %%% ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #2 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #1.5 } \fontsize #5.5 { "= 60" } } }
                                    r8
                                    r8.
                                    r8
                                    r1.
                                    - \tweak padding #5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " accel. ( to " } \fontsize #-0.5 { \note { 8 } #1.5 } \fontsize #3 { "= 160 )" } } } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #1.5 } \fontsize #5.5 { "= 160" } } }
                                    \startTextSpanThree
                                    r1.
                                    \stopTextSpanThree
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \once \override Rest.transparent = ##t
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                }
                            }
                        }
                    >>
                }
                \tag #'voice3
                {
                    \context Staff = "viola staff"
                    {
                        \context Voice = "viola voice"
                        {
                            \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { Viola }
                              %! +SCORE
                        %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { VA }
                            r8.
                              %! +SCORE
                        %%% ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #2 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #1.5 } \fontsize #5.5 { "= 60" } } }
                            r8
                            r8.
                            r8
                            r1.
                            - \tweak padding #5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " accel. ( to " } \fontsize #-0.5 { \note { 8 } #1.5 } \fontsize #3 { "= 160 )" } } } \hspace #0.5 }
                            - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #1.5 } \fontsize #5.5 { "= 160" } } }
                            \startTextSpanThree
                            r1.
                            \stopTextSpanThree
                              %! +SCORE
                        %%% \once \override MultiMeasureRest.transparent = ##t
                              %! +SCORE
                        %%% \once \override Rest.transparent = ##t
                              %! +SCORE
                        %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            r4
                              %! +SCORE
                        %%% \stopStaff \startStaff
                        }
                    }
                }
                \tag #'voice4
                {
                    \context Staff = "cello staff"
                    {
                        \context Voice = "cello voice"
                        {
                            \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { Violoncello }
                              %! +SCORE
                        %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { VC }
                            r8.
                              %! +SCORE
                        %%% ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #2 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #1.5 } \fontsize #5.5 { "= 60" } } }
                            r8
                            r8.
                            r8
                            r1.
                            - \tweak padding #5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " accel. ( to " } \fontsize #-0.5 { \note { 8 } #1.5 } \fontsize #3 { "= 160 )" } } } \hspace #0.5 }
                            - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #1.5 } \fontsize #5.5 { "= 160" } } }
                            \startTextSpanThree
                            r1.
                            \stopTextSpanThree
                              %! +SCORE
                        %%% \once \override MultiMeasureRest.transparent = ##t
                              %! +SCORE
                        %%% \once \override Rest.transparent = ##t
                              %! +SCORE
                        %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            r4
                              %! +SCORE
                        %%% \stopStaff \startStaff
                        }
                    }
                }
            >>
        }
    >>
  %! abjad.LilyPondFile._get_format_pieces()
