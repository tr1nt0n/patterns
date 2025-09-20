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
              %! +SCORE
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (11 17 17 15 30)))
            \time 8/8
            s1 * 1
              %! +SCORE
            \noBreak
            \time 10/8
            s1 * 5/4
              %! +SCORE
            \break
              %! +SCORE
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (14 17 17 12 30)))
            \time 4/4
            s1 * 1
              %! +SCORE
            \noBreak
            \time 11/8
            s1 * 11/8
              %! +SCORE
            \break
              %! +SCORE
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (11 35 26 32)))
            \time 10/8
            s1 * 5/4
              %! +SCORE
            \noBreak
            \time 1/4
            s1 * 1/4
              %! +SCORE
            \break
              %! +SCORE
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (6 23.5 22.5 25.5 30.5)))
            \time 2/2
            s1 * 1
              %! +SCORE
            \noBreak
            \time 3/2
            s1 * 3/2
              %! +SCORE
            \break
              %! +SCORE
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (10 15 15 27 28)))
            \time 2/2
            s1 * 1
              %! +SCORE
            \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 2/2
            s1 * 1
              %! +SCORE
            \break
              %! +SCORE
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (10 15 14 32 28)))
            \once \override Score.TimeSignature.stencil = ##f
            \time 2/2
            s1 * 1
              %! +SCORE
            \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 2/2
            s1 * 1
              %! +SCORE
            \noBreak
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            - \tweak font-size #'10
            _ \very-short-fermata
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
                                    \times 2/3
                                    {
                                        \override Dots.staff-position = #2
                                        \set GrandStaff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { Violin 1 }
                                          %! +SCORE
                                        \set GrandStaff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { V1 }
                                        c'''4
                                          %! +SCORE
                                        ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-7 \raise #2 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 99" } } }
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak font-name "Bodoni72 Book" 
                                        - \tweak font-size 2
                                        - \tweak padding #6
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { { "CLT" } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -10
                                        \startTextSpanOne
                                        a4
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        c'''2
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        a''8
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        a8
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        b'4
                                        \stopTextSpanOne
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        - \tweak font-name "Bodoni72 Book" 
                                        - \tweak font-size 2
                                        - \tweak padding #6
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { { \hspace #12.5 "1/2 CLT" } \hspace #0.5 }
                                        - \tweak bound-details.right.padding 6
                                        \startTextSpanOne
                                        ~
                                    }
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    b'2
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    f'4
                                    \stopTextSpanOne
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 2
                                    - \tweak padding #6
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { { \hspace #-7.5 "CLT" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -10
                                    \startTextSpanOne
                                    e''8.
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    c'16
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    c'''4
                                    \stopTextSpanOne
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    ~
                                    \times 2/3
                                    {
                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                        c'''2
                                        - \tweak font-name "Bodoni72 Book" 
                                        - \tweak font-size 2
                                        - \tweak padding #6
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { { \hspace #-5 "1/2 CLT" } \hspace #0.5 }
                                        - \tweak bound-details.right.padding 3
                                        \startTextSpanOne
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        a''8
                                        \stopTextSpanOne
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak font-name "Bodoni72 Book" 
                                        - \tweak font-size 2
                                        - \tweak padding #6
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { { \hspace #-3.5 "CLT" } \hspace #0.5 }
                                        \startTextSpanOne
                                        c'''4.
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        d''4
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        a4
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 22/24
                                    {
                                        b2
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        c'''4
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        b'4
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        c'''16
                                        \stopTextSpanOne
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        a8.
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak font-name "Bodoni72 Book" 
                                        - \tweak font-size 2
                                        - \tweak padding #6
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { { \hspace #-2 "1/2 CLT" } \hspace #0.5 }
                                        \startTextSpanOne
                                        \afterGrace
                                        b4
                                        \stopTextSpanOne
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak font-name "Bodoni72 Book" 
                                        - \tweak font-size 2
                                        - \tweak padding #6
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { { "CLT" } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -1
                                        \startTextSpanOne
                                        {
                                            \revert Dots.staff-position
                                            e''16
                                            \stopTextSpanOne
                                        }
                                    }
                                    \stopStaff
                                    \once \revert Staff.StaffSymbol.line-positions
                                    \once \override Staff.StaffSymbol.line-count = #0
                                    \once \override Staff.BarLine.transparent = ##f
                                    r4.
                                    \once \override Staff.BarLine.transparent = ##f
                                    \startStaff
                                    r4
                                    r4.
                                    r4
                                    \stopStaff
                                    \once \revert Staff.StaffSymbol.line-positions
                                    \once \override Staff.StaffSymbol.line-count = #0
                                    \once \override Staff.BarLine.transparent = ##f
                                    r4
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
                                    r1
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
                                    r1
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
                                    r4
                                    \once \override Staff.BarLine.transparent = ##f
                                    \startStaff
                                }
                            }
                        }
                        \tag #'voice2
                        {
                            \context Staff = "violin 2 staff"
                            {
                                \context Voice = "violin 2 voice"
                                {
                                    <<
                                        \context Voice = "violin 2 voice temp"
                                        {
                                            \times 4/6
                                            {
                                                \voiceOne
                                                cs'4
                                                a'4
                                                bf'4
                                                e'4
                                                a'4
                                                d'4
                                            }
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 5/4
                                            {
                                                d'4
                                                f'4
                                                c''4
                                                e'4
                                            }
                                            \times 4/5
                                            {
                                                g'4
                                                bf'4
                                                d'4
                                                f'4
                                                g'4
                                            }
                                            \once \override TupletBracket.padding = 0.5
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 11/12
                                            {
                                                e''2
                                                a''2
                                                cs'2
                                            }
                                        }
                                        \context Voice = "violin 1 polyrhythm voice"
                                        {
                                            \voiceTwo
                                            e'4
                                            - \tweak circled-tip ##t
                                            ^ \<
                                            g4
                                            bf4
                                            d'4
                                            f'4
                                            g4
                                            e'4
                                            a'4
                                            ^ \ppp
                                            cs'4
                                            \times 2/3
                                            {
                                                cs'2
                                                bf2
                                                cs'2
                                            }
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 11/12
                                            {
                                                cs''4
                                                a'4
                                                ^ \<
                                                e''4
                                                d''4
                                                as'4
                                                f'4
                                                ^ \p
                                            }
                                        }
                                    >>
                                    \oneVoice
                                    <<
                                        \context Voice = "violin 2 voice temp 1"
                                        {
                                            \once \override TupletBracket.padding = #1
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 10/13
                                            {
                                                \override Dots.staff-position = #2
                                                \override Staff.Clef.stencil = #ly:text-interface::print
                                                \override Staff.Clef.text = \string-clef
                                                \staff-line-count 4
                                                \override Staff.StaffSymbol.line-positions = #'(9 7 0 -9)
                                                \override Staff.BarLine.bar-extent = #'(-4.5 . 4.5)
                                                \override Staff.Accidental.stencil = ##f
                                                \override Staff.NoteHead.no-ledgers = ##t
                                                \once \override DynamicLineSpanner.padding = #8
                                                \voiceTwo
                                                \afterGrace
                                                b'16
                                                \ppp
                                                - \markup \fontsize #2 { \hspace #-11 \lower #2 { "Fng. Perc.:" } }
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                                - \tweak Y-extent ##f
                                                - \tweak bound-details.left.Y #-5
                                                - \tweak bound-details.left.text \markup \override #'(font-name . "ekmelos") \concat { \general-align #Y #-0.5 \general-align #X #0.25 \override #'(baseline-skip . 0) { \center-column { \fontsize #6 \line { \char ##xe0be }\line { \concat { \fontsize #6 { ( } \fontsize #8 { \char ##xe0e3 } \fontsize #6 { ) } } }\line { \concat { \fontsize #6 { ( } \fontsize #6 { \char ##xe0a9 } \fontsize #6 { ) } } }} } }
                                                - \tweak bound-details.right.Y #-5
                                                \startTrillSpan
                                                {
                                                    #(define afterGraceFraction (cons 15 16))
                                                    \revert Dots.staff-position
                                                    \once \override Flag.stroke-style = #"grace"
                                                    d''16
                                                    \stopTrillSpan
                                                }
                                                \once \override Rest.staff-position = #-7
                                                r4
                                                g'16
                                                - \tweak Y-extent ##f
                                                - \tweak bound-details.left.Y #-6
                                                - \tweak bound-details.left.text \markup \override #'(font-name . "ekmelos") \concat { \general-align #Y #-0.5 \general-align #X #0.25 \override #'(baseline-skip . 0) { \center-column { \fontsize #6 \line { \char ##xe0a9 }\line { \concat { \fontsize #6 { ( } \fontsize #6 { \char ##xe0d9 } \fontsize #6 { ) } } }} } }
                                                - \tweak bound-details.right.Y #-6.5
                                                \startTrillSpan
                                                \once \override Rest.staff-position = #-7
                                                r4.
                                                \once \override DynamicLineSpanner.padding = #3
                                                a16
                                                \pp
                                                ~
                                            }
                                            \once \override TupletBracket.padding = #1
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 10/13
                                            {
                                                a2
                                                ~
                                                a8
                                                \stopTrillSpan
                                                [
                                                \once \override Rest.staff-position = #-7
                                                r16
                                                b8
                                                ]
                                                ~
                                                - \tweak Y-extent ##f
                                                - \tweak bound-details.left.Y #-6.5
                                                - \tweak bound-details.left.text \markup \override #'(font-name . "ekmelos") \concat { \general-align #Y #-0.5 \general-align #X #0.25 \override #'(baseline-skip . 0) { \center-column { \fontsize #6 \line { \char ##xe0be }\line { \concat { \fontsize #6 { ( } \fontsize #6 { \char ##xe0d9 } \fontsize #6 { ) } } }} } }
                                                - \tweak bound-details.right.Y #-5
                                                \startTrillSpan
                                            }
                                            \once \override TupletBracket.padding = #1
                                            \times 4/5
                                            {
                                                b8
                                                - \tweak Beam.positions #'(-8.5 . -7.5)
                                                [
                                                \once \override Rest.staff-position = #-7
                                                r16
                                                \override Dots.staff-position = #2
                                                \once \override DynamicLineSpanner.padding = #8.5
                                                e''8
                                                ]
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                \>
                                                ~
                                            }
                                            \once \override TupletBracket.padding = #1
                                            \times 4/5
                                            {
                                                  %! abjad.glissando(1)
                                                \hide NoteHead
                                                  %! abjad.glissando(1)
                                                \override Accidental.stencil = ##f
                                                  %! abjad.glissando(1)
                                                \override NoteColumn.glissando-skip = ##t
                                                  %! abjad.glissando(1)
                                                \override NoteHead.no-ledgers = ##t
                                                \afterGrace
                                                e''4
                                                {
                                                    #(define afterGraceFraction (cons 15 16))
                                                    \revert Dots.staff-position
                                                    \once \override Flag.stroke-style = #"grace"
                                                      %! abjad.glissando(6)
                                                    \revert Accidental.stencil
                                                      %! abjad.glissando(6)
                                                    \revert NoteColumn.glissando-skip
                                                      %! abjad.glissando(6)
                                                    \revert NoteHead.no-ledgers
                                                      %! abjad.glissando(6)
                                                    \undo \hide NoteHead
                                                    a'16
                                                    \ppp
                                                }
                                                \once \override Rest.staff-position = #-7
                                                r4
                                                c'8
                                                ~
                                            }
                                            \once \override TupletBracket.padding = #1
                                            \times 4/5
                                            {
                                                c'4
                                                \stopTrillSpan
                                                \once \override Rest.staff-position = #-7
                                                r4
                                                \once \override DynamicLineSpanner.padding = #8
                                                b'8
                                                \p
                                                ~
                                                - \tweak Y-extent ##f
                                                - \tweak bound-details.left.Y #-5
                                                - \tweak bound-details.left.text \markup \override #'(font-name . "ekmelos") \concat { \general-align #Y #-0.5 \general-align #X #0.25 \override #'(baseline-skip . 0) { \center-column { \fontsize #6 \line { \char ##xe0a9 }\line { \concat { \fontsize #6 { ( } \fontsize #6 { \char ##xe0a4 } \fontsize #6 { ) } } }\line { \concat { \fontsize #6 { ( } \fontsize #6 { \char ##xe0d9 } \fontsize #6 { ) } } }} } }
                                                - \tweak bound-details.right.Y #-5
                                                \startTrillSpan
                                            }
                                            \once \override TupletBracket.padding = #1
                                            \times 4/5
                                            {
                                                b'2
                                                \once \override Rest.staff-position = #-7
                                                r4
                                                \stopTrillSpan
                                                \override Dots.staff-position = #2
                                                \once \override DynamicLineSpanner.padding = #9
                                                b'2
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                \>
                                                ~
                                                - \tweak Y-extent ##f
                                                - \tweak bound-details.left.Y #-6.5
                                                - \tweak bound-details.left.text \markup \override #'(font-name . "ekmelos") \concat { \general-align #Y #-0.5 \general-align #X #0.25 \override #'(baseline-skip . 0) { \center-column { \fontsize #6 \line { \char ##xe0be }\line { \concat { \fontsize #6 { ( } \fontsize #6 { \char ##xe0a9 } \fontsize #6 { ) } } }\line { \concat { \fontsize #6 { ( } \fontsize #6 { \char ##xe0a9 } \fontsize #6 { ) } } }\line { \concat { \fontsize #6 { ( } \fontsize #8 { \char ##xe0e3 } \fontsize #6 { ) } } }} } }
                                                - \tweak bound-details.right.Y #-4.5
                                                \startTrillSpan
                                            }
                                            \once \override TupletBracket.padding = #1
                                            \times 4/6
                                            {
                                                  %! abjad.glissando(1)
                                                \hide NoteHead
                                                  %! abjad.glissando(1)
                                                \override Accidental.stencil = ##f
                                                  %! abjad.glissando(1)
                                                \override NoteColumn.glissando-skip = ##t
                                                  %! abjad.glissando(1)
                                                \override NoteHead.no-ledgers = ##t
                                                \afterGrace
                                                b'4.
                                                {
                                                    #(define afterGraceFraction (cons 15 16))
                                                    \revert Dots.staff-position
                                                    \once \override Flag.stroke-style = #"grace"
                                                      %! abjad.glissando(6)
                                                    \revert Accidental.stencil
                                                      %! abjad.glissando(6)
                                                    \revert NoteColumn.glissando-skip
                                                      %! abjad.glissando(6)
                                                    \revert NoteHead.no-ledgers
                                                      %! abjad.glissando(6)
                                                    \undo \hide NoteHead
                                                    d'16
                                                    \ppp
                                                }
                                                \once \override Rest.staff-position = #-7
                                                r8
                                                f'4
                                                \stopTrillSpan
                                            }
                                        }
                                        \context Voice = "violin 1 bow voice"
                                        {
                                            \once \override Rest.staff-position = #7
                                            \voiceOne
                                            r16
                                            - \markup \fontsize #2 { \hspace #-4.5 \raise #2 { "Bow:" } }
                                            - \tweak Beam.positions #'(8 . 7)
                                            [
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #9.1
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { { \hspace #-8 "IV" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -2
                                            \startTextSpanOne
                                            - \tweak padding #10
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " rit. ( to " } \fontsize #-0.5 { \note { 4 } #1.5 } \fontsize #3 { "= 83 )" } } } \hspace #0.5 }
                                            - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 83" } } }
                                            \startTextSpanThree
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                a'
                                            >16
                                            _ \staccato
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                g'
                                            >16
                                            _ \staccato
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                f'
                                            >16
                                            _ \staccato
                                            \once \override Rest.staff-position = #7
                                            r16
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                g'
                                            >16
                                            - \accent
                                            _ \staccato
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                e'
                                            >8
                                            _ \staccato
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                e'
                                            >16
                                            - \accent
                                            _ \staccato
                                            \once \override Dots.staff-position = #2
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                d'
                                            >16
                                            - \accent
                                            ]
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            ~
                                            \once \override Dots.staff-position = #2
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            <
                                                \tweak style #'la
                                                d'
                                            >8
                                            - \tweak Beam.positions #'(7 . 8)
                                            [
                                            ~
                                            \once \override Dots.staff-position = #2
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            \afterGrace
                                            <
                                                \tweak style #'la
                                                d'
                                            >16
                                            {
                                                \once \override Accidental.stencil = ##f
                                                \once \override Dots.staff-position = #2
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                \once \override NoteHead.transparent = ##t
                                                  %! abjad.glissando(6)
                                                \revert Accidental.stencil
                                                  %! abjad.glissando(6)
                                                \revert NoteColumn.glissando-skip
                                                  %! abjad.glissando(6)
                                                \revert NoteHead.no-ledgers
                                                  %! abjad.glissando(6)
                                                \undo \hide NoteHead
                                                <d'>16
                                            }
                                            \once \override Rest.staff-position = #7
                                            r16
                                            \once \override Rest.staff-position = #7
                                            r8
                                            \once \override Rest.staff-position = #7
                                            r16
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                g''
                                            >16
                                            _ \staccato
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                a''
                                            >8
                                            _ \staccato
                                            ]
                                            \once \override Rest.staff-position = #7
                                            r16
                                            - \tweak Beam.positions #'(7 . 7)
                                            [
                                            \once \override Dots.staff-position = #2
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            \afterGrace
                                            <
                                                \tweak style #'la
                                                f'
                                            >8.
                                            - \accent
                                            ]
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            {
                                                \once \override Accidental.stencil = ##f
                                                \once \override Dots.staff-position = #2
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                \once \override NoteHead.transparent = ##t
                                                  %! abjad.glissando(1)
                                                \hide NoteHead
                                                  %! abjad.glissando(1)
                                                \override Accidental.stencil = ##f
                                                  %! abjad.glissando(1)
                                                \override NoteColumn.glissando-skip = ##t
                                                  %! abjad.glissando(1)
                                                \override NoteHead.no-ledgers = ##t
                                                  %! abjad.glissando(6)
                                                \revert Accidental.stencil
                                                  %! abjad.glissando(6)
                                                \revert NoteColumn.glissando-skip
                                                  %! abjad.glissando(6)
                                                \revert NoteHead.no-ledgers
                                                  %! abjad.glissando(6)
                                                \undo \hide NoteHead
                                                <f'>16
                                            }
                                            \once \override Rest.staff-position = #7
                                            r8
                                            \stopTextSpanThree
                                            - \tweak Beam.positions #'(6 . 7)
                                            [
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                f'
                                            >16
                                            _ \staccato
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            \set stemLeftBeamCount = 2
                                            \set stemRightBeamCount = 1
                                            <
                                                \tweak style #'la
                                                g'
                                            >16
                                            _ \staccato
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            \set stemLeftBeamCount = 1
                                            \set stemRightBeamCount = 2
                                            <
                                                \tweak style #'la
                                                a''
                                            >16
                                            - \accent
                                            _ \staccato
                                            \once \override Dots.staff-position = #2
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            \afterGrace
                                            <
                                                \tweak style #'la
                                                f''
                                            >8.
                                            ]
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            {
                                                \once \override Accidental.stencil = ##f
                                                \once \override Dots.staff-position = #2
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                \once \override NoteHead.transparent = ##t
                                                  %! abjad.glissando(1)
                                                \hide NoteHead
                                                  %! abjad.glissando(1)
                                                \override Accidental.stencil = ##f
                                                  %! abjad.glissando(1)
                                                \override NoteColumn.glissando-skip = ##t
                                                  %! abjad.glissando(1)
                                                \override NoteHead.no-ledgers = ##t
                                                  %! abjad.glissando(6)
                                                \revert Accidental.stencil
                                                  %! abjad.glissando(6)
                                                \revert NoteColumn.glissando-skip
                                                  %! abjad.glissando(6)
                                                \revert NoteHead.no-ledgers
                                                  %! abjad.glissando(6)
                                                \undo \hide NoteHead
                                                <f''>16
                                            }
                                            \once \override Rest.staff-position = #7
                                            r8.
                                            - \tweak Beam.positions #'(6 . 8)
                                            [
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                a''
                                            >16
                                            _ \staccato
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                f''
                                            >8
                                            _ \staccato
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                g''
                                            >16
                                            _ \staccato
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                e''
                                            >16
                                            _ \staccato
                                            ]
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                d'
                                            >16
                                            - \accent
                                            _ \staccato
                                            - \tweak Beam.positions #'(7 . 7)
                                            [
                                            \once \override Rest.staff-position = #7
                                            r8.
                                            \once \override Rest.staff-position = #7
                                            r8.
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                d'
                                            >16
                                            _ \staccato
                                            ]
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                d'
                                            >8
                                            - \accent
                                            _ \staccato
                                            - \tweak Beam.positions #'(7 . 7)
                                            [
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                b
                                            >16
                                            - \accent
                                            _ \staccato
                                            \once \override Rest.staff-position = #7
                                            r16
                                            ]
                                            \once \override Rest.staff-position = #7
                                            r4
                                            \once \override Rest.staff-position = #7
                                            r8.
                                            - \tweak Beam.positions #'(8 . 8)
                                            [
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            \set stemLeftBeamCount = 2
                                            \set stemRightBeamCount = 1
                                            <
                                                \tweak style #'la
                                                a''
                                            >16
                                            _ \staccato
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            \set stemLeftBeamCount = 1
                                            \set stemRightBeamCount = 2
                                            <
                                                \tweak style #'la
                                                e''
                                            >16
                                            _ \staccato
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                f''
                                            >16
                                            - \accent
                                            _ \staccato
                                            \once \override Rest.staff-position = #7
                                            r8
                                            \stopTextSpanOne
                                            ]
                                        }
                                    >>
                                    \oneVoice
                                    \staff-line-count 5
                                    \revert Staff.StaffSymbol.line-positions
                                    \revert Staff.Accidental.stencil
                                    \revert Staff.NoteHead.no-ledgers
                                    \revert Staff.Clef.stencil
                                    r16
                                    [
                                    \override Staff.BarLine.bar-extent = #'(-2 . 2)
                                    c'!8.
                                    \pp
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -34 } } } }
                                    ]
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #7
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "Bowing IV (molto tasto) + Waist" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -4
                                    \startTextSpanOne
                                    r4
                                    r8
                                    c'!4.
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -34 } } } }
                                    r8
                                    [
                                    c'!8
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -34 } } } }
                                    r16
                                    c'!8.
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -34 } } } }
                                    ]
                                    r8.
                                    [
                                    \set stemLeftBeamCount = 2
                                    \set stemRightBeamCount = 1
                                    c'!16
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -34 } } } }
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 2
                                    r16
                                    c'!8.
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -34 } } } }
                                    ]
                                    r4.
                                    c'!8
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -34 } } } }
                                    r4.
                                    c'!8
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -34 } } } }
                                    r16
                                    [
                                    c'!8.
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -34 } } } }
                                    r8.
                                    c'!16
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -34 } } } }
                                    ]
                                    r16
                                    c'!4..
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -34 } } } }
                                    \stopTextSpanOne
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
                                    r4
                                    r4.
                                    r4
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
                                    r4
                                    r4
                                    r4
                                    r4
                                    \stopStaff
                                    \once \revert Staff.StaffSymbol.line-positions
                                    \once \override Staff.StaffSymbol.line-count = #0
                                    \once \override Staff.BarLine.transparent = ##f
                                    r4.
                                    \once \override Staff.BarLine.transparent = ##f
                                    \startStaff
                                    r4
                                    r4.
                                    r4
                                    \stopStaff
                                    \once \revert Staff.StaffSymbol.line-positions
                                    \once \override Staff.StaffSymbol.line-count = #0
                                    \once \override Staff.BarLine.transparent = ##f
                                    r4
                                    \once \override Staff.BarLine.transparent = ##f
                                    \startStaff
                                    <<
                                        \context Voice = "violin 3 voice temp"
                                        {
                                            \voiceOne
                                            c'4
                                            \once \override NoteHead.transparent = ##f
                                            \tweak style #'cross
                                            e''4
                                            \once \override NoteHead.transparent = ##f
                                            \tweak style #'cross
                                            c''4
                                            \once \override NoteHead.transparent = ##f
                                            \tweak style #'cross
                                            d'4
                                            c'2
                                            c'2
                                            c'2
                                            \times 4/6
                                            {
                                                c'4
                                                \once \override NoteHead.transparent = ##f
                                                \tweak style #'cross
                                                b'4
                                                \once \override NoteHead.transparent = ##f
                                                \tweak style #'cross
                                                c''4
                                                \once \override NoteHead.transparent = ##f
                                                \tweak style #'cross
                                                d''4
                                                \once \override NoteHead.transparent = ##f
                                                \tweak style #'cross
                                                e''4
                                                \override Dots.staff-position = #2
                                                \afterGrace
                                                e'4
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 1 4))
                                                    \once \override Stem.stencil = ##f
                                                    \once \override Flag.stencil = ##f
                                                    \once \override NoteHead.no-ledgers = ##t
                                                    \once \override Accidental.stencil = ##f
                                                    \revert Dots.staff-position
                                                    \once \override NoteHead.transparent = ##t
                                                    f'16
                                                }
                                            }
                                            \times 4/5
                                            {
                                                \override Dots.staff-position = #2
                                                \afterGrace
                                                f'4
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 1 4))
                                                    \once \override Stem.stencil = ##f
                                                    \once \override Flag.stencil = ##f
                                                    \once \override NoteHead.no-ledgers = ##t
                                                    \once \override Accidental.stencil = ##f
                                                    \revert Dots.staff-position
                                                    \once \override NoteHead.transparent = ##t
                                                    d'16
                                                }
                                                \override Dots.staff-position = #2
                                                \afterGrace
                                                d'4
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 3 8))
                                                    \once \override Stem.stencil = ##f
                                                    \once \override Flag.stencil = ##f
                                                    \once \override NoteHead.no-ledgers = ##t
                                                    \once \override Accidental.stencil = ##f
                                                    \revert Dots.staff-position
                                                    \once \override NoteHead.transparent = ##t
                                                    f'16
                                                }
                                                \override Dots.staff-position = #2
                                                \afterGrace
                                                e'4
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 5 16))
                                                    \once \override Stem.stencil = ##f
                                                    \once \override Flag.stencil = ##f
                                                    \once \override NoteHead.no-ledgers = ##t
                                                    \once \override Accidental.stencil = ##f
                                                    \revert Dots.staff-position
                                                    \once \override NoteHead.transparent = ##t
                                                    a'16
                                                }
                                                \override Dots.staff-position = #2
                                                \afterGrace
                                                a'4
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 1 4))
                                                    \once \override Stem.stencil = ##f
                                                    \once \override Flag.stencil = ##f
                                                    \once \override NoteHead.no-ledgers = ##t
                                                    \once \override Accidental.stencil = ##f
                                                    \revert Dots.staff-position
                                                    \once \override NoteHead.transparent = ##t
                                                    e'16
                                                }
                                                \override Dots.staff-position = #2
                                                \afterGrace
                                                b'4
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 1 2))
                                                    \once \override Stem.stencil = ##f
                                                    \once \override Flag.stencil = ##f
                                                    \once \override NoteHead.no-ledgers = ##t
                                                    \once \override Accidental.stencil = ##f
                                                    \revert Dots.staff-position
                                                    \once \override NoteHead.transparent = ##t
                                                    a'16
                                                }
                                            }
                                            \times 2/3
                                            {
                                                \override Dots.staff-position = #2
                                                \afterGrace
                                                a'2
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 1 3))
                                                    \once \override Stem.stencil = ##f
                                                    \once \override Flag.stencil = ##f
                                                    \once \override NoteHead.no-ledgers = ##t
                                                    \once \override Accidental.stencil = ##f
                                                    \revert Dots.staff-position
                                                    \once \override NoteHead.transparent = ##t
                                                    e''16
                                                }
                                                \override Dots.staff-position = #2
                                                \afterGrace
                                                b'2
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 1 4))
                                                    \once \override Stem.stencil = ##f
                                                    \once \override Flag.stencil = ##f
                                                    \once \override NoteHead.no-ledgers = ##t
                                                    \once \override Accidental.stencil = ##f
                                                    \revert Dots.staff-position
                                                    \once \override NoteHead.transparent = ##t
                                                    f''16
                                                }
                                                \override Dots.staff-position = #2
                                                \afterGrace
                                                a'2
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 1 4))
                                                    \once \override Stem.stencil = ##f
                                                    \once \override Flag.stencil = ##f
                                                    \once \override NoteHead.no-ledgers = ##t
                                                    \once \override Accidental.stencil = ##f
                                                    \revert Dots.staff-position
                                                    \once \override NoteHead.transparent = ##t
                                                    d'''16
                                                }
                                            }
                                            c'4
                                            c'4
                                            c'4
                                            c'4
                                        }
                                        \context Voice = "violin 2 voice 2"
                                        {
                                            \times 2/3
                                            {
                                                \once \override NoteHead.transparent = ##f
                                                \voiceTwo
                                                \tweak style #'cross
                                                a''2
                                                \once \override NoteHead.transparent = ##f
                                                \tweak style #'cross
                                                g''2
                                                \once \override NoteHead.transparent = ##f
                                                \tweak style #'cross
                                                b2
                                            }
                                            \override Dots.staff-position = #2
                                            \afterGrace
                                            c'4
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            {
                                                #(define afterGraceFraction (cons 3 16))
                                                \once \override Stem.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override Accidental.stencil = ##f
                                                \revert Dots.staff-position
                                                \once \override NoteHead.transparent = ##t
                                                e'16
                                            }
                                            \override Dots.staff-position = #2
                                            \afterGrace
                                            e'4
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            {
                                                #(define afterGraceFraction (cons 4 16))
                                                \once \override Stem.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override Accidental.stencil = ##f
                                                \revert Dots.staff-position
                                                \once \override NoteHead.transparent = ##t
                                                a16
                                            }
                                            \override Dots.staff-position = #2
                                            \afterGrace
                                            a4
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            {
                                                #(define afterGraceFraction (cons 5 16))
                                                \once \override Stem.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override Accidental.stencil = ##f
                                                \revert Dots.staff-position
                                                \once \override NoteHead.transparent = ##t
                                                g'16
                                            }
                                            \override Dots.staff-position = #2
                                            \afterGrace
                                            g'4
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            {
                                                #(define afterGraceFraction (cons 4 16))
                                                \once \override Stem.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override Accidental.stencil = ##f
                                                \revert Dots.staff-position
                                                \once \override NoteHead.transparent = ##t
                                                b16
                                            }
                                            \override Dots.staff-position = #2
                                            \afterGrace
                                            b4
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            {
                                                #(define afterGraceFraction (cons 3 16))
                                                \once \override Stem.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override Accidental.stencil = ##f
                                                \revert Dots.staff-position
                                                \once \override NoteHead.transparent = ##t
                                                e'16
                                            }
                                            \override Dots.staff-position = #2
                                            \afterGrace
                                            e'4
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            {
                                                #(define afterGraceFraction (cons 1 16))
                                                \once \override Stem.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override Accidental.stencil = ##f
                                                \revert Dots.staff-position
                                                \once \override NoteHead.transparent = ##t
                                                c'16
                                            }
                                            \times 4/5
                                            {
                                                \once \override NoteHead.transparent = ##f
                                                \tweak style #'cross
                                                a'4
                                                \once \override NoteHead.transparent = ##f
                                                \tweak style #'cross
                                                f'4
                                                \once \override NoteHead.transparent = ##f
                                                \tweak style #'cross
                                                d'4
                                                \once \override NoteHead.transparent = ##f
                                                \tweak style #'cross
                                                a4
                                                \once \override NoteHead.transparent = ##f
                                                \tweak style #'cross
                                                b4
                                            }
                                            \times 2/3
                                            {
                                                c'2
                                                \override Dots.staff-position = #2
                                                \afterGrace
                                                f'2
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 1 8))
                                                    \once \override Stem.stencil = ##f
                                                    \once \override Flag.stencil = ##f
                                                    \once \override NoteHead.no-ledgers = ##t
                                                    \once \override Accidental.stencil = ##f
                                                    \revert Dots.staff-position
                                                    \once \override NoteHead.transparent = ##t
                                                    e'16
                                                }
                                                \override Dots.staff-position = #2
                                                \afterGrace
                                                e'2
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 1 8))
                                                    \once \override Stem.stencil = ##f
                                                    \once \override Flag.stencil = ##f
                                                    \once \override NoteHead.no-ledgers = ##t
                                                    \once \override Accidental.stencil = ##f
                                                    \revert Dots.staff-position
                                                    \once \override NoteHead.transparent = ##t
                                                    b'16
                                                }
                                            }
                                            c'4
                                            \override Dots.staff-position = #2
                                            \afterGrace
                                            e''4
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            {
                                                #(define afterGraceFraction (cons 5 16))
                                                \once \override Stem.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override Accidental.stencil = ##f
                                                \revert Dots.staff-position
                                                \once \override NoteHead.transparent = ##t
                                                b'16
                                            }
                                            \override Dots.staff-position = #2
                                            \afterGrace
                                            f''4
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            {
                                                #(define afterGraceFraction (cons 1 2))
                                                \once \override Stem.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override Accidental.stencil = ##f
                                                \revert Dots.staff-position
                                                \once \override NoteHead.transparent = ##t
                                                a'16
                                            }
                                            \override Dots.staff-position = #2
                                            d'''4
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            ~
                                            \times 4/6
                                            {
                                                \hide NoteHead
                                                \override Accidental.stencil = ##f
                                                \override NoteColumn.glissando-skip = ##t
                                                \override NoteHead.no-ledgers = ##t
                                                \afterGrace
                                                d'''4
                                                {
                                                    #(define afterGraceFraction (cons 15 16))
                                                    \once \override Stem.stencil = ##f
                                                    \once \override Flag.stencil = ##f
                                                    \once \override NoteHead.no-ledgers = ##t
                                                    \once \override Accidental.stencil = ##f
                                                    \revert Dots.staff-position
                                                    \once \override NoteHead.transparent = ##t
                                                    \revert Accidental.stencil
                                                    \revert NoteColumn.glissando-skip
                                                    \revert NoteHead.no-ledgers
                                                    \undo \hide NoteHead
                                                    a''16
                                                }
                                                \override Dots.staff-position = #2
                                                a''4
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                                ~
                                                \hide NoteHead
                                                \override Accidental.stencil = ##f
                                                \override NoteColumn.glissando-skip = ##t
                                                \override NoteHead.no-ledgers = ##t
                                                a''4
                                                ~
                                                a''4
                                                ~
                                                a''4
                                                ~
                                                \afterGrace
                                                a''4
                                                {
                                                    #(define afterGraceFraction (cons 15 16))
                                                    \once \override Stem.stencil = ##f
                                                    \once \override Flag.stencil = ##f
                                                    \once \override NoteHead.no-ledgers = ##t
                                                    \once \override Accidental.stencil = ##f
                                                    \revert Dots.staff-position
                                                    \once \override NoteHead.transparent = ##t
                                                    \revert Accidental.stencil
                                                    \revert NoteColumn.glissando-skip
                                                    \revert NoteHead.no-ledgers
                                                    \undo \hide NoteHead
                                                    c'''16
                                                }
                                            }
                                        }
                                    >>
                                    \oneVoice
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
                        \tag #'voice4
                        {
                            \context Staff = "violin 4 staff"
                            {
                                \context Voice = "violin 4 voice"
                                {
                                    r1
                                      %! +SCORE
                                    ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #1 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 99" } } }
                                    r4.
                                    r4
                                    r4.
                                    r4
                                    r1
                                    r4.
                                    r4
                                    r4
                                    r4
                                    r4
                                    <<
                                        \context Voice = "violin 4 voice temp"
                                        {
                                            \once \override Rest.staff-position = #0
                                            \voiceOne
                                            r4.
                                            - \tweak padding #13
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " rit. ( to " } \fontsize #-0.5 { \note { 4 } #1.5 } \fontsize #3 { "= 83 )" } } } \hspace #0.5 }
                                            - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 83" } } }
                                            \startTextSpanThree
                                            \once \override Rest.staff-position = #0
                                            r4
                                            \once \override Rest.staff-position = #0
                                            r4.
                                            \once \override Rest.staff-position = #0
                                            r4
                                            \once \override Rest.staff-position = #0
                                            r4
                                            e''4
                                            _ \staccato
                                            \stopTextSpanThree
                                            a''4
                                            _ \staccato
                                            fs'''4
                                            _ \staccato
                                            af''4
                                            _ \staccato
                                            ef'''2
                                            - \staccato
                                            - \tenuto
                                            a'2
                                            _ \staccato
                                            _ \tenuto
                                            cs''2
                                            - \staccato
                                            - \tenuto
                                            \times 4/6
                                            {
                                                a'4
                                                _ \staccato
                                                af'4
                                                _ \staccato
                                                g'4
                                                _ \staccato
                                                c'4
                                                _ \staccato
                                                fs'4
                                                _ \staccato
                                                b'4
                                                _ \staccato
                                                _ \tenuto
                                            }
                                            \times 4/5
                                            {
                                                af4
                                                _ \staccato
                                                _ \tenuto
                                                fs'4
                                                _ \staccato
                                                _ \tenuto
                                                af'4
                                                _ \staccato
                                                _ \tenuto
                                                ef''4
                                                _ \staccato
                                                _ \tenuto
                                                fs'4
                                                _ \staccato
                                                _ \tenuto
                                            }
                                            \times 2/3
                                            {
                                                b2
                                                _ \staccato
                                                _ \tenuto
                                                a2
                                                _ \staccato
                                                _ \tenuto
                                                fs'2
                                                _ \staccato
                                                _ \tenuto
                                            }
                                            g4
                                            c''4
                                            a'4
                                            b'4
                                        }
                                        \context Voice = "violin 2 polyrhythm voice"
                                        {
                                            \once \override Rest.transparent = ##t
                                            \once \override Dots.stencil = ##f
                                            \voiceTwo
                                            r4.
                                            \once \override Rest.transparent = ##t
                                            \once \override Dots.stencil = ##f
                                            r4
                                            \once \override Rest.transparent = ##t
                                            \once \override Dots.stencil = ##f
                                            r4.
                                            \once \override Rest.transparent = ##t
                                            \once \override Dots.stencil = ##f
                                            r4
                                            \once \override Rest.transparent = ##t
                                            \once \override Dots.stencil = ##f
                                            r4
                                            \times 2/3
                                            {
                                                a''2
                                                ^ \p
                                                ^ \staccato
                                                ^ \>
                                                a''2
                                                ^ \staccato
                                                af''2
                                                ^ \ppp
                                                ^ \staccato
                                            }
                                            f''4
                                            - \staccato
                                            - \tenuto
                                            ^ \<
                                            fs''4
                                            ^ \staccato
                                            ^ \tenuto
                                            e''''4
                                            ^ \staccato
                                            ^ \tenuto
                                            a'''4
                                            ^ \p
                                            ^ \staccato
                                            ^ \tenuto
                                            a'4
                                            - \staccato
                                            - \tenuto
                                            gs'4
                                            ^ \staccato
                                            ^ \tenuto
                                            ^ \>
                                            \times 4/5
                                            {
                                                c'''4
                                                ^ \staccato
                                                gf'4
                                                ^ \staccato
                                                fs'4
                                                ^ \pp
                                                ^ \staccato
                                                a'4
                                                ^ \staccato
                                                fs'4
                                                ^ \staccato
                                            }
                                            \times 2/3
                                            {
                                                af'2
                                                ^ \staccato
                                                ^ \tenuto
                                                c''2
                                                ^ \staccato
                                                ^ \tenuto
                                                a'2
                                                ^ \staccato
                                                ^ \tenuto
                                            }
                                            e'4
                                            ^ \staccato
                                            ^ \tenuto
                                            a'4
                                            ^ \staccato
                                            ^ \tenuto
                                            fs'4
                                            ^ \staccato
                                            ^ \tenuto
                                            g'4
                                            \times 4/6
                                            {
                                                ef'4
                                                a'4
                                                b'4
                                                a4
                                                a'4
                                                a'4
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
                                    r1
                                    r4.
                                    r4
                                    r4.
                                    r4
                                    r1
                                    r4.
                                    r4
                                    r4
                                    r4
                                    r4
                                    r4.
                                    r4
                                    r4.
                                    r4
                                    r4
                                    r1
                                    r1.
                                    r1
                                    r1
                                    r1
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
                                    \staff-line-count 1
                                    \override Staff.Clef.stencil = ##f
                                    \clef "percussion"
                                    c'4
                                      %! +SCORE
                                    ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #5 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 99" } } }
                                    (
                                    - \tweak circled-tip ##t
                                    \<
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #3.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "Tailpiece" } \hspace #0.5 }
                                    \startTextSpan
                                    c'8
                                    _ #(make-dynamic-script
                                        (markup
                                            #:whiteout
                                            #:line (
                                                #:general-align Y -2 #:normal-text #:larger "“"
                                                #:hspace -0.4
                                                #:dynamic "f"
                                                #:hspace -0.2
                                                #:general-align Y -2 #:normal-text #:larger "”"
                                                )
                                            )
                                        )
                                    \>
                                    ~
                                    c'16
                                    [
                                    c'16
                                    _ #(make-dynamic-script
                                        (markup
                                            #:whiteout
                                            #:line (
                                                #:general-align Y -2 #:normal-text #:larger "“"
                                                #:hspace -0.1
                                                #:dynamic "ppp"
                                                #:hspace -0.25
                                                #:general-align Y -2 #:normal-text #:larger "”"
                                                )
                                            )
                                        )
                                    ]
                                    ~
                                    c'4
                                    )
                                    c'4
                                    (
                                    \<
                                    c'2
                                    _ #(make-dynamic-script
                                        (markup
                                            #:whiteout
                                            #:line (
                                                #:general-align Y -2 #:normal-text #:larger "“"
                                                #:hspace -0.4
                                                #:dynamic "f"
                                                #:hspace -0.2
                                                #:general-align Y -2 #:normal-text #:larger "”"
                                                )
                                            )
                                        )
                                    )
                                    - \tweak circled-tip ##t
                                    \>
                                    c'8
                                    (
                                    - \tweak circled-tip ##t
                                    \<
                                    ~
                                    c'8
                                    c'4
                                    _ #(make-dynamic-script
                                        (markup
                                            #:whiteout
                                            #:line (
                                                #:general-align Y -2 #:normal-text #:larger "“"
                                                #:hspace -0.4
                                                #:dynamic "f"
                                                #:hspace -0.2
                                                #:general-align Y -2 #:normal-text #:larger "”"
                                                )
                                            )
                                        )
                                    \>
                                    ~
                                    c'8
                                    [
                                    ~
                                    c'16
                                    )
                                    c'16
                                    _ #(make-dynamic-script
                                        (markup
                                            #:whiteout
                                            #:line (
                                                #:general-align Y -2 #:normal-text #:larger "“"
                                                #:hspace -0.1
                                                #:dynamic "ppp"
                                                #:hspace -0.25
                                                #:general-align Y -2 #:normal-text #:larger "”"
                                                )
                                            )
                                        )
                                    ]
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    ~
                                    c'4
                                    c'16
                                    _ #(make-dynamic-script
                                        (markup
                                            #:whiteout
                                            #:line (
                                                #:general-align Y -2 #:normal-text #:larger "“"
                                                #:hspace -0.4
                                                #:dynamic "f"
                                                #:hspace -0.2
                                                #:general-align Y -2 #:normal-text #:larger "”"
                                                )
                                            )
                                        )
                                    [
                                    (
                                    c'8.
                                    _ #(make-dynamic-script
                                        (markup
                                            #:whiteout
                                            #:line (
                                                #:general-align Y -2 #:normal-text #:larger "“"
                                                #:hspace -0.1
                                                #:dynamic "p"
                                                #:hspace -0.25
                                                #:general-align Y -2 #:normal-text #:larger "”"
                                                )
                                            )
                                        )
                                    ]
                                    - \tweak circled-tip ##t
                                    \>
                                    ~
                                    c'4
                                    )
                                    c'16
                                    _ #(make-dynamic-script
                                        (markup
                                            #:whiteout
                                            #:line (
                                                #:general-align Y -2 #:normal-text #:larger "“"
                                                #:hspace -0.4
                                                #:dynamic "ff"
                                                #:hspace -0.2
                                                #:general-align Y -2 #:normal-text #:larger "”"
                                                )
                                            )
                                        )
                                    [
                                    (
                                    c'8.
                                    _ #(make-dynamic-script
                                        (markup
                                            #:whiteout
                                            #:line (
                                                #:general-align Y -2 #:normal-text #:larger "“"
                                                #:hspace -0.1
                                                #:dynamic "mp"
                                                #:hspace -0.25
                                                #:general-align Y -2 #:normal-text #:larger "”"
                                                )
                                            )
                                        )
                                    ]
                                    - \tweak circled-tip ##t
                                    \>
                                    c'4.
                                    )
                                    - \tweak circled-tip ##t
                                    \<
                                    \afterGrace
                                    c'1
                                    _ #(make-dynamic-script
                                        (markup
                                            #:whiteout
                                            #:line (
                                                #:general-align Y -2 #:normal-text #:larger "“"
                                                #:hspace -0.1
                                                #:dynamic "mp"
                                                #:hspace -0.25
                                                #:general-align Y -2 #:normal-text #:larger "”"
                                                )
                                            )
                                        )
                                    \<
                                    {
                                        \once \override Stem.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.transparent = ##t
                                        c'16
                                        _ #(make-dynamic-script
                                            (markup
                                                #:whiteout
                                                #:line (
                                                    #:general-align Y -2 #:normal-text #:larger "“"
                                                    #:hspace -0.4
                                                    #:dynamic "fff"
                                                    #:hspace -0.2
                                                    #:general-align Y -2 #:normal-text #:larger "”"
                                                    )
                                                )
                                            )
                                        \stopTextSpan
                                    }
                                    \staff-line-count 5
                                    \revert Staff.Clef.stencil
                                    \clef "alto"
                                    af4.
                                    - \tweak padding #1
                                    ^ \talon-to-punta
                                    _ #(make-dynamic-script
                                        (markup
                                            #:whiteout
                                            #:line (
                                                #:general-align Y -2 #:normal-text #:larger "“"
                                                #:hspace -0.4
                                                #:dynamic "f"
                                                #:hspace -0.2
                                                #:general-align Y -2 #:normal-text #:larger "”"
                                                )
                                            )
                                        )
                                    (
                                      %! abjad.glissando(7)
                                    - \tweak bound-details.right.arrow ##t
                                      %! abjad.glissando(7)
                                    - \tweak thickness #1.5
                                      %! abjad.glissando(7)
                                    \glissando
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #12
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "Spz." } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \upright { "1/2 Spz." }
                                    - \tweak bound-details.right.padding 3
                                    \startTextSpanTwo
                                    - \tweak padding #15
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " rit. ( to " } \fontsize #-0.5 { \note { 4 } #1.5 } \fontsize #3 { "= 83 )" } } } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 83" } } }
                                    \startTextSpanThree
                                    - \tweak padding #9.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \bow-tip-half-down \hspace #0.5 }
                                    - \tweak bound-details.right.text \bow-tip-up
                                    \startTextSpanOne
                                    \>
                                    ~
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    af4
                                    \big-half-harmonic
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    b4.
                                      %! abjad.glissando(7)
                                    - \tweak bound-details.right.arrow ##t
                                      %! abjad.glissando(7)
                                    - \tweak thickness #1.5
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
                                    b4
                                    \override Staff.Stem.stemlet-length = 0.75
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    \tweak style #'harmonic
                                    bf8
                                    _ #(make-dynamic-script
                                        (markup
                                            #:whiteout
                                            #:line (
                                                #:general-align Y -2 #:normal-text #:larger "“"
                                                #:hspace -0.1
                                                #:dynamic "pp"
                                                #:hspace -0.25
                                                #:general-align Y -2 #:normal-text #:larger "”"
                                                )
                                            )
                                        )
                                    )
                                    \stopTextSpanOne
                                    \stopTextSpanTwo
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    c8
                                    - \tenuto
                                    - \tweak padding #1
                                    ^ \punta-to-talon
                                    ]
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #12
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "Spz." } \hspace #0.5 }
                                    \startTextSpanTwo
                                    - \tweak padding #9.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \normale-bow-rotation \hspace #0.5 }
                                    - \tweak bound-details.right.text \bow-tip-half-down
                                    \startTextSpanOne
                                    \tweak style #'harmonic
                                    gs2
                                    - \tweak padding #1
                                    ^ \talon-to-punta
                                    \stopTextSpanThree
                                    (
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    \glissando
                                    \<
                                    \big-half-harmonic
                                    a2
                                    _ #(make-dynamic-script
                                        (markup
                                            #:whiteout
                                            #:line (
                                                #:general-align Y -2 #:normal-text #:larger "“"
                                                #:hspace -0.1
                                                #:dynamic "mf"
                                                #:hspace -0.2
                                                #:general-align Y -2 #:normal-text #:larger "”"
                                                )
                                            )
                                        )
                                    \stopTextSpanTwo
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    \glissando
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #12
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "Norm." } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \upright { "1/2 Spz." }
                                    \startTextSpanTwo
                                    \>
                                    \tweak style #'harmonic
                                    c'2
                                      %! abjad.glissando(7)
                                    - \tweak bound-details.right.arrow ##t
                                      %! abjad.glissando(7)
                                    - \tweak thickness #1.5
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
                                    c'4
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    d'4
                                    _ #(make-dynamic-script
                                        (markup
                                            #:whiteout
                                            #:line (
                                                #:general-align Y -2 #:normal-text #:larger "“"
                                                #:hspace -0.1
                                                #:dynamic "ppp"
                                                #:hspace -0.25
                                                #:general-align Y -2 #:normal-text #:larger "”"
                                                )
                                            )
                                        )
                                    \stopTextSpanOne
                                    \stopTextSpanTwo
                                    ~
                                    d'2
                                    )
                                    <<
                                        \context Voice = "viola 2 voice temp"
                                        {
                                            \voiceOne
                                            b'4
                                            _ \ppp
                                            _ \staccato
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 1
                                            - \tweak padding #12
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "1/2 CLB" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -5
                                            \startTextSpanOne
                                            af'4
                                            _ \staccato
                                            a'4
                                            _ \staccato
                                            a'4
                                            _ \staccato
                                            \times 4/5
                                            {
                                                df''4
                                                - \staccato
                                                e'4
                                                _ \staccato
                                                g'4
                                                _ \staccato
                                                g4
                                                _ \staccato
                                                ef'4
                                                _ \staccato
                                            }
                                            \times 4/5
                                            {
                                                ef''4
                                                - \staccato
                                                ef''4
                                                - \staccato
                                                g''4
                                                - \staccato
                                                ef''4
                                                - \staccato
                                                a''4
                                                - \staccato
                                            }
                                            \times 4/6
                                            {
                                                fs''4
                                                - \staccato
                                                g''4
                                                _ \staccato
                                                af''4
                                                _ \staccato
                                                c''4
                                                _ \staccato
                                                bf''4
                                                _ \staccato
                                                af''4
                                                _ \staccato
                                                \stopTextSpanOne
                                            }
                                        }
                                        \context Voice = "viola polyrhythm voice"
                                        {
                                            \times 2/3
                                            {
                                                \voiceTwo
                                                b2
                                                ^ \staccato
                                                a'2
                                                ^ \staccato
                                                c'2
                                                ^ \staccato
                                            }
                                            bf'4
                                            - \staccato
                                            c'4
                                            ^ \staccato
                                            fs'4
                                            ^ \staccato
                                            fs4
                                            ^ \staccato
                                            \times 4/5
                                            {
                                                b'4
                                                - \staccato
                                                af'4
                                                - \staccato
                                                a'4
                                                - \staccato
                                                a'4
                                                - \staccato
                                                cs''4
                                                - \staccato
                                            }
                                            \times 4/5
                                            {
                                                e''4
                                                - \staccato
                                                g'4
                                                ^ \staccato
                                                g''4
                                                ^ \staccato
                                                ef''4
                                                ^ \staccato
                                                ef''4
                                                ^ \staccato
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
                                    r1
                                    r4.
                                    r4
                                    r4.
                                    r4
                                    r1
                                    r4.
                                    r4
                                    r4
                                    r4
                                    r4
                                    r4.
                                    r4
                                    r4.
                                    r4
                                    r4
                                    r1
                                    r1.
                                    r1
                                    r1
                                    r1
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
                                    \clef "bass"
                                    r16
                                      %! +SCORE
                                    ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-3.5 \raise #3 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 99" } } }
                                    [
                                    <a,! bqf,!>16
                                    ]
                                    - \tweak circled-tip ##t
                                    \<
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #13.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { { \column { \line { "diagonal bow," } \line { "touching bridge" } \line { "for added air sound" } } } \hspace #0.5 }
                                    \startTextSpanOne
                                    ~
                                    <a, bqf,>8
                                    r8
                                    \pp
                                    r16
                                    [
                                    <a,! bqf,!>16
                                    \ppp
                                    ]
                                    r4
                                    <a,! bqf,!>8
                                    ~
                                    <a, bqf,>16
                                    [
                                    r16
                                    ]
                                    <a,! bqf,!>2
                                    r8
                                    r8
                                    <a,! bqf,!>4
                                    \pp
                                    \stopTextSpanOne
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #13.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { { \column { \line { "MSP, 1/2 hair on strings" } \line { "1/2 hair on bridge" } } } \hspace #0.5 }
                                    \startTextSpanOne
                                    \>
                                    ~
                                    <a, bqf,>8
                                    [
                                    r16
                                    \ppp
                                    <a,! bqf,!>16
                                    ]
                                    r4
                                    <a,! bqf,!>16
                                    [
                                    r8.
                                    ]
                                    r4
                                    <a,! bqf,!>16
                                    [
                                    r8.
                                    ]
                                    <bqf,! c!>4.
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -34 }\line { +0 }} } }
                                    \stopTextSpanOne
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #13.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { { \column { \line { "all hair on bridge," } \line { "but allowing strings to ring" } } } \hspace #0.5 }
                                    - \tweak bound-details.right.padding 1
                                    \startTextSpanOne
                                    \<
                                    r2
                                    \pp
                                    <bqf,! c!>8
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -34 }\line { +0 }} } }
                                    \stopTextSpanOne
                                    [
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #13.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { {} \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup { \column { \line { "diagonal bow," } \line { "touching bridge" } \line { "for added air sound" } } }
                                    \startTextSpanOne
                                    r16
                                    <bqf,! c!>16
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -34 }\line { +0 }} } }
                                    ]
                                    r4
                                    <bqf,! c!>16
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -34 }\line { +0 }} } }
                                    [
                                    - \tweak padding #18
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " rit. ( to " } \fontsize #-0.5 { \note { 4 } #1.5 } \fontsize #3 { "= 83 )" } } } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 83" } } }
                                    \startTextSpanThree
                                    r16
                                    ]
                                    r4
                                    r8
                                    [
                                    <bqf,! c!>16
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -34 }\line { +0 }} } }
                                    r16
                                    ]
                                    r8
                                    <bqf,! c!>4
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -34 }\line { +0 }} } }
                                    \<
                                    ~
                                    <bqf, c>8
                                    [
                                    r8
                                    \p
                                    ]
                                    <bqf,! c!>4
                                    \pp
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -34 }\line { +0 }} } }
                                    \stopTextSpanOne
                                    \big-half-harmonic
                                    aqs,16
                                    - \tweak padding #1
                                    ^ \punta-to-talon
                                    \stopTextSpanThree
                                    [
                                    ~
                                    \times 4/5
                                    {
                                        \big-half-harmonic
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 2
                                        aqs,16
                                        \big-half-harmonic
                                        aqs,8.
                                        - \tweak padding #1
                                        ^ \talon-to-punta
                                        \big-half-harmonic
                                        \set stemLeftBeamCount = 2
                                        \set stemRightBeamCount = 1
                                        aqs,16
                                        - \tweak padding #1
                                        ^ \punta-to-talon
                                        ~
                                    }
                                    \big-half-harmonic
                                    aqs,8.
                                    ]
                                    ~
                                    \big-half-harmonic
                                    aqs,16
                                    [
                                    ~
                                    \times 4/5
                                    {
                                        \big-half-harmonic
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 3
                                        aqs,32
                                        \big-half-harmonic
                                        <gs,! aqs,!>16.
                                        - \tweak padding #1
                                        ^ \talon-to-punta
                                        \arpeggio
                                        \big-half-harmonic
                                        \set stemLeftBeamCount = 3
                                        \set stemRightBeamCount = 1
                                        aqs,32
                                        - \tweak padding #1
                                        ^ \punta-to-talon
                                        ~
                                    }
                                    \big-half-harmonic
                                    aqs,16
                                    ~
                                    \big-half-harmonic
                                    aqs,8
                                    ~
                                    \times 2/3
                                    {
                                        \big-half-harmonic
                                        aqs,16
                                        \big-half-harmonic
                                        <gs,! aqs,!>8
                                        - \tweak padding #1
                                        ^ \talon-to-punta
                                        \arpeggio
                                        ]
                                        ~
                                    }
                                    \times 2/3
                                    {
                                        \big-half-harmonic
                                        <gs, aqs,>8
                                        \big-half-harmonic
                                        <gs,! aqs,!>4
                                        - \tweak padding #1
                                        ^ \punta-to-talon
                                        \arpeggio
                                        - \tweak font-name "Bodoni72 Book" 
                                        - \tweak font-size 2
                                        - \tweak padding #12
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { "(Ord.)" \hspace #0.5 }
                                        - \tweak bound-details.right.text MSP
                                        - \tweak bound-details.right.padding -2
                                        \startTextSpanOne
                                        ~
                                    }
                                    \big-half-harmonic
                                    <gs, aqs,>4
                                    ~
                                    \big-half-harmonic
                                    <gs, aqs,>4
                                    ~
                                    \times 4/5
                                    {
                                        \big-half-harmonic
                                        <gs, aqs,>32
                                        [
                                        \big-half-harmonic
                                        aqs,16.
                                        - \tweak padding #1
                                        ^ \talon-to-punta
                                        \big-half-harmonic
                                        aqs,32
                                        - \tweak padding #1
                                        ^ \punta-to-talon
                                        ~
                                    }
                                    \big-half-harmonic
                                    aqs,8
                                    ]
                                    ~
                                    \big-half-harmonic
                                    aqs,4
                                    ~
                                    \times 4/5
                                    {
                                        \big-half-harmonic
                                        aqs,32
                                        [
                                        \big-half-harmonic
                                        <gs,! aqs,!>16.
                                        - \tweak padding #1
                                        ^ \talon-to-punta
                                        \arpeggio
                                        \big-half-harmonic
                                        aqs,32
                                        - \tweak padding #1
                                        ^ \punta-to-talon
                                        \stopTextSpanOne
                                        ~
                                    }
                                    \big-half-harmonic
                                    aqs,8
                                    ]
                                    <<
                                        \context Voice = "cello 2 voice temp"
                                        {
                                            \big-half-harmonic
                                            \voiceOne
                                            aqs,16
                                            - \tweak padding #1
                                            ^ \talon-to-punta
                                            [
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #12
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { " "(MSP)" " } \hspace #0.5 }
                                            \startTextSpan
                                            ~
                                            \times 4/5
                                            {
                                                \big-half-harmonic
                                                \set stemLeftBeamCount = 1
                                                \set stemRightBeamCount = 2
                                                aqs,16
                                                \big-half-harmonic
                                                <gs,! aqs,!>8.
                                                - \tweak padding #1
                                                ^ \punta-to-talon
                                                \arpeggio
                                                \big-half-harmonic
                                                \set stemLeftBeamCount = 2
                                                \set stemRightBeamCount = 1
                                                aqs,16
                                                - \tweak padding #1
                                                ^ \talon-to-punta
                                                ~
                                            }
                                            \big-half-harmonic
                                            aqs,8.
                                            ]
                                            ~
                                            \times 2/3
                                            {
                                                \big-half-harmonic
                                                aqs,16
                                                [
                                                \big-half-harmonic
                                                aqs,8
                                                - \tweak padding #1
                                                ^ \punta-to-talon
                                                ~
                                            }
                                            \big-half-harmonic
                                            aqs,8
                                            ~
                                            \big-half-harmonic
                                            aqs,8
                                            ~
                                            \times 4/5
                                            {
                                                \big-half-harmonic
                                                aqs,32
                                                \big-half-harmonic
                                                aqs,16.
                                                - \tweak padding #1
                                                ^ \talon-to-punta
                                                \big-half-harmonic
                                                aqs,32
                                                - \tweak padding #1
                                                ^ \punta-to-talon
                                                ]
                                                ~
                                            }
                                            \times 4/5
                                            {
                                                \big-half-harmonic
                                                aqs,16
                                                [
                                                \big-half-harmonic
                                                aqs,8.
                                                - \tweak padding #1
                                                ^ \talon-to-punta
                                                \big-half-harmonic
                                                <gs,! aqs,!>16
                                                - \tweak padding #1
                                                ^ \punta-to-talon
                                                \arpeggio
                                                ]
                                                ~
                                            }
                                            \big-half-harmonic
                                            <gs, aqs,>8.
                                            ~
                                            \times 2/3
                                            {
                                                \big-half-harmonic
                                                <gs, aqs,>16
                                                [
                                                \big-half-harmonic
                                                aqs,8
                                                - \tweak padding #1
                                                ^ \talon-to-punta
                                                ]
                                                ~
                                            }
                                            \big-half-harmonic
                                            aqs,8.
                                            ~
                                            \big-half-harmonic
                                            aqs,16
                                            [
                                            ~
                                            \times 4/5
                                            {
                                                \big-half-harmonic
                                                \set stemLeftBeamCount = 1
                                                \set stemRightBeamCount = 3
                                                aqs,32
                                                \big-half-harmonic
                                                <gs,! aqs,!>16.
                                                - \tweak padding #1
                                                ^ \punta-to-talon
                                                \arpeggio
                                                \big-half-harmonic
                                                \set stemLeftBeamCount = 3
                                                \set stemRightBeamCount = 1
                                                <gs,! aqs,!>32
                                                - \tweak padding #1
                                                ^ \talon-to-punta
                                                \arpeggio
                                                ~
                                            }
                                            \big-half-harmonic
                                            <gs, aqs,>16
                                            ]
                                            \big-half-harmonic
                                            aqs,16
                                            - \tweak padding #1
                                            ^ \punta-to-talon
                                            [
                                            ~
                                            \times 4/5
                                            {
                                                \big-half-harmonic
                                                \set stemLeftBeamCount = 1
                                                \set stemRightBeamCount = 2
                                                aqs,16
                                                \big-half-harmonic
                                                aqs,8.
                                                - \tweak padding #1
                                                ^ \talon-to-punta
                                                \big-half-harmonic
                                                \set stemLeftBeamCount = 2
                                                \set stemRightBeamCount = 1
                                                <gs,! aqs,!>16
                                                - \tweak padding #1
                                                ^ \punta-to-talon
                                                \arpeggio
                                                ~
                                            }
                                            \big-half-harmonic
                                            <gs, aqs,>8.
                                            ]
                                            ~
                                            \big-half-harmonic
                                            <gs, aqs,>16
                                            [
                                            ~
                                            \times 4/5
                                            {
                                                \big-half-harmonic
                                                \set stemLeftBeamCount = 1
                                                \set stemRightBeamCount = 3
                                                <gs, aqs,>32
                                                \big-half-harmonic
                                                aqs,16.
                                                - \tweak padding #1
                                                ^ \talon-to-punta
                                                \big-half-harmonic
                                                \set stemLeftBeamCount = 3
                                                \set stemRightBeamCount = 1
                                                aqs,32
                                                - \tweak padding #1
                                                ^ \punta-to-talon
                                                ~
                                            }
                                            \big-half-harmonic
                                            aqs,16
                                            ~
                                            \big-half-harmonic
                                            aqs,8
                                            ~
                                            \times 2/3
                                            {
                                                \big-half-harmonic
                                                aqs,16
                                                \big-half-harmonic
                                                <gs,! aqs,!>8
                                                - \tweak padding #1
                                                ^ \talon-to-punta
                                                \arpeggio
                                                ]
                                                ~
                                            }
                                            \times 2/3
                                            {
                                                \big-half-harmonic
                                                <gs, aqs,>8
                                                \big-half-harmonic
                                                aqs,4
                                                - \tweak padding #1
                                                ^ \punta-to-talon
                                                ~
                                            }
                                            \big-half-harmonic
                                            aqs,4
                                            ~
                                            \times 4/5
                                            {
                                                \big-half-harmonic
                                                aqs,32
                                                [
                                                \big-half-harmonic
                                                aqs,16.
                                                - \tweak padding #1
                                                ^ \talon-to-punta
                                                \big-half-harmonic
                                                aqs,32
                                                - \tweak padding #1
                                                ^ \punta-to-talon
                                                ~
                                            }
                                            \big-half-harmonic
                                            aqs,8
                                            ~
                                            \big-half-harmonic
                                            aqs,16
                                            ~
                                            \times 4/5
                                            {
                                                \big-half-harmonic
                                                \set stemLeftBeamCount = 1
                                                \set stemRightBeamCount = 3
                                                aqs,32
                                                \big-half-harmonic
                                                aqs,16.
                                                - \tweak padding #1
                                                ^ \talon-to-punta
                                                \big-half-harmonic
                                                \set stemLeftBeamCount = 3
                                                \set stemRightBeamCount = 1
                                                <gs,! aqs,!>32
                                                - \tweak padding #1
                                                ^ \punta-to-talon
                                                \arpeggio
                                                ~
                                            }
                                            \big-half-harmonic
                                            \afterGrace
                                            <gs, aqs,>16
                                            ]
                                            {
                                                \once \override Stem.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override Accidental.stencil = ##f
                                                \once \override NoteHead.transparent = ##t
                                                c'16
                                                \stopTextSpan
                                            }
                                        }
                                        \context Voice = "cello legno voice"
                                        {
                                            \override Voice.NoteHead.no-ledgers = ##t
                                            \override Voice.Accidental.stencil = ##f
                                            \textSpannerDown
                                            \voiceTwo
                                            b,,16
                                            ^ \staccato
                                            [
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #12
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLDP" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -21
                                            \startTextSpan
                                            b,,16
                                            ^ \staccato
                                            \once \override Rest.staff-position = #-10
                                            r8
                                            \once \override Rest.staff-position = #-10
                                            r16
                                            b,,16
                                            ^ \staccato
                                            b,,16
                                            ^ \staccato
                                            b,,16
                                            ^ \staccato
                                            ]
                                            \once \override Rest.staff-position = #-10
                                            r8
                                            [
                                            b,,8
                                            ~
                                            b,,8
                                            b,,16
                                            ^ \staccato
                                            \once \override Rest.staff-position = #-10
                                            r16
                                            ]
                                            b,,4
                                            b,,16
                                            ^ \staccato
                                            [
                                            b,,16
                                            ^ \staccato
                                            b,,16
                                            ^ \staccato
                                            b,,16
                                            ]
                                            ~
                                            b,,16
                                            [
                                            b,,16
                                            ^ \staccato
                                            b,,16
                                            ^ \staccato
                                            b,,16
                                            ^ \staccato
                                            ]
                                            b,,4
                                            ~
                                            b,,16
                                            [
                                            b,,16
                                            ^ \staccato
                                            \once \override Rest.staff-position = #-10
                                            r8
                                            \once \override Rest.staff-position = #-10
                                            r16
                                            b,,16
                                            ^ \staccato
                                            b,,16
                                            ^ \staccato
                                            b,,16
                                            ^ \staccato
                                            ]
                                            b,,16
                                            ^ \staccato
                                            [
                                            \once \override Rest.staff-position = #-10
                                            r16
                                            \once \override Rest.staff-position = #-10
                                            r16
                                            \set stemLeftBeamCount = 2
                                            \set stemRightBeamCount = 1
                                            b,,16
                                            ^ \staccato
                                            \set stemLeftBeamCount = 1
                                            \set stemRightBeamCount = 2
                                            b,,16
                                            ^ \staccato
                                            b,,16
                                            ^ \staccato
                                            b,,16
                                            ^ \staccato
                                            \once \override Rest.staff-position = #-10
                                            r16
                                            ]
                                            \once \override Rest.staff-position = #-10
                                            r4
                                            \once \override Rest.staff-position = #-10
                                            r16
                                            [
                                            b,,8.
                                            ]
                                            ~
                                            b,,2
                                            \stopTextSpan
                                            \textSpannerUp
                                            \revert Voice.NoteHead.no-ledgers
                                            \revert Voice.Accidental.stencil
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
