  %! abjad.LilyPondFile._get_format_pieces()
\version "2.23.81"
  %! abjad.LilyPondFile._get_format_pieces()
\language "english"
  %! abjad.LilyPondFile._get_format_pieces()
\version "2.23.81"
  %! abjad.LilyPondFile._get_format_pieces()
\language "english"
\include "/Users/trintonprater/scores/patterns/patterns/build/patterns-stylesheet.ily"
\include "/Users/trintonprater/abjad/abjad/scm/abjad.ily"
  %! abjad.LilyPondFile._get_format_pieces()
\score
  %! abjad.LilyPondFile._get_format_pieces()
{
    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \time 2/4
            s1 * 1/2
              %! +SCORE
            \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 2/4
            s1 * 1/2
              %! +SCORE
            \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 2/4
            s1 * 1/2
              %! +SCORE
            \break
            \time 5/4
            s1 * 5/4
              %! +SCORE
            \noBreak
            \time 4/4
            s1 * 1
              %! +SCORE
            \break
            \time 3/4
            s1 * 3/4
              %! +SCORE
            \noBreak
            \time 5/4
            s1 * 5/4
              %! +SCORE
            \break
            \time 6/8
            s1 * 3/4
              %! +SCORE
            \noBreak
            \time 6/16
            s1 * 3/8
              %! +SCORE
            \noBreak
            \time 4/4
            s1 * 1
              %! +SCORE
            \break
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
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            - \tweak font-size #'10
            _ \long-fermata
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
                                    r2
                                    r2
                                    r2
                                    r2.
                                    r2
                                    r1
                                    r2.
                                    r2.
                                    r2
                                    r2.
                                    r4.
                                    r1
                                    r4.
                                    r2
                                    r1
                                    r1.
                                    r8.
                                    r8
                                    r8.
                                    r8
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
                                    r2
                                      %! +SCORE
                                    ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-7 \raise #3 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 100" } } }
                                    r2
                                    r2
                                    r2.
                                    r2
                                    r1
                                    r2.
                                    r2.
                                    r2
                                    r2.
                                    r4.
                                    - \tweak padding #3
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " accel. ( to " } \fontsize #-0.5 { \note { 4 } #1.5 } \fontsize #3 { " . = 153 )" } } } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { " . = 153" } } }
                                    \startTextSpanThree
                                    r1
                                    r4.
                                    \stopTextSpanThree
                                    r2
                                    r1
                                    r1.
                                    r8.
                                    r8
                                    r8.
                                    r8
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
                                    r2
                                    r2
                                    r2
                                    r2.
                                    r2
                                    r1
                                    r2.
                                    r2.
                                    r2
                                    r2.
                                    r4.
                                    r1
                                    r4.
                                    r2
                                    r1
                                    r1.
                                    r8.
                                    r8
                                    r8.
                                    r8
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
                                    r2
                                      %! +SCORE
                                    ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-7 \raise #3 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 100" } } }
                                    r2
                                    r2
                                    r2.
                                    r2
                                    r1
                                    r2.
                                    r2.
                                    r2
                                    r2.
                                    r4.
                                    - \tweak padding #3
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " accel. ( to " } \fontsize #-0.5 { \note { 4 } #1.5 } \fontsize #3 { " . = 153 )" } } } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { " . = 153" } } }
                                    \startTextSpanThree
                                    r1
                                    r4.
                                    \stopTextSpanThree
                                    r2
                                    r1
                                    r1.
                                    r8.
                                    r8
                                    r8.
                                    r8
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
                                    \override Dots.staff-position = #2
                                    \set GrandStaff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { Viola }
                                      %! +SCORE
                                    \set GrandStaff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { VA }
                                    c'1
                                      %! +SCORE
                                    ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-7 \raise #4 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 100" } } }
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #5.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "CLT" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding 0.5
                                    \startTextSpanOne
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #8
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "ST" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding 0.5
                                    \startTextSpanTwo
                                    a2
                                    \stopTextSpanOne
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #5.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "1/2 CLT" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding 0.5
                                    \startTextSpanOne
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 5/6
                                    {
                                        e'2.
                                        \stopTextSpanOne
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak font-name "Bodoni72 Book" 
                                        - \tweak font-size 1
                                        - \tweak padding #5.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "CLT" } \hspace #0.5 }
                                        - \tweak bound-details.right.padding 0.5
                                        \startTextSpanOne
                                        a2.
                                        \stopTextSpanOne
                                        \stopTextSpanTwo
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak font-name "Bodoni72 Book" 
                                        - \tweak font-size 1
                                        - \tweak padding #5.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "1/2 CLT" } \hspace #0.5 }
                                        - \tweak bound-details.right.padding 0.5
                                        \startTextSpanOne
                                        - \tweak font-name "Bodoni72 Book" 
                                        - \tweak font-size 1
                                        - \tweak padding #8
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright { "" } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \upright { "SP" }
                                        - \tweak bound-details.right.padding 2.5
                                        \startTextSpanTwo
                                    }
                                    \times 2/3
                                    {
                                        g'2
                                        \stopTextSpanOne
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak font-name "Bodoni72 Book" 
                                        - \tweak font-size 1
                                        - \tweak padding #5.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "CLT" } \hspace #0.5 }
                                        - \tweak bound-details.right.padding 0.5
                                        \startTextSpanOne
                                        a2
                                        \stopTextSpanOne
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        d''4.
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \revert Dots.staff-position
                                        a8
                                        \stopTextSpanTwo
                                    }
                                    \stopStaff
                                    \once \revert Staff.StaffSymbol.line-positions
                                    \once \override Staff.StaffSymbol.line-count = #0
                                    \once \override Staff.BarLine.transparent = ##f
                                    r2.
                                    \once \override Staff.BarLine.transparent = ##f
                                    \startStaff
                                    \stopStaff
                                    \once \revert Staff.StaffSymbol.line-positions
                                    \once \override Staff.StaffSymbol.line-count = #0
                                    \once \override Staff.BarLine.transparent = ##f
                                    r2.
                                    \once \override Staff.BarLine.transparent = ##f
                                    \startStaff
                                    r2
                                    \stopStaff
                                    \once \revert Staff.StaffSymbol.line-positions
                                    \once \override Staff.StaffSymbol.line-count = #0
                                    \once \override Staff.BarLine.transparent = ##f
                                    r2.
                                    \once \override Staff.BarLine.transparent = ##f
                                    \startStaff
                                    \stopStaff
                                    \once \revert Staff.StaffSymbol.line-positions
                                    \once \override Staff.StaffSymbol.line-count = #0
                                    \once \override Staff.BarLine.transparent = ##f
                                    r4.
                                    \once \override Staff.BarLine.transparent = ##f
                                    \startStaff
                                    \stopStaff
                                    \once \revert Staff.StaffSymbol.line-positions
                                    \once \override Staff.StaffSymbol.line-count = #0
                                    \once \override Staff.BarLine.transparent = ##f
                                    r1
                                    \once \override Staff.BarLine.transparent = ##f
                                    \startStaff
                                    \stopStaff
                                    \once \revert Staff.StaffSymbol.line-positions
                                    \once \override Staff.StaffSymbol.line-count = #0
                                    \once \override Staff.BarLine.transparent = ##f
                                    r4.
                                    \once \override Staff.BarLine.transparent = ##f
                                    \startStaff
                                    \stopStaff
                                    \once \revert Staff.StaffSymbol.line-positions
                                    \once \override Staff.StaffSymbol.line-count = #0
                                    \once \override Staff.BarLine.transparent = ##f
                                    r2
                                    \once \override Staff.BarLine.transparent = ##f
                                    \startStaff
                                    \stopStaff
                                    \once \revert Staff.StaffSymbol.line-positions
                                    \once \override Staff.StaffSymbol.line-count = #0
                                    \once \override Staff.BarLine.transparent = ##f
                                    r1
                                    \once \override Staff.BarLine.transparent = ##f
                                    \startStaff
                                    \stopStaff
                                    \once \revert Staff.StaffSymbol.line-positions
                                    \once \override Staff.StaffSymbol.line-count = #0
                                    \once \override Staff.BarLine.transparent = ##f
                                    r1.
                                    \once \override Staff.BarLine.transparent = ##f
                                    \startStaff
                                    \stopStaff
                                    \once \revert Staff.StaffSymbol.line-positions
                                    \once \override Staff.StaffSymbol.line-count = #0
                                    \once \override Staff.BarLine.transparent = ##f
                                    r8.
                                    \once \override Staff.BarLine.transparent = ##f
                                    \startStaff
                                    r8
                                    r8.
                                    r8
                                    \stopStaff
                                    \once \revert Staff.StaffSymbol.line-positions
                                    \once \override Staff.StaffSymbol.line-count = #0
                                    \once \override Staff.BarLine.transparent = ##f
                                    r4
                                    \once \override Staff.BarLine.transparent = ##f
                                    \startStaff
                                }
                            }
                        }
                        \tag #'voice6
                        {
                            \context Staff = "viola 2 staff"
                            {
                                \context Voice = "viola 2 voice"
                                {
                                    <<
                                        \context Voice = "viola 2 voice temp 1"
                                        {
                                            \clef "alto"
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \voiceOne
                                            a'8
                                            ^ \mp
                                            [
                                            ^ \>
                                            \revert Staff.Stem.stemlet-length
                                            cs'8
                                            ]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            e'8
                                            [
                                            \revert Staff.Stem.stemlet-length
                                            g8
                                            ]
                                            \times 4/5
                                            {
                                                \override Staff.Stem.stemlet-length = 0.75
                                                g8
                                                [
                                                ef'8
                                                ef8
                                                ef'8
                                                \revert Staff.Stem.stemlet-length
                                                g8
                                                ]
                                            }
                                            \times 2/3
                                            {
                                                ef'4
                                                a4
                                                gf'4
                                            }
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 5/6
                                            {
                                                g4
                                                af4
                                                c'4
                                                bf4
                                                af4
                                                gf'4
                                            }
                                            g'4
                                            g4
                                            gf'4
                                            cs'4
                                            ^ \pp
                                        }
                                        \context Voice = "viola polyrhythm voice 1"
                                        {
                                            \times 4/5
                                            {
                                                \override Staff.Stem.stemlet-length = 0.75
                                                \voiceTwo
                                                b'8
                                                [
                                                fs'8
                                                fs8
                                                c8
                                                \revert Staff.Stem.stemlet-length
                                                bf8
                                                ]
                                            }
                                            \times 2/3
                                            {
                                                c''4
                                                a4
                                                b4
                                            }
                                            \times 4/6
                                            {
                                                \override Staff.Stem.stemlet-length = 0.75
                                                f8
                                                [
                                                af8
                                                f'8
                                                g'8
                                                b'8
                                                \revert Staff.Stem.stemlet-length
                                                ef'8
                                                ]
                                            }
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 5/4
                                            {
                                                g4
                                                ef4
                                                gf4
                                                af'4
                                            }
                                            \times 2/3
                                            {
                                                d'2
                                                af'2
                                                a2
                                            }
                                        }
                                    >>
                                    \oneVoice
                                    <<
                                        \context Voice = "viola 2 voice temp 2"
                                        {
                                            \big-half-harmonic
                                            \voiceOne
                                            d''16
                                            - \tweak padding 1
                                            ^ \punta-to-talon
                                            [
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 1
                                            - \tweak padding #16
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "MSP" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -2
                                            \startTextSpanOne
                                            \big-half-harmonic
                                            eqf''16
                                            - \tweak padding 1
                                            ^ \talon-to-punta
                                            \big-half-harmonic
                                            d''16
                                            - \tweak padding 1
                                            ^ \punta-to-talon
                                            \big-half-harmonic
                                            b'16
                                            - \tweak padding 1
                                            ^ \talon-to-punta
                                            ]
                                            ~
                                            \times 2/3
                                            {
                                                \big-half-harmonic
                                                b'8
                                                [
                                                \big-half-harmonic
                                                cqs''8
                                                - \tweak padding 1
                                                ^ \punta-to-talon
                                                \big-half-harmonic
                                                dqf''8
                                                - \tweak padding 1
                                                ^ \talon-to-punta
                                                ]
                                                ~
                                            }
                                            \big-half-harmonic
                                            dqf''4
                                            \big-half-harmonic
                                            af'2.
                                            - \tweak padding 1
                                            ^ \punta-to-talon
                                            ~
                                            \big-half-harmonic
                                            af'2
                                            \big-half-harmonic
                                            eqf'4
                                            - \tweak padding 1
                                            ^ \talon-to-punta
                                            ~
                                            \big-half-harmonic
                                            eqf'16
                                            [
                                            \big-half-harmonic
                                            bf16
                                            - \tweak padding 1
                                            ^ \punta-to-talon
                                            ]
                                            ~
                                            \big-half-harmonic
                                            bf16
                                            [
                                            \big-half-harmonic
                                            c'16
                                            - \tweak padding 1
                                            ^ \talon-to-punta
                                            ~
                                            \big-half-harmonic
                                            c'16
                                            \big-half-harmonic
                                            cs'8.
                                            - \tweak padding 1
                                            ^ \punta-to-talon
                                            ]
                                            \big-half-harmonic
                                            bqf16.
                                            - \tweak padding 1
                                            ^ \talon-to-punta
                                            [
                                            - \tweak padding #10
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " accel. ( to " } \fontsize #-0.5 { \note { 4 } #1.5 } \fontsize #3 { " . = 153 )" } } } \hspace #0.5 }
                                            - \tweak bound-details.right.text \markup {}
                                            - \tweak bound-details.right.padding -30
                                            \startTextSpanThree
                                            \big-half-harmonic
                                            aqs16.
                                            - \tweak padding 1
                                            ^ \punta-to-talon
                                            \big-half-harmonic
                                            b16.
                                            - \tweak padding 1
                                            ^ \talon-to-punta
                                            \big-half-harmonic
                                            aqs16.
                                            - \tweak padding 1
                                            ^ \punta-to-talon
                                            ]
                                            ~
                                            \big-half-harmonic
                                            aqs16
                                            [
                                            \big-half-harmonic
                                            dqs16
                                            - \tweak padding 1
                                            ^ \talon-to-punta
                                            \big-half-harmonic
                                            d16
                                            - \tweak padding 1
                                            ^ \punta-to-talon
                                            \big-half-harmonic
                                            fs16
                                            - \tweak padding 1
                                            ^ \talon-to-punta
                                            ]
                                            ~
                                            \big-half-harmonic
                                            fs8
                                            [
                                            \big-half-harmonic
                                            eqf8
                                            - \tweak padding 1
                                            ^ \punta-to-talon
                                            ]
                                            ~
                                            \big-half-harmonic
                                            eqf2
                                            \stopTextSpanOne
                                            \stopTextSpanThree
                                        }
                                        \context Voice = "viola legno voice"
                                        {
                                            \override Voice.NoteHead.color = #(css-color 'darkred)
                                            \override Voice.Dots.color = #(css-color 'darkred)
                                            \override Voice.Stem.color = #(css-color 'darkred)
                                            \override Voice.Beam.color = #(css-color 'darkred)
                                            \override Voice.Rest.color = #(css-color 'darkred)
                                            \override Voice.Tie.color = #(css-color 'darkred)
                                            \override Voice.TupletBracket.color = #(css-color 'darkred)
                                            \override Voice.TupletNumber.color = #(css-color 'darkred)
                                            \override Voice.NoteHead.no-ledgers = ##t
                                            \override Voice.Accidental.stencil = ##f
                                            \textSpannerDown
                                            \once \override DynamicLineSpanner.padding = #5.5
                                            \voiceTwo
                                            \tweak style #'cross
                                            a,8.
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            [
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #14
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLB OB" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -1.5
                                            \startTextSpan
                                            \<
                                            \tweak style #'cross
                                            a,8.
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \tweak style #'cross
                                            a,8.
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \tweak style #'cross
                                            a,8.
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            ]
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 5/6
                                            {
                                                \tweak style #'cross
                                                a,2
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                \tweak style #'cross
                                                a,2
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                - \tweak color #(css-color 'darkred)
                                                _ \accent
                                                \tweak style #'cross
                                                a,2
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                - \tweak color #(css-color 'darkred)
                                                _ \accent
                                            }
                                            \tweak style #'cross
                                            a,8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            [
                                            \tweak style #'cross
                                            a,8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \tweak style #'cross
                                            a,8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            ]
                                            \tweak style #'cross
                                            a,8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            [
                                            \tweak style #'cross
                                            a,8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \tweak style #'cross
                                            a,8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            ]
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 6/5
                                            {
                                                \tweak style #'cross
                                                a,16
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                [
                                                \tweak style #'cross
                                                a,16
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                \tweak style #'cross
                                                a,16
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                \tweak style #'cross
                                                a,16
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                \tweak style #'cross
                                                a,16
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                ]
                                            }
                                            \times 2/3
                                            {
                                                \tweak style #'cross
                                                a,2
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                - \tweak color #(css-color 'darkred)
                                                _ \accent
                                                \tweak style #'cross
                                                a,2
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                \tweak style #'cross
                                                a,2
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                - \tweak color #(css-color 'darkred)
                                                _ \accent
                                                \mf
                                                \stopTextSpan
                                                \textSpannerUp
                                                \revert Voice.NoteHead.color
                                                \revert Voice.Dots.color
                                                \revert Voice.Stem.color
                                                \revert Voice.Beam.color
                                                \revert Voice.Rest.color
                                                \revert Voice.Tie.color
                                                \revert Voice.TupletBracket.color
                                                \revert Voice.TupletNumber.color
                                                \revert Voice.NoteHead.no-ledgers
                                                \revert Voice.Accidental.stencil
                                            }
                                        }
                                    >>
                                    \oneVoice
                                    <<
                                        \context Voice = "viola 2 voice temp 3"
                                        {
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 7/10
                                            {
                                                \voiceOne
                                                a'4
                                                  %! +SCORE
                                                ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #10 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { " . = 153" } } }
                                                - \tweak font-name "Bodoni72 Book" 
                                                - \tweak font-size 1
                                                - \tweak padding #11
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { \upright { "CLB" } \hspace #0.5 }
                                                - \tweak bound-details.right.padding -1.5
                                                \startTextSpanOne
                                                _ \>
                                                cs'4
                                                e'4
                                                g4
                                                g4
                                            }
                                            \times 2/3
                                            {
                                                ef'2
                                                ef'2
                                                ef'2
                                            }
                                            g4.
                                            ef'4.
                                            a4.
                                            fs'4.
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 5/6
                                            {
                                                \override Staff.Stem.stemlet-length = 0.75
                                                g8
                                                [
                                                af8
                                                c'8
                                                bf8
                                                af8
                                                \revert Staff.Stem.stemlet-length
                                                gf'8
                                                _ \ppp
                                                \stopTextSpanOne
                                                ]
                                            }
                                        }
                                        \context Voice = "viola polyrhythm voice 2"
                                        {
                                            \voiceTwo
                                            b'8.
                                            ~
                                            b'32
                                            [
                                            fs'32
                                            ~
                                            fs'8
                                            ]
                                            ~
                                            fs'16
                                            [
                                            fs8.
                                            ]
                                            ~
                                            fs32
                                            [
                                            c8..
                                            ]
                                            \times 2/3
                                            {
                                                bf2
                                                c''2
                                                a2
                                            }
                                            b4
                                            f4
                                            af4
                                            f'4
                                            g'4
                                            b'4
                                            ef'8
                                            [
                                            g8
                                            ef8
                                            gf8
                                            af'8
                                            ]
                                        }
                                    >>
                                    \oneVoice
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
                                    \stopStaff
                                    \once \revert Staff.StaffSymbol.line-positions
                                    \once \override Staff.StaffSymbol.line-count = #0
                                    \once \override Staff.BarLine.transparent = ##f
                                    r2
                                    \once \override Staff.BarLine.transparent = ##f
                                    \startStaff
                                    \stopStaff
                                    \once \revert Staff.StaffSymbol.line-positions
                                    \once \override Staff.StaffSymbol.line-count = #0
                                    \once \override Staff.BarLine.transparent = ##f
                                    r2
                                    \once \override Staff.BarLine.transparent = ##f
                                    \startStaff
                                    \stopStaff
                                    \once \revert Staff.StaffSymbol.line-positions
                                    \once \override Staff.StaffSymbol.line-count = #0
                                    \once \override Staff.BarLine.transparent = ##f
                                    r2
                                    \once \override Staff.BarLine.transparent = ##f
                                    \startStaff
                                    \stopStaff
                                    \once \revert Staff.StaffSymbol.line-positions
                                    \once \override Staff.StaffSymbol.line-count = #0
                                    \once \override Staff.BarLine.transparent = ##f
                                    r2.
                                    \once \override Staff.BarLine.transparent = ##f
                                    \startStaff
                                    r2
                                    \stopStaff
                                    \once \revert Staff.StaffSymbol.line-positions
                                    \once \override Staff.StaffSymbol.line-count = #0
                                    \once \override Staff.BarLine.transparent = ##f
                                    r1
                                    \once \override Staff.BarLine.transparent = ##f
                                    \startStaff
                                    \stopStaff
                                    \once \revert Staff.StaffSymbol.line-positions
                                    \once \override Staff.StaffSymbol.line-count = #0
                                    \once \override Staff.BarLine.transparent = ##f
                                    r2.
                                    \once \override Staff.BarLine.transparent = ##f
                                    \startStaff
                                    \stopStaff
                                    \once \revert Staff.StaffSymbol.line-positions
                                    \once \override Staff.StaffSymbol.line-count = #0
                                    \once \override Staff.BarLine.transparent = ##f
                                    r2.
                                    \once \override Staff.BarLine.transparent = ##f
                                    \startStaff
                                    r2
                                    \once \override Staff.Clef.stencil = ##f
                                    \stopStaff
                                    \once \revert Staff.StaffSymbol.line-positions
                                    \once \override Staff.StaffSymbol.line-count = #0
                                    \once \override Staff.BarLine.transparent = ##f
                                    r2.
                                    \once \override Staff.BarLine.transparent = ##f
                                    \startStaff
                                    \override Dots.staff-position = #2
                                    \set Staff.forceClef = ##t
                                    d'''16.
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #6
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "ST poss." } \hspace #0.5 }
                                    \startTextSpanOne
                                    - \tweak padding #9.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " accel. ( to " } \fontsize #-0.5 { \note { 4 } #1.5 } \fontsize #3 { " . = 153 )" } } } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { " . = 153" } } }
                                    \startTextSpanThree
                                    a32
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    a''16
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    c'16
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    d''32
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    e'16.
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \set Staff.forceClef = ##f
                                    \times 4/5
                                    {
                                        d''4
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        a4
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        c'4
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        c'''4
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        a''4
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                    }
                                    c'''4.
                                    \stopTextSpanThree
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #7.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "1/2 CLT" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding 0.5
                                    \startTextSpanTwo
                                    \>
                                    a2
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    f'2
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    a2
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    e'1.
                                    \stopTextSpanTwo
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #7.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "CLT" } \hspace #0.5 }
                                    \startTextSpanTwo
                                    b2
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    ~
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    \afterGrace
                                    b8
                                    {
                                        \revert Dots.staff-position
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        a16
                                        \ppp
                                        \stopTextSpanOne
                                        \stopTextSpanTwo
                                    }
                                    \stopStaff
                                    \once \revert Staff.StaffSymbol.line-positions
                                    \once \override Staff.StaffSymbol.line-count = #0
                                    \once \override Staff.BarLine.transparent = ##f
                                    r4
                                    \once \override Staff.BarLine.transparent = ##f
                                    \startStaff
                                }
                            }
                        }
                        \tag #'voice8
                        {
                            \context Staff = "cello 2 staff"
                            {
                                \context Voice = "cello 2 voice"
                                {
                                    \big-half-harmonic
                                    \clef "bass"
                                    g4
                                    - \tweak padding 1
                                    ^ \punta-to-talon
                                    \mp
                                      %! +SCORE
                                    ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-7 \raise #6 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 100" } } }
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #7.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "MST" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding 0.5
                                    \startTextSpanOne
                                    \>
                                    ~
                                    \big-half-harmonic
                                    g8
                                    [
                                    \big-half-harmonic
                                    cs8
                                    - \tweak padding 1
                                    ^ \talon-to-punta
                                    ]
                                    (
                                    ~
                                    \big-half-harmonic
                                    cs4
                                    ~
                                    \big-half-harmonic
                                    cs8
                                    [
                                    \big-half-harmonic
                                    aqf,8
                                    ]
                                    \big-half-harmonic
                                    cs8
                                    )
                                    [
                                    \times 4/5
                                    {
                                        \big-half-harmonic
                                        f16
                                        - \tweak padding 1
                                        ^ \punta-to-talon
                                        (
                                        \big-half-harmonic
                                        g16
                                        \big-half-harmonic
                                        af16
                                        \big-half-harmonic
                                        fqs16
                                        \big-half-harmonic
                                        eqs16
                                        )
                                    }
                                    \big-half-harmonic
                                    aqs,8
                                    - \tweak padding 1
                                    ^ \talon-to-punta
                                    ]
                                    (
                                    ~
                                    \big-half-harmonic
                                    aqs,4
                                    ~
                                    \big-half-harmonic
                                    aqs,8
                                    \stopTextSpanOne
                                    [
                                    - \tweak bound-details.left.Y #-0.5
                                    - \tweak bound-details.right.Y #4
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #7.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "" } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \upright { "MSP" }
                                    - \tweak bound-details.right.padding 2
                                    \startTextSpanOne
                                    \times 4/5
                                    {
                                        \big-half-harmonic
                                        a,16
                                        \big-half-harmonic
                                        cs16
                                        \big-half-harmonic
                                        bqf,16
                                        \big-half-harmonic
                                        b,16
                                        \big-half-harmonic
                                        bqf,16
                                        )
                                    }
                                    \big-half-harmonic
                                    cs'8
                                    - \tweak padding 1
                                    ^ \punta-to-talon
                                    ]
                                    (
                                    ~
                                    \big-half-harmonic
                                    cs'4
                                    \times 2/3
                                    {
                                        \big-half-harmonic
                                        b8
                                        [
                                        \big-half-harmonic
                                        cqs'8
                                        \big-half-harmonic
                                        eqf'8
                                        ]
                                    }
                                    \times 2/3
                                    {
                                        \big-half-harmonic
                                        dqf'8
                                        [
                                        \big-half-harmonic
                                        dqs'8
                                        )
                                        \big-half-harmonic
                                        gqf8
                                        - \tweak padding 1
                                        ^ \talon-to-punta
                                        ]
                                        (
                                    }
                                    \big-half-harmonic
                                    fs2
                                    )
                                    \once \override TupletBracket.padding = #4
                                    \times 4/5
                                    {
                                        \big-half-harmonic
                                        b,16
                                        - \tweak padding 1
                                        ^ \punta-to-talon
                                        [
                                        (
                                        \big-half-harmonic
                                        bqs,16
                                        \big-half-harmonic
                                        aqs,16
                                        \big-half-harmonic
                                        bqs,16
                                        \big-half-harmonic
                                        cs16
                                        \pp
                                        )
                                        \stopTextSpanOne
                                        ]
                                    }
                                    <<
                                        \context Voice = "cello 2 voice temp"
                                        {
                                            \big-half-harmonic
                                            \once \override DynamicLineSpanner.padding = #13
                                            \voiceOne
                                            cs'4
                                            - \tweak padding 1
                                            ^ \talon-to-punta
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 1
                                            - \tweak padding #13
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "(MSP)" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -1
                                            \startTextSpanOne
                                            \<
                                            ~
                                            \big-half-harmonic
                                            cs'8
                                            [
                                            \times 4/5
                                            {
                                                \big-half-harmonic
                                                cqs'16
                                                - \tweak padding 1
                                                ^ \punta-to-talon
                                                \big-half-harmonic
                                                cs'16
                                                - \tweak padding 1
                                                ^ \talon-to-punta
                                                \big-half-harmonic
                                                dqs'16
                                                - \tweak padding 1
                                                ^ \punta-to-talon
                                                \big-half-harmonic
                                                d'16
                                                - \tweak padding 1
                                                ^ \talon-to-punta
                                                \big-half-harmonic
                                                cqs'16
                                                - \tweak padding 1
                                                ^ \punta-to-talon
                                            }
                                            \big-half-harmonic
                                            bqf8
                                            - \tweak padding 1
                                            ^ \talon-to-punta
                                            ]
                                            \big-half-harmonic
                                            dqs'8
                                            - \tweak padding 1
                                            ^ \punta-to-talon
                                            [
                                            \times 4/5
                                            {
                                                \big-half-harmonic
                                                ef'8
                                                - \tweak padding 1
                                                ^ \talon-to-punta
                                                \big-half-harmonic
                                                bqs8
                                                - \tweak padding 1
                                                ^ \punta-to-talon
                                                \big-half-harmonic
                                                b8
                                                - \tweak padding 1
                                                ^ \talon-to-punta
                                                \big-half-harmonic
                                                dqf'8
                                                - \tweak padding 1
                                                ^ \punta-to-talon
                                                \big-half-harmonic
                                                b8
                                                - \tweak padding 1
                                                ^ \talon-to-punta
                                            }
                                            \big-half-harmonic
                                            dqf'8
                                            - \tweak padding 1
                                            ^ \punta-to-talon
                                            ]
                                            ~
                                            \big-half-harmonic
                                            dqf'4
                                            \times 2/3
                                            {
                                                \big-half-harmonic
                                                ef'8
                                                - \tweak padding 1
                                                ^ \talon-to-punta
                                                [
                                                \big-half-harmonic
                                                dqs'8
                                                - \tweak padding 1
                                                ^ \punta-to-talon
                                                \big-half-harmonic
                                                cs'8
                                                - \tweak padding 1
                                                ^ \talon-to-punta
                                                ]
                                            }
                                            \big-half-harmonic
                                            dqf'4.
                                            - \tweak padding 1
                                            ^ \punta-to-talon
                                            ~
                                            \big-half-harmonic
                                            dqf'8
                                            [
                                            \times 4/5
                                            {
                                                \big-half-harmonic
                                                bqf16
                                                - \tweak padding 1
                                                ^ \talon-to-punta
                                                \big-half-harmonic
                                                cs'16
                                                - \tweak padding 1
                                                ^ \punta-to-talon
                                                \big-half-harmonic
                                                cqs'16
                                                - \tweak padding 1
                                                ^ \talon-to-punta
                                                \big-half-harmonic
                                                cs'16
                                                - \tweak padding 1
                                                ^ \punta-to-talon
                                                \big-half-harmonic
                                                dqs'16
                                                - \tweak padding 1
                                                ^ \talon-to-punta
                                                \mf
                                                \stopTextSpanOne
                                                ]
                                            }
                                        }
                                        \context Voice = "cello legno voice"
                                        {
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 6/5
                                            {
                                                \override Voice.NoteHead.color = #(css-color 'darkred)
                                                \override Voice.Dots.color = #(css-color 'darkred)
                                                \override Voice.Stem.color = #(css-color 'darkred)
                                                \override Voice.Beam.color = #(css-color 'darkred)
                                                \override Voice.Rest.color = #(css-color 'darkred)
                                                \override Voice.Tie.color = #(css-color 'darkred)
                                                \override Voice.TupletBracket.color = #(css-color 'darkred)
                                                \override Voice.TupletNumber.color = #(css-color 'darkred)
                                                \override Voice.NoteHead.no-ledgers = ##t
                                                \override Voice.Accidental.stencil = ##f
                                                \textSpannerDown
                                                \voiceTwo
                                                \tweak style #'cross
                                                c,8
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                [
                                                - \tweak color #(css-color 'darkred)
                                                - \tweak font-name "Bodoni72 Book" 
                                                - \tweak font-size 2
                                                - \tweak padding #13.5
                                                - \abjad-dashed-line-with-up-hook
                                                - \tweak bound-details.left.text \markup \concat { \upright { "CLB OB" } \hspace #0.5 }
                                                - \tweak bound-details.right.padding -1.5
                                                \startTextSpan
                                                \tweak style #'cross
                                                c,8
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                \tweak style #'cross
                                                c,8
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                \tweak style #'cross
                                                c,8
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                - \tweak color #(css-color 'darkred)
                                                _ \accent
                                                \tweak style #'cross
                                                c,8
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                ]
                                            }
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 5/6
                                            {
                                                \tweak style #'cross
                                                c,2
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                - \tweak color #(css-color 'darkred)
                                                _ \accent
                                                \tweak style #'cross
                                                c,2
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                - \tweak color #(css-color 'darkred)
                                                _ \accent
                                                \tweak style #'cross
                                                c,2
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                            }
                                            \tweak style #'cross
                                            c,8.
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            [
                                            \tweak style #'cross
                                            c,8.
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            \tweak style #'cross
                                            c,8.
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \tweak style #'cross
                                            c,8.
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \stopTextSpan
                                            ]
                                            \textSpannerUp
                                            \revert Voice.NoteHead.color
                                            \revert Voice.Dots.color
                                            \revert Voice.Stem.color
                                            \revert Voice.Beam.color
                                            \revert Voice.Rest.color
                                            \revert Voice.Tie.color
                                            \revert Voice.TupletBracket.color
                                            \revert Voice.TupletNumber.color
                                            \revert Voice.NoteHead.no-ledgers
                                            \revert Voice.Accidental.stencil
                                        }
                                    >>
                                    \oneVoice
                                    <<
                                        \context Voice = "cello 2 voice upper"
                                        {
                                            \clef "treble"
                                            \voiceOne
                                            df'16.
                                            [
                                            f'16.
                                            bf16.
                                            b16.
                                            ]
                                            \times 2/3
                                            {
                                                d'2
                                                g'2
                                                fs''2
                                            }
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 7/10
                                            {
                                                cs''4
                                                f''4
                                                bf'4
                                                b4
                                                d'4
                                            }
                                            \times 4/6
                                            {
                                                af'4
                                                b4
                                                cs'4
                                                f'4
                                                bf4
                                                e'4
                                            }
                                            d'2
                                            g'2
                                            e''2
                                            d''8
                                            [
                                            bf''8
                                            bf'8
                                            b''8
                                            d''8
                                            ]
                                        }
                                        \context Voice = "cello lower voice"
                                        {
                                            \voiceTwo
                                            bf8
                                            [
                                            b8
                                            d'8
                                            ]
                                            \times 4/5
                                            {
                                                g4
                                                fs'4
                                                cs''4
                                                f''4
                                                as'4
                                            }
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 7/6
                                            {
                                                b'8
                                                [
                                                d''8
                                                af'8
                                                b'8
                                                cs'8
                                                f'8
                                                ]
                                            }
                                            \times 2/3
                                            {
                                                bf2
                                                e'2
                                                d'2
                                            }
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 6/5
                                            {
                                                g'4
                                                e'4
                                                d''4
                                                bf''4
                                                bf'!4
                                            }
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 5/4
                                            {
                                                b''8
                                                [
                                                d''8
                                                gs''8
                                                e''8
                                                ]
                                            }
                                        }
                                    >>
                                    \oneVoice
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
}
