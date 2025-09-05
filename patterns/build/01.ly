    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \time 10/16
            s1 * 5/8
              %! +SCORE
            \break
            \time 6/4
            s1 * 3/2
              %! +SCORE
            \break
            \time 6/16
            s1 * 3/8
              %! +SCORE
            \noBreak
            \time 4/4
            s1 * 1
            \time 6/16
            s1 * 3/8
            \time 2/4
            s1 * 1/2
            \time 4/4
            s1 * 1
            \time 6/4
            s1 * 3/2
            \time 10/16
            s1 * 5/8
            \time 10/8
            s1 * 5/4
            \time 2/8
            s1 * 1/4
            \time 6/4
            s1 * 3/2
            \time 2/8
            s1 * 1/4
            \time 4/4
            s1 * 1
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/4
            s1 * 1
            \time 6/4
            s1 * 3/2
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
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 11/12
                                    {
                                        \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { Violin 1 }
                                          %! +SCORE
                                        \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { V1 }
                                        c'8
                                          %! +SCORE
                                        ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #2 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #1.5 } \fontsize #5.5 { "= 60" } } }
                                        c'8
                                        c'8
                                    }
                                    c'32
                                    ~
                                    c'8
                                    c'32
                                    c'16.
                                    c'2
                                    - \tweak padding #5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " accel. ( to " } \fontsize #-0.5 { \note { 8 } #1.5 } \fontsize #3 { "= 160 )" } } } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #1.5 } \fontsize #5.5 { "= 160" } } }
                                    \startTextSpanThree
                                    ~
                                    c'8
                                    c'16
                                    c'16
                                    c'16
                                    c'16
                                    ~
                                    c'16
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/5
                                    {
                                        c'32
                                        c'32
                                        c'32
                                        c'32
                                        c'32
                                    }
                                    c'4.
                                    c'16.
                                    c'32
                                    c'32
                                    c'32
                                    c'32
                                    c'32
                                    ~
                                    c'8
                                    \stopTextSpanThree
                                    c'16
                                    c'8.
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 7/10
                                    {
                                        c'16
                                        c'16
                                        c'16
                                        c'16
                                        c'16
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 7/6
                                    {
                                        c'16
                                        c'16
                                        c'16
                                    }
                                    c'16
                                    ~
                                    c'4
                                    c'32
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/5
                                    {
                                        c'64
                                        c'64
                                        c'64
                                        c'64
                                        c'64
                                    }
                                    c'16
                                    ~
                                    c'32
                                    c'32
                                    ~
                                    c'8
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 7/10
                                    {
                                        c'16
                                        c'16
                                        c'16
                                        c'16
                                        c'16
                                    }
                                    c'32
                                    c'16.
                                    c'32
                                    ~
                                    c'8
                                    c'4
                                    ~
                                    c'16
                                    c'8.
                                    c'16
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 7/6
                                    {
                                        c'16
                                        c'16
                                        c'16
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 7/10
                                    {
                                        c'16
                                        c'16
                                        c'16
                                        c'16
                                        c'16
                                    }
                                    c'4.
                                    c'4.
                                    ~
                                    c'4
                                    c'16
                                    c'16
                                    c'16
                                    c'16
                                    ~
                                    c'16
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/5
                                    {
                                        c'32
                                        c'32
                                        c'32
                                        c'32
                                        c'32
                                    }
                                    c'16.
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 11/12
                                    {
                                        c'8
                                        c'8
                                        c'8
                                    }
                                    c'16
                                    ~
                                    c'16.
                                    c'32
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 11/12
                                    {
                                        c'8
                                        c'8
                                        c'8
                                    }
                                    c'32
                                    ~
                                    c'8
                                    ~
                                    c'32
                                    c'16.
                                    ~
                                    c'8..
                                    c'32
                                    ~
                                    c'32
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 11/10
                                    {
                                        c'16
                                        c'16
                                        c'16
                                        c'16
                                        c'16
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 7/10
                                    {
                                        c'32
                                        c'32
                                        c'32
                                        c'32
                                        c'32
                                    }
                                    c'64
                                    ~
                                    c'16
                                    c'32.
                                    c'64
                                    c'2
                                    ~
                                    c'8
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/5
                                    {
                                        c'32
                                        c'32
                                        c'32
                                        c'32
                                        c'32
                                    }
                                    c'16
                                    ~
                                    c'16
                                    c'16
                                    ~
                                    c'4
                                    ~
                                    c'16
                                    c'16
                                    c'16
                                    c'16
                                    c'16
                                    ~
                                    c'64
                                    c'64
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 7/10
                                    {
                                        c'32
                                        c'32
                                        c'32
                                        c'32
                                        c'32
                                    }
                                    c'32.
                                    c'16
                                    c'8.
                                    ~
                                    c'8
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 7/10
                                    {
                                        c'16
                                        c'16
                                        c'16
                                        c'16
                                        c'16
                                    }
                                    c'32
                                    ~
                                    c'8
                                    ~
                                    c'32
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 7/6
                                    {
                                        c'16
                                        c'16
                                        c'16
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 7/6
                                    {
                                        c'16
                                        c'16
                                        c'16
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 7/10
                                    {
                                        c'16
                                        c'16
                                        c'16
                                        c'16
                                        c'16
                                    }
                                    c'16
                                    ~
                                    c'4
                                    c'8.
                                    c'16
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/5
                                    {
                                        c'32
                                        c'32
                                        c'32
                                        c'32
                                        c'32
                                    }
                                    c'16
                                    c'16
                                    c'16
                                    c'4.
                                    c'2
                                    ~
                                    c'8
                                    c'8
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
                                    \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { V2 }
                                    r8.
                                      %! +SCORE
                                    ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #2 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #1.5 } \fontsize #5.5 { "= 60" } } }
                                    r8
                                    r8.
                                    r8
                                    r1.
                                    - \tweak padding #5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " accel. ( to " } \fontsize #-0.5 { \note { 8 } #1.5 } \fontsize #3 { "= 160 )" } } } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #1.5 } \fontsize #5.5 { "= 160" } } }
                                    \startTextSpanThree
                                    r4.
                                    \stopTextSpanThree
                                    r1
                                    r4.
                                    r2
                                    r1
                                    r1.
                                    r8.
                                    r8
                                    r8.
                                    r8
                                    r4.
                                    r4
                                    r4.
                                    r4
                                    r4
                                    r1.
                                    r4
                                    r1
                                    r1
                                    r1.
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
                            \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { VA }
                            r8.
                              %! +SCORE
                            ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #2 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #1.5 } \fontsize #5.5 { "= 60" } } }
                            r8
                            r8.
                            r8
                            r1.
                            - \tweak padding #5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " accel. ( to " } \fontsize #-0.5 { \note { 8 } #1.5 } \fontsize #3 { "= 160 )" } } } \hspace #0.5 }
                            - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #1.5 } \fontsize #5.5 { "= 160" } } }
                            \startTextSpanThree
                            r4.
                            \stopTextSpanThree
                            r1
                            r4.
                            r2
                            r1
                            r1.
                            r8.
                            r8
                            r8.
                            r8
                            r4.
                            r4
                            r4.
                            r4
                            r4
                            r1.
                            r4
                            r1
                            r1
                            r1.
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
                            \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { VC }
                            r8.
                              %! +SCORE
                            ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #2 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #1.5 } \fontsize #5.5 { "= 60" } } }
                            r8
                            r8.
                            r8
                            r1.
                            - \tweak padding #5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " accel. ( to " } \fontsize #-0.5 { \note { 8 } #1.5 } \fontsize #3 { "= 160 )" } } } \hspace #0.5 }
                            - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #1.5 } \fontsize #5.5 { "= 160" } } }
                            \startTextSpanThree
                            r4.
                            \stopTextSpanThree
                            r1
                            r4.
                            r2
                            r1
                            r1.
                            r8.
                            r8
                            r8.
                            r8
                            r4.
                            r4
                            r4.
                            r4
                            r4
                            r1.
                            r4
                            r1
                            r1
                            r1.
                        }
                    }
                }
            >>
        }
    >>
  %! abjad.LilyPondFile._get_format_pieces()
