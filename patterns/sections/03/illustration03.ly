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
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (11 38 30 32)))
            \time 5/4
            s1 * 5/4
              %! +SCORE
            \noBreak
            \time 6/4
            s1 * 3/2
              %! +SCORE
            \break
              %! +SCORE
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (11 35 34 20)))
            \time 9/8
            s1 * 9/8
              %! +SCORE
            \noBreak
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
                                    r2.
                                    r2
                                    r1.
                                    r4.
                                    r4.
                                    r4.
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
                                            r2.
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 8/7
                                            {
                                                \once \override Rest.staff-position = #-7
                                                r16
                                                - \markup \fontsize #2 { \hspace #-10.5 { "Fng. Perc.:" } }
                                                - \tweak Beam.positions #'(-7.5 . -7.5)
                                                [
                                                <
                                                    \tweak style #'harmonic
                                                    b'
                                                    \tweak style #'cross
                                                    e''
                                                >16
                                                <
                                                    \tweak style #'harmonic
                                                    b'
                                                    \tweak style #'cross
                                                    e''
                                                >16
                                                \once \override Rest.staff-position = #-7
                                                r16
                                                <
                                                    \tweak style #'cross
                                                    a
                                                    \tweak style #'harmonic
                                                    b
                                                >16
                                                - \accent
                                                \once \override Rest.staff-position = #-7
                                                r8
                                                ]
                                            }
                                            \times 4/6
                                            {
                                                \once \override Rest.staff-position = #-7
                                                r8
                                                - \tweak Beam.positions #'(-6.5 . -6.5)
                                                [
                                                - \tweak padding #12.5
                                                - \abjad-solid-line-with-arrow
                                                - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " rit. ( to " } \fontsize #-0.5 { \note { 8 } #1.5 } \fontsize #3 { "= 60 )" } } } \hspace #0.5 }
                                                - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #1.5 } \fontsize #4 { "= 60" } } }
                                                \startTextSpanThree
                                                <
                                                    \tweak style #'cross
                                                    a
                                                    \tweak style #'harmonic
                                                    b
                                                >8
                                                <
                                                    \tweak style #'cross
                                                    a
                                                    \tweak style #'harmonic
                                                    c'
                                                >8
                                                <
                                                    \tweak style #'cross
                                                    a
                                                    \tweak style #'harmonic
                                                    d'
                                                >8
                                                - \accent
                                                \once \override Rest.staff-position = #-7
                                                r8
                                                <
                                                    \tweak style #'harmonic
                                                    c''
                                                    \tweak style #'cross
                                                    f''
                                                >8
                                                ]
                                            }
                                            <
                                                \tweak style #'harmonic
                                                b'
                                                \tweak style #'cross
                                                e''
                                            >16
                                            - \tweak Beam.positions #'(-7.5 . -7.5)
                                            [
                                            <
                                                \tweak style #'harmonic
                                                b'
                                                \tweak style #'cross
                                                e''
                                            >16
                                            \once \override Rest.staff-position = #-7
                                            r16
                                            <
                                                \tweak style #'cross
                                                a
                                                \tweak style #'harmonic
                                                b
                                            >16
                                            - \accent
                                            ]
                                            \once \override Rest.staff-position = #-7
                                            r2.
                                            \once \override Rest.staff-position = #-7
                                            r16
                                            \stopTextSpanThree
                                            - \tweak Beam.positions #'(-7.5 . -7.5)
                                            [
                                            <
                                                \tweak style #'cross
                                                a
                                                \tweak style #'harmonic
                                                b
                                            >16
                                            <
                                                \tweak style #'cross
                                                a
                                                \tweak style #'harmonic
                                                c'
                                            >16
                                            <
                                                \tweak style #'cross
                                                a
                                                \tweak style #'harmonic
                                                d'
                                            >16
                                            - \accent
                                            \once \override Rest.staff-position = #-7
                                            r16
                                            <
                                                \tweak style #'harmonic
                                                c''
                                                \tweak style #'cross
                                                f''
                                            >16
                                            ]
                                            <
                                                \tweak style #'harmonic
                                                b'
                                                \tweak style #'cross
                                                e''
                                            >32.
                                            - \tweak Beam.positions #'(-12.5 . -12.5)
                                            [
                                            <
                                                \tweak style #'harmonic
                                                b'
                                                \tweak style #'cross
                                                e''
                                            >32.
                                            \once \override Rest.staff-position = #-9
                                            \set stemLeftBeamCount = 3
                                            \set stemRightBeamCount = 1
                                            r32
                                            \once \override Rest.staff-position = #-9
                                            \set stemLeftBeamCount = 1
                                            \set stemRightBeamCount = 4
                                            r64
                                            <
                                                \tweak style #'cross
                                                a
                                                \tweak style #'harmonic
                                                b
                                            >32.
                                            - \accent
                                            \once \override Rest.staff-position = #-7
                                            r16
                                            \once \override Rest.staff-position = #-7
                                            r8
                                            ]
                                            \once \override Rest.staff-position = #-7
                                            r4.
                                        }
                                        \context Voice = "violin 1 bow voice"
                                        {
                                            \once \override Rest.staff-position = #10
                                            \override Voice.NoteHead.color = #(css-color 'darkred)
                                            \override Voice.Dots.color = #(css-color 'darkred)
                                            \override Voice.Stem.color = #(css-color 'darkred)
                                            \override Voice.Beam.color = #(css-color 'darkred)
                                            \override Voice.Rest.color = #(css-color 'darkred)
                                            \override Voice.Tie.color = #(css-color 'darkred)
                                            \override Voice.TupletBracket.color = #(css-color 'darkred)
                                            \override Voice.TupletNumber.color = #(css-color 'darkred)
                                            \voiceOne
                                            r2.
                                            \once \override Rest.staff-position = #10
                                            r16
                                            - \tweak color #(css-color 'darkred)
                                            - \markup \fontsize #2 { \hspace #-4.5 \raise #2 { "Bow:" } }
                                            - \tweak Beam.positions #'(8 . 8)
                                            [
                                            \once \override Dots.staff-position = #2
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                f'
                                            >8.
                                            ]
                                              %! abjad.glissando(7)
                                            - \tweak color #(css-color 'darkred)
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #10
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "IV" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -2
                                            \startTextSpanOne
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
                                                f'
                                            >8.
                                            - \tweak Beam.positions #'(8 . 8)
                                            [
                                            {
                                                \once \override Accidental.stencil = ##f
                                                \once \override Dots.staff-position = #2
                                                \once \override NoteHead.X-offset = 0
                                                \once \override Staff.Accidental.stencil = ##f
                                                \once \override Voice.Glissando.thickness = #8.25
                                                \once \override NoteHead.duration-log = 2
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
                                                <
                                                    \tweak style #'la
                                                    f'
                                                >16
                                                \stopTextSpanOne
                                            }
                                            \once \override Rest.staff-position = #10
                                            r16
                                            ]
                                            \once \override Rest.staff-position = #10
                                            r16
                                            - \tweak Beam.positions #'(8 . 8)
                                            [
                                            \once \override Dots.staff-position = #2
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                f'
                                            >8.
                                            ]
                                              %! abjad.glissando(7)
                                            - \tweak color #(css-color 'darkred)
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #10
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "III" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpanOne
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
                                                f'
                                            >8
                                            - \tweak Beam.positions #'(8 . 8)
                                            [
                                            {
                                                \once \override Accidental.stencil = ##f
                                                \once \override Dots.staff-position = #2
                                                \once \override NoteHead.X-offset = 0
                                                \once \override Staff.Accidental.stencil = ##f
                                                \once \override Voice.Glissando.thickness = #8.25
                                                \once \override NoteHead.duration-log = 2
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
                                                <
                                                    \tweak style #'la
                                                    f'
                                                >16
                                            }
                                            \once \override Rest.staff-position = #10
                                            r8
                                            ]
                                            \once \override Rest.staff-position = #10
                                            r4
                                            \once \override Rest.staff-position = #10
                                            r2.
                                            \stopTextSpanOne
                                            \once \override Rest.staff-position = #10
                                            r16
                                            - \tweak Beam.positions #'(8 . 8)
                                            [
                                            \once \override Dots.staff-position = #2
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                f'
                                            >16
                                            ]
                                              %! abjad.glissando(7)
                                            - \tweak color #(css-color 'darkred)
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #10
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "II" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -10
                                            \startTextSpanOne
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
                                                f'
                                            >4
                                            {
                                                \once \override Accidental.stencil = ##f
                                                \once \override Dots.staff-position = #2
                                                \once \override NoteHead.X-offset = 0
                                                \once \override Staff.Accidental.stencil = ##f
                                                \once \override Voice.Glissando.thickness = #8.25
                                                \once \override NoteHead.duration-log = 2
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
                                                <
                                                    \tweak style #'la
                                                    f'
                                                >16
                                            }
                                            \once \override Rest.staff-position = #10
                                            r2.
                                            \stopTextSpanOne
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
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                    \staff-line-count 5
                                    \revert Staff.StaffSymbol.line-positions
                                    \revert Staff.Accidental.stencil
                                    \revert Staff.NoteHead.no-ledgers
                                    \revert Staff.Clef.stencil
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r4
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    \override Staff.BarLine.bar-extent = #'(-2 . 2)
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
                                    r2.
                                    r2
                                    r1.
                                    r4.
                                    r4.
                                    r4.
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
                                    <<
                                        \context Voice = "violin 4 voice temp 1"
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
                                            <
                                                \tweak style #'cross
                                                b'
                                                \tweak style #'harmonic
                                                d''
                                            >16
                                            - \accent
                                            - \markup \fontsize #2 { \hspace #-11 { "Fng. Perc.:" } }
                                            [
                                            \once \override Rest.staff-position = #-7
                                            r8
                                            <
                                                \tweak style #'cross
                                                c'
                                                d'
                                            >16
                                            - \accent
                                            ]
                                            \once \override Rest.staff-position = #-7
                                            r4..
                                            <
                                                \tweak style #'cross
                                                d'
                                                \tweak style #'harmonic
                                                g'
                                            >16
                                            - \accent
                                        }
                                        \context Voice = "violin 2 bow voice 1"
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
                                            r4
                                            \once \override Rest.staff-position = #7
                                            r8.
                                            - \tweak color #(css-color 'darkred)
                                            - \markup \fontsize #2 { \hspace #-4.5 \raise #2 { "Bow:" } }
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
                                            - \accent
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            ]
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #11
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "III" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -1
                                            \startTextSpanOne
                                            \once \override Rest.staff-position = #7
                                            r8
                                            - \tweak Beam.positions #'(7 . 7)
                                            [
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                b'
                                            >16
                                            - \tweak color #(css-color 'darkred)
                                            - \accent
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            \once \override Rest.staff-position = #7
                                            r16
                                            ]
                                            \once \override Rest.staff-position = #7
                                            r4
                                            \once \override Rest.staff-position = #7
                                            r8
                                            - \tweak Beam.positions #'(7 . 7)
                                            [
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                a
                                            >16
                                            - \tweak color #(css-color 'darkred)
                                            - \accent
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            \once \override Rest.staff-position = #7
                                            r16
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
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/5
                                    {
                                        \staff-line-count 5
                                        \revert Staff.StaffSymbol.line-positions
                                        \revert Staff.Accidental.stencil
                                        \revert Staff.NoteHead.no-ledgers
                                        \revert Staff.Clef.stencil
                                        r8
                                        [
                                        - \tweak padding #16.5
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " rit. ( to " } \fontsize #-0.5 { \note { 8 } #1.5 } \fontsize #3 { "= 60 )" } } } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup { "" }
                                        - \tweak bound-details.right.padding -15
                                        \startTextSpanThree
                                        \override Staff.BarLine.bar-extent = #'(-2 . 2)
                                        r8
                                        r8
                                        \times 2/3
                                        {
                                            r16
                                            \override Dots.staff-position = #2
                                            \big-half-harmonic
                                            \once \override Staff.Clef.X-extent = #'(-1 . 2)
                                            \clef "treble"
                                            cs'16
                                            - \accent
                                            (
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 1
                                            - \tweak padding #15
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \upright { "1/4 Spz." } \hspace #0.5 }
                                            - \tweak bound-details.right.text \markup \upright { "Spz." }
                                            \startTextSpanTwo
                                            - \tweak padding #12.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \normale-bow-rotation \hspace #0.5 }
                                            \startTextSpanOne
                                            \big-half-harmonic
                                            d'16
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                        }
                                        \tweak style #'harmonic
                                        c'8
                                        ]
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                    }
                                    \times 2/3
                                    {
                                        \tweak style #'harmonic
                                        df'8
                                        [
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \revert Dots.staff-position
                                        \tweak style #'harmonic
                                        b8
                                        )
                                        \override Dots.staff-position = #2
                                        c'8
                                        - \tenuto
                                        \stopTextSpanOne
                                        (
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak padding #12.5
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \bow-tip-half-down \hspace #0.5 }
                                        - \tweak bound-details.right.text \normale-bow-rotation
                                        \startTextSpanOne
                                    }
                                    \times 2/3
                                    {
                                        a8
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        bf8
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        gqs8
                                        )
                                        ]
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                    }
                                    \revert Dots.staff-position
                                    af4
                                    - \tenuto
                                    \stopTextSpanOne
                                    \stopTextSpanThree
                                    \stopTextSpanTwo
                                    <<
                                        \context Voice = "violin 4 voice temp 2"
                                        {
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 9/10
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
                                                - \markup \fontsize #2 { \hspace #-9.5 { "F. Perc.:" } }
                                                  %! +SCORE
                                                ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #8.5 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #1.5 } \fontsize #4 { "= 60" } } }
                                                <
                                                    \tweak style #'cross
                                                    b'
                                                    \tweak style #'harmonic
                                                    d''
                                                >16
                                                - \accent
                                                [
                                                \once \override Rest.staff-position = #-7
                                                r8
                                                <
                                                    \tweak style #'cross
                                                    c'
                                                    d'
                                                >16
                                                - \accent
                                                ]
                                                \once \override Rest.staff-position = #-7
                                                r4..
                                                <
                                                    \tweak style #'cross
                                                    d'
                                                    \tweak style #'harmonic
                                                    g'
                                                >16
                                                - \accent
                                            }
                                        }
                                        \context Voice = "violin 2 bow voice 2"
                                        {
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 9/10
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
                                                r4
                                                - \tweak color #(css-color 'darkred)
                                                - \markup \fontsize #2 { \hspace #-5.5 \raise #2 { "Bow:" } }
                                                \once \override Rest.staff-position = #7
                                                r8.
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
                                                - \accent
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                ]
                                                - \tweak font-name "Bodoni72 Book" 
                                                - \tweak font-size 2
                                                - \tweak padding #13
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { \upright { "IV" } \hspace #0.5 }
                                                - \tweak bound-details.right.padding -1
                                                \startTextSpanOne
                                                \once \override Rest.staff-position = #7
                                                r8
                                                - \tweak Beam.positions #'(7 . 7)
                                                [
                                                \once \override NoteHead.X-offset = 0
                                                \once \override Staff.Accidental.stencil = ##f
                                                \once \override Voice.Glissando.thickness = #8.25
                                                \once \override NoteHead.duration-log = 2
                                                <
                                                    \tweak style #'la
                                                    b'
                                                >16
                                                - \tweak color #(css-color 'darkred)
                                                - \accent
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = #7
                                                r16
                                                ]
                                                \once \override Rest.staff-position = #7
                                                r4
                                                \once \override Rest.staff-position = #7
                                                r8
                                                - \tweak Beam.positions #'(7 . 7)
                                                [
                                                \once \override NoteHead.X-offset = 0
                                                \once \override Staff.Accidental.stencil = ##f
                                                \once \override Voice.Glissando.thickness = #8.25
                                                \once \override NoteHead.duration-log = 2
                                                <
                                                    \tweak style #'la
                                                    a
                                                >16
                                                - \tweak color #(css-color 'darkred)
                                                - \accent
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = #7
                                                r16
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
                                        }
                                    >>
                                    \oneVoice
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                    \staff-line-count 5
                                    \revert Staff.StaffSymbol.line-positions
                                    \revert Staff.Accidental.stencil
                                    \revert Staff.NoteHead.no-ledgers
                                    \revert Staff.Clef.stencil
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r4
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    \override Staff.BarLine.bar-extent = #'(-2 . 2)
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
                                    r2.
                                    r2
                                    r1.
                                    r4.
                                    r4.
                                    r4.
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
                                    \override Dots.staff-position = #2
                                    \big-half-harmonic
                                    \clef "alto"
                                    f2
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #9.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "Spz." } \hspace #0.5 }
                                    \startTextSpanTwo
                                    - \tweak padding #7
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \normale-bow-rotation \hspace #0.5 }
                                    - \tweak bound-details.right.padding 0.5
                                    \startTextSpanOne
                                    _ (
                                    ~
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f8
                                    [
                                    \big-half-harmonic
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    \revert Staff.Stem.stemlet-length
                                    cqs8
                                    \stopTextSpanOne
                                    ]
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    - \tweak padding #7
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { { "" } \hspace #0.5 }
                                    \startTextSpanOne
                                    ~
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    cqs2
                                    ^ \markup {
                                                        \hspace #-2 {
                                                            ( \note {2} #2 )
                                                        }
                                                    }
                                    )
                                    \big-half-harmonic
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    a2.
                                    \stopTextSpanOne
                                    \stopTextSpanTwo
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #9.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "1/8 Spz." } \hspace #0.5 }
                                    \startTextSpanTwo
                                    - \tweak padding #12.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " rit. ( to " } \fontsize #-0.5 { \note { 8 } #1.5 } \fontsize #3 { "= 60 )" } } } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #1.5 } \fontsize #4 { "= 60" } } }
                                    \startTextSpanThree
                                    - \tweak padding #7
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \bow-tip-half-down \hspace #0.5 }
                                    - \tweak bound-details.right.padding 0.5
                                    \startTextSpanOne
                                    \override Dots.staff-position = #2
                                    \revert Dots.staff-position
                                    d'2.
                                    \stopTextSpanOne
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    - \tweak padding #7
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { { "" } \hspace #0.5 }
                                    \startTextSpanOne
                                    g4.
                                    \stopTextSpanOne
                                    \stopTextSpanThree
                                    \stopTextSpanTwo
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #9.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "Spz." } \hspace #0.5 }
                                    - \tweak bound-details.right.padding 0.5
                                    \startTextSpanTwo
                                    - \tweak padding #7
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \bow-tip-up \hspace #0.5 }
                                    - \tweak bound-details.right.padding 0.5
                                    \startTextSpanOne
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    g8
                                    [
                                    ~
                                    \revert Dots.staff-position
                                    g16
                                    \override Dots.staff-position = #2
                                    \tweak style #'harmonic
                                    e16
                                    \stopTextSpanOne
                                    \stopTextSpanTwo
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #9.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "1/4 Spz." } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \upright { "1/2 Spz." }
                                    \startTextSpanTwo
                                    - \tweak padding #7
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { { "" } \hspace #0.5 }
                                    - \tweak bound-details.right.text \bow-tip-half-up
                                    \startTextSpanOne
                                    ~
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    \revert Staff.Stem.stemlet-length
                                    e8
                                    ]
                                    ~
                                    \afterGrace
                                    e4.
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
                                        dqf16
                                        \stopTextSpanOne
                                        \stopTextSpanTwo
                                    }
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
                                    r2.
                                    r2
                                    r1.
                                    r4.
                                    r4.
                                    r4.
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
                                    r2
                                    \big-half-harmonic
                                    \clef "bass"
                                    <c! fs!>16
                                    - \tweak padding #1
                                    ^ \talon-to-punta
                                    ^ \accent
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +33 }\line { -34 }} } }
                                    [
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #15
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { { \column { \line { "diagonal bow," } \line { "touching bridge" } } } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -4
                                    \startTextSpanOne
                                    r8.
                                    ]
                                    \override Dots.staff-position = #2
                                    \afterGrace
                                    <c! fs!>4..
                                    - \tweak padding #1
                                    ^ \talon-to-punta
                                    ^ \accent
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +33 }\line { -34 }} } }
                                    (
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    {
                                        \grace-half-harmonic
                                        \revert Dots.staff-position
                                        \once \override Flag.stroke-style = #"grace"
                                        <c! fs!>16
                                        )
                                    }
                                    r16
                                    \override Dots.staff-position = #2
                                    \afterGrace
                                    <c! fs!>4.
                                    - \tweak padding #1
                                    ^ \talon-to-punta
                                    ^ \accent
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +33 }\line { -34 }} } }
                                    (
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    - \tweak padding #12.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " rit. ( to " } \fontsize #-0.5 { \note { 8 } #1.5 } \fontsize #3 { "= 60 )" } } } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup { "" }
                                    - \tweak bound-details.right.padding -38
                                    \startTextSpanThree
                                    {
                                        \grace-half-harmonic
                                        \revert Dots.staff-position
                                        \once \override Flag.stroke-style = #"grace"
                                        <c! fs!>16
                                        )
                                    }
                                    r8
                                    <c! fs!>16
                                    - \tweak padding #1
                                    ^ \talon-to-punta
                                    ^ \accent
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +33 }\line { -34 }} } }
                                    [
                                    r16
                                    \big-half-harmonic
                                    <c! fs!>8
                                    - \tweak padding #1
                                    ^ \talon-to-punta
                                    ^ \accent
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +33 }\line { -34 }} } }
                                    \stopTextSpanOne
                                    ]
                                    r2.
                                    \stopTextSpanThree
                                    r4.
                                      %! +SCORE
                                    ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #2 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #1.5 } \fontsize #4 { "= 60" } } }
                                    r4.
                                    r4.
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
