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
            \time 9/8
            s1 * 9/8
              %! +SCORE
            \break
            \time 4/4
            s1 * 1
              %! +SCORE
            \noBreak
            \time 2/4
            s1 * 1/2
              %! +SCORE
            \break
            \time 6/8
            s1 * 3/4
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
            \once \override Score.TimeSignature.stencil = ##f
            \time 5/4
            s1 * 5/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 5/4
            s1 * 5/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 5/4
            s1 * 5/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 5/4
            s1 * 5/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 5/4
            s1 * 5/4
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
                                    r4.
                                    \once \override Staff.BarLine.transparent = ##f
                                    \startStaff
                                    r4.
                                    r4.
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
                                    r2
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
                                    r2
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
                                    r2
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
                                            ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #9.5 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 99" } } }
                                            \once \override Rest.staff-position = #-7
                                            r2.
                                            \once \override Rest.staff-position = #-7
                                            r4.
                                            \once \override Rest.staff-position = #-7
                                            r1
                                            \once \override Rest.staff-position = #-7
                                            r2
                                            \once \override Rest.staff-position = #-7
                                            r2.
                                            - \tweak padding #10
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " rit. ( to " } \fontsize #-0.5 { \note { 4 } #1.5 } \fontsize #3 { "= 83 )" } } } \hspace #0.5 }
                                            - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 83" } } }
                                            \startTextSpanThree
                                            \once \override Rest.staff-position = #-7
                                            r2.
                                            \once \override Rest.staff-position = #-7
                                            r2.
                                            \stopTextSpanThree
                                            \once \override Rest.staff-position = #-7
                                            r2
                                            \once \override Rest.staff-position = #-7
                                            r2.
                                            \once \override Rest.staff-position = #-7
                                            r2
                                            \once \override Rest.staff-position = #-7
                                            r2.
                                            \once \override Rest.staff-position = #-7
                                            r2
                                            \once \override Rest.staff-position = #-7
                                            r2.
                                            \once \override Rest.staff-position = #-7
                                            r2
                                            \once \override Rest.staff-position = #-7
                                            r2.
                                            \once \override Rest.staff-position = #-7
                                            r2
                                            \once \override Rest.staff-position = #-7
                                            r2.
                                            \once \override Rest.staff-position = #-7
                                            r2
                                        }
                                        \context Voice = "violin 1 bow voice"
                                        {
                                            \override Dots.staff-position = #2
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            \once \override Voice.Tie.stencil = ##f
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
                                            >2
                                            - \tweak color #(css-color 'darkred)
                                            - \punta-to-talon
                                            - \tweak color #(css-color 'darkred)
                                            - \markup \fontsize #2 { \hspace #-5.5 { "Bow:" } }
                                            - \tweak color #(css-color 'darkred)
                                            (
                                              %! abjad.glissando(7)
                                            - \tweak color #(css-color 'darkred)
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #12.5
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "III + IV" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -3
                                            \startTextSpanOne
                                            ~
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            \once \override Voice.Tie.stencil = ##f
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
                                                a''
                                            >2.
                                            ~
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            \once \override Voice.Tie.stencil = ##f
                                            <
                                                \tweak style #'la
                                                a''
                                            >4.
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            \once \override Voice.Tie.stencil = ##f
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
                                                e''
                                            >1
                                              %! abjad.glissando(7)
                                            - \tweak color #(css-color 'darkred)
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            ~
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            \once \override Voice.Tie.stencil = ##f
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
                                                e''
                                            >2
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            \once \override Voice.Tie.stencil = ##f
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
                                                g''
                                            >2.
                                              %! abjad.glissando(7)
                                            - \tweak color #(css-color 'darkred)
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            ~
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            \once \override Voice.Tie.stencil = ##f
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
                                                g''
                                            >2.
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            \once \override Voice.Tie.stencil = ##f
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
                                                c''
                                            >2.
                                              %! abjad.glissando(7)
                                            - \tweak color #(css-color 'darkred)
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            ~
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            \once \override Voice.Tie.stencil = ##f
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
                                                c''
                                            >2
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            \once \override Voice.Tie.stencil = ##f
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
                                                e''
                                            >2.
                                              %! abjad.glissando(7)
                                            - \tweak color #(css-color 'darkred)
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            ~
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            \once \override Voice.Tie.stencil = ##f
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
                                                e''
                                            >2
                                            ~
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            \once \override Voice.Tie.stencil = ##f
                                            <
                                                \tweak style #'la
                                                e''
                                            >2.
                                            ~
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            \once \override Voice.Tie.stencil = ##f
                                            <
                                                \tweak style #'la
                                                e''
                                            >2
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            \once \override Voice.Tie.stencil = ##f
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
                                                a'
                                            >2.
                                              %! abjad.glissando(7)
                                            - \tweak color #(css-color 'darkred)
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            ~
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            \once \override Voice.Tie.stencil = ##f
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
                                                a'
                                            >2
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            \once \override Voice.Tie.stencil = ##f
                                            \revert Dots.staff-position
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
                                                e'
                                            >16
                                            - \tweak color #(css-color 'darkred)
                                            - \accent
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            )
                                            - \tweak Beam.positions #'(7 . 7)
                                            [
                                            \once \override Rest.staff-position = #7
                                            r16
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            \once \override Voice.Tie.stencil = ##f
                                            <
                                                \tweak style #'la
                                                c'
                                            >16
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            \once \override Rest.staff-position = #7
                                            r16
                                            ]
                                            \once \override Rest.staff-position = #7
                                            r16
                                            - \tweak Beam.positions #'(7 . 7)
                                            [
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            \once \override Voice.Tie.stencil = ##f
                                            <
                                                \tweak style #'la
                                                a
                                            >16
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            \once \override Rest.staff-position = #7
                                            r8
                                            ]
                                            \once \override Rest.staff-position = #7
                                            r8
                                            - \tweak Beam.positions #'(7 . 7)
                                            [
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            \once \override Voice.Tie.stencil = ##f
                                            <
                                                \tweak style #'la
                                                a
                                            >16
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            \once \override Rest.staff-position = #7
                                            r16
                                            ]
                                            \once \override Rest.staff-position = #7
                                            r4
                                            \once \override Rest.staff-position = #7
                                            r16
                                            - \tweak Beam.positions #'(7 . 7)
                                            [
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            \once \override Voice.Tie.stencil = ##f
                                            <
                                                \tweak style #'la
                                                a
                                            >16
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            \once \override Rest.staff-position = #7
                                            r8
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
                                            \once \override Voice.Tie.stencil = ##f
                                            <
                                                \tweak style #'la
                                                a
                                            >16
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            \once \override Rest.staff-position = #7
                                            r16
                                            ]
                                            \once \override Rest.staff-position = #7
                                            r4
                                            \once \override Rest.staff-position = #7
                                            r4
                                            \once \override Rest.staff-position = #7
                                            r16
                                            - \tweak Beam.positions #'(7 . 7)
                                            [
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            \once \override Voice.Tie.stencil = ##f
                                            <
                                                \tweak style #'la
                                                a
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
                                    r4.
                                    \once \override Staff.BarLine.transparent = ##f
                                    \startStaff
                                    r4.
                                    r4.
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
                                    r2
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
                                    r2
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
                                    r2
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
                                    <<
                                        \context Voice = "violin 4 voice temp"
                                        {
                                            \staff-line-count 5
                                            \override DynamicLineSpanner.staff-padding = #14.25
                                            \clef "treble"
                                            \voiceOne
                                            <
                                                \tweak style #'harmonic-mixed
                                                gqf''!
                                                \tweak style #'harmonic-mixed
                                                bqf''!
                                            >4
                                            - \tweak padding 1
                                            ^ \talon-to-punta
                                            \arpeggio
                                            \ppp
                                              %! +SCORE
                                            ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-9 \raise #3 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 99" } } }
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 1
                                            - \tweak padding #13.5
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { MSP \hspace #0.5 }
                                            - \tweak bound-details.right.padding -1.5
                                            \startTextSpanOne
                                            ~
                                            <
                                                \tweak style #'harmonic
                                                gqf''
                                                \tweak style #'harmonic
                                                bqf''
                                            >16.
                                            [
                                            <
                                                \tweak style #'harmonic
                                                a''!
                                                \tweak style #'harmonic
                                                bf''!
                                            >32
                                            - \tweak padding 1
                                            ^ \punta-to-talon
                                            \arpeggio
                                            \<
                                            ~
                                            <
                                                \tweak style #'harmonic
                                                a''
                                                \tweak style #'harmonic
                                                bf''
                                            >8
                                            \stopTextSpanOne
                                            ]
                                            \big-half-harmonic
                                            <cqf'! gqf'! dqf''! aqf''!>4.
                                                _ #(make-dynamic-script (markup #:whiteout #:italic "ffffff"))
                                            ^ \half-clb
                                            ^ \marcato
                                            - \tweak font-name "Bodoni72 Book Italic" 
                                            _ \markup { \hspace #-6.75 { \center-column { \line { "extremely strong battuto," } \line { "striking so hard as to hit all strings at once" } } } }
                                            <
                                                \tweak style #'harmonic-mixed
                                                a''!
                                                \tweak style #'harmonic-mixed
                                                bf''!
                                            >4
                                            - \tweak padding 1
                                            ^ \punta-to-talon
                                            \arpeggio
                                            \ppp
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 1
                                            - \tweak padding #13.5
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { MSP \hspace #0.5 }
                                            - \tweak bound-details.right.padding -1.5
                                            \startTextSpanOne
                                            ~
                                            <
                                                \tweak style #'harmonic
                                                a''
                                                \tweak style #'harmonic
                                                bf''
                                            >16
                                            ~
                                            \times 2/3
                                            {
                                                <
                                                    \tweak style #'harmonic
                                                    a''
                                                    \tweak style #'harmonic
                                                    bf''
                                                >16
                                                [
                                                <
                                                    \tweak style #'harmonic
                                                    bf'!
                                                    \tweak style #'harmonic
                                                    ef''!
                                                >8
                                                - \tweak padding 1
                                                ^ \talon-to-punta
                                                \arpeggio
                                                ]
                                                ~
                                            }
                                            <
                                                \tweak style #'harmonic
                                                bf'
                                                \tweak style #'harmonic
                                                ef''
                                            >16
                                            ~
                                            <
                                                \tweak style #'harmonic-mixed
                                                bf'
                                                \tweak style #'harmonic-mixed
                                                ef''
                                            >4
                                            \stopTextSpanOne
                                            \big-half-harmonic
                                            <cqf'! gqf'! dqf''! aqf''!>4..
                                                _ #(make-dynamic-script (markup #:whiteout #:italic "ffffff"))
                                            ^ \half-clb
                                            ^ \marcato
                                            \times 2/3
                                            {
                                                <
                                                    \tweak style #'harmonic
                                                    bf'!
                                                    \tweak style #'harmonic
                                                    ef''!
                                                >16
                                                - \tweak padding 1
                                                ^ \talon-to-punta
                                                \arpeggio
                                                \ppp
                                                [
                                                - \tweak font-name "Bodoni72 Book" 
                                                - \tweak font-size 1
                                                - \tweak padding #14.5
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { MSP \hspace #0.5 }
                                                - \tweak bound-details.right.padding -1.5
                                                \startTextSpanOne
                                                <
                                                    \tweak style #'harmonic
                                                    bqf'!
                                                    \tweak style #'harmonic
                                                    ef''!
                                                >8
                                                - \tweak padding 1
                                                ^ \punta-to-talon
                                                \arpeggio
                                                ]
                                                ~
                                            }
                                            <
                                                \tweak style #'harmonic
                                                bqf'
                                                \tweak style #'harmonic
                                                ef''
                                            >4..
                                            \stopTextSpanOne
                                            \big-half-harmonic
                                            <cqf'! gqf'! dqf''! aqf''!>8
                                                _ #(make-dynamic-script (markup #:whiteout #:italic "ffffff"))
                                            ^ \half-clb
                                            ^ \marcato
                                            [
                                            ~
                                            \big-half-harmonic
                                            <cqf' gqf' dqf'' aqf''>32
                                            ]
                                            ~
                                            \times 2/3
                                            {
                                                \big-half-harmonic
                                                <cqf' gqf' dqf'' aqf''>8
                                                <
                                                    \tweak style #'harmonic-mixed
                                                    a''!
                                                    \tweak style #'harmonic-mixed
                                                    bf''!
                                                >4
                                                - \tweak padding 1
                                                ^ \punta-to-talon
                                                \arpeggio
                                                \ppp
                                                - \tweak font-name "Bodoni72 Book" 
                                                - \tweak font-size 1
                                                - \tweak padding #16
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { MSP \hspace #0.5 }
                                                - \tweak bound-details.right.padding -1.5
                                                \startTextSpanOne
                                                ~
                                            }
                                            <
                                                \tweak style #'harmonic
                                                a''
                                                \tweak style #'harmonic
                                                bf''
                                            >16.
                                            \stopTextSpanOne
                                            \big-half-harmonic
                                            <cqf'! gqf'! dqf''! aqf''!>4.
                                                _ #(make-dynamic-script (markup #:whiteout #:italic "ffffff"))
                                            ^ \half-clb
                                            ^ \marcato
                                            - \tweak padding #13
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " rit. ( to " } \fontsize #-0.5 { \note { 4 } #1.5 } \fontsize #3 { "= 83 )" } } } \hspace #0.5 }
                                            - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 83" } } }
                                            - \tweak bound-details.right.padding -15.5
                                            \startTextSpanThree
                                            <
                                                \tweak style #'harmonic
                                                a''!
                                                \tweak style #'harmonic
                                                bf''!
                                            >16
                                            - \tweak padding 1
                                            ^ \punta-to-talon
                                            \arpeggio
                                            \ppp
                                            [
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 1
                                            - \tweak padding #14.5
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { MSP \hspace #0.5 }
                                            - \tweak bound-details.right.padding -1.5
                                            \startTextSpanOne
                                            <
                                                \tweak style #'harmonic
                                                fqs''!
                                                \tweak style #'harmonic
                                                bf''!
                                            >16
                                            - \tweak padding 1
                                            ^ \talon-to-punta
                                            \arpeggio
                                            ]
                                            ~
                                            <
                                                \tweak style #'harmonic-mixed
                                                fqs''
                                                \tweak style #'harmonic-mixed
                                                bf''
                                            >4
                                            \stopTextSpanOne
                                            \times 2/3
                                            {
                                                \big-half-harmonic
                                                <cqf'! gqf'! dqf''! aqf''!>8
                                                    _ #(make-dynamic-script (markup #:whiteout #:italic "ffffff"))
                                                ^ \half-clb
                                                ^ \marcato
                                                <
                                                    \tweak style #'harmonic-mixed
                                                    bqs'!
                                                    \tweak style #'harmonic-mixed
                                                    cqs''!
                                                >4
                                                - \tweak padding 1
                                                ^ \punta-to-talon
                                                \arpeggio
                                                \ppp
                                                - \tweak font-name "Bodoni72 Book" 
                                                - \tweak font-size 1
                                                - \tweak padding #16
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { MSP \hspace #0.5 }
                                                - \tweak bound-details.right.padding -1.5
                                                \startTextSpanOne
                                                ~
                                            }
                                            <
                                                \tweak style #'harmonic-mixed
                                                bqs'
                                                \tweak style #'harmonic-mixed
                                                cqs''
                                            >4
                                            ~
                                            <
                                                \tweak style #'harmonic
                                                bqs'
                                                \tweak style #'harmonic
                                                cqs''
                                            >16
                                            [
                                            <
                                                \tweak style #'harmonic
                                                b'!
                                                \tweak style #'harmonic
                                                dqf''!
                                            >8.
                                            - \tweak padding 1
                                            ^ \talon-to-punta
                                            \arpeggio
                                            \stopTextSpanOne
                                            \stopTextSpanThree
                                            ]
                                            \revert DynamicLineSpanner.staff-padding
                                        }
                                        \context Voice = "violin 2 legno voice"
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
                                            e4
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #13.5
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLT DP" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -1
                                            \startTextSpan
                                            ~
                                            e16
                                            \stopTextSpan
                                            [
                                            \textSpannerUp
                                            \textSpannerDown
                                            \tweak style #'cross
                                            e16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #13.5
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLB OB" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -1
                                            \startTextSpan
                                            \tweak style #'cross
                                            e16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \tweak style #'cross
                                            e16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            ]
                                            \once \override Rest.staff-position = #-12
                                            r8
                                            [
                                            \once \override Rest.staff-position = #-12
                                            r16
                                            \tweak style #'cross
                                            e16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            ~
                                            \tweak style #'cross
                                            e16
                                            \tweak style #'cross
                                            e16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            ]
                                            \tweak style #'cross
                                            e16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            \stopTextSpan
                                            [
                                            \textSpannerUp
                                            \textSpannerDown
                                            e16
                                            ]
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #13.5
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLT DP" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -1
                                            \startTextSpan
                                            ~
                                            e4
                                            ~
                                            e16
                                            \stopTextSpan
                                            [
                                            \textSpannerUp
                                            \textSpannerDown
                                            \tweak style #'cross
                                            e16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #13.5
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLB OB" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -1
                                            \startTextSpan
                                            \tweak style #'cross
                                            e16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            \tweak style #'cross
                                            e16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \tweak style #'cross
                                            e16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \tweak style #'cross
                                            e16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            ]
                                            \once \override Rest.staff-position = #-12
                                            r4
                                            \tweak style #'cross
                                            e16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            [
                                            \tweak style #'cross
                                            e16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            ~
                                            \tweak style #'cross
                                            e16
                                            \tweak style #'cross
                                            e16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            ]
                                            \tweak style #'cross
                                            e8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            [
                                            \tweak style #'cross
                                            e16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \tweak style #'cross
                                            e16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            ]
                                            ~
                                            \tweak style #'cross
                                            e16
                                            \stopTextSpan
                                            [
                                            \textSpannerUp
                                            \textSpannerDown
                                            e8.
                                            ]
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #13.5
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLT DP" } \hspace #0.5 }
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
                                            - \tweak padding #13.5
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLB OB" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -1
                                            \startTextSpan
                                            \textSpannerUp
                                            \tweak style #'cross
                                            e16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            \tweak style #'cross
                                            e16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            \stopTextSpan
                                            ]
                                            \textSpannerUp
                                            \textSpannerDown
                                            e4
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #13.5
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLT DP" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -1
                                            \startTextSpan
                                            \once \override Rest.staff-position = #-12
                                            r8
                                            \stopTextSpan
                                            [
                                            \textSpannerUp
                                            \once \override Rest.staff-position = #-12
                                            \textSpannerDown
                                            r16
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #13.5
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLB OB" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -1
                                            \startTextSpan
                                            \tweak style #'cross
                                            e16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \tweak style #'cross
                                            e16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            \tweak style #'cross
                                            e16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \stopTextSpan
                                            ]
                                            \textSpannerUp
                                            \textSpannerDown
                                            e4
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #13.5
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLT DP" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 0.5
                                            \startTextSpan
                                            \textSpannerDown
                                            \tweak style #'cross
                                            e16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            \stopTextSpan
                                            [
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #13.5
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLB OB" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -1
                                            \startTextSpan
                                            \textSpannerUp
                                            \tweak style #'cross
                                            e16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            ]
                                            \once \override Rest.staff-position = #-12
                                            r8
                                            [
                                            \tweak style #'cross
                                            e16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \tweak style #'cross
                                            e16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \stopTextSpan
                                            ]
                                            \textSpannerUp
                                            \textSpannerDown
                                            e4
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #13.5
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLT DP" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -1
                                            \startTextSpan
                                            ~
                                            e16
                                            \stopTextSpan
                                            [
                                            \textSpannerUp
                                            \textSpannerDown
                                            \tweak style #'cross
                                            e16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #13.5
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLB OB" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -1
                                            \startTextSpan
                                            \tweak style #'cross
                                            e16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            \tweak style #'cross
                                            e16
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
                                    r2.
                                    r2
                                    r2.
                                    r2
                                    r2.
                                    r2
                                    r2.
                                    r2
                                    r2.
                                    r2
                                    r2.
                                    r2
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
                                    r2
                                    r4.
                                    r4.
                                    r4.
                                    r1
                                    r2
                                    r2.
                                    r2.
                                    r2.
                                    r2
                                    r2.
                                    r2
                                    r2.
                                    r2
                                    r2.
                                    r2
                                    r2.
                                    r2
                                    r2.
                                    r2
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
                                    \once \override Accidental.stencil = ##f
                                    \once \override Staff.Clef.stencil = ##f
                                    \clef "alto"
                                    c'4
                                    \ppp
                                      %! +SCORE
                                    ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-7 \raise #3 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 99" } } }
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 2
                                    - \tweak padding #3
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "bridge" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -3
                                    \startTextSpanOne
                                    \once \override Accidental.stencil = ##f
                                    c'4
                                    \stopTextSpanOne
                                    \staff-line-count 5
                                    \big-half-harmonic
                                      %! +SCORE
                                    \set Staff.forceClef = ##t
                                    \clef "alto"
                                    <fqf cqf' gqf' dqf''>4.
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "ffffff"))
                                    ^ \half-clb
                                    ^ \marcato
                                    - \tweak font-name "Bodoni72 Book Italic" 
                                    _ \markup { \hspace #-6.75 { \center-column { \line { "extremely strong battuto," } \line { "striking so hard as to hit all strings at once" } } } }
                                      %! +SCORE
                                    \set Staff.forceClef = ##f
                                    \staff-line-count 1
                                    \once \override Accidental.stencil = ##f
                                    \clef "alto"
                                    c'4.
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
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 2
                                    - \tweak padding #3
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "tailpiece" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -3
                                    \startTextSpanOne
                                    \<
                                    \once \override Accidental.stencil = ##f
                                    c'4.
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
                                    \stopTextSpanOne
                                    \staff-line-count 5
                                    \big-half-harmonic
                                      %! +SCORE
                                    \set Staff.forceClef = ##t
                                    \clef "alto"
                                    <fqf cqf' gqf' dqf''>4
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "ffffff"))
                                    ^ \half-clb
                                    ^ \marcato
                                      %! +SCORE
                                    \set Staff.forceClef = ##f
                                    \staff-line-count 1
                                    \once \override Accidental.stencil = ##f
                                    \clef "alto"
                                    c'4
                                    \ppp
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 2
                                    - \tweak padding #3
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "bridge" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -3
                                    \startTextSpanOne
                                    \once \override Accidental.stencil = ##f
                                    c'4
                                    \once \override Accidental.stencil = ##f
                                    c'4
                                    \stopTextSpanOne
                                    \staff-line-count 5
                                    \big-half-harmonic
                                      %! +SCORE
                                    \set Staff.forceClef = ##t
                                    \clef "alto"
                                    <fqf cqf' gqf' dqf''>4
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "ffffff"))
                                    ^ \half-clb
                                    ^ \marcato
                                      %! +SCORE
                                    \set Staff.forceClef = ##f
                                    \staff-line-count 1
                                    \once \override Accidental.stencil = ##f
                                    \clef "alto"
                                    \afterGrace
                                    c'4
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
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 2
                                    - \tweak padding #3
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "tailpiece" } \hspace #0.5 }
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
                                    <<
                                        \context Voice = "viola 2 voice temp"
                                        {
                                            \staff-line-count 5
                                            \big-half-harmonic
                                            \override DynamicLineSpanner.staff-padding = #13
                                              %! +SCORE
                                            \set Staff.forceClef = ##t
                                            \clef "alto"
                                            \voiceOne
                                            <fqf! cqf'! gqf'! dqf''!>16
                                                _ #(make-dynamic-script (markup #:whiteout #:italic "ffffff"))
                                            ^ \half-clb
                                            ^ \marcato
                                            [
                                            - \tweak padding #19
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " rit. ( to " } \fontsize #-0.5 { \note { 4 } #1.5 } \fontsize #3 { "= 83 )" } } } \hspace #0.5 }
                                            - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 83" } } }
                                            \startTextSpanThree
                                              %! +SCORE
                                            \set Staff.forceClef = ##f
                                            <
                                                \tweak style #'harmonic
                                                dqf''!
                                                \tweak style #'harmonic
                                                dqs''!
                                            >16
                                            - \tweak padding 1
                                            ^ \punta-to-talon
                                            \arpeggio
                                            \ppp
                                            ]
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 1
                                            - \tweak padding #15.5
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { MSP \hspace #0.5 }
                                            - \tweak bound-details.right.padding -1.5
                                            \startTextSpanOne
                                            ~
                                            <
                                                \tweak style #'harmonic-mixed
                                                dqf''
                                                \tweak style #'harmonic-mixed
                                                dqs''
                                            >4
                                            ~
                                            <
                                                \tweak style #'harmonic
                                                dqf''
                                                \tweak style #'harmonic
                                                dqs''
                                            >16
                                            [
                                            \set stemLeftBeamCount = 2
                                            \set stemRightBeamCount = 1
                                            <
                                                \tweak style #'harmonic
                                                cs''!
                                                \tweak style #'harmonic
                                                eqf''!
                                            >16
                                            - \tweak padding 1
                                            ^ \talon-to-punta
                                            \arpeggio
                                            \set stemLeftBeamCount = 1
                                            \set stemRightBeamCount = 2
                                            <
                                                bf'!
                                                \tweak style #'harmonic
                                                b'!
                                                \tweak style #'harmonic
                                                ef''!
                                            >16..
                                            - \tweak padding 1
                                            ^ \punta-to-talon
                                            \arpeggio
                                            \set stemLeftBeamCount = 4
                                            \set stemRightBeamCount = 1
                                            <
                                                \tweak style #'harmonic
                                                dqf''!
                                                \tweak style #'harmonic
                                                ef''!
                                            >64
                                            - \tweak padding 1
                                            ^ \talon-to-punta
                                            \arpeggio
                                            ~
                                            \set stemLeftBeamCount = 1
                                            \set stemRightBeamCount = 3
                                            <
                                                \tweak style #'harmonic
                                                dqf''
                                                \tweak style #'harmonic
                                                ef''
                                            >32
                                            <
                                                \tweak style #'harmonic
                                                bqf'!
                                                \tweak style #'harmonic
                                                d''!
                                            >32.
                                            - \tweak padding 1
                                            ^ \punta-to-talon
                                            \arpeggio
                                            <
                                                bqf'!
                                                \tweak style #'harmonic
                                                cqs''!
                                                \tweak style #'harmonic
                                                d''!
                                            >32.
                                            - \tweak padding 1
                                            ^ \talon-to-punta
                                            \arpeggio
                                            \stopTextSpanOne
                                            ]
                                            \big-half-harmonic
                                            <fqf! cqf'! gqf'! dqf''!>32.
                                                _ #(make-dynamic-script (markup #:whiteout #:italic "ffffff"))
                                            ^ \half-clb
                                            ^ \marcato
                                            [
                                            <
                                                \tweak style #'harmonic
                                                cqs''!
                                                \tweak style #'harmonic
                                                dqs''!
                                            >32.
                                            - \tweak padding 1
                                            ^ \punta-to-talon
                                            \arpeggio
                                            \ppp
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 1
                                            - \tweak padding #17.5
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { MSP \hspace #0.5 }
                                            - \tweak bound-details.right.padding -1.5
                                            \startTextSpanOne
                                            \set stemLeftBeamCount = 3
                                            \set stemRightBeamCount = 1
                                            <
                                                \tweak style #'harmonic
                                                c''!
                                                \tweak style #'harmonic
                                                ef''!
                                            >32
                                            - \tweak padding 1
                                            ^ \talon-to-punta
                                            \arpeggio
                                            ~
                                            \set stemLeftBeamCount = 1
                                            \set stemRightBeamCount = 4
                                            <
                                                \tweak style #'harmonic
                                                c''
                                                \tweak style #'harmonic
                                                ef''
                                            >64
                                            <
                                                \tweak style #'harmonic
                                                fs'!
                                                \tweak style #'harmonic
                                                aqf'!
                                            >16..
                                            - \tweak padding 1
                                            ^ \punta-to-talon
                                            \arpeggio
                                            ]
                                            <
                                                \tweak style #'harmonic
                                                gqf'!
                                                \tweak style #'harmonic
                                                aqf'!
                                            >16
                                            - \tweak padding 1
                                            ^ \talon-to-punta
                                            \arpeggio
                                            [
                                            <
                                                \tweak style #'harmonic
                                                eqs'!
                                                \tweak style #'harmonic
                                                aqf'!
                                            >16
                                            - \tweak padding 1
                                            ^ \punta-to-talon
                                            \arpeggio
                                            ~
                                            <
                                                \tweak style #'harmonic
                                                eqs'
                                                \tweak style #'harmonic
                                                aqf'
                                            >16
                                            <
                                                \tweak style #'harmonic
                                                gqf'!
                                                \tweak style #'harmonic
                                                aqf'!
                                            >16
                                            - \tweak padding 1
                                            ^ \talon-to-punta
                                            \arpeggio
                                            ]
                                            ~
                                            <
                                                \tweak style #'harmonic-mixed
                                                gqf'
                                                \tweak style #'harmonic-mixed
                                                aqf'
                                            >4
                                            \stopTextSpanOne
                                            \big-half-harmonic
                                            <fqf! cqf'! gqf'! dqf''!>2
                                                _ #(make-dynamic-script (markup #:whiteout #:italic "ffffff"))
                                            ^ \half-clb
                                            ^ \marcato
                                            \stopTextSpanThree
                                            ~
                                            \big-half-harmonic
                                            <fqf cqf' gqf' dqf''>8
                                            ~
                                            \times 2/3
                                            {
                                                \big-half-harmonic
                                                <fqf cqf' gqf' dqf''>8
                                                [
                                                <
                                                    \tweak style #'harmonic
                                                    fs'!
                                                    \tweak style #'harmonic
                                                    gqs'!
                                                >8
                                                - \tweak padding 1
                                                ^ \talon-to-punta
                                                \arpeggio
                                                \ppp
                                                - \tweak font-name "Bodoni72 Book" 
                                                - \tweak font-size 1
                                                - \tweak padding #15.5
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { MSP \hspace #0.5 }
                                                - \tweak bound-details.right.padding -1.5
                                                \startTextSpanOne
                                                <
                                                    e'!
                                                    \tweak style #'harmonic
                                                    f'!
                                                    \tweak style #'harmonic
                                                    af'!
                                                >8
                                                - \tweak padding 1
                                                ^ \punta-to-talon
                                                \arpeggio
                                                ]
                                                ~
                                            }
                                            <
                                                e'
                                                \tweak style #'harmonic
                                                f'
                                                \tweak style #'harmonic
                                                af'
                                            >8
                                            ~
                                            <
                                                e'
                                                \tweak style #'harmonic
                                                f'
                                                \tweak style #'harmonic
                                                af'
                                            >16
                                            [
                                            <
                                                \tweak style #'harmonic
                                                g'!
                                                \tweak style #'harmonic
                                                af'!
                                            >16
                                            - \tweak padding 1
                                            ^ \talon-to-punta
                                            \arpeggio
                                            <
                                                cs''!
                                                \tweak style #'harmonic
                                                dqs''!
                                                \tweak style #'harmonic
                                                ef''!
                                            >16
                                            - \tweak padding 1
                                            ^ \punta-to-talon
                                            \arpeggio
                                            <
                                                \tweak style #'harmonic
                                                cqs''!
                                                \tweak style #'harmonic
                                                dqs''!
                                            >16
                                            - \tweak padding 1
                                            ^ \talon-to-punta
                                            \arpeggio
                                            \stopTextSpanOne
                                            ]
                                            \big-half-harmonic
                                            <fqf! cqf'! gqf'! dqf''!>16
                                                _ #(make-dynamic-script (markup #:whiteout #:italic "ffffff"))
                                            ^ \half-clb
                                            ^ \marcato
                                            [
                                            <
                                                \tweak style #'harmonic
                                                cs''!
                                                \tweak style #'harmonic
                                                eqf''!
                                            >16
                                            - \tweak padding 1
                                            ^ \punta-to-talon
                                            \arpeggio
                                            \ppp
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 1
                                            - \tweak padding #15.5
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { MSP \hspace #0.5 }
                                            - \tweak bound-details.right.padding -1.5
                                            \startTextSpanOne
                                            <
                                                \tweak style #'harmonic
                                                f'!
                                                \tweak style #'harmonic
                                                aqf'!
                                            >16
                                            - \tweak padding 1
                                            ^ \talon-to-punta
                                            \arpeggio
                                            <
                                                \tweak style #'harmonic
                                                e'!
                                                \tweak style #'harmonic
                                                af'!
                                            >16
                                            - \tweak padding 1
                                            ^ \punta-to-talon
                                            \arpeggio
                                            ]
                                            ~
                                            <
                                                \tweak style #'harmonic
                                                e'
                                                \tweak style #'harmonic
                                                af'
                                            >8
                                            <
                                                \tweak style #'harmonic-mixed
                                                g'!
                                                \tweak style #'harmonic-mixed
                                                af'!
                                            >4.
                                            - \tweak padding 1
                                            ^ \talon-to-punta
                                            \arpeggio
                                            ~
                                            <
                                                \tweak style #'harmonic-mixed
                                                g'
                                                \tweak style #'harmonic-mixed
                                                af'
                                            >4
                                            ~
                                            \times 2/3
                                            {
                                                <
                                                    \tweak style #'harmonic
                                                    g'
                                                    \tweak style #'harmonic
                                                    af'
                                                >8
                                                [
                                                <
                                                    \tweak style #'harmonic
                                                    e'!
                                                    \tweak style #'harmonic
                                                    aqf'!
                                                >8
                                                - \tweak padding 1
                                                ^ \punta-to-talon
                                                \arpeggio
                                                <
                                                    \tweak style #'harmonic
                                                    eqf'!
                                                    \tweak style #'harmonic
                                                    fs'!
                                                >8
                                                - \tweak padding 1
                                                ^ \talon-to-punta
                                                \arpeggio
                                                \stopTextSpanOne
                                                ]
                                                \revert DynamicLineSpanner.staff-padding
                                            }
                                        }
                                        \context Voice = "viola legno voice"
                                        {
                                            \once \override Rest.staff-position = #-12
                                            \override Voice.NoteHead.color = #(css-color 'darkred)
                                            \override Voice.Dots.color = #(css-color 'darkred)
                                            \override Voice.Stem.color = #(css-color 'darkred)
                                            \override Voice.Beam.color = #(css-color 'darkred)
                                            \override Voice.Rest.color = #(css-color 'darkred)
                                            \override Voice.Tie.color = #(css-color 'darkred)
                                            \override Voice.TupletBracket.color = #(css-color 'darkred)
                                            \override Voice.TupletNumber.color = #(css-color 'darkred)
                                            \voiceTwo
                                            r16
                                            [
                                            \override Voice.NoteHead.no-ledgers = ##t
                                            \override Voice.Accidental.stencil = ##f
                                            \textSpannerDown
                                            g,16
                                            ]
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #13
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLT DP" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -1
                                            \startTextSpan
                                            ~
                                            g,4
                                            ~
                                            g,8
                                            \stopTextSpan
                                            [
                                            \textSpannerUp
                                            \textSpannerDown
                                            \tweak style #'cross
                                            g,16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #13
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLB OB" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -1
                                            \startTextSpan
                                            \tweak style #'cross
                                            g,16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            ~
                                            \tweak style #'cross
                                            g,16
                                            \tweak style #'cross
                                            g,16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            ]
                                            \once \override Rest.staff-position = #-12
                                            r8
                                            [
                                            \tweak style #'cross
                                            g,8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            ]
                                            \tweak style #'cross
                                            g,16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            [
                                            \tweak style #'cross
                                            g,16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            \tweak style #'cross
                                            g,16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \tweak style #'cross
                                            g,16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            ]
                                            \tweak style #'cross
                                            g,16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            \stopTextSpan
                                            [
                                            \textSpannerUp
                                            \textSpannerDown
                                            g,8.
                                            ]
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #13
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLT DP" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -1
                                            \startTextSpan
                                            \once \override Rest.staff-position = #-12
                                            r4
                                            \stopTextSpan
                                            \textSpannerUp
                                            \textSpannerDown
                                            \tweak style #'cross
                                            g,8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            [
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #13
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLB OB" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -1
                                            \startTextSpan
                                            \tweak style #'cross
                                            g,16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            \tweak style #'cross
                                            g,16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            ]
                                            ~
                                            \tweak style #'cross
                                            g,16
                                            [
                                            \tweak style #'cross
                                            g,16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \stopTextSpan
                                            \textSpannerUp
                                            \textSpannerDown
                                            g,8
                                            ]
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #13
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLT DP" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -1
                                            \startTextSpan
                                            ~
                                            g,4
                                            ~
                                            g,16
                                            \stopTextSpan
                                            [
                                            \textSpannerUp
                                            \textSpannerDown
                                            \tweak style #'cross
                                            g,16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #13
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLB OB" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -1
                                            \startTextSpan
                                            \tweak style #'cross
                                            g,16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \tweak style #'cross
                                            g,16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            ]
                                            \once \override Rest.staff-position = #-12
                                            r16
                                            [
                                            \tweak style #'cross
                                            g,16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \tweak style #'cross
                                            g,16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            \stopTextSpan
                                            \textSpannerUp
                                            \textSpannerDown
                                            g,16
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            ]
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #13
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLT DP" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -1
                                            \startTextSpan
                                            ~
                                            g,2
                                            ~
                                            g,4
                                            \stopTextSpan
                                            \textSpannerUp
                                            \textSpannerDown
                                            \tweak style #'cross
                                            g,16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            [
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #13
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLB OB" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -1
                                            \startTextSpan
                                            \tweak style #'cross
                                            g,16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \tweak style #'cross
                                            g,16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            \tweak style #'cross
                                            g,16
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
                                    r2.
                                    r2
                                    r2.
                                    r2
                                    r2.
                                    r2
                                    r2.
                                    r2
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
                                    r2
                                    r4.
                                    r4.
                                    r4.
                                    r1
                                    r2
                                    r2.
                                    r2.
                                    r2.
                                    r2
                                    r2.
                                    r2
                                    r2.
                                    r2
                                    r2.
                                    r2
                                    r2.
                                    r2
                                    r2.
                                    r2
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
                                      %! +SCORE
                                    ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-7 \raise #1 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 99" } } }
                                    r4.
                                    r4.
                                    r4.
                                    r1
                                    r2
                                    r2.
                                    - \tweak padding #1
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " rit. ( to " } \fontsize #-0.5 { \note { 4 } #1.5 } \fontsize #3 { "= 83 )" } } } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 83" } } }
                                    \startTextSpanThree
                                    r2.
                                    r2.
                                    \stopTextSpanThree
                                    r2
                                    r2.
                                    r2
                                    r2.
                                    r2
                                    r2.
                                    r2
                                    r2.
                                    r2
                                    r2.
                                    r2
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
