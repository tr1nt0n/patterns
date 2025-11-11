    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
              %! +SCORE
        %%% \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (11 17 17 15 30)))
            \time 8/8
            s1 * 1
              %! +SCORE
        %%% \noBreak
            \time 10/8
            s1 * 5/4
              %! +SCORE
        %%% \break
              %! +SCORE
        %%% \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (14 17 17 12 30)))
            \time 4/4
            s1 * 1
              %! +SCORE
        %%% \noBreak
            \time 11/8
            s1 * 11/8
              %! +SCORE
        %%% \break
              %! +SCORE
        %%% \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (11 35 26 32)))
            \time 10/8
            s1 * 5/4
              %! +SCORE
        %%% \noBreak
            \time 1/4
            s1 * 1/4
              %! +SCORE
        %%% \break
              %! +SCORE
        %%% \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (6 23.5 22.5 25.5 30.5)))
            \time 2/2
            s1 * 1
              %! +SCORE
        %%% \noBreak
            \time 3/2
            s1 * 3/2
              %! +SCORE
        %%% \break
              %! +SCORE
        %%% \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (10 17 16 27 28)))
            \time 2/2
            s1 * 1
              %! +SCORE
        %%% \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 2/2
            s1 * 1
              %! +SCORE
        %%% \break
              %! +SCORE
        %%% \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (10 15 14 32 28)))
            \once \override Score.TimeSignature.stencil = ##f
            \time 2/2
            s1 * 1
              %! +SCORE
        %%% \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 2/2
            s1 * 1
              %! +SCORE
        %%% \noBreak
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
        %%% \pageBreak
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
                                    %%% \set GrandStaff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { V1 }
                                        c'''4
                                          %! +SCORE
                                    %%% ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-7 \raise #2 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 99" } } }
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
                                            g4
                                            bf4
                                            d'4
                                            f'4
                                            g4
                                            e'4
                                            a'4
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
                                                e''4
                                                d''4
                                                as'4
                                                f'4
                                            }
                                        }
                                    >>
                                    \oneVoice
                                    <<
                                        \context Voice = "violin 2 voice temp 1"
                                        {
                                            \once \override Rest.staff-position = #-7
                                            \override Staff.Clef.stencil = #ly:text-interface::print
                                            \override Staff.Clef.text = \string-clef
                                            \staff-line-count 4
                                            \override Staff.StaffSymbol.line-positions = #'(9 7 0 -9)
                                            \override Staff.BarLine.bar-extent = #'(-4.5 . 4.5)
                                            \override Staff.Accidental.stencil = ##f
                                            \override Staff.NoteHead.no-ledgers = ##t
                                            \voiceTwo
                                            r16
                                            - \markup \fontsize #2 { \hspace #-10 \lower #2 { "Fng. Perc.:" } }
                                            - \tweak Beam.positions #'(-8 . -8)
                                            [
                                            \override Dots.staff-position = #2
                                            \big-half-harmonic
                                            \once \override DynamicLineSpanner.padding = #2.5
                                            \once \override StemTremolo.stencil = #ly:text-interface::print
                                            \once \override StemTremolo.text = \markup {
                                                                \fontsize #5
                                                                \override #'(font-name . "ekmelos")
                                                                \override #'(whiteout-style . "outline")
                                                                \override #'(whiteout . 1)
                                                                \raise #0.5
                                                                {
                                                                    \hspace #-0.57
                                                                    \char ##xe0f4
                                                                }
                                                            }
                                            \pitchedTrill
                                            b'16
                                            :32
                                            ]
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            ~
                                            - \tweak TrillPitchAccidental.stencil ##f
                                            - \tweak TrillPitchHead.layer 5
                                            - \tweak TrillPitchHead.no-ledgers ##t
                                            - \tweak TrillPitchHead.stencil #(lambda (grob) (grob-interpret-markup grob #{ \markup \musicglyph #"noteheads.s2cross" #}))
                                            - \tweak TrillPitchHead.whiteout 1
                                            - \tweak TrillPitchHead.whiteout-style #'outline
                                            - \tweak Y-extent ##f
                                            - \tweak bound-details.left.Y #-4
                                            - \tweak bound-details.right.Y #-3
                                            \startTrillSpan g'
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \afterGrace
                                            b'4
                                            {
                                                #(define afterGraceFraction (cons 15 16))
                                                \grace-half-harmonic
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
                                                e'16
                                                \stopTrillSpan
                                            }
                                            \once \override Rest.staff-position = #-7
                                            r8
                                            - \tweak Beam.positions #'(-8 . -8)
                                            [
                                            \once \override Rest.staff-position = #-7
                                            r16
                                            \override Dots.staff-position = #2
                                            \once \override StemTremolo.stencil = #ly:text-interface::print
                                            \once \override StemTremolo.text = \markup {
                                                                \fontsize #5
                                                                \override #'(font-name . "ekmelos")
                                                                \override #'(whiteout-style . "outline")
                                                                \override #'(whiteout . 1)
                                                                \raise #0.5
                                                                {
                                                                    \hspace #-0.57
                                                                    \char ##xe0f4
                                                                }
                                                            }
                                            \pitchedTrill
                                            \tweak style #'harmonic
                                            d''16
                                            :32
                                            ]
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            ~
                                            - \tweak TrillPitchAccidental.stencil ##f
                                            - \tweak TrillPitchHead.layer 5
                                            - \tweak TrillPitchHead.no-ledgers ##t
                                            - \tweak TrillPitchHead.stencil #(lambda (grob) (grob-interpret-markup grob #{ \markup \musicglyph #"noteheads.s2cross" #}))
                                            - \tweak TrillPitchHead.whiteout 1
                                            - \tweak TrillPitchHead.whiteout-style #'outline
                                            - \tweak Y-extent ##f
                                            - \tweak bound-details.left.Y #-4
                                            - \tweak bound-details.right.Y #-4
                                            \startTrillSpan a'
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \afterGrace
                                            d''8
                                            - \tweak Beam.positions #'(-7 . -8.5)
                                            [
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
                                                \tweak style #'harmonic
                                                b'16
                                                \stopTrillSpan
                                            }
                                            \once \override Rest.staff-position = #-7
                                            r16
                                            \override Dots.staff-position = #2
                                            \once \override DynamicLineSpanner.padding = #2
                                            \once \override StemTremolo.stencil = #ly:text-interface::print
                                            \once \override StemTremolo.text = \markup {
                                                                \fontsize #5
                                                                \override #'(font-name . "ekmelos")
                                                                \override #'(whiteout-style . "outline")
                                                                \override #'(whiteout . 1)
                                                                \raise #0.5
                                                                {
                                                                    \hspace #-0.57
                                                                    \char ##xe0f4
                                                                }
                                                            }
                                            \pitchedTrill
                                            \tweak style #'harmonic
                                            a'16
                                            :32
                                            ]
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            ~
                                            - \tweak TrillPitchAccidental.stencil ##f
                                            - \tweak TrillPitchHead.layer 5
                                            - \tweak TrillPitchHead.no-ledgers ##t
                                            - \tweak TrillPitchHead.stencil #(lambda (grob) (grob-interpret-markup grob #{ \markup \musicglyph #"noteheads.s2cross" #}))
                                            - \tweak TrillPitchHead.whiteout 1
                                            - \tweak TrillPitchHead.whiteout-style #'outline
                                            - \tweak Y-extent ##f
                                            - \tweak bound-details.left.Y #-4
                                            - \tweak bound-details.right.Y #-5.5
                                            \startTrillSpan e'
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            a'8
                                            - \tweak Beam.positions #'(-8 . -10)
                                            [
                                            ~
                                            a'8
                                            ~
                                            \afterGrace
                                            a'16
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
                                                \tweak style #'harmonic
                                                c'16
                                                \stopTrillSpan
                                            }
                                            \once \override Rest.staff-position = #-7
                                            r16
                                            ]
                                            \once \override Rest.staff-position = #-7
                                            r16
                                            - \tweak Beam.positions #'(-8 . -8)
                                            [
                                            \override Dots.staff-position = #2
                                            \once \override DynamicLineSpanner.padding = #2.5
                                            \once \override StemTremolo.stencil = #ly:text-interface::print
                                            \once \override StemTremolo.text = \markup {
                                                                \fontsize #5
                                                                \override #'(font-name . "ekmelos")
                                                                \override #'(whiteout-style . "outline")
                                                                \override #'(whiteout . 1)
                                                                \raise #0.5
                                                                {
                                                                    \hspace #-0.57
                                                                    \char ##xe0f4
                                                                }
                                                            }
                                            \pitchedTrill
                                            \tweak style #'harmonic
                                            g'16
                                            :32
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            ~
                                            - \tweak TrillPitchAccidental.stencil ##f
                                            - \tweak TrillPitchHead.layer 5
                                            - \tweak TrillPitchHead.no-ledgers ##t
                                            - \tweak TrillPitchHead.stencil #(lambda (grob) (grob-interpret-markup grob #{ \markup \musicglyph #"noteheads.s2cross" #}))
                                            - \tweak TrillPitchHead.whiteout 1
                                            - \tweak TrillPitchHead.whiteout-style #'outline
                                            - \tweak Y-extent ##f
                                            - \tweak bound-details.left.Y #-4
                                            - \tweak bound-details.right.Y #-4
                                            \startTrillSpan e'
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \tweak style #'harmonic
                                            g'16.
                                            \revert Dots.staff-position
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            \tweak style #'harmonic
                                            b'32
                                            \stopTrillSpan
                                            ]
                                            \once \override Rest.staff-position = #-7
                                            r2
                                            \once \override Rest.staff-position = #-7
                                            r16.
                                            - \tweak Beam.positions #'(-8 . -10)
                                            [
                                            \override Dots.staff-position = #2
                                            \big-half-harmonic
                                            \once \override StemTremolo.stencil = #ly:text-interface::print
                                            \once \override StemTremolo.text = \markup {
                                                                \fontsize #5
                                                                \override #'(font-name . "ekmelos")
                                                                \override #'(whiteout-style . "outline")
                                                                \override #'(whiteout . 1)
                                                                \raise #0.5
                                                                {
                                                                    \hspace #-0.57
                                                                    \char ##xe0f4
                                                                }
                                                            }
                                            \pitchedTrill
                                            f''32
                                            :64
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            ~
                                            - \tweak TrillPitchAccidental.stencil ##f
                                            - \tweak TrillPitchHead.layer 5
                                            - \tweak TrillPitchHead.no-ledgers ##t
                                            - \tweak TrillPitchHead.stencil #(lambda (grob) (grob-interpret-markup grob #{ \markup \musicglyph #"noteheads.s2cross" #}))
                                            - \tweak TrillPitchHead.whiteout 1
                                            - \tweak TrillPitchHead.whiteout-style #'outline
                                            - \tweak Y-extent ##f
                                            - \tweak bound-details.left.Y #-4.5
                                            - \tweak bound-details.right.Y #-5
                                            \startTrillSpan c''
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \afterGrace
                                            f''8
                                            {
                                                #(define afterGraceFraction (cons 15 16))
                                                \grace-half-harmonic
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
                                                c''16
                                                \stopTrillSpan
                                            }
                                            \once \override Rest.staff-position = #-7
                                            r8
                                            \once \override Rest.staff-position = #-7
                                            r32
                                            \override Dots.staff-position = #2
                                            \big-half-harmonic
                                            \once \override StemTremolo.stencil = #ly:text-interface::print
                                            \once \override StemTremolo.text = \markup {
                                                                \fontsize #5
                                                                \override #'(font-name . "ekmelos")
                                                                \override #'(whiteout-style . "outline")
                                                                \override #'(whiteout . 1)
                                                                \raise #0.5
                                                                {
                                                                    \hspace #-0.57
                                                                    \char ##xe0f4
                                                                }
                                                            }
                                            \pitchedTrill
                                            a'16.
                                            :64
                                            ]
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            ~
                                            - \tweak TrillPitchAccidental.stencil ##f
                                            - \tweak TrillPitchHead.layer 5
                                            - \tweak TrillPitchHead.no-ledgers ##t
                                            - \tweak TrillPitchHead.stencil #(lambda (grob) (grob-interpret-markup grob #{ \markup \musicglyph #"noteheads.s2cross" #}))
                                            - \tweak TrillPitchHead.whiteout 1
                                            - \tweak TrillPitchHead.whiteout-style #'outline
                                            - \tweak Y-extent ##f
                                            - \tweak bound-details.left.Y #-6
                                            - \tweak bound-details.right.Y #-6
                                            \startTrillSpan d'
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \afterGrace
                                            a'8
                                            [
                                            {
                                                #(define afterGraceFraction (cons 15 16))
                                                \grace-half-harmonic
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
                                                d''16
                                                \stopTrillSpan
                                            }
                                            \override Dots.staff-position = #2
                                            \big-half-harmonic
                                            \once \override StemTremolo.stencil = #ly:text-interface::print
                                            \once \override StemTremolo.text = \markup {
                                                                \fontsize #5
                                                                \override #'(font-name . "ekmelos")
                                                                \override #'(whiteout-style . "outline")
                                                                \override #'(whiteout . 1)
                                                                \raise #0.5
                                                                {
                                                                    \hspace #-0.57
                                                                    \char ##xe0f4
                                                                }
                                                            }
                                            \pitchedTrill
                                            b'8
                                            :16
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            ~
                                            - \tweak TrillPitchAccidental.stencil ##f
                                            - \tweak TrillPitchHead.layer 5
                                            - \tweak TrillPitchHead.no-ledgers ##t
                                            - \tweak TrillPitchHead.stencil #(lambda (grob) (grob-interpret-markup grob #{ \markup \musicglyph #"noteheads.s2cross" #}))
                                            - \tweak TrillPitchHead.whiteout 1
                                            - \tweak TrillPitchHead.whiteout-style #'outline
                                            - \tweak Y-extent ##f
                                            - \tweak bound-details.left.Y #-4
                                            - \tweak bound-details.right.Y #-4
                                            \startTrillSpan g'
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \afterGrace
                                            b'8
                                            {
                                                #(define afterGraceFraction (cons 15 16))
                                                \grace-half-harmonic
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
                                                e'16
                                                \stopTrillSpan
                                            }
                                            \once \override Rest.staff-position = #-9
                                            r8
                                            ]
                                            \once \override Rest.staff-position = #-7
                                            r2
                                            \once \override Rest.staff-position = #-7
                                            r4
                                            \once \override Rest.staff-position = #-7
                                            r16
                                            - \tweak Beam.positions #'(-10.5 . -10.5)
                                            [
                                            \override Dots.staff-position = #2
                                            \once \override StemTremolo.stencil = #ly:text-interface::print
                                            \once \override StemTremolo.text = \markup {
                                                                \fontsize #5
                                                                \override #'(font-name . "ekmelos")
                                                                \override #'(whiteout-style . "outline")
                                                                \override #'(whiteout . 1)
                                                                \raise #0.5
                                                                {
                                                                    \hspace #-0.57
                                                                    \char ##xe0f4
                                                                }
                                                            }
                                            \pitchedTrill
                                            c'16
                                            :32
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            ~
                                            - \tweak TrillPitchAccidental.stencil ##f
                                            - \tweak TrillPitchHead.layer 5
                                            - \tweak TrillPitchHead.no-ledgers ##t
                                            - \tweak TrillPitchHead.stencil #(lambda (grob) (grob-interpret-markup grob #{ \markup \musicglyph #"noteheads.s2cross" #}))
                                            - \tweak TrillPitchHead.whiteout 1
                                            - \tweak TrillPitchHead.whiteout-style #'outline
                                            - \tweak Y-extent ##f
                                            - \tweak bound-details.left.Y #-6.5
                                            - \tweak bound-details.right.Y #-6.5
                                            \startTrillSpan g
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \afterGrace
                                            c'16
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
                                                a16
                                                \stopTrillSpan
                                            }
                                            \once \override Rest.staff-position = #-7
                                            r16
                                            ]
                                        }
                                        \context Voice = "violin 1 bow voice"
                                        {
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            \override Voice.NoteHead.color = #(css-color 'darkred)
                                            \override Voice.Dots.color = #(css-color 'darkred)
                                            \override Voice.Stem.color = #(css-color 'darkred)
                                            \override Voice.Beam.color = #(css-color 'darkred)
                                            \override Voice.Rest.color = #(css-color 'darkred)
                                            \override Voice.Tie.color = #(css-color 'darkred)
                                            \override Voice.TupletBracket.color = #(css-color 'darkred)
                                            \override Voice.TupletNumber.color = #(css-color 'darkred)
                                            \voiceOne
                                            <
                                                \tweak style #'la
                                                a''
                                            >16
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            - \markup \fontsize #2 { \hspace #-4.5 \raise #2 { "Bow:" } }
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
                                            \once \override Rest.staff-position = #7
                                            r16
                                            ]
                                            \once \override Rest.staff-position = #7
                                            r4
                                            \once \override Rest.staff-position = #7
                                            r8
                                            [
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                a''
                                            >16
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            \once \override Rest.staff-position = #7
                                            r16
                                            ]
                                            \once \override Rest.staff-position = #7
                                            r8
                                            [
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                f''
                                            >16
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            \once \override Rest.staff-position = #7
                                            r16
                                            ]
                                            \once \override Rest.staff-position = #7
                                            r4.
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                d''
                                            >16
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            [
                                            \once \override Rest.staff-position = #7
                                            r8.
                                            ]
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                d''
                                            >8
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            \stopTextSpanThree
                                            - \tweak Beam.positions #'(7 . 7)
                                            [
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                c''
                                            >8
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            \once \override Rest.staff-position = #7
                                            r16
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                b'
                                            >16
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            ~
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                b'
                                            >16
                                            \once \override Rest.staff-position = #7
                                            r16
                                            ]
                                            \once \override Dots.staff-position = #2
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            \afterGrace
                                            <
                                                \tweak style #'la
                                                g'
                                            >4
                                              %! abjad.glissando(7)
                                            - \tweak color #(css-color 'darkred)
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
                                                <g'>16
                                            }
                                            \once \override Rest.staff-position = #7
                                            r8
                                            [
                                            \once \override Dots.staff-position = #2
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                f''
                                            >8
                                            ]
                                              %! abjad.glissando(7)
                                            - \tweak color #(css-color 'darkred)
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
                                            \afterGrace
                                            <
                                                \tweak style #'la
                                                f''
                                            >8
                                            - \tweak Beam.positions #'(7 . 7)
                                            [
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
                                                <f''>16
                                            }
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                e'
                                            >16
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                e'
                                            >16
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                c'
                                            >8
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                e'
                                            >16
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            \once \override Dots.staff-position = #2
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                g'
                                            >16
                                            ]
                                              %! abjad.glissando(7)
                                            - \tweak color #(css-color 'darkred)
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
                                                g'
                                            >4
                                            ~
                                            \once \override Dots.staff-position = #2
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            \afterGrace
                                            <
                                                \tweak style #'la
                                                g'
                                            >16
                                            [
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
                                                <g'>16
                                            }
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                a'
                                            >16
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                b'
                                            >16
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                c''
                                            >16
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            ]
                                            \once \override Dots.staff-position = #2
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            \afterGrace
                                            <
                                                \tweak style #'la
                                                d''
                                            >8.
                                            [
                                              %! abjad.glissando(7)
                                            - \tweak color #(css-color 'darkred)
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
                                                <d''>16
                                            }
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            \set stemLeftBeamCount = 2
                                            \set stemRightBeamCount = 1
                                            <
                                                \tweak style #'la
                                                e''
                                            >16
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            \set stemLeftBeamCount = 1
                                            \set stemRightBeamCount = 2
                                            <
                                                \tweak style #'la
                                                f''
                                            >16
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                g''
                                            >16
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            \once \override Rest.staff-position = #7
                                            r8
                                            \stopTextSpanOne
                                            ]
                                            \revert Voice.NoteHead.color
                                            \revert Voice.Dots.color
                                            \revert Voice.Stem.color
                                            \revert Voice.Beam.color
                                            \revert Voice.Rest.color
                                            \revert Voice.Tie.color
                                            \revert Voice.TupletBracket.color
                                            \revert Voice.TupletNumber.color
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
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -34 } } } }
                                    ]
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #7
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "Bowing IV (molto tasto) + Waist" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpanOne
                                    r4
                                    r8
                                    c'!4.
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -34 } } } }
                                    \stopTextSpanOne
                                    r8
                                    [
                                    <c'! ef'!>8
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -41 }\line { -34 }} } }
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size -2
                                    - \tweak padding #11
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \hspace #-4 { \column { \line { "Diagonal bow," } \line { "touching bridge" } } } \hspace #0.5 }
                                    \startTextSpanOne
                                    r16
                                    \stopTextSpanOne
                                    c'!8.
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -34 } } } }
                                    ]
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size -1
                                    - \tweak padding #9
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \column { \line { "IV + Waist" } { "molto tasto" } } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpanOne
                                    r8.
                                    [
                                    \set stemLeftBeamCount = 2
                                    \set stemRightBeamCount = 1
                                    c'!16
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -34 } } } }
                                    \stopTextSpanOne
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 2
                                    r16
                                    <c'! ef'!>8.
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +32 }\line { -34 }} } }
                                    ]
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size -2
                                    - \tweak padding #11
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \hspace #-4 { \column { \line { "Diagonal bow," } \line { "touching bridge" } } } \hspace #0.5 }
                                    \startTextSpanOne
                                    r4.
                                    \stopTextSpanOne
                                    c'!8
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -34 } } } }
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size -1
                                    - \tweak padding #9
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \column { \line { "IV + Waist" } { "molto tasto" } } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpanOne
                                    r4.
                                    c'!8
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -34 } } } }
                                    \stopTextSpanOne
                                    r16
                                    [
                                    <c'! ef'!>8.
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +32 }\line { -34 }} } }
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size -2
                                    - \tweak padding #11
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \hspace #-4 { \column { \line { "Diagonal bow," } \line { "touching bridge" } } } \hspace #0.5 }
                                    \startTextSpanOne
                                    r8.
                                    \stopTextSpanOne
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size -1
                                    - \tweak padding #7.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \column { \line { "IV + Waist" } { "molto tasto" } } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpanOne
                                    c'!16
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -34 } } } }
                                    ]
                                    r16
                                    \stopTextSpanOne
                                    \afterGrace
                                    <c'! f'!>4..
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +8 }\line { -34 }} } }
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size -2
                                    - \tweak padding #11
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \column { \line { "Diagonal bow," } \line { "touching bridge" } } \hspace #0.5 }
                                    \startTextSpanOne
                                    {
                                        \once \override Stem.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.transparent = ##t
                                        c'16
                                        \stopTextSpanOne
                                    }
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
                                %%% \set GrandStaff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { V2 }
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
                                    \times 2/3
                                    {
                                        \override Dots.staff-position = #2
                                        e''1
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak font-name "Bodoni72 Book" 
                                        - \tweak font-size 2
                                        - \tweak padding #6
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { { "1/2 CLT" } \hspace #0.5 }
                                        \startTextSpanOne
                                        c'''8
                                        \stopTextSpanOne
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak font-name "Bodoni72 Book" 
                                        - \tweak font-size 2
                                        - \tweak padding #6
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { { "CLT" } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -15
                                        \startTextSpanOne
                                        a4.
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                    }
                                    f''4
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    a4
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    c'''1
                                    \stopTextSpanOne
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 2
                                    - \tweak padding #6
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { { \hspace #19 "1/2 CLT" } \hspace #0.5 }
                                    \startTextSpanOne
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
                                        c'''2...
                                        \stopTextSpanOne
                                        - \tweak font-name "Bodoni72 Book" 
                                        - \tweak font-size 2
                                        - \tweak padding #6
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { { "CLT" } \hspace #0.5 }
                                        \startTextSpanOne
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        a'16
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        c'''2
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                    }
                                    \times 4/5
                                    {
                                        a4
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        c'''8.
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        a16
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        c'''4
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        a8
                                        \stopTextSpanOne
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak font-name "Bodoni72 Book" 
                                        - \tweak font-size 2
                                        - \tweak padding #6
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { { "1/2 CLT" } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -3
                                        \startTextSpanOne
                                        c'8
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        a4
                                        \stopTextSpanOne
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        - \tweak font-name "Bodoni72 Book" 
                                        - \tweak font-size 2
                                        - \tweak padding #6
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { { \hspace #4 "CLT" } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -1
                                        \startTextSpanOne
                                        ~
                                    }
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
                                        a2
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        e'1
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                    }
                                    \times 2/3
                                    {
                                        a4
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        c'''8
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        a8
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        c'''4
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        a4
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        c'''8
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        a8
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \afterGrace
                                        c'''4
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        {
                                            \revert Dots.staff-position
                                            a16
                                            \stopTextSpanOne
                                        }
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
                        \tag #'voice4
                        {
                            \context Staff = "violin 4 staff"
                            {
                                \context Voice = "violin 4 voice"
                                {
                                    r1
                                      %! +SCORE
                                %%% ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #1 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 99" } } }
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
                                            \stopTextSpanThree
                                            a''4
                                            fs'''4
                                            af''4
                                            ef'''2
                                            - \tenuto
                                            a'2
                                            cs''2
                                            - \tenuto
                                            \times 4/6
                                            {
                                                a'4
                                                af'4
                                                g'4
                                                c'4
                                                fs'4
                                                b'4
                                            }
                                            \times 4/5
                                            {
                                                af4
                                                fs'4
                                                af'4
                                                ef''4
                                                fs'4
                                            }
                                            \times 2/3
                                            {
                                                b2
                                                a2
                                                fs'2
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
                                                a''2
                                                af''2
                                            }
                                            f''4
                                            fs''4
                                            e''''4
                                            a'''4
                                            a'4
                                            gs'4
                                            \times 4/5
                                            {
                                                c'''4
                                                gf'4
                                                fs'4
                                                a'4
                                                fs'4
                                            }
                                            \times 2/3
                                            {
                                                af'2
                                                c''2
                                                a'2
                                            }
                                            e'4
                                            a'4
                                            fs'4
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
                                %%% \set GrandStaff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { VA }
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
                                    - \upbow
                                      %! +SCORE
                                %%% ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-7 \raise #2 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 99" } } }
                                    (
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #4.25
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "norm." } \hspace #0.5 }
                                    \startTextSpanTwo
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #6.25
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "Tailpiece" } \hspace #0.5 }
                                    \startTextSpanOne
                                    c'8
                                    \stopTextSpanTwo
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #4.25
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "OP" } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \upright { "norm." }
                                    \startTextSpanTwo
                                    ~
                                    c'16
                                    [
                                    c'16
                                    \stopTextSpanTwo
                                    ]
                                    ~
                                    c'4
                                    )
                                    c'4
                                    - \upbow
                                    (
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "flaut." } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \upright { "OP" }
                                    \startTextSpanTwo
                                    c'2
                                    )
                                    \stopTextSpanTwo
                                    c'8
                                    - \upbow
                                    (
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #4.25
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "norm." } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \upright { "OP" }
                                    \startTextSpanTwo
                                    ~
                                    c'8
                                    c'4
                                    \stopTextSpanTwo
                                    ~
                                    c'8
                                    [
                                    ~
                                    c'16
                                    )
                                    c'16
                                    - \downbow
                                    ]
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #4.25
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "OP" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding 0.5
                                    \startTextSpanTwo
                                    ~
                                    c'4
                                    c'16
                                    - \downbow
                                    \stopTextSpanTwo
                                    [
                                    (
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #4.25
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "" } \hspace #0.5 }
                                    \startTextSpanTwo
                                    c'8.
                                    \stopTextSpanTwo
                                    ]
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #4.25
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "flaut." } \hspace #0.5 }
                                    - \tweak bound-details.right.padding 1
                                    \startTextSpanTwo
                                    ~
                                    c'4
                                    )
                                    c'16
                                    - \upbow
                                    \stopTextSpanTwo
                                    [
                                    (
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #4.75
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "" } \hspace #0.5 }
                                    \startTextSpanTwo
                                    c'8.
                                    \stopTextSpanTwo
                                    ]
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #4.75
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "norm." } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \upright { "OP" }
                                    \startTextSpanTwo
                                    c'4.
                                    )
                                    \stopTextSpanTwo
                                    \afterGrace
                                    c'1
                                    - \downbow
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #4.25
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "OP" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding 0.5
                                    \startTextSpanTwo
                                    {
                                        \once \override Stem.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.transparent = ##t
                                        c'16
                                        \stopTextSpanOne
                                        \stopTextSpanTwo
                                    }
                                    \staff-line-count 5
                                    \revert Staff.Clef.stencil
                                    \clef "alto"
                                    dqs''4
                                    (
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    \glissando
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #11.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "1/2 Spz." } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \upright { "Norm." }
                                    \startTextSpanTwo
                                    - \tweak padding #13.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " rit. ( to " } \fontsize #-0.5 { \note { 4 } #1.5 } \fontsize #3 { "= 83 )" } } } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 83" } } }
                                    \startTextSpanThree
                                    - \tweak padding #9
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \bow-tip-half-up \hspace #0.5 }
                                    - \tweak bound-details.right.text \normale-bow-rotation
                                    \startTextSpanOne
                                    \tweak style #'harmonic
                                    a'8
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
                                    a'8
                                    [
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    gqf''8
                                    ]
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
                                    gqf''8
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    \tweak style #'harmonic-mixed
                                    d''4
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    \glissando
                                    fs'4
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    \glissando
                                    \tweak style #'harmonic-mixed
                                    f'4
                                    )
                                    \stopTextSpanOne
                                    \stopTextSpanTwo
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    \glissando
                                    \big-half-harmonic
                                    \clef "treble"
                                    gqs''4
                                    \stopTextSpanThree
                                    (
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    \glissando
                                    \tweak style #'harmonic
                                    a''16
                                    [
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    \glissando
                                    \big-half-harmonic
                                    dqs'''8.
                                    ]
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    \glissando
                                    \tweak style #'harmonic
                                    fs'''8.
                                    [
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    \glissando
                                    \big-half-harmonic
                                    cqs'''16
                                    ]
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    \glissando
                                    \tweak style #'harmonic-mixed
                                    gs''4
                                    )
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    \glissando
                                    \big-half-harmonic
                                    cqf'''4
                                    (
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    \glissando
                                    \tweak style #'harmonic-mixed
                                    fs''4
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    \glissando
                                    \big-half-harmonic
                                    e'''4
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    \glissando
                                    \tweak style #'harmonic-mixed
                                    a'''4
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    \glissando
                                    \big-half-harmonic
                                    bqs'4
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    \glissando
                                    \afterGrace
                                    \tweak style #'harmonic-mixed
                                    af'4
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    \glissando
                                    {
                                        \grace-half-harmonic
                                        \once \override Flag.stroke-style = #"grace"
                                        gqs'16
                                        )
                                    }
                                    <<
                                        \context Voice = "viola 2 voice temp"
                                        {
                                            \voiceOne
                                            b'16
                                            [
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 1
                                            - \tweak padding #12
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "1/2 CLB" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -5
                                            \startTextSpanOne
                                            r8.
                                            af'16
                                            r8.
                                            a'16
                                            r8.
                                            a'16
                                            r8.
                                            ]
                                            \times 4/5
                                            {
                                                df''16
                                                [
                                                r8.
                                                e'16
                                                r8.
                                                g'16
                                                r8.
                                                g16
                                                r8.
                                                ef'16
                                                r8.
                                                ]
                                            }
                                            \times 4/5
                                            {
                                                ef''16
                                                [
                                                \once \override Rest.staff-position = #12.5
                                                r8.
                                                ef''16
                                                \once \override Rest.staff-position = #12.5
                                                r8.
                                                g''16
                                                \once \override Rest.staff-position = #12.5
                                                r8.
                                                ef''16
                                                \once \override Rest.staff-position = #12.5
                                                r8.
                                                a''16
                                                \once \override Rest.staff-position = #12.5
                                                r8.
                                                ]
                                            }
                                            \times 4/6
                                            {
                                                fs''16
                                                [
                                                \once \override Rest.staff-position = #12.5
                                                r8.
                                                g''16
                                                \once \override Rest.staff-position = #12.5
                                                r8.
                                                af''16
                                                \once \override Rest.staff-position = #12.5
                                                r8.
                                                c''16
                                                \once \override Rest.staff-position = #12.5
                                                r8.
                                                bf''16
                                                \once \override Rest.staff-position = #12.5
                                                r8.
                                                af''16
                                                \stopTextSpanOne
                                                \once \override Rest.staff-position = #12.5
                                                r8.
                                                ]
                                            }
                                        }
                                        \context Voice = "viola polyrhythm voice"
                                        {
                                            \times 2/3
                                            {
                                                \clef "alto"
                                                \voiceTwo
                                                b8
                                                r4.
                                                a'8
                                                r4.
                                                c'8
                                                r4.
                                            }
                                            bf'16
                                            [
                                            \once \override Rest.staff-position = #-4
                                            r8.
                                            c'16
                                            \once \override Rest.staff-position = #-4
                                            r8.
                                            fs'16
                                            \once \override Rest.staff-position = #-4
                                            r8.
                                            fs16
                                            \once \override Rest.staff-position = #-4
                                            r8.
                                            ]
                                            \times 4/5
                                            {
                                                b'16
                                                [
                                                r8.
                                                af'16
                                                r8.
                                                a'16
                                                r8.
                                                a'16
                                                r8.
                                                cs''16
                                                r8.
                                                ]
                                            }
                                            \times 4/5
                                            {
                                                e''16
                                                [
                                                \once \override Rest.staff-position = #3
                                                r8.
                                                g'16
                                                \once \override Rest.staff-position = #3
                                                r8.
                                                g''16
                                                \once \override Rest.staff-position = #3
                                                r8.
                                                ef''16
                                                \once \override Rest.staff-position = #3
                                                r8.
                                                ef''16
                                                \once \override Rest.staff-position = #3
                                                r8.
                                                ]
                                            }
                                        }
                                    >>
                                    \oneVoice
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
                                %%% \set GrandStaff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { VC }
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
                                %%% ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-3.5 \raise #3 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 99" } } }
                                    [
                                    <a,! bqf,!>16
                                    ]
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #13.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { { \column { \line { "diagonal bow," } \line { "touching bridge" } \line { "for added air sound" } } } \hspace #0.5 }
                                    \startTextSpanOne
                                    ~
                                    <a, bqf,>8
                                    r8
                                    r16
                                    [
                                    <a,! bqf,!>16
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
                                    \stopTextSpanOne
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #13.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { { \column { \line { "MSP, 1/2 hair on strings" } \line { "1/2 hair on bridge" } } } \hspace #0.5 }
                                    \startTextSpanOne
                                    ~
                                    <a, bqf,>8
                                    [
                                    r16
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
                                    r2
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
                                    <g,! c!>16
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -34 }\line { +8 }} } }
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
                                    <g,! c!>16
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -34 }\line { +8 }} } }
                                    r16
                                    ]
                                    r8
                                    <g,! c!>4
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -34 }\line { +8 }} } }
                                    ~
                                    <g, c>8
                                    [
                                    r8
                                    ]
                                    <g,! c!>4
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -34 }\line { +8 }} } }
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
                                        <
                                            \tweak Accidental.font-size #-3.5
                                            \tweak Accidental.parenthesized ##t
                                            \tweak color #(x11-color 'LightSlateBlue)
                                            \tweak font-size #-3.5
                                            gs,!
                                            aqs,!
                                        >16.
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
                                        <
                                            \tweak Accidental.font-size #-3.5
                                            \tweak Accidental.parenthesized ##t
                                            \tweak color #(x11-color 'LightSlateBlue)
                                            \tweak font-size #-3.5
                                            gs,!
                                            bqs,!
                                        >8
                                        - \tweak padding #1
                                        ^ \talon-to-punta
                                        ]
                                        ~
                                    }
                                    \times 2/3
                                    {
                                        \big-half-harmonic
                                        <
                                            \tweak Accidental.font-size #-3.5
                                            \tweak Accidental.parenthesized ##t
                                            \tweak color #(x11-color 'LightSlateBlue)
                                            \tweak font-size #-3.5
                                            gs,
                                            bqs,
                                        >8
                                        \big-half-harmonic
                                        <
                                            \tweak Accidental.font-size #-3.5
                                            \tweak Accidental.parenthesized ##t
                                            \tweak color #(x11-color 'LightSlateBlue)
                                            \tweak font-size #-3.5
                                            gs,!
                                            cqf!
                                        >4
                                        - \tweak padding #1
                                        ^ \punta-to-talon
                                        - \tweak font-name "Bodoni72 Book" 
                                        - \tweak font-size 2
                                        - \tweak padding #13
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { "(Ord.)" \hspace #0.5 }
                                        - \tweak bound-details.right.text MSP
                                        - \tweak bound-details.right.padding -2
                                        \startTextSpanOne
                                        ~
                                    }
                                    \big-half-harmonic
                                    <
                                        \tweak Accidental.font-size #-3.5
                                        \tweak Accidental.parenthesized ##t
                                        \tweak color #(x11-color 'LightSlateBlue)
                                        \tweak font-size #-3.5
                                        gs,
                                        cqf
                                    >4
                                    ~
                                    \big-half-harmonic
                                    <
                                        \tweak Accidental.font-size #-3.5
                                        \tweak Accidental.parenthesized ##t
                                        \tweak color #(x11-color 'LightSlateBlue)
                                        \tweak font-size #-3.5
                                        gs,
                                        cqf
                                    >4
                                    ~
                                    \times 4/5
                                    {
                                        \big-half-harmonic
                                        <
                                            \tweak Accidental.font-size #-3.5
                                            \tweak Accidental.parenthesized ##t
                                            \tweak color #(x11-color 'LightSlateBlue)
                                            \tweak font-size #-3.5
                                            gs,
                                            cqf
                                        >32
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
                                        <
                                            \tweak Accidental.font-size #-3.5
                                            \tweak Accidental.parenthesized ##t
                                            \tweak color #(x11-color 'LightSlateBlue)
                                            \tweak font-size #-3.5
                                            gs,!
                                            c!
                                        >16.
                                        - \tweak padding #1
                                        ^ \talon-to-punta
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
                                            - \tweak padding #13.5
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
                                                <
                                                    \tweak Accidental.font-size #-3.5
                                                    \tweak Accidental.parenthesized ##t
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-3.5
                                                    gs,!
                                                    cs!
                                                >8.
                                                - \tweak padding #1
                                                ^ \punta-to-talon
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
                                                <
                                                    \tweak Accidental.font-size #-3.5
                                                    \tweak Accidental.parenthesized ##t
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-3.5
                                                    gs,!
                                                    dqf!
                                                >16
                                                - \tweak padding #1
                                                ^ \punta-to-talon
                                                ]
                                                ~
                                            }
                                            \big-half-harmonic
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                gs,
                                                dqf
                                            >8.
                                            ~
                                            \times 2/3
                                            {
                                                \big-half-harmonic
                                                <
                                                    \tweak Accidental.font-size #-3.5
                                                    \tweak Accidental.parenthesized ##t
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-3.5
                                                    gs,
                                                    dqf
                                                >16
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
                                                <
                                                    \tweak Accidental.font-size #-3.5
                                                    \tweak Accidental.parenthesized ##t
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-3.5
                                                    gs,!
                                                    d!
                                                >16.
                                                - \tweak padding #1
                                                ^ \punta-to-talon
                                                \big-half-harmonic
                                                \set stemLeftBeamCount = 3
                                                \set stemRightBeamCount = 1
                                                <
                                                    \tweak Accidental.font-size #-3.5
                                                    \tweak Accidental.parenthesized ##t
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-3.5
                                                    gs,!
                                                    e!
                                                >32
                                                - \tweak padding #1
                                                ^ \talon-to-punta
                                                ~
                                            }
                                            \big-half-harmonic
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                gs,
                                                e
                                            >16
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
                                                <
                                                    \tweak Accidental.font-size #-3.5
                                                    \tweak Accidental.parenthesized ##t
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-3.5
                                                    gs,!
                                                    eqs!
                                                >16
                                                - \tweak padding #1
                                                ^ \punta-to-talon
                                                ~
                                            }
                                            \big-half-harmonic
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                gs,
                                                eqs
                                            >8.
                                            ]
                                            ~
                                            \big-half-harmonic
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                gs,
                                                eqs
                                            >16
                                            [
                                            ~
                                            \times 4/5
                                            {
                                                \big-half-harmonic
                                                \set stemLeftBeamCount = 1
                                                \set stemRightBeamCount = 3
                                                <
                                                    \tweak Accidental.font-size #-3.5
                                                    \tweak Accidental.parenthesized ##t
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-3.5
                                                    gs,
                                                    eqs
                                                >32
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
                                                <
                                                    \tweak Accidental.font-size #-3.5
                                                    \tweak Accidental.parenthesized ##t
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-3.5
                                                    gs,!
                                                    aqs,!
                                                >8
                                                - \tweak padding #1
                                                ^ \talon-to-punta
                                                ]
                                                ~
                                            }
                                            \times 2/3
                                            {
                                                \big-half-harmonic
                                                <
                                                    \tweak Accidental.font-size #-3.5
                                                    \tweak Accidental.parenthesized ##t
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-3.5
                                                    gs,
                                                    aqs,
                                                >8
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
                                                <
                                                    \tweak Accidental.font-size #-3.5
                                                    \tweak Accidental.parenthesized ##t
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-3.5
                                                    gs,!
                                                    fqf!
                                                >32
                                                - \tweak padding #1
                                                ^ \punta-to-talon
                                                ~
                                            }
                                            \big-half-harmonic
                                            \afterGrace
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                gs,
                                                fqf
                                            >16
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
                                            b,,16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            [
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 0
                                            - \tweak padding #12
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLB OB" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -2
                                            \startTextSpan
                                            \tweak style #'cross
                                            b,,16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \once \override Rest.staff-position = #-10
                                            r8
                                            \once \override Rest.staff-position = #-10
                                            r16
                                            \tweak style #'cross
                                            b,,16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \tweak style #'cross
                                            b,,16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \tweak style #'cross
                                            b,,16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \stopTextSpan
                                            ]
                                            \textSpannerUp
                                            \once \override Rest.staff-position = #-10
                                            r8
                                            [
                                            \textSpannerDown
                                            b,,8
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 0
                                            - \tweak padding #12
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLT DP" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpan
                                            ~
                                            b,,8
                                            \textSpannerDown
                                            \tweak style #'cross
                                            b,,16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \stopTextSpan
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 0
                                            - \tweak padding #12
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLB OB" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpan
                                            \textSpannerUp
                                            \once \override Rest.staff-position = #-10
                                            r16
                                            ]
                                            \textSpannerDown
                                            b,,4
                                            \stopTextSpan
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 0
                                            - \tweak padding #12
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLT DP" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpan
                                            \textSpannerUp
                                            \textSpannerDown
                                            \tweak style #'cross
                                            b,,16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \stopTextSpan
                                            [
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 0
                                            - \tweak padding #12
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLB OB" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -2
                                            \startTextSpan
                                            \textSpannerUp
                                            \tweak style #'cross
                                            b,,16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \tweak style #'cross
                                            b,,16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \stopTextSpan
                                            \textSpannerUp
                                            \textSpannerDown
                                            b,,16
                                            ]
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 0
                                            - \tweak padding #12
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLT DP" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -2
                                            \startTextSpan
                                            ~
                                            b,,16
                                            \stopTextSpan
                                            [
                                            \textSpannerUp
                                            \textSpannerDown
                                            \tweak style #'cross
                                            b,,16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 0
                                            - \tweak padding #12
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLB OB" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -2
                                            \startTextSpan
                                            \tweak style #'cross
                                            b,,16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \tweak style #'cross
                                            b,,16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \stopTextSpan
                                            ]
                                            \textSpannerUp
                                            \textSpannerDown
                                            b,,4
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 0
                                            - \tweak padding #12
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLT DP" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -2
                                            \startTextSpan
                                            ~
                                            b,,16
                                            \stopTextSpan
                                            [
                                            \textSpannerUp
                                            \textSpannerDown
                                            \tweak style #'cross
                                            b,,16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 0
                                            - \tweak padding #12
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLB OB" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -2
                                            \startTextSpan
                                            \once \override Rest.staff-position = #-10
                                            r8
                                            \once \override Rest.staff-position = #-10
                                            r16
                                            \tweak style #'cross
                                            b,,16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \tweak style #'cross
                                            b,,16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \tweak style #'cross
                                            b,,16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            ]
                                            \tweak style #'cross
                                            b,,16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            [
                                            \once \override Rest.staff-position = #-10
                                            r16
                                            \once \override Rest.staff-position = #-10
                                            r16
                                            \set stemLeftBeamCount = 2
                                            \set stemRightBeamCount = 1
                                            \tweak style #'cross
                                            b,,16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \set stemLeftBeamCount = 1
                                            \set stemRightBeamCount = 2
                                            \tweak style #'cross
                                            b,,16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \tweak style #'cross
                                            b,,16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \tweak style #'cross
                                            b,,16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \stopTextSpan
                                            \textSpannerUp
                                            \once \override Rest.staff-position = #-10
                                            r16
                                            ]
                                            \once \override Rest.staff-position = #-10
                                            r4
                                            \once \override Rest.staff-position = #-10
                                            r16
                                            [
                                            \textSpannerDown
                                            b,,8.
                                            ]
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 0
                                            - \tweak padding #12
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLT DP" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -30
                                            \startTextSpan
                                            ~
                                            b,,2
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
                                    >>
                                    \oneVoice
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
        }
    >>
  %! abjad.LilyPondFile._get_format_pieces()
