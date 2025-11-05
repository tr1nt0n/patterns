    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \time 10/8
            s1 * 5/4
            \time 2/8
            s1 * 1/4
            \time 6/4
            s1 * 3/2
            \time 3/2
            s1 * 3/2
            \time 2/2
            s1 * 1
            \once \override Score.TimeSignature.stencil = ##f
            \time 2/2
            s1 * 1
            \once \override Score.TimeSignature.stencil = ##f
            \time 5/2
            s1 * 5/2
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            - \tweak font-size #'10
            _ \middle-fermata
            \bar "||"
            \once \override Score.BarLine.transparent = ##f
              %! +SCORE
            \pageBreak
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
                            \context bowContactStaff = "violin 1 staff"
                            {
                                \context Voice = "violin 1 voice"
                                {
                                    \set GrandStaff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { Violin 1 }
                                      %! +SCORE
                                    \set GrandStaff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { V1 }
                                    r4.
                                    r4
                                    r4.
                                    r4
                                    r4
                                    r1.
                                    r1.
                                    r1
                                    r1
                                    r1.
                                    r1
                                    r4
                                }
                            }
                        }
                        \tag #'voice2
                        {
                            \context Staff = "violin 2 staff"
                            {
                                \context Voice = "violin 2 voice"
                                {
                                    r4.
                                    r4
                                    r4.
                                    r4
                                    r4
                                    r1.
                                    r1.
                                    r1
                                    r1
                                    r1.
                                    ^ \markup \override #'(baseline-skip . 3.5) { \center-column { \line { \override #'(font-size . 5) " 37\" " } \line { \override #'(font-size . 10) \override #'(font-name . "ekmelos") \char ##xf6A0 } } }
                                    r1
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
                \tag #'group3
                {
                    \context GrandStaff = "sub group 2"
                    <<
                        \tag #'voice3
                        {
                            \context bowContactStaff = "violin 3 staff"
                            {
                                \context Voice = "violin 3 voice"
                                {
                                    \set GrandStaff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { Violin 2 }
                                      %! +SCORE
                                    \set GrandStaff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { V2 }
                                    r4.
                                    r4
                                    r4.
                                    r4
                                    r4
                                    r1.
                                    r1.
                                    r1
                                    r1
                                    r1.
                                    r1
                                    r4
                                }
                            }
                        }
                        \tag #'voice4
                        {
                            \context Staff = "violin 4 staff"
                            {
                                \context Voice = "violin 4 voice"
                                {
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 5/4
                                    {
                                        \override Dots.staff-position = #2
                                        \big-half-harmonic
                                        cs''''4
                                        - \tweak padding 0.5
                                        ^ \talon-to-punta
                                        \fff
                                          %! +SCORE
                                        ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-9 \raise #1.5 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 83" } } }
                                        (
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak font-name "Bodoni72 Book" 
                                        - \tweak font-size 2
                                        - \tweak padding #13
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "SP, 1/2 Scratch" } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -1.5
                                        \startTextSpan
                                        \>
                                        \big-half-harmonic
                                        c'''4
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 5/6
                                    {
                                        \big-half-harmonic
                                        fs'''4
                                        \mf
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \<
                                        \times 4/5
                                        {
                                            \big-half-harmonic
                                            f''16
                                            [
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            \big-half-harmonic
                                            g''16
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            \big-half-harmonic
                                            e''16
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            \big-half-harmonic
                                            f''16
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            \big-half-harmonic
                                            d''16
                                            ]
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                        }
                                        \big-half-harmonic
                                        e''4
                                        \ff
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \>
                                    }
                                    \big-half-harmonic
                                    ef'16
                                    [
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \big-half-harmonic
                                    \set stemLeftBeamCount = 2
                                    \set stemRightBeamCount = 1
                                    f'16
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \times 4/5
                                    {
                                        \big-half-harmonic
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 3
                                        df'32
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \big-half-harmonic
                                        e'32
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \big-half-harmonic
                                        d'32
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \big-half-harmonic
                                        ef'32
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \big-half-harmonic
                                        c'32
                                        )
                                        \stopTextSpan
                                        ]
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                    }
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                    b!8
                                    \ppp
                                    ^ \markup \center-align { \concat { -12 } }
                                    [
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    ~
                                    \revert Staff.Stem.stemlet-length
                                    <
                                        b
                                        \tweak style #'harmonic
                                        e'
                                    >8
                                    ]
                                    ~
                                    <
                                        b
                                        \tweak style #'harmonic
                                        e'
                                    >2
                                    ~
                                    <
                                        b
                                        \tweak style #'harmonic
                                        e'
                                    >2.
                                    ~
                                    <
                                        b
                                        \tweak style #'harmonic
                                        e'
                                    >1.
                                    ~
                                    <
                                        b
                                        \tweak style #'harmonic
                                        e'
                                    >1
                                    ~
                                    \revert Dots.staff-position
                                    <
                                        b
                                        \tweak style #'harmonic
                                        e'
                                    >1
                                    \!
                                    r1.
                                    ^ \markup \override #'(baseline-skip . 3.5) { \center-column { \line { \override #'(font-size . 5) " 37\" " } \line { \override #'(font-size . 10) \override #'(font-name . "ekmelos") \char ##xf6A0 } } }
                                    r1
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
                \tag #'group4
                {
                    \context GrandStaff = "sub group 3"
                    <<
                        \tag #'voice5
                        {
                            \context bowContactStaff = "viola 1 staff"
                            {
                                \context Voice = "viola 1 voice"
                                {
                                    \set GrandStaff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { Viola }
                                      %! +SCORE
                                    \set GrandStaff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { VA }
                                    r4.
                                    r4
                                    r4.
                                    r4
                                    r4
                                    r1.
                                    r1.
                                    r1
                                    r1
                                    r1.
                                    r1
                                    r4
                                }
                            }
                        }
                        \tag #'voice6
                        {
                            \context Staff = "viola 2 staff"
                            {
                                \context Voice = "viola 2 voice"
                                {
                                    r4.
                                    r4
                                    r4.
                                    r4
                                    r4
                                    r1.
                                    r1.
                                    r1
                                    r1
                                    r1.
                                    ^ \markup \override #'(baseline-skip . 3.5) { \center-column { \line { \override #'(font-size . 5) " 37\" " } \line { \override #'(font-size . 10) \override #'(font-name . "ekmelos") \char ##xf6A0 } } }
                                    r1
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
                \tag #'group5
                {
                    \context GrandStaff = "sub group 4"
                    <<
                        \tag #'voice7
                        {
                            \context bowContactStaff = "cello 1 staff"
                            {
                                \context Voice = "cello 1 voice"
                                {
                                    \set GrandStaff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { Violoncello }
                                      %! +SCORE
                                    \set GrandStaff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { VC }
                                    r4.
                                    r4
                                    r4.
                                    r4
                                    r4
                                    r1.
                                    r1.
                                    r1
                                    r1
                                    r1.
                                    r1
                                    r4
                                }
                            }
                        }
                        \tag #'voice8
                        {
                            \context Staff = "cello 2 staff"
                            {
                                \context Voice = "cello 2 voice"
                                {
                                    r4.
                                    r4
                                    r4.
                                    r4
                                    r4
                                    r1.
                                    r1.
                                    r1
                                    r1
                                    r1.
                                    ^ \markup \override #'(baseline-skip . 3.5) { \center-column { \line { \override #'(font-size . 5) " 37\" " } \line { \override #'(font-size . 10) \override #'(font-name . "ekmelos") \char ##xf6A0 } } }
                                    r1
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
        }
    >>
  %! abjad.LilyPondFile._get_format_pieces()
