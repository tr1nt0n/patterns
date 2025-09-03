    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \time 10/16
            s1 * 5/8
            \time 6/4
            s1 * 3/2
            \time 12/8
            s1 * 3/2
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            - \tweak font-size #'10
            _ \middle-fermata
            \bar "||"
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
                                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { Violin 1 }
                                      %! +SCORE
                                    \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { V1 }
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
                                    \startTextSpan
                                    r1.
                                    \stopTextSpan
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r4
                                      %! +SCORE
                                    \stopStaff \startStaff
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
                                    \startTextSpan
                                    r1.
                                    \stopTextSpan
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r4
                                      %! +SCORE
                                    \stopStaff \startStaff
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
                            \startTextSpan
                            r1.
                            \stopTextSpan
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                              %! +SCORE
                            \once \override Rest.transparent = ##t
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            r4
                              %! +SCORE
                            \stopStaff \startStaff
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
                            \startTextSpan
                            r1.
                            \stopTextSpan
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                              %! +SCORE
                            \once \override Rest.transparent = ##t
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            r4
                              %! +SCORE
                            \stopStaff \startStaff
                        }
                    }
                }
            >>
        }
    >>
  %! abjad.LilyPondFile._get_format_pieces()
