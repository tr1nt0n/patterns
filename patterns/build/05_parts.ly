    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
              %! +SCORE
        %%% \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (15 16.5 16.5 36)))
            \time 4/2
            s1 * 2
              %! +SCORE
        %%% \break
              %! +SCORE
        %%% \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (15 16.5 16.5 36)))
            \time 3/2
            s1 * 3/2
              %! +SCORE
        %%% \break
              %! +SCORE
        %%% \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (11 25 25 36)))
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/2
            s1 * 3/2
              %! +SCORE
        %%% \break
              %! +SCORE
        %%% \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (11 25 25 36)))
            \time 12/8
            s1 * 3/2
              %! +SCORE
        %%% \noBreak
            \time 8/8
            s1 * 1
              %! +SCORE
        %%% \break
              %! +SCORE
        %%% \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (15 28 18 15)))
            \time 7/4
            s1 * 7/4
              %! +SCORE
        %%% \noBreak
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            - \tweak font-size #'10
            _ \very-long-fermata
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
                                    \set GrandStaff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { Violin 1 }
                                      %! +SCORE
                                %%% \set GrandStaff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { V1 }
                                    \stopStaff
                                    \once \revert Staff.StaffSymbol.line-positions
                                    \once \override Staff.StaffSymbol.line-count = #0
                                    \once \override Staff.BarLine.transparent = ##f
                                    r\breve
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
                                    r1.
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
                                    r1..
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
                                            \once \override Rest.staff-position = #-7
                                            \override Staff.Clef.stencil = #ly:text-interface::print
                                            \override Staff.Clef.text = \string-clef
                                            \staff-line-count 4
                                            \override Staff.StaffSymbol.line-positions = #'(9 7 0 -9)
                                            \override Staff.BarLine.bar-extent = #'(-4.5 . 4.5)
                                            \override Staff.Accidental.stencil = ##f
                                            \override Staff.NoteHead.no-ledgers = ##t
                                            \voiceTwo
                                            r2
                                              %! +SCORE
                                        %%% ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-7 \raise #1 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 2 } #1.5 } \fontsize #4 { "= 69" } } }
                                            \once \override Rest.staff-position = #-7
                                            r8
                                            - \markup \fontsize #2 { \hspace #-10.5 { "Fng. Perc.:" } }
                                            [
                                            \big-half-harmonic
                                            \once \override DynamicLineSpanner.staff-padding = #7.5
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
                                            b8
                                            :16
                                            \pppp
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #9
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "IV" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -10
                                            \startTextSpanOne
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
                                            \startTrillSpan g
                                            \big-half-harmonic
                                            b8
                                            \stopTrillSpan
                                            \once \override Rest.staff-position = #-7
                                            r8
                                            ]
                                            <
                                                \tweak style #'cross
                                                b
                                                \tweak style #'harmonic
                                                d'
                                            >8
                                            [
                                            <
                                                \tweak style #'cross
                                                e'
                                                \tweak style #'harmonic
                                                a'
                                            >8
                                            ]
                                            \once \override Rest.staff-position = #-7
                                            r4
                                            \once \override Rest.staff-position = #-7
                                            r4.
                                            <
                                                \tweak style #'cross
                                                a
                                                \tweak style #'harmonic
                                                b
                                            >8
                                            \once \override Rest.staff-position = #-7
                                            r4.
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
                                            a8
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
                                            - \tweak bound-details.left.Y #-5
                                            - \tweak bound-details.right.Y #-2
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
                                            a4.
                                            {
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
                                                e'16
                                                \stopTrillSpan
                                            }
                                            \once \override Rest.staff-position = #-7
                                            r8
                                            \once \override Rest.staff-position = #-7
                                            r2
                                            \once \override Rest.staff-position = #-7
                                            r1
                                            \once \override Rest.staff-position = #-7
                                            r4
                                            \tweak style #'cross
                                            b8
                                            \stopTextSpanOne
                                            \once \override Rest.staff-position = #-7
                                            r8
                                        }
                                        \context Voice = "violin 1 bow voice"
                                        {
                                            \once \override Rest.staff-position = #7
                                            \override Voice.NoteHead.color = #(css-color 'darkred)
                                            \override Voice.Dots.color = #(css-color 'darkred)
                                            \override Voice.Stem.color = #(css-color 'darkred)
                                            \override Voice.Beam.color = #(css-color 'darkred)
                                            \override Voice.Rest.color = #(css-color 'darkred)
                                            \override Voice.Tie.color = #(css-color 'darkred)
                                            \override Voice.TupletBracket.color = #(css-color 'darkred)
                                            \override Voice.TupletNumber.color = #(css-color 'darkred)
                                            \voiceOne
                                            r2
                                            \once \override Rest.staff-position = #7
                                            r4
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                f'
                                            >8
                                            - \tweak color #(css-color 'darkred)
                                            - \staccato
                                            - \tweak color #(css-color 'darkred)
                                            - \markup \fontsize #2 { \hspace #-4.5 { "Bow:" } }
                                            - \tweak Beam.positions #'(6 . 6)
                                            [
                                            \once \override Rest.staff-position = #7
                                            r8
                                            ]
                                            \once \override Dots.staff-position = #2
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                d''
                                            >2
                                            ^ \markup {
                                                                \hspace #-2 {
                                                                    ( \note {2} #2 )
                                                                }
                                                            }
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
                                                d''
                                            >8
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
                                                <d''>16
                                            }
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                b'
                                            >8
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            ]
                                            \once \override Rest.staff-position = #7
                                            r4
                                            \once \override Rest.staff-position = #7
                                            r4.
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                a''
                                            >8
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            \once \override Rest.staff-position = #7
                                            r4.
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
                                            r2
                                            \once \override Rest.staff-position = #7
                                            r16
                                            [
                                            \once \override Dots.staff-position = #2
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            \afterGrace
                                            <
                                                \tweak style #'la
                                                a''
                                            >8.
                                            ]
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
                                                <a''>16
                                            }
                                            \once \override Rest.staff-position = #7
                                            r4
                                            \once \override Dots.staff-position = #2
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            \afterGrace
                                            <
                                                \tweak style #'la
                                                c''
                                            >4.
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
                                                <c''>16
                                            }
                                            \once \override Rest.staff-position = #7
                                            r8
                                            \once \override Dots.staff-position = #2
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            \afterGrace
                                            <
                                                \tweak style #'la
                                                a'
                                            >2
                                            ^ \markup {
                                                                \hspace #-2 {
                                                                    ( \note {2} #2 )
                                                                }
                                                            }
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
                                                <a'>16
                                                \revert Voice.NoteHead.color
                                                \revert Voice.Dots.color
                                                \revert Voice.Stem.color
                                                \revert Voice.Beam.color
                                                \revert Voice.Rest.color
                                                \revert Voice.Tie.color
                                                \revert Voice.TupletBracket.color
                                                \revert Voice.TupletNumber.color
                                            }
                                        }
                                    >>
                                    \oneVoice
                                    <<
                                        \context Voice = "violin 2 voice temp"
                                        {
                                            \staff-line-count 5
                                            \revert Staff.StaffSymbol.line-positions
                                            \revert Staff.Accidental.stencil
                                            \revert Staff.NoteHead.no-ledgers
                                            \revert Staff.Clef.stencil
                                            \voiceOne
                                            cs''''4
                                            \override Staff.BarLine.bar-extent = #'(-2 . 2)
                                            a'''8
                                            ~
                                            a'''8
                                            bf'''4
                                            e'''4
                                            a'''8
                                            ~
                                            a'''8
                                            d'''4
                                            \times 2/3
                                            {
                                                d'''2
                                                f'''2
                                                c'''2
                                            }
                                            e'''4..
                                            g'''16
                                            ~
                                            g'''4
                                            ~
                                            g'''8
                                            bf'''4.
                                            ~
                                            bf'''16
                                            d'''4..
                                        }
                                        \context Voice = "violin 1 polyrhythm voice"
                                        {
                                            \voiceTwo
                                            c'''4.
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #13.5
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { { "CLB" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -4
                                            \startTextSpanOne
                                            ~
                                            c'''8
                                            fs'''4
                                            ~
                                            fs'''4
                                            c''''8
                                            ~
                                            c''''4.
                                            d'''4
                                            e'''4
                                            d'''4
                                            g'''4
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 7/10
                                            {
                                                e''2
                                                a'''2
                                                bf'''2
                                                d''''2
                                                ef'''2
                                                \stopTextSpanOne
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
                                    r\breve
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
                                    r1.
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
                                    r1..
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
                        \tag #'voice4
                        {
                            \context Staff = "violin 4 staff"
                            {
                                \context Voice = "violin 4 voice"
                                {
                                    r\breve
                                      %! +SCORE
                                %%% ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-7 \raise #1.5 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 2 } #1.5 } \fontsize #4 { "= 69" } } }
                                    r1.
                                    r4
                                    \override Dots.staff-position = #2
                                    \fancy-gliss
                                       #'(
                                          (0 0 0.5 1 1 0)
                                          (1 0 1.5 -1 2 0)
                                          (2 0 2.5 1 3 0)
                                          (3 0 3.5 -1 4 0)
                                          (4 0 4.5 1 5 0)
                                          (5 0 5.5 -1 6 0)
                                          (6 0 6.5 1 7 0)
                                          (7 0 7.5 -1 8 0)
                                          (8 0 8.5 1 9 0)
                                          (9 0 9.5 -1 10 0)
                                     )
                                     #0.5
                                    <
                                        \tweak style #'harmonic
                                        bf'''
                                        \tweak style #'harmonic
                                        dqs''''
                                    >8
                                    \arpeggio
                                    \pppp
                                    [
                                    (
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #11
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { MSP \hspace #0.5 }
                                    - \tweak bound-details.right.padding -1.5
                                    \startTextSpanOne
                                    \times 2/3
                                    {
                                        \override Dots.staff-position = #2
                                        \revert Dots.staff-position
                                        <
                                            \tweak style #'harmonic
                                            bf'''
                                            \tweak style #'harmonic
                                            dqs''''
                                        >16
                                        )
                                        \stopTextSpanOne
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #1.5
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \<
                                        \big-half-harmonic
                                        \revert Dots.staff-position
                                        fqf''8
                                        \mf
                                        ^ \spz
                                        ]
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 5/7
                                    {
                                        \override Dots.staff-position = #2
                                        <
                                            \tweak style #'harmonic
                                            bf'''
                                            \tweak style #'harmonic
                                            dqs''''
                                        >8
                                        \arpeggio
                                        \pppp
                                        [
                                        (
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak font-name "Bodoni72 Book" 
                                        - \tweak font-size 1
                                        - \tweak padding #11
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { MSP \hspace #0.5 }
                                        - \tweak bound-details.right.padding -1.5
                                        \startTextSpanOne
                                        <
                                            \tweak style #'harmonic
                                            aqf'''
                                            \tweak style #'harmonic
                                            e''''
                                        >8
                                        \arpeggio
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        <
                                            \tweak style #'harmonic
                                            bf'''
                                            \tweak style #'harmonic
                                            dqs''''
                                        >8
                                        \arpeggio
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        <
                                            \tweak style #'harmonic
                                            aqf'''
                                            \tweak style #'harmonic
                                            e''''
                                        >8
                                        \arpeggio
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        <
                                            \tweak style #'harmonic
                                            bf'''
                                            \tweak style #'harmonic
                                            dqs''''
                                        >8
                                        \arpeggio
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        <
                                            \tweak style #'harmonic
                                            aqf'''
                                            \tweak style #'harmonic
                                            e''''
                                        >8
                                        \arpeggio
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        <
                                            \tweak style #'harmonic
                                            bf'''
                                            \tweak style #'harmonic
                                            dqs''''
                                        >8
                                        \arpeggio
                                        ]
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                    }
                                    \override Dots.staff-position = #2
                                    \revert Dots.staff-position
                                    <
                                        \tweak style #'harmonic
                                        bf'''
                                        \tweak style #'harmonic
                                        dqs''''
                                    >16
                                    )
                                    \stopTextSpanOne
                                    [
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \<
                                    \big-half-harmonic
                                    \revert Dots.staff-position
                                    \set stemLeftBeamCount = 2
                                    \set stemRightBeamCount = 1
                                    fqf''16
                                    \mf
                                    ^ \spz
                                    \times 2/3
                                    {
                                        \override Dots.staff-position = #2
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 2
                                        <
                                            \tweak style #'harmonic
                                            aqf'''
                                            \tweak style #'harmonic
                                            e''''
                                        >16
                                        \arpeggio
                                        \pppp
                                        ^ \msp
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #1.5
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \<
                                        \big-half-harmonic
                                        \revert Dots.staff-position
                                        fqf''8
                                        \mf
                                        ^ \spz
                                    }
                                    \times 4/5
                                    {
                                        \override Dots.staff-position = #2
                                        <
                                            \tweak style #'harmonic
                                            bf'''
                                            \tweak style #'harmonic
                                            dqs''''
                                        >16
                                        \arpeggio
                                        \pppp
                                        ^ \msp
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #1.5
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \<
                                        \big-half-harmonic
                                        \revert Dots.staff-position
                                        fqf''16.
                                        \mf
                                        ^ \spz
                                        ]
                                    }
                                    \override Dots.staff-position = #2
                                    <
                                        \tweak style #'harmonic
                                        cqs''''
                                        \tweak style #'harmonic
                                        e''''
                                    >8
                                    \arpeggio
                                    \pppp
                                    ^ \msp
                                    [
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \<
                                    \big-half-harmonic
                                    \revert Dots.staff-position
                                    fqf''8
                                    \mf
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #3.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { Spz. \hspace #0.5 }
                                    - \tweak bound-details.right.padding -1
                                    \startTextSpanOne
                                    \big-half-harmonic
                                    eqs''8
                                    ]
                                    \big-half-harmonic
                                    f''16
                                    \stopTextSpanOne
                                    [
                                    \override Dots.staff-position = #2
                                    <
                                        \tweak style #'harmonic
                                        bf'''
                                        \tweak style #'harmonic
                                        cqs''''
                                    >16
                                    \arpeggio
                                    \pppp
                                    ^ \msp
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \<
                                    \big-half-harmonic
                                    \revert Dots.staff-position
                                    f''8
                                    \mf
                                    ^ \spz
                                    r16
                                    \override Dots.staff-position = #2
                                    <
                                        \tweak style #'harmonic
                                        bf'''
                                        \tweak style #'harmonic
                                        cqs''''
                                    >16
                                    \arpeggio
                                    \pppp
                                    ^ \msp
                                    ]
                                      %! abjad.glissando(7)
                                    - \tweak bound-details.right.arrow ##t
                                      %! abjad.glissando(7)
                                    - \tweak thickness #1.5
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    \<
                                    ~
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    <bf''' cqs''''>8
                                    [
                                    \big-half-harmonic
                                    \revert Dots.staff-position
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    fqf''16
                                    \mf
                                    ^ \spz
                                    \override Dots.staff-position = #2
                                    \fancy-gliss
                                       #'(
                                          (0 0 0.5 1 1 0)
                                          (1 0 1.5 -1 2 0)
                                          (2 0 2.5 1 3 0)
                                          (3 0 3.5 -1 4 0)
                                          (4 0 4.5 1 5 0)
                                          (5 0 5.5 -1 6 0)
                                     )
                                     #0.5
                                    <
                                        \tweak style #'harmonic
                                        a'''
                                        \tweak style #'harmonic
                                        cs''''
                                    >16
                                    \arpeggio
                                    \pppp
                                    (
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #11
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { MSP \hspace #0.5 }
                                    - \tweak bound-details.right.padding -1.5
                                    \startTextSpanOne
                                    \override Dots.staff-position = #2
                                    \revert Dots.staff-position
                                    <
                                        \tweak style #'harmonic
                                        a'''
                                        \tweak style #'harmonic
                                        cs''''
                                    >16
                                    )
                                    \stopTextSpanOne
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \<
                                    \big-half-harmonic
                                    eqs''16
                                    \mf
                                    ]
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #3.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { Spz. \hspace #0.5 }
                                    - \tweak bound-details.right.padding -1
                                    \startTextSpanOne
                                    \>
                                    ~
                                    \big-half-harmonic
                                    \revert Dots.staff-position
                                    eqs''4.
                                    \stopTextSpanOne
                                    \staff-line-count 1
                                    \once \override Accidental.stencil = ##f
                                    \clef "treble"
                                    b'2
                                    - \tenuto
                                    \pppp
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #11.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { { "bridge" } \hspace #0.5 }
                                    \startTextSpanOne
                                    \staff-line-count 5
                                    \clef "treble"
                                    <gf' bf'>8
                                    - \tweak padding #4.5
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +8 }\line { -41 }} } }
                                    \stopTextSpanOne
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #11.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { { "MSP" } \hspace #0.5 }
                                    \startTextSpanOne
                                    \staff-line-count 1
                                    \once \override Accidental.stencil = ##f
                                    \clef "treble"
                                    b'4.
                                    \stopTextSpanOne
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #11.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { { "bridge" } \hspace #0.5 }
                                    \startTextSpanOne
                                    \staff-line-count 5
                                    \clef "treble"
                                    <gf' bf'>8
                                    - \tenuto
                                    - \tweak padding #4.5
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +8 }\line { -41 }} } }
                                    \stopTextSpanOne
                                    [
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #11.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { { "MSP" } \hspace #0.5 }
                                    \startTextSpanOne
                                    <gf' bf'>8
                                    - \tweak padding #4.5
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +8 }\line { -41 }} } }
                                    ]
                                    \staff-line-count 1
                                    \once \override Accidental.stencil = ##f
                                    \clef "treble"
                                    b'8.
                                    - \tenuto
                                    \stopTextSpanOne
                                    [
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #11.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { { "bridge" } \hspace #0.5 }
                                    \startTextSpanOne
                                    \staff-line-count 5
                                    \clef "treble"
                                    <gf' bf'>16
                                    - \tenuto
                                    - \tweak padding #4.5
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +8 }\line { -41 }} } }
                                    \stopTextSpanOne
                                    ]
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #11.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { { "MSP" } \hspace #0.5 }
                                    \startTextSpanOne
                                    \staff-line-count 1
                                    \once \override Accidental.stencil = ##f
                                    \clef "treble"
                                    b'4
                                    \stopTextSpanOne
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #11.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { { \hspace #1 { "bridge" } } \hspace #0.5 }
                                    \startTextSpanOne
                                    \staff-line-count 5
                                    \clef "treble"
                                    <gf' bf'>8
                                    - \tweak padding #4.5
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +8 }\line { -41 }} } }
                                    \stopTextSpanOne
                                    [
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #11.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { { "MSP" } \hspace #0.5 }
                                    \startTextSpanOne
                                    <gf' bf'>8
                                    - \tenuto
                                    - \tweak padding #4.5
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +8 }\line { -41 }} } }
                                    ]
                                    \staff-line-count 1
                                    \once \override Accidental.stencil = ##f
                                    \clef "treble"
                                    b'4
                                    \stopTextSpanOne
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #11.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { { "bridge" } \hspace #0.5 }
                                    \startTextSpanOne
                                    \staff-line-count 5
                                    \clef "treble"
                                    <gf' bf'>16
                                    - \tweak padding #4.5
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +8 }\line { -41 }} } }
                                    \stopTextSpanOne
                                    [
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #11.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { { "MSP" } \hspace #0.5 }
                                    \startTextSpanOne
                                    \staff-line-count 1
                                    \once \override Accidental.stencil = ##f
                                    \clef "treble"
                                    b'8.
                                    - \tenuto
                                    \stopTextSpanOne
                                    ]
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #11.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { { \hspace #1 { "bridge" } } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -3
                                    \startTextSpanOne
                                    ~
                                    b'4
                                    \stopTextSpanOne
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
                                    r\breve
                                    r1.
                                    r1.
                                    r1.
                                    r1
                                    r1..
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
                                    <<
                                        \context Voice = "viola 2 voice temp"
                                        {
                                            \big-half-harmonic
                                            \clef "alto"
                                            \voiceOne
                                            ef1
                                            - \tweak padding 1
                                            - \punta-to-talon
                                            ^ \pppp
                                              %! +SCORE
                                        %%% ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-8 \raise #6 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 2 } #1.5 } \fontsize #4 { "= 69" } } }
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #9.5
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "MSP" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -3
                                            \startTextSpan
                                            ~
                                            \big-half-harmonic
                                            ef4
                                            \times 2/3
                                            {
                                                \big-half-harmonic
                                                eqs8
                                                - \tweak padding 1
                                                - \talon-to-punta
                                                [
                                                \big-half-harmonic
                                                ef8
                                                - \tweak padding 1
                                                - \punta-to-talon
                                                \big-half-harmonic
                                                fs8
                                                - \tweak padding 1
                                                - \talon-to-punta
                                                ]
                                                ~
                                            }
                                            \big-half-harmonic
                                            fs4
                                            \big-half-harmonic
                                            f16
                                            - \tweak padding 1
                                            - \punta-to-talon
                                            [
                                            \big-half-harmonic
                                            gqf16
                                            - \tweak padding 1
                                            - \talon-to-punta
                                            \big-half-harmonic
                                            cqs16
                                            - \tweak padding 1
                                            - \punta-to-talon
                                            \big-half-harmonic
                                            fqs16
                                            - \tweak padding 1
                                            - \talon-to-punta
                                            ]
                                            ~
                                            \big-half-harmonic
                                            fqs16.
                                            [
                                            \big-half-harmonic
                                            e32
                                            - \tweak padding 1
                                            - \punta-to-talon
                                            ~
                                            \big-half-harmonic
                                            e16
                                            \big-half-harmonic
                                            \set stemLeftBeamCount = 2
                                            \set stemRightBeamCount = 1
                                            gqf16
                                            - \tweak padding 1
                                            - \talon-to-punta
                                            ~
                                            \big-half-harmonic
                                            \set stemLeftBeamCount = 1
                                            \set stemRightBeamCount = 3
                                            gqf32
                                            r8..
                                            ]
                                            \big-half-harmonic
                                            fs2
                                            - \tweak padding 1
                                            - \punta-to-talon
                                            ~
                                            \big-half-harmonic
                                            fs8
                                            [
                                            \big-half-harmonic
                                            eqf8
                                            - \tweak padding 1
                                            - \talon-to-punta
                                            \big-half-harmonic
                                            e8
                                            - \tweak padding 1
                                            - \punta-to-talon
                                            \big-half-harmonic
                                            gqf8
                                            - \tweak padding 1
                                            - \talon-to-punta
                                            ]
                                            ~
                                            \big-half-harmonic
                                            gqf8
                                            [
                                            r8
                                            ]
                                            \big-half-harmonic
                                            f4
                                            - \tweak padding 1
                                            - \punta-to-talon
                                            \big-half-harmonic
                                            fs2
                                            - \tweak padding 1
                                            - \talon-to-punta
                                            ~
                                            \big-half-harmonic
                                            fs8
                                            [
                                            r16.
                                            \big-half-harmonic
                                            \set stemLeftBeamCount = 3
                                            \set stemRightBeamCount = 1
                                            eqs32
                                            - \tweak padding 1
                                            - \punta-to-talon
                                            ~
                                            \big-half-harmonic
                                            \set stemLeftBeamCount = 1
                                            \set stemRightBeamCount = 2
                                            eqs16
                                            r16
                                            \once \override Rest.staff-position = #-5
                                            r32
                                            \big-half-harmonic
                                            e16.
                                            - \tweak padding 1
                                            - \talon-to-punta
                                            ]
                                            ~
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 9/8
                                            {
                                                \big-half-harmonic
                                                e8
                                                [
                                                r8
                                                r8
                                                \big-half-harmonic
                                                ef8
                                                - \tweak padding 1
                                                - \punta-to-talon
                                                ]
                                                ~
                                            }
                                            \big-half-harmonic
                                            ef16
                                            [
                                            ~
                                            \big-half-harmonic
                                            ef8
                                            ]
                                            ~
                                            \big-half-harmonic
                                            ef8
                                            [
                                            r8
                                            r16
                                            \big-half-harmonic
                                            eqs16
                                            - \tweak padding 1
                                            - \talon-to-punta
                                            ]
                                            ~
                                            \big-half-harmonic
                                            eqs8
                                            \stopTextSpan
                                            r4
                                        }
                                        \context Voice = "viola legno voice"
                                        {
                                            \once \override DynamicLineSpanner.staff-padding = #15
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
                                            d,4.
                                            - \tweak color #(css-color 'darkred)
                                            \mf
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #14.5
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \hspace #-3 { "CLT DP" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 0.5
                                            \startTextSpan
                                            \textSpannerDown
                                            \tweak style #'cross
                                            d,8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \stopTextSpan
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #14.5
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLB OB" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -3
                                            \startTextSpan
                                            \textSpannerUp
                                            \tweak style #'cross
                                            d,8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \stopTextSpan
                                            [
                                            \textSpannerUp
                                            \textSpannerDown
                                            d,8
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #14.5
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLT DP" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -3
                                            \startTextSpan
                                            ~
                                            d,8
                                            \stopTextSpan
                                            \textSpannerUp
                                            \textSpannerDown
                                            \tweak style #'cross
                                            d,8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            ]
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #14.5
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLB OB" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -3
                                            \startTextSpan
                                            \tweak style #'cross
                                            d,8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            [
                                            \tweak style #'cross
                                            d,8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            \once \override Rest.staff-position = #-12
                                            r8
                                            \tweak style #'cross
                                            d,8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \stopTextSpan
                                            ]
                                            \textSpannerUp
                                            \textSpannerDown
                                            d,4
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #14.5
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \hspace #-3 { "CLT DP" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 0.5
                                            \startTextSpan
                                            \once \override Rest.staff-position = #-12
                                            \textSpannerDown
                                            r8
                                            \stopTextSpan
                                            [
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #14.5
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLB OB" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -3
                                            \startTextSpan
                                            \textSpannerUp
                                            \tweak style #'cross
                                            d,8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            \stopTextSpan
                                            ]
                                            \textSpannerUp
                                            \textSpannerDown
                                            d,4
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #14.5
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \hspace #-3 { "CLT DP" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 4
                                            \startTextSpan
                                            \textSpannerDown
                                            \tweak style #'cross
                                            d,8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \stopTextSpan
                                            [
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #14.5
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \hspace #-4 { "CLB OB" } \hspace #0.5 }
                                            \startTextSpan
                                            \textSpannerUp
                                            \textSpannerDown
                                            d,8
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            \stopTextSpan
                                            ]
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #14.5
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLT DP" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -3
                                            \startTextSpan
                                            ~
                                            \textSpannerUp
                                            d,4.
                                            \stopTextSpan
                                            \textSpannerUp
                                            \textSpannerDown
                                            \tweak style #'cross
                                            d,8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #14.5
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLB OB" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -3
                                            \startTextSpan
                                            \once \override Rest.staff-position = #-12
                                            r4
                                            \tweak style #'cross
                                            d,8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            [
                                            \once \override Rest.staff-position = #-12
                                            r8
                                            ]
                                            \once \override Rest.staff-position = #-12
                                            r4.
                                            \tweak style #'cross
                                            d,8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \stopTextSpan
                                            \textSpannerUp
                                            \textSpannerDown
                                            d,2
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #14.5
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLT DP" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -3
                                            \startTextSpan
                                            ~
                                            d,8
                                            \stopTextSpan
                                            [
                                            \textSpannerUp
                                            \textSpannerDown
                                            \tweak style #'cross
                                            d,8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #14.5
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLB OB" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -3
                                            \startTextSpan
                                            \tweak style #'cross
                                            d,8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            \tweak style #'cross
                                            d,8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            ]
                                            \once \override Rest.staff-position = #-12
                                            r8
                                            [
                                            \tweak style #'cross
                                            d,8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            \tweak style #'cross
                                            d,8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            ]
                                            \tweak style #'cross
                                            d,8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            [
                                            \tweak style #'cross
                                            d,8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \stopTextSpan
                                            \textSpannerUp
                                            \textSpannerDown
                                            d,8
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            ]
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #14.5
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLT DP" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -3
                                            \startTextSpan
                                            ~
                                            d,8
                                            \stopTextSpan
                                            [
                                            \textSpannerUp
                                            \textSpannerDown
                                            \tweak style #'cross
                                            d,8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #14.5
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLB OB" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -3
                                            \startTextSpan
                                            \tweak style #'cross
                                            d,8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            ]
                                            \once \override Rest.staff-position = #-12
                                            r8
                                            [
                                            \tweak style #'cross
                                            d,8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            \tweak style #'cross
                                            d,8
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
                                    \staff-line-count 1
                                    \override Staff.Clef.stencil = ##f
                                    \override Voice.NoteHead.color = #(css-color 'darkred)
                                    \override Voice.Dots.color = #(css-color 'darkred)
                                    \override Voice.Stem.color = #(css-color 'darkred)
                                    \override Voice.Beam.color = #(css-color 'darkred)
                                    \override Voice.Rest.color = #(css-color 'darkred)
                                    \override Voice.Tie.color = #(css-color 'darkred)
                                    \override Voice.TupletBracket.color = #(css-color 'darkred)
                                    \override Voice.TupletNumber.color = #(css-color 'darkred)
                                    \clef "percussion"
                                    \tweak style #'cross
                                    c'16
                                    - \tweak color #(css-color 'darkred)
                                    - \accent
                                    - \tweak color #(css-color 'darkred)
                                    - \staccato
                                    [
                                    - \tweak color #(css-color 'darkred)
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 2
                                    - \tweak padding #3.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "CLB OB" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -3
                                    \startTextSpan
                                    \tweak style #'cross
                                    c'16
                                    - \tweak color #(css-color 'darkred)
                                    - \staccato
                                    r8
                                    ]
                                    r8
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 5/6
                                    {
                                        \tweak style #'cross
                                        c'8
                                        - \tweak color #(css-color 'darkred)
                                        - \staccato
                                        [
                                        \tweak style #'cross
                                        c'8
                                        - \tweak color #(css-color 'darkred)
                                        - \accent
                                        - \tweak color #(css-color 'darkred)
                                        - \staccato
                                        \tweak style #'cross
                                        c'8
                                        - \tweak color #(css-color 'darkred)
                                        - \staccato
                                        ]
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 5/4
                                    {
                                        r16
                                        [
                                        \tweak style #'cross
                                        c'16
                                        - \tweak color #(css-color 'darkred)
                                        - \accent
                                        - \tweak color #(css-color 'darkred)
                                        - \staccato
                                        \tweak style #'cross
                                        c'16
                                        - \tweak color #(css-color 'darkred)
                                        - \accent
                                        - \tweak color #(css-color 'darkred)
                                        - \staccato
                                        \tweak style #'cross
                                        c'16
                                        - \tweak color #(css-color 'darkred)
                                        - \staccato
                                        ]
                                    }
                                    r8
                                    [
                                    \tweak style #'cross
                                    c'8
                                    - \tweak color #(css-color 'darkred)
                                    - \staccato
                                    ]
                                    \tweak style #'cross
                                    c'8
                                    - \tweak color #(css-color 'darkred)
                                    - \accent
                                    - \tweak color #(css-color 'darkred)
                                    - \staccato
                                    [
                                    \tweak style #'cross
                                    c'8
                                    - \tweak color #(css-color 'darkred)
                                    - \staccato
                                    ]
                                    \times 4/6
                                    {
                                        r4
                                        \tweak style #'cross
                                        c'8
                                        - \tweak color #(css-color 'darkred)
                                        - \staccato
                                        [
                                        r8
                                        \tweak style #'cross
                                        c'8
                                        - \tweak color #(css-color 'darkred)
                                        - \accent
                                        - \tweak color #(css-color 'darkred)
                                        - \staccato
                                        r8
                                        ]
                                    }
                                    r8
                                    [
                                    \tweak style #'cross
                                    c'8
                                    - \tweak color #(css-color 'darkred)
                                    - \staccato
                                    \stopTextSpan
                                    ]
                                    r2
                                    \revert Staff.Clef.stencil
                                    \revert Voice.NoteHead.color
                                    \revert Voice.Dots.color
                                    \revert Voice.Stem.color
                                    \revert Voice.Beam.color
                                    \revert Voice.Rest.color
                                    \revert Voice.Tie.color
                                    \revert Voice.TupletBracket.color
                                    \revert Voice.TupletNumber.color
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
                                    r\breve
                                    r1.
                                    r1.
                                    r1.
                                    r1
                                    r1..
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
                                    <<
                                        \context Voice = "cello 2 voice temp"
                                        {
                                            \times 2/3
                                            {
                                                \big-half-harmonic
                                                \clef "bass"
                                                \voiceOne
                                                c4
                                                - \tweak padding 1
                                                ^ \punta-to-talon
                                                ^ \pppp
                                                  %! +SCORE
                                            %%% ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-7 \raise #3 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 2 } #1.5 } \fontsize #4 { "= 69" } } }
                                                - \tweak font-name "Bodoni72 Book" 
                                                - \tweak font-size 2
                                                - \tweak padding #15
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { \upright { "MSP" } \hspace #0.5 }
                                                - \tweak bound-details.right.padding -1.5
                                                \startTextSpan
                                                \big-half-harmonic
                                                dqs4
                                                - \tweak padding 1
                                                ^ \talon-to-punta
                                                \big-half-harmonic
                                                c4
                                                - \tweak padding 1
                                                ^ \punta-to-talon
                                                ~
                                            }
                                            \big-half-harmonic
                                            c2
                                            \times 4/5
                                            {
                                                \big-half-harmonic
                                                a,16
                                                - \tweak padding 1
                                                ^ \talon-to-punta
                                                [
                                                \big-half-harmonic
                                                bqf,16
                                                - \tweak padding 1
                                                ^ \punta-to-talon
                                                \big-half-harmonic
                                                bqs,16
                                                - \tweak padding 1
                                                ^ \talon-to-punta
                                                \big-half-harmonic
                                                cqs16
                                                - \tweak padding 1
                                                ^ \punta-to-talon
                                                \big-half-harmonic
                                                aqs,16
                                                - \tweak padding 1
                                                ^ \talon-to-punta
                                                ]
                                                ~
                                            }
                                            \big-half-harmonic
                                            aqs,4
                                            ~
                                            \big-half-harmonic
                                            aqs,8
                                            [
                                            \times 4/5
                                            {
                                                \big-half-harmonic
                                                cs16
                                                - \tweak padding 1
                                                ^ \punta-to-talon
                                                \big-half-harmonic
                                                c16
                                                - \tweak padding 1
                                                ^ \talon-to-punta
                                                \big-half-harmonic
                                                a,16
                                                - \tweak padding 1
                                                ^ \punta-to-talon
                                                \big-half-harmonic
                                                aqf,16
                                                - \tweak padding 1
                                                ^ \talon-to-punta
                                                \big-half-harmonic
                                                a,16
                                                - \tweak padding 1
                                                ^ \punta-to-talon
                                                ~
                                            }
                                            \big-half-harmonic
                                            a,8
                                            ]
                                            \big-half-harmonic
                                            bf,8
                                            - \tweak padding 1
                                            ^ \talon-to-punta
                                            [
                                            \times 4/5
                                            {
                                                \big-half-harmonic
                                                bqs,16
                                                - \tweak padding 1
                                                ^ \punta-to-talon
                                                \big-half-harmonic
                                                c16
                                                - \tweak padding 1
                                                ^ \talon-to-punta
                                                \big-half-harmonic
                                                dqs16
                                                - \tweak padding 1
                                                ^ \punta-to-talon
                                                \big-half-harmonic
                                                aqf,16
                                                - \tweak padding 1
                                                ^ \talon-to-punta
                                                \big-half-harmonic
                                                bf,16
                                                - \tweak padding 1
                                                ^ \punta-to-talon
                                                ~
                                            }
                                            \big-half-harmonic
                                            bf,8
                                            ]
                                            ~
                                            \big-half-harmonic
                                            bf,4
                                            \times 2/3
                                            {
                                                \big-half-harmonic
                                                aqf,16
                                                - \tweak padding 1
                                                ^ \talon-to-punta
                                                [
                                                \big-half-harmonic
                                                cs16
                                                - \tweak padding 1
                                                ^ \punta-to-talon
                                                \big-half-harmonic
                                                c16
                                                - \tweak padding 1
                                                ^ \talon-to-punta
                                                ~
                                            }
                                            \big-half-harmonic
                                            c8
                                            ]
                                            ~
                                            \big-half-harmonic
                                            c4.
                                            \times 4/5
                                            {
                                                \big-half-harmonic
                                                dqs32
                                                - \tweak padding 1
                                                ^ \punta-to-talon
                                                [
                                                \big-half-harmonic
                                                c32
                                                - \tweak padding 1
                                                ^ \talon-to-punta
                                                \big-half-harmonic
                                                a,32
                                                - \tweak padding 1
                                                ^ \punta-to-talon
                                                \big-half-harmonic
                                                bqf,32
                                                - \tweak padding 1
                                                ^ \talon-to-punta
                                                \big-half-harmonic
                                                bqs,32
                                                - \tweak padding 1
                                                ^ \punta-to-talon
                                                \stopTextSpan
                                                ]
                                            }
                                        }
                                        \context Voice = "cello legno voice"
                                        {
                                            \once \override DynamicLineSpanner.staff-padding = #13
                                            \once \override Rest.staff-position = #-12
                                            \override Voice.NoteHead.color = #(css-color 'darkred)
                                            \override Voice.Dots.color = #(css-color 'darkred)
                                            \override Voice.Stem.color = #(css-color 'darkred)
                                            \override Voice.Beam.color = #(css-color 'darkred)
                                            \override Voice.Rest.color = #(css-color 'darkred)
                                            \override Voice.Tie.color = #(css-color 'darkred)
                                            \override Voice.TupletBracket.color = #(css-color 'darkred)
                                            \override Voice.TupletNumber.color = #(css-color 'darkred)
                                            \textSpannerDown
                                            \voiceTwo
                                            r8
                                            - \tweak color #(css-color 'darkred)
                                            \mf
                                            [
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #12
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLB OB" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -3
                                            \startTextSpan
                                            \override Voice.NoteHead.no-ledgers = ##t
                                            \override Voice.Accidental.stencil = ##f
                                            \tweak style #'cross
                                            b,,8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \stopTextSpan
                                            ]
                                            \textSpannerUp
                                            \textSpannerDown
                                            b,,4
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #12
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLT DP" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -3
                                            \startTextSpan
                                            ~
                                            b,,8
                                            \stopTextSpan
                                            [
                                            \textSpannerUp
                                            \textSpannerDown
                                            \tweak style #'cross
                                            b,,8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #12
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLB OB" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -3
                                            \startTextSpan
                                            \tweak style #'cross
                                            b,,8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            \tweak style #'cross
                                            b,,8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \stopTextSpan
                                            ]
                                            \textSpannerUp
                                            \textSpannerDown
                                            b,,2
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #12
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLT DP" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -3
                                            \startTextSpan
                                            ~
                                            b,,8
                                            \stopTextSpan
                                            [
                                            \textSpannerUp
                                            \textSpannerDown
                                            \tweak style #'cross
                                            b,,8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #12
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLB OB" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -3
                                            \startTextSpan
                                            \tweak style #'cross
                                            b,,8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \stopTextSpan
                                            \textSpannerUp
                                            \textSpannerDown
                                            b,,8
                                            ]
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #12
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLT DP" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -3
                                            \startTextSpan
                                            ~
                                            b,,4.
                                            \stopTextSpan
                                            \textSpannerUp
                                            \textSpannerDown
                                            \tweak style #'cross
                                            b,,8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #12
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLB OB" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -3
                                            \startTextSpan
                                            \tweak style #'cross
                                            b,,8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            [
                                            \once \override Rest.staff-position = #-12
                                            r8
                                            \tweak style #'cross
                                            b,,8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \tweak style #'cross
                                            b,,8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            ]
                                            \tweak style #'cross
                                            b,,8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \stopTextSpan
                                            \textSpannerUp
                                            \textSpannerDown
                                            \afterGrace
                                            b,,4.
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #12
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLT DP" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -3
                                            \startTextSpan
                                            {
                                                \once \override Stem.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override Accidental.stencil = ##f
                                                \once \override NoteHead.transparent = ##t
                                                c'16
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
                                            }
                                            \revert Voice.NoteHead.no-ledgers
                                            \revert Voice.Accidental.stencil
                                        }
                                    >>
                                    \oneVoice
                                    r16
                                    [
                                    \staff-line-count 1
                                    \clef "bass"
                                    d8.
                                    - \tenuto
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #11.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "bridge" } \hspace #0.5 }
                                    \startTextSpanOne
                                    \staff-line-count 5
                                    \clef "bass"
                                    <cqs, bf,>16
                                    - \tweak padding #4.5
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +8 }\line { +0 }} } }
                                    \stopTextSpanOne
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #11.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "MSP" } \hspace #0.5 }
                                    \startTextSpanOne
                                    \staff-line-count 1
                                    \clef "bass"
                                    d8.
                                    ]
                                    d4.
                                    - \tenuto
                                    \stopTextSpanOne
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #11.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "bridge" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding 0.5
                                    \startTextSpanOne
                                    d8
                                    d2
                                    - \tenuto
                                    \stopTextSpanOne
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #11.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { { "" } \hspace #0.5 }
                                    \startTextSpanOne
                                    \staff-line-count 5
                                    \clef "bass"
                                    <cqs, bf,>16
                                    - \tenuto
                                    - \tweak padding #4.5
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +8 }\line { +0 }} } }
                                    \stopTextSpanOne
                                    [
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #11.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { { "MSP" } \hspace #0.5 }
                                    \startTextSpanOne
                                    \staff-line-count 1
                                    \clef "bass"
                                    d8.
                                    \stopTextSpanOne
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #11.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { { \hspace #1 { "bridge" } } \hspace #0.5 }
                                    - \tweak bound-details.right.padding 0.5
                                    \startTextSpanOne
                                    d8
                                    \stopTextSpanOne
                                    ]
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #11.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { { "" } \hspace #0.5 }
                                    \startTextSpanOne
                                    ~
                                    d16
                                    [
                                    \staff-line-count 5
                                    \clef "bass"
                                    <cqs, bf,>16
                                    - \tenuto
                                    - \tweak padding #4.5
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +8 }\line { +0 }} } }
                                    \stopTextSpanOne
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #11.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { { "MSP" } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup { \hspace #1.5 { "bridge" } }
                                    \startTextSpanOne
                                    \staff-line-count 1
                                    \clef "bass"
                                    d8
                                    \stopTextSpanOne
                                    r16
                                    \staff-line-count 5
                                    \clef "bass"
                                    <cqs, bf,>16
                                    - \tweak padding #4.5
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +8 }\line { +0 }} } }
                                    ]
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #11.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { { "MSP" } \hspace #0.5 }
                                    \startTextSpanOne
                                    \staff-line-count 1
                                    \clef "bass"
                                    d8.
                                    - \tenuto
                                    \stopTextSpanOne
                                    [
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #11.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { { \hspace #1.5 { "bridge" } } \hspace #0.5 }
                                    \startTextSpanOne
                                    \staff-line-count 5
                                    \clef "bass"
                                    <cqs, bf,>16
                                    - \tweak padding #4.5
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +8 }\line { +0 }} } }
                                    \stopTextSpanOne
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #11.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { { "MSP" } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup { \hspace #2 { "bridge" } }
                                    \startTextSpanOne
                                    \staff-line-count 1
                                    \clef "bass"
                                    d8
                                    \stopTextSpanOne
                                    ]
                                    ~
                                    d4.
                                    r1
                                    r1..
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
