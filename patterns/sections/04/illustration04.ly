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
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (7 23 15.5 20 28)))
            \time 9/8
            s1 * 9/8
              %! +SCORE
            \noBreak
            \time 12/8
            s1 * 3/2
              %! +SCORE
            \break
              %! +SCORE
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (8.5 24 19 26.5 28)))
            \time 5/4
            s1 * 5/4
              %! +SCORE
            \noBreak
            \time 4/4
            s1 * 1
              %! +SCORE
            \break
              %! +SCORE
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (5.5 23 16 30 32)))
            \time 1/4
            s1 * 1/4
              %! +SCORE
            \noBreak
            \time 5/4
            s1 * 5/4
              %! +SCORE
            \break
              %! +SCORE
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (11 19 22 27 30)))
            \time 3/4
            s1 * 3/4
              %! +SCORE
            \noBreak
            \time 2/4
            s1 * 1/2
              %! +SCORE
            \break
              %! +SCORE
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (11 30 30 30)))
            \time 3/2
            s1 * 3/2
              %! +SCORE
            \break
              %! +SCORE
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (11 30 30 30)))
            \time 4/2
            s1 * 2
              %! +SCORE
            \break
              %! +SCORE
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (11 30 30 30)))
            \time 2/2
            s1 * 1
              %! +SCORE
            \noBreak
            \time 3/2
            s1 * 3/2
              %! +SCORE
            \break
              %! +SCORE
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (11 28 33 29)))
            \time 2/2
            s1 * 1
              %! +SCORE
            \noBreak
            \time 1/2
            s1 * 1/2
              %! +SCORE
            \break
              %! +SCORE
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (11 30 34 25)))
            \time 3/2
            s1 * 3/2
              %! +SCORE
            \noBreak
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
                                    \stopStaff
                                    \once \revert Staff.StaffSymbol.line-positions
                                    \once \override Staff.StaffSymbol.line-count = #0
                                    \once \override Staff.BarLine.transparent = ##f
                                    r4.
                                    r4.
                                    r4.
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
                                    r2.
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
                                    r4
                                    \once \override Staff.BarLine.transparent = ##f
                                    \startStaff
                                    \stopStaff
                                    \once \revert Staff.StaffSymbol.line-positions
                                    \once \override Staff.StaffSymbol.line-count = #0
                                    \once \override Staff.BarLine.transparent = ##f
                                    r2.
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
                                    r2
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
                                    r\breve
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
                                    r2
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
                                    \override Staff.Clef.stencil = ##f
                                    \staff-line-count 1
                                    \revert Staff.StaffSymbol.line-positions
                                    \revert Staff.Accidental.stencil
                                    \revert Staff.NoteHead.no-ledgers
                                    \clef "percussion"
                                    r16
                                      %! +SCORE
                                    ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-7 \raise #3 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #1.5 } \fontsize #4 { "= 72" } } }
                                    [
                                    \override Staff.BarLine.bar-extent = #'(-2 . 2)
                                    c'16
                                    - \tenuto
                                    ]
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #3
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "bridge" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -1.5
                                    \startTextSpanTwo
                                    r4
                                    c'4
                                    - \tenuto
                                    r2
                                    c'8
                                    - \tenuto
                                    [
                                    ~
                                    c'16
                                    r16
                                    c'8
                                    - \tenuto
                                    ]
                                    ~
                                    c'8
                                    [
                                    r16
                                    c'16
                                    - \tenuto
                                    r16
                                    c'16
                                    - \tenuto
                                    ]
                                    r4
                                    c'8
                                    - \tenuto
                                    ~
                                    c'8
                                    r4
                                    c'4
                                    - \tenuto
                                    r8.
                                    [
                                    c'16
                                    - \tenuto
                                    ]
                                    r4
                                    c'16
                                    - \tenuto
                                    [
                                    r8.
                                    ]
                                    c'4
                                    - \accent
                                    r4
                                    - \tweak padding #11.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " accel. ( to " } \fontsize #-0.5 { \note { 8 } #1.5 } \fontsize #3 { "= 120 )" } } } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #1.5 } \fontsize #4 { "= 120" } } }
                                    \startTextSpanThree
                                    c'2
                                    - \tenuto
                                    r8.
                                    [
                                    c'16
                                    - \accent
                                    \stopTextSpanTwo
                                    ]
                                    r4
                                    \staff-line-count 5
                                    \revert Staff.Clef.stencil
                                    \once \override Staff.Clef.X-extent = ##f
                                    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
                                    \clef "treble"
                                    <g! fs'!>16
                                    - \accent
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -49 }\line { +0 }} } }
                                    [
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #10
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "On bridge, allowing strings to ring" } \hspace #0.5 }
                                    \startTextSpanOne
                                    r8.
                                    ]
                                    <cs'! ds'!>2
                                    - \tenuto
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +8 }\line { -41 }} } }
                                    r2
                                    <cs'! ds'!>8.
                                    - \tenuto
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +8 }\line { -41 }} } }
                                    [
                                    r16
                                    ]
                                    <cs'! ds'!>4
                                    - \accent
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +8 }\line { -41 }} } }
                                    r16
                                    [
                                    <cs'! ds'!>16
                                    - \tenuto
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +8 }\line { -41 }} } }
                                    r16
                                    <cs'! ds'!>16
                                    - \tenuto
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +8 }\line { -41 }} } }
                                    ]
                                    r2
                                    \stopTextSpanThree
                                    <cs'! ds'!>2
                                    - \accent
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +8 }\line { +32 }} } }
                                    r8.
                                    [
                                    <cs'! ds'!>16
                                    - \accent
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +8 }\line { +32 }} } }
                                    \stopTextSpanOne
                                    ]
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #10
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "molto tasto" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -4
                                    \startTextSpanOne
                                    r4
                                    cs'!16
                                    - \accent
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +32 } } } }
                                    [
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #6.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \hspace #-9.5 { "+ bowing body" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding 5
                                    \startTextSpanTwo
                                    r8.
                                    ]
                                    <cs'! ds'!>4
                                    - \accent
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +8 }\line { +32 }} } }
                                    \stopTextSpanTwo
                                    r4
                                    <cs'! ds'!>4
                                    - \accent
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +8 }\line { +32 }} } }
                                    r4
                                    cs'!8.
                                    - \accent
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +32 } } } }
                                    [
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #6.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \hspace #-9.5 { "+ bowing body" } \hspace #0.5 }
                                    \startTextSpanTwo
                                    r16
                                    \stopTextSpanTwo
                                    ]
                                    <cs'! ds'!>4
                                    - \accent
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +8 }\line { +32 }} } }
                                    r16
                                    [
                                    <cs'! ds'!>16
                                    - \accent
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +8 }\line { +32 }} } }
                                    r16
                                    <cs'! ds'!>16
                                    - \accent
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +8 }\line { +32 }} } }
                                    ]
                                    r2
                                    <cs'! ds'!>2
                                    - \accent
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +8 }\line { +32 }} } }
                                    r8.
                                    [
                                    <cs'! ds'!>16
                                    - \accent
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +8 }\line { +32 }} } }
                                    ]
                                    r4
                                    <cs'! ds'!>16
                                    - \accent
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +8 }\line { +32 }} } }
                                    [
                                    r8.
                                    ]
                                    <ds'! bf'!>4
                                    - \accent
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -34 }\line { +8 }} } }
                                    r4
                                    <ds'! bf'!>4
                                    - \accent
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -34 }\line { +8 }} } }
                                    r4
                                    <ds'! bf'!>8.
                                    - \accent
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -34 }\line { +8 }} } }
                                    [
                                    r16
                                    ]
                                    <bf'! gf''!>4
                                    - \accent
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +8 }\line { -34 }} } }
                                    r16
                                    [
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #8
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "+ bowing body" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -4
                                    \startTextSpanTwo
                                    gf''!16
                                    - \accent
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +8 } } } }
                                    r16
                                    gf''!16
                                    - \accent
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +8 } } } }
                                    ]
                                    r2
                                    \stopTextSpanTwo
                                    <gf''! d'''!>2
                                    - \accent
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +39 }\line { +8 }} } }
                                    - \tweak padding #13.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " rit. ( to " } \fontsize #-0.5 { \note { 8 } #1.5 } \fontsize #3 { "= 72 )" } } } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #1.5 } \fontsize #4 { "= 72" } } }
                                    \startTextSpanThree
                                    r8.
                                    [
                                    <gf''! d'''!>16
                                    - \accent
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +39 }\line { +8 }} } }
                                    ]
                                    r4
                                    d'''!16
                                    - \accent
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +39 } } } }
                                    [
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #11.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "+ bowing body" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -4
                                    \startTextSpanTwo
                                    r8.
                                    ]
                                    d'''!4
                                    - \accent
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +39 } } } }
                                    r4
                                    d'''!4
                                    - \accent
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +39 } } } }
                                    \stopTextSpanOne
                                    \stopTextSpanTwo
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r4
                                    \!
                                    \stopTextSpanThree
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
                                    \override Dots.staff-position = #2
                                    \set GrandStaff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { Violin 2 }
                                      %! +SCORE
                                    \set GrandStaff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { V2 }
                                    g'4.
                                      %! +SCORE
                                    ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-7 \raise #3 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #1.5 } \fontsize #4 { "= 72" } } }
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 2
                                    - \tweak padding #6
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { { "CLT" } \hspace #0.5 }
                                    \startTextSpanOne
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
                                    - \tweak bound-details.left.text \markup \concat { { "1/2 CLT" } \hspace #0.5 }
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
                                    a16
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    c'16
                                    \stopTextSpanOne
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 2
                                    - \tweak padding #6
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { { \hspace #-0.5 "CLT" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpanOne
                                    a4.
                                    \stopTextSpanOne
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 2
                                    - \tweak padding #6
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { { \hspace #2.5 "1/2 CLT" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -6
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
                                    a2
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    f'2
                                    \stopTextSpanOne
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 2
                                    - \tweak padding #6
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { { \hspace #7.5 "CLT" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding 6
                                    \startTextSpanOne
                                    d'2
                                    \stopTextSpanOne
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 2
                                    - \tweak padding #6
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { { \hspace #-7.5 "1/2 CLT" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding 0.5
                                    \startTextSpanOne
                                    ~
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 5/6
                                    {
                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                        d'4.
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        e'4.
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        a4.
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        b4.
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
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
                                        b4
                                        - \tweak padding #8.5
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " accel. ( to " } \fontsize #-0.5 { \note { 8 } #1.5 } \fontsize #3 { "= 120 )" } } } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #1.5 } \fontsize #4 { "= 120" } } }
                                        \startTextSpanThree
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        g''8
                                        \stopTextSpanOne
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak font-name "Bodoni72 Book" 
                                        - \tweak font-size 2
                                        - \tweak padding #6
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { { \hspace #-0.5 "CLT" } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -5
                                        \startTextSpanOne
                                        b'8
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        e''2
                                        \stopTextSpanOne
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        c''4
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak font-name "Bodoni72 Book" 
                                        - \tweak font-size 2
                                        - \tweak padding #6
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { { \hspace #-10 "1/2 CLT" } \hspace #0.5 }
                                        \startTextSpanOne
                                        b4
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                    }
                                    \times 4/5
                                    {
                                        f'8
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        d'8.
                                        \stopTextSpanOne
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak font-name "Bodoni72 Book" 
                                        - \tweak font-size 2
                                        - \tweak padding #6
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { { "CLT" } \hspace #0.5 }
                                        \startTextSpanOne
                                    }
                                    c'''4
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    c''4
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    d''2
                                    \stopTextSpanOne
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 2
                                    - \tweak padding #6
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { { "1/2 CLT" } \hspace #0.5 }
                                    \startTextSpanOne
                                    b'4
                                    \stopTextSpanOne
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 2
                                    - \tweak padding #6
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { { "CLT" } \hspace #0.5 }
                                    \startTextSpanOne
                                    e''8
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    a'8
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    f''8
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    g'8
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    g''8
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    f'8
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \times 2/3
                                    {
                                        a''8
                                        \stopTextSpanThree
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        e'16
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        b''16
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        d'8
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        c'''8
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        c'16
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        c'''16
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \afterGrace
                                        b8
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        {
                                            \revert Dots.staff-position
                                            c'''16
                                            \stopTextSpanOne
                                        }
                                    }
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
                                    r\breve
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
                                    r2
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
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 9/10
                                            {
                                                \staff-line-count 5
                                                \revert Staff.StaffSymbol.line-positions
                                                \revert Staff.Accidental.stencil
                                                \revert Staff.NoteHead.no-ledgers
                                                \revert Staff.Clef.stencil
                                                \voiceOne
                                                b'4
                                                \override Staff.BarLine.bar-extent = #'(-2 . 2)
                                                fs'4
                                                g4
                                                d'4
                                                fs''4
                                            }
                                            b4.
                                            ~
                                            b8
                                            a4
                                            ~
                                            a4
                                            fs'8
                                            ~
                                            fs'4.
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 5/4
                                            {
                                                af'4
                                                ef'4
                                                fs'4
                                                e'4
                                            }
                                            \times 4/6
                                            {
                                                a'4
                                                fs'4
                                                g4
                                                ef'4
                                                a'4
                                                b4
                                            }
                                            fs'16
                                            [
                                            \once \override Dots.staff-position = #2
                                            \afterGrace
                                            bf'16
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            {
                                                #(define afterGraceFraction (cons 3 5))
                                                \once \override Accidental.stencil = ##f
                                                \once \override Dots.staff-position = #2
                                                \once \override Glissando.X-extent = ##f
                                                \once \override NoteHead.X-extent = ##f
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
                                                bf'16
                                            }
                                            \once \override Dots.staff-position = #2
                                            \afterGrace
                                            af'16
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            {
                                                #(define afterGraceFraction (cons 1 5))
                                                \once \override Accidental.stencil = ##f
                                                \once \override Dots.staff-position = #2
                                                \once \override Glissando.X-extent = ##f
                                                \once \override NoteHead.X-extent = ##f
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
                                                af'16
                                            }
                                            \once \override Dots.staff-position = #2
                                            \afterGrace
                                            c'16
                                            ]
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            {
                                                #(define afterGraceFraction (cons 1 5))
                                                \once \override Accidental.stencil = ##f
                                                \once \override Dots.staff-position = #2
                                                \once \override Glissando.X-extent = ##f
                                                \once \override NoteHead.X-extent = ##f
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
                                                c'16
                                            }
                                            \once \override Dots.staff-position = #2
                                            \afterGrace
                                            fs'4
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            {
                                                #(define afterGraceFraction (cons 15 16))
                                                \once \override Accidental.stencil = ##f
                                                \once \override Dots.staff-position = #2
                                                \once \override Glissando.X-extent = ##f
                                                \once \override NoteHead.X-extent = ##f
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
                                                fs'16
                                            }
                                            \once \override Dots.staff-position = #2
                                            \afterGrace
                                            e'4
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            {
                                                #(define afterGraceFraction (cons 2 3))
                                                \once \override Accidental.stencil = ##f
                                                \once \override Dots.staff-position = #2
                                                \once \override Glissando.X-extent = ##f
                                                \once \override NoteHead.X-extent = ##f
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
                                                e'16
                                            }
                                            \once \override Dots.staff-position = #2
                                            \afterGrace
                                            a'4
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            {
                                                #(define afterGraceFraction (cons 15 16))
                                                \once \override Accidental.stencil = ##f
                                                \once \override Dots.staff-position = #2
                                                \once \override Glissando.X-extent = ##f
                                                \once \override NoteHead.X-extent = ##f
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
                                                a'16
                                            }
                                            \once \override Dots.staff-position = #2
                                            \afterGrace
                                            af'4
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            {
                                                #(define afterGraceFraction (cons 1 3))
                                                \once \override Accidental.stencil = ##f
                                                \once \override Dots.staff-position = #2
                                                \once \override Glissando.X-extent = ##f
                                                \once \override NoteHead.X-extent = ##f
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
                                                af'16
                                            }
                                            \once \override Dots.staff-position = #2
                                            \afterGrace
                                            af'4
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            {
                                                #(define afterGraceFraction (cons 15 16))
                                                \once \override Accidental.stencil = ##f
                                                \once \override Dots.staff-position = #2
                                                \once \override Glissando.X-extent = ##f
                                                \once \override NoteHead.X-extent = ##f
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
                                                af'16
                                            }
                                            f'4
                                            a'4
                                            b'4
                                            \times 4/6
                                            {
                                                \once \override Dots.staff-position = #2
                                                \afterGrace
                                                fs''8
                                                [
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 15 16))
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override Dots.staff-position = #2
                                                    \once \override Glissando.X-extent = ##f
                                                    \once \override NoteHead.X-extent = ##f
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
                                                    fs''16
                                                }
                                                \once \override Dots.staff-position = #2
                                                \afterGrace
                                                fs'8
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 1 4))
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override Dots.staff-position = #2
                                                    \once \override Glissando.X-extent = ##f
                                                    \once \override NoteHead.X-extent = ##f
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
                                                    fs'16
                                                }
                                                \once \override Dots.staff-position = #2
                                                \afterGrace
                                                a''8
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 3 4))
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override Dots.staff-position = #2
                                                    \once \override Glissando.X-extent = ##f
                                                    \once \override NoteHead.X-extent = ##f
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
                                                    a''16
                                                }
                                                \once \override Dots.staff-position = #2
                                                \afterGrace
                                                ds''8
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 15 16))
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override Dots.staff-position = #2
                                                    \once \override Glissando.X-extent = ##f
                                                    \once \override NoteHead.X-extent = ##f
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
                                                    ds''16
                                                }
                                                \once \override Dots.staff-position = #2
                                                \afterGrace
                                                fs'''8
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 1 4))
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override Dots.staff-position = #2
                                                    \once \override Glissando.X-extent = ##f
                                                    \once \override NoteHead.X-extent = ##f
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
                                                    fs'''16
                                                }
                                                \once \override Dots.staff-position = #2
                                                \afterGrace
                                                b'''8
                                                ]
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 15 16))
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override Dots.staff-position = #2
                                                    \once \override Glissando.X-extent = ##f
                                                    \once \override NoteHead.X-extent = ##f
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
                                                    b'''16
                                                }
                                            }
                                        }
                                        \context Voice = "violin 2 polyrhythm voice"
                                        {
                                            \voiceTwo
                                            e'4.
                                            a'4.
                                            fs'4.
                                            af'4.
                                            ef'4.
                                            a'4.
                                            cs'4.
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 5/6
                                            {
                                                a!4
                                                af4
                                                g4
                                                c'4
                                                fs''4
                                                b4
                                            }
                                            af'4
                                            fs'4
                                            af4
                                            ef'4
                                            \times 4/5
                                            {
                                                \once \override Dots.staff-position = #2
                                                \afterGrace
                                                fs'16
                                                [
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 15 16))
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override Dots.staff-position = #2
                                                    \once \override Glissando.X-extent = ##f
                                                    \once \override NoteHead.X-extent = ##f
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
                                                    fs'16
                                                }
                                                \once \override Dots.staff-position = #2
                                                \afterGrace
                                                b'16
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 1 4))
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override Dots.staff-position = #2
                                                    \once \override Glissando.X-extent = ##f
                                                    \once \override NoteHead.X-extent = ##f
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
                                                    b'16
                                                }
                                                \once \override Dots.staff-position = #2
                                                \afterGrace
                                                a'16
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 1 4))
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override Dots.staff-position = #2
                                                    \once \override Glissando.X-extent = ##f
                                                    \once \override NoteHead.X-extent = ##f
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
                                                    a'16
                                                }
                                                \once \override Dots.staff-position = #2
                                                \afterGrace
                                                fs'16
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 1 4))
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override Dots.staff-position = #2
                                                    \once \override Glissando.X-extent = ##f
                                                    \once \override NoteHead.X-extent = ##f
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
                                                    fs'16
                                                }
                                                \once \override Dots.staff-position = #2
                                                \afterGrace
                                                g16
                                                ]
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 15 16))
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override Dots.staff-position = #2
                                                    \once \override Glissando.X-extent = ##f
                                                    \once \override NoteHead.X-extent = ##f
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
                                                    g16
                                                }
                                            }
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 5/6
                                            {
                                                \once \override Dots.staff-position = #2
                                                \afterGrace
                                                c'2
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 3 5))
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override Dots.staff-position = #2
                                                    \once \override Glissando.X-extent = ##f
                                                    \once \override NoteHead.X-extent = ##f
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
                                                    c'16
                                                }
                                                \once \override Dots.staff-position = #2
                                                \afterGrace
                                                a2
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 1 5))
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override Dots.staff-position = #2
                                                    \once \override Glissando.X-extent = ##f
                                                    \once \override NoteHead.X-extent = ##f
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
                                                    a16
                                                }
                                                \once \override Dots.staff-position = #2
                                                \afterGrace
                                                b2
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 2 5))
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override Dots.staff-position = #2
                                                    \once \override Glissando.X-extent = ##f
                                                    \once \override NoteHead.X-extent = ##f
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
                                                    b16
                                                }
                                            }
                                            b8
                                            [
                                            fs'8
                                            g'8
                                            d''8
                                            fs''8
                                            b''8
                                            ]
                                            \once \override Dots.staff-position = #2
                                            \afterGrace
                                            a'8
                                            [
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            {
                                                #(define afterGraceFraction (cons 2 3))
                                                \once \override Accidental.stencil = ##f
                                                \once \override Dots.staff-position = #2
                                                \once \override Glissando.X-extent = ##f
                                                \once \override NoteHead.X-extent = ##f
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
                                                a'16
                                            }
                                            \once \override Dots.staff-position = #2
                                            \afterGrace
                                            fs''8
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            {
                                                #(define afterGraceFraction (cons 1 3))
                                                \once \override Accidental.stencil = ##f
                                                \once \override Dots.staff-position = #2
                                                \once \override Glissando.X-extent = ##f
                                                \once \override NoteHead.X-extent = ##f
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
                                                fs''16
                                            }
                                            \once \override Dots.staff-position = #2
                                            \afterGrace
                                            gs''8
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            {
                                                #(define afterGraceFraction (cons 2 3))
                                                \once \override Accidental.stencil = ##f
                                                \once \override Dots.staff-position = #2
                                                \once \override Glissando.X-extent = ##f
                                                \once \override NoteHead.X-extent = ##f
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
                                                gs''16
                                            }
                                            \once \override Dots.staff-position = #2
                                            \afterGrace
                                            ds'''8
                                            ]
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            {
                                                #(define afterGraceFraction (cons 1 3))
                                                \once \override Accidental.stencil = ##f
                                                \once \override Dots.staff-position = #2
                                                \once \override Glissando.X-extent = ##f
                                                \once \override NoteHead.X-extent = ##f
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
                                                ds'''16
                                            }
                                        }
                                    >>
                                    \oneVoice
                                    <<
                                        \context Voice = "violin 4 voice temp 2"
                                        {
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 11/10
                                            {
                                                \override Staff.Clef.stencil = #ly:text-interface::print
                                                \override Staff.Clef.text = \string-clef
                                                \staff-line-count 4
                                                \override Staff.StaffSymbol.line-positions = #'(9 7 0 -9)
                                                \override Staff.BarLine.bar-extent = #'(-4.5 . 4.5)
                                                \override Staff.Accidental.stencil = ##f
                                                \override Staff.NoteHead.no-ledgers = ##t
                                                \voiceTwo
                                                \tweak style #'cross
                                                f''16
                                                - \markup \fontsize #2 { \hspace #-11 { "Fng. Perc.:" } }
                                                [
                                                \tweak style #'cross
                                                g''16
                                                \tweak style #'cross
                                                f''16
                                                \tweak style #'cross
                                                e''16
                                                \tweak style #'cross
                                                g''16
                                                ]
                                                \once \override Rest.staff-position = #-7
                                                r4
                                                \tweak style #'cross
                                                g''16
                                            }
                                            <
                                                \tweak style #'cross
                                                d''
                                                \tweak style #'harmonic
                                                f''
                                            >16
                                            <
                                                \tweak style #'cross
                                                c''
                                                \tweak style #'harmonic
                                                f''
                                            >16
                                            - \tweak Beam.positions #'(-5.5 . -7)
                                            [
                                            \tweak style #'cross
                                            g''16
                                            \once \override Rest.staff-position = #-7
                                            r8
                                            ]
                                            \times 4/5
                                            {
                                                <
                                                    \tweak style #'cross
                                                    c''
                                                    \tweak style #'harmonic
                                                    f''
                                                >16
                                                - \tweak Beam.positions #'(-7 . -7)
                                                [
                                                <
                                                    \tweak style #'cross
                                                    c''
                                                    \tweak style #'harmonic
                                                    f''
                                                >16
                                                \once \override Rest.staff-position = #-7
                                                r8
                                                \tweak style #'cross
                                                g''16
                                                ]
                                            }
                                            \times 4/5
                                            {
                                                \once \override Rest.staff-position = #-7
                                                r8
                                                - \tweak Beam.positions #'(-7 . -7)
                                                [
                                                \tweak style #'cross
                                                g''16
                                                \tweak style #'cross
                                                f''16
                                                \tweak style #'cross
                                                c''16
                                                ]
                                            }
                                            \once \override Rest.staff-position = #-7
                                            r4
                                            \times 4/6
                                            {
                                                \once \override Rest.staff-position = #-7
                                                r8
                                                [
                                                \tweak style #'cross
                                                d'8
                                                \tweak style #'cross
                                                d''8
                                                \tweak style #'cross
                                                e'8
                                                ]
                                                \once \override Rest.staff-position = #-7
                                                r4
                                            }
                                            \times 4/6
                                            {
                                                \once \override Rest.staff-position = #-7
                                                r8
                                                - \tweak Beam.positions #'(-7 . -7)
                                                [
                                                \tweak style #'cross
                                                e''16
                                                \tweak style #'cross
                                                e'16
                                                \once \override Rest.staff-position = #-7
                                                r8
                                                ]
                                            }
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 5/6
                                            {
                                                <
                                                    \tweak style #'cross
                                                    b'
                                                    \tweak style #'harmonic
                                                    e''
                                                >16
                                                [
                                                \tweak style #'cross
                                                d'16
                                                \once \override Rest.staff-position = #-7
                                                r8
                                                \tweak style #'cross
                                                e'16
                                                \tweak style #'cross
                                                d''16
                                                ]
                                            }
                                            \times 2/3
                                            {
                                                \once \override Rest.staff-position = #-7
                                                r16
                                                - \tweak Beam.positions #'(-8 . -8)
                                                [
                                                \tweak style #'cross
                                                f''16
                                                \tweak style #'cross
                                                g'16
                                                ]
                                            }
                                            \once \override Rest.staff-position = #-7
                                            r16
                                            \once \override Rest.staff-position = #-7
                                            r8
                                            - \tweak Beam.positions #'(-7 . -7)
                                            [
                                            \tweak style #'cross
                                            f''16.
                                            \set stemLeftBeamCount = 3
                                            \set stemRightBeamCount = 1
                                            <
                                                \tweak style #'cross
                                                g'
                                                \tweak style #'harmonic
                                                b'
                                            >32
                                            ~
                                            \set stemLeftBeamCount = 1
                                            \set stemRightBeamCount = 2
                                            <
                                                \tweak style #'cross
                                                g'
                                                \tweak style #'harmonic
                                                b'
                                            >16
                                            \set stemLeftBeamCount = 2
                                            \set stemRightBeamCount = 1
                                            \tweak style #'cross
                                            g''16
                                            ~
                                            \set stemLeftBeamCount = 1
                                            \set stemRightBeamCount = 3
                                            \tweak style #'cross
                                            g''32
                                            <
                                                \tweak style #'cross
                                                a'
                                                \tweak style #'harmonic
                                                d''
                                            >16.
                                            ]
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 11/12
                                            {
                                                \once \override Rest.staff-position = #-7
                                                r4
                                                \tweak style #'cross
                                                f''8
                                                - \tweak Beam.positions #'(-7 . -7)
                                                [
                                                \tweak style #'cross
                                                e''8
                                                \once \override Rest.staff-position = #-7
                                                r8
                                                \tweak style #'cross
                                                d''8
                                                ]
                                            }
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 5/6
                                            {
                                                \tweak style #'cross
                                                c''8
                                                - \tweak Beam.positions #'(-5.5 . -7)
                                                [
                                                \tweak style #'cross
                                                b'8
                                                \once \override Rest.staff-position = #-7
                                                r8
                                                ]
                                            }
                                            \times 4/5
                                            {
                                                \tweak style #'cross
                                                b'16
                                                - \tweak Beam.positions #'(-7 . -7)
                                                [
                                                \tweak style #'cross
                                                d''16
                                                <
                                                    \tweak style #'cross
                                                    b'
                                                    \tweak style #'harmonic
                                                    d''
                                                >16
                                                \once \override Rest.staff-position = #-7
                                                r8
                                                ]
                                            }
                                            \times 4/5
                                            {
                                                \once \override Rest.staff-position = #-7
                                                r16
                                                - \tweak Beam.positions #'(-8 . -7)
                                                [
                                                <
                                                    \tweak style #'cross
                                                    b'
                                                    \tweak style #'harmonic
                                                    d''
                                                >16
                                                \tweak style #'cross
                                                a'16
                                                \set stemLeftBeamCount = 2
                                                \set stemRightBeamCount = 1
                                                \tweak style #'cross
                                                c''16
                                                \set stemLeftBeamCount = 1
                                                \set stemRightBeamCount = 2
                                                <
                                                    \tweak style #'cross
                                                    g'
                                                    \tweak style #'harmonic
                                                    c''
                                                >16
                                                \once \override Rest.staff-position = #-7
                                                r8.
                                                \tweak style #'cross
                                                g'16
                                                \tweak style #'cross
                                                b'16
                                                ]
                                            }
                                            \times 4/5
                                            {
                                                \once \override Rest.staff-position = #-7
                                                r8
                                                - \tweak Beam.positions #'(-7 . -7)
                                                [
                                                \tweak style #'cross
                                                g'16
                                                \tweak style #'cross
                                                f'16
                                                \tweak style #'cross
                                                e'16
                                                ]
                                                \once \override Rest.staff-position = #-7
                                                r4
                                                <
                                                    \tweak style #'cross
                                                    e'
                                                    \tweak style #'harmonic
                                                    g'
                                                >16
                                            }
                                            \times 4/5
                                            {
                                                \tweak style #'cross
                                                e'16
                                                - \tweak Beam.positions #'(-8 . -8)
                                                [
                                                <
                                                    \tweak style #'cross
                                                    e'
                                                    \tweak style #'harmonic
                                                    g'
                                                >16
                                                \once \override Rest.staff-position = #-7
                                                r16
                                                \tweak style #'cross
                                                f'16
                                                \once \override Rest.staff-position = #-7
                                                r16
                                                ]
                                            }
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 5/4
                                            {
                                                \tweak style #'cross
                                                e'16
                                                [
                                                \tweak style #'cross
                                                d'16
                                                \tweak style #'cross
                                                c'16
                                                \once \override Rest.staff-position = #-7
                                                r16
                                                ]
                                            }
                                            \once \override Rest.staff-position = #-7
                                            r16
                                            [
                                            <
                                                \tweak style #'cross
                                                c'
                                                \tweak style #'harmonic
                                                d'
                                            >16
                                            ]
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 9/8
                                            {
                                                \once \override Rest.staff-position = #-7
                                                r8
                                                [
                                                <
                                                    \tweak style #'cross
                                                    d'
                                                    \tweak style #'harmonic
                                                    f'
                                                >16
                                                \tweak style #'cross
                                                c'16
                                                \tweak style #'cross
                                                b16
                                                \once \override Rest.staff-position = #-7
                                                r8
                                                \tweak style #'cross
                                                a16
                                                ]
                                            }
                                            \times 2/3
                                            {
                                                \tweak style #'cross
                                                a16
                                                [
                                                - \tweak padding #12.5
                                                - \abjad-solid-line-with-arrow
                                                - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " rit. ( to " } \fontsize #-0.5 { \note { 8 } #1.5 } \fontsize #3 { "= 72 )" } } } \hspace #0.5 }
                                                - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #1.5 } \fontsize #4 { "= 72" } } }
                                                - \tweak bound-details.right.padding -6
                                                \startTextSpanThree
                                                \tweak style #'cross
                                                b16
                                                <
                                                    \tweak style #'cross
                                                    a
                                                    \tweak style #'harmonic
                                                    d'
                                                >16
                                                \tweak style #'cross
                                                a16
                                                \once \override Rest.staff-position = #-7
                                                r8.
                                                \set stemLeftBeamCount = 2
                                                \set stemRightBeamCount = 1
                                                \tweak style #'cross
                                                c'16
                                                \set stemLeftBeamCount = 1
                                                \set stemRightBeamCount = 2
                                                <
                                                    \tweak style #'cross
                                                    b
                                                    \tweak style #'harmonic
                                                    c'
                                                >16
                                                \tweak style #'cross
                                                b16
                                                \once \override Rest.staff-position = #-7
                                                r8
                                                ]
                                            }
                                            \once \override Rest.staff-position = #-7
                                            r8.
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 5/6
                                            {
                                                \once \override Rest.staff-position = #-7
                                                r8
                                                [
                                                \tweak style #'cross
                                                a8
                                                \tweak style #'cross
                                                b8
                                                ]
                                            }
                                            \times 2/3
                                            {
                                                \once \override Rest.staff-position = #-7
                                                r8
                                                [
                                                <
                                                    \tweak style #'cross
                                                    a
                                                    \tweak style #'harmonic
                                                    d'
                                                >8
                                                \tweak style #'cross
                                                a8
                                                ]
                                            }
                                            \times 2/3
                                            {
                                                \once \override Rest.staff-position = #-7
                                                r4
                                                \tweak style #'cross
                                                c'4
                                                <
                                                    \tweak style #'cross
                                                    b
                                                    \tweak style #'harmonic
                                                    c'
                                                >4
                                            }
                                            \times 2/3
                                            {
                                                \once \override Rest.staff-position = #-7
                                                r8
                                                [
                                                \tweak style #'cross
                                                b8
                                                \tweak style #'cross
                                                a8
                                                \stopTextSpanThree
                                                ]
                                            }
                                        }
                                        \context Voice = "violin 2 bow voice"
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
                                            - \staccato
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #11
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "II" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -18
                                            \startTextSpanOne
                                            \once \override Rest.staff-position = #10
                                            r4..
                                            - \tweak color #(css-color 'darkred)
                                            - \markup \fontsize #2 { \hspace #-7.5 { "Bow:" } }
                                            \once \override Rest.staff-position = #10
                                            r8.
                                            - \tweak Beam.positions #'(8 . 8)
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
                                            - \staccato
                                            ]
                                            \once \override Rest.staff-position = #10
                                            r4
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                a''
                                            >16
                                            - \tweak color #(css-color 'darkred)
                                            - \staccato
                                            - \tweak Beam.positions #'(8 . 8)
                                            [
                                            \once \override Rest.staff-position = #10
                                            r8.
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
                                            \once \override Rest.staff-position = #10
                                            r8.
                                            ]
                                            \once \override Rest.staff-position = #10
                                            r4
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
                                            - \tweak Beam.positions #'(8 . 8)
                                            [
                                            \once \override Rest.staff-position = #10
                                            r8.
                                            ]
                                            \once \override Rest.staff-position = #10
                                            r4
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
                                            - \tweak Beam.positions #'(8 . 8)
                                            [
                                            \once \override Rest.staff-position = #10
                                            r8.
                                            ]
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                g''
                                            >16
                                            - \tweak color #(css-color 'darkred)
                                            - \staccato
                                            - \tweak Beam.positions #'(8 . 8)
                                            [
                                            \once \override Rest.staff-position = #10
                                            r8.
                                            \once \override Rest.staff-position = #10
                                            r16
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
                                            \once \override Rest.staff-position = #10
                                            r16
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                e''
                                            >16
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            ]
                                            \once \override Rest.staff-position = #10
                                            r2
                                            \stopTextSpanOne
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                e''
                                            >16
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #10
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "III" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -18
                                            \startTextSpanOne
                                            \once \override Rest.staff-position = #10
                                            r4..
                                            \once \override Rest.staff-position = #10
                                            r8.
                                            - \tweak Beam.positions #'(8 . 8)
                                            [
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
                                            ]
                                            \once \override Rest.staff-position = #10
                                            r4
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                e''
                                            >16
                                            - \tweak color #(css-color 'darkred)
                                            - \staccato
                                            - \tweak Beam.positions #'(8 . 8)
                                            [
                                            \once \override Rest.staff-position = #10
                                            r8.
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                e''
                                            >16
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            \once \override Rest.staff-position = #10
                                            r8.
                                            ]
                                            \once \override Rest.staff-position = #10
                                            r4
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
                                            - \tweak Beam.positions #'(8 . 8)
                                            [
                                            \once \override Rest.staff-position = #10
                                            r8.
                                            ]
                                            \once \override Rest.staff-position = #10
                                            r4
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
                                            - \tweak Beam.positions #'(8 . 8)
                                            [
                                            \once \override Rest.staff-position = #10
                                            r8.
                                            ]
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                b'
                                            >16
                                            - \tweak color #(css-color 'darkred)
                                            - \staccato
                                            - \tweak Beam.positions #'(8 . 8)
                                            [
                                            \once \override Rest.staff-position = #10
                                            r8.
                                            \once \override Rest.staff-position = #10
                                            r16
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
                                            \once \override Rest.staff-position = #10
                                            r16
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                g'
                                            >16
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            ]
                                            \once \override Rest.staff-position = #10
                                            r2
                                            \stopTextSpanOne
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                f'
                                            >16
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            - \tweak Beam.positions #'(8 . 8)
                                            [
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #10
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "IV" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -6
                                            \startTextSpanOne
                                            \once \override Rest.staff-position = #10
                                            r16
                                            \once \override Rest.staff-position = #10
                                            r16
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                d'
                                            >16
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            ]
                                            \once \override Rest.staff-position = #10
                                            r4
                                            \once \override Rest.staff-position = #10
                                            r8.
                                            - \tweak Beam.positions #'(8 . 8)
                                            [
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                e'
                                            >16
                                            - \tweak color #(css-color 'darkred)
                                            - \staccato
                                            ]
                                            \once \override Rest.staff-position = #10
                                            r4
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                e'
                                            >16
                                            - \tweak color #(css-color 'darkred)
                                            - \staccato
                                            - \tweak Beam.positions #'(8 . 8)
                                            [
                                            \once \override Rest.staff-position = #10
                                            r8.
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
                                            \once \override Rest.staff-position = #10
                                            r8.
                                            ]
                                            \once \override Rest.staff-position = #10
                                            r4
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                e'
                                            >16
                                            - \tweak color #(css-color 'darkred)
                                            - \staccato
                                            - \tweak Beam.positions #'(8 . 8)
                                            [
                                            \once \override Rest.staff-position = #10
                                            r8.
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
                                    r4.
                                    r4.
                                    r1.
                                    r2.
                                    r2
                                    r1
                                    r4
                                    r2.
                                    r2
                                    r2.
                                    r2
                                    r1.
                                    r\breve
                                    r1
                                    r1.
                                    r1
                                    r2
                                    r1.
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
                                    c'4.
                                    - \upbow
                                      %! +SCORE
                                    ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-7 \raise #7.5 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #1.5 } \fontsize #4 { "= 72" } } }
                                    (
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #4.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "flaut." } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \upright { "OP" }
                                    \startTextSpanTwo
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #6.25
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "Tailpiece" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -3
                                    \startTextSpanOne
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'16
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    c'16
                                    \stopTextSpanTwo
                                    ]
                                    ~
                                    c'4
                                    ~
                                    c'4.
                                    )
                                    c'4.
                                    - \downbow
                                    (
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #4.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "OP" } \hspace #0.5 }
                                    \startTextSpanTwo
                                    ~
                                    c'8
                                    c'4
                                    \stopTextSpanTwo
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #4.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "flaut." } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \upright { "norm." }
                                    \startTextSpanTwo
                                    ~
                                    c'4
                                    c'8
                                    \stopTextSpanTwo
                                    ~
                                    c'4.
                                    )
                                    c'2
                                    - \downbow
                                    (
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #4.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "OP" } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \upright { "norm." }
                                    \startTextSpanTwo
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'8
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    c'8
                                    \stopTextSpanTwo
                                    ]
                                    ~
                                    c'2
                                    )
                                    c'4..
                                    - \upbow
                                    (
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #4.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "flaut." } \hspace #0.5 }
                                    \startTextSpanTwo
                                    - \tweak padding #12
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " accel. ( to " } \fontsize #-0.5 { \note { 8 } #1.5 } \fontsize #3 { "= 120 )" } } } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #1.5 } \fontsize #4 { "= 120" } } }
                                    \startTextSpanThree
                                    c'16
                                    \stopTextSpanTwo
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #4.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "OP" } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \upright { "flaut." }
                                    \startTextSpanTwo
                                    ~
                                    c'4
                                    c'4
                                    )
                                    \stopTextSpanTwo
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'8
                                    - \upbow
                                    [
                                    (
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #4.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "flaut." } \hspace #0.5 }
                                    \startTextSpanTwo
                                    \revert Staff.Stem.stemlet-length
                                    c'8
                                    )
                                    \stopTextSpanTwo
                                    ]
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #4.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "norm." } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \upright { "OP" }
                                    \startTextSpanTwo
                                    c'4
                                    - \downbow
                                    \stopTextSpanOne
                                    \stopTextSpanTwo
                                    \staff-line-count 5
                                    \revert Staff.Clef.stencil
                                    \clef "alto"
                                    <g a>2
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +16 }\line { +0 }} } }
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #11
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "On bridge, allowing strings to ring" } \hspace #0.5 }
                                    \startTextSpanOne
                                    ~
                                    <g a>2
                                    <g a>4
                                    - \accent
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +16 }\line { +0 }} } }
                                    (
                                    <g a>4
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +16 }\line { +0 }} } }
                                    <g a>4
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +16 }\line { +0 }} } }
                                    )
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <g a>8.
                                    - \accent
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +16 }\line { +0 }} } }
                                    \stopTextSpanThree
                                    [
                                    (
                                    \revert Staff.Stem.stemlet-length
                                    <g a>16
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +16 }\line { +0 }} } }
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <g a>8
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    <g a>8
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +16 }\line { +0 }} } }
                                    )
                                    ]
                                    <a cs'>2
                                    - \accent
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -41 }\line { +16 }} } }
                                    (
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <a cs'>8.
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    <a cs'>16
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -41 }\line { +16 }} } }
                                    \stopTextSpanOne
                                    ]
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #11
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "molto tasto" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -8
                                    \startTextSpanOne
                                    ~
                                    <a cs'>4
                                    ~
                                    <a cs'>4
                                    <a cs'>4
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -41 }\line { +16 }} } }
                                    )
                                    <d cs'>4
                                    - \accent
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -41 }\line { +39 }} } }
                                    (
                                    <d cs'>4
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -41 }\line { +39 }} } }
                                    ~
                                    <d cs'>4..
                                    <d cs'>16
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -41 }\line { +39 }} } }
                                    ~
                                    <d cs'>1
                                    )
                                    <f d'>2
                                    - \accent
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +39 }\line { +8 }} } }
                                    (
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <f d'>8.
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +39 }\line { +8 }} } }
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    <f d'>16
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +39 }\line { +8 }} } }
                                    ]
                                    ~
                                    <f d'>4
                                    )
                                    <d' a'>4
                                    - \accent
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +16 }\line { +39 }} } }
                                    (
                                    <d' a'>2.
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +16 }\line { +39 }} } }
                                    <d' a'>2
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +16 }\line { +39 }} } }
                                    )
                                    <a' e''>4
                                    - \accent
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +33 }\line { +16 }} } }
                                    (
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <a' e''>16
                                    [
                                    <a' e''>16
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +33 }\line { +16 }} } }
                                    ~
                                    <a' e''>16
                                    \revert Staff.Stem.stemlet-length
                                    <a' e''>16
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +33 }\line { +16 }} } }
                                    ]
                                    ~
                                    <a' e''>2
                                    )
                                    \once \override Staff.Clef.X-extent = ##f
                                    \once \override Staff.Clef.extra-offset = #'(-3 . 0)
                                    \clef "treble"
                                    bf'4
                                    - \accent
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -34 } } } }
                                    (
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #6.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \hspace #-3 { "+ bowing body" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -8
                                    \startTextSpanTwo
                                    - \tweak padding #12
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " rit. ( to " } \fontsize #-0.5 { \note { 8 } #1.5 } \fontsize #3 { "= 72 )" } } } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #1.5 } \fontsize #4 { "= 72" } } }
                                    \startTextSpanThree
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf'8.
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -34 } } } }
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    bf'16
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -34 } } } }
                                    )
                                    ]
                                    ef''2
                                    - \accent
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +8 } } } }
                                    (
                                    ~
                                    ef''16
                                    ef''4..
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +8 } } } }
                                    ef''2
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +8 } } } }
                                    )
                                    \stopTextSpanOne
                                    \stopTextSpanTwo
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r4
                                    \stopTextSpanThree
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
                                    r4.
                                    r4.
                                    r1.
                                    r2.
                                    r2
                                    r1
                                    r4
                                    r2.
                                    r2
                                    r2.
                                    r2
                                    r1.
                                    r\breve
                                    r1
                                    r1.
                                    r1
                                    r2
                                    r1.
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
                                    \override Dots.staff-position = #2
                                    \clef "bass"
                                    gs8.
                                      %! +SCORE
                                    ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-7 \raise #2 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #1.5 } \fontsize #4 { "= 72" } } }
                                    [
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \tweak style #'harmonic
                                    fs8.
                                    ]
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \big-half-harmonic
                                    \revert Dots.staff-position
                                    eqf,8.
                                    [
                                    \set stemLeftBeamCount = 2
                                    \set stemRightBeamCount = 1
                                    r16
                                    \override Dots.staff-position = #2
                                    \big-half-harmonic
                                    \revert Dots.staff-position
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 2
                                    bf,16
                                    r16
                                    ]
                                    r8.
                                    [
                                    \override Dots.staff-position = #2
                                    \big-half-harmonic
                                    \set stemLeftBeamCount = 2
                                    \set stemRightBeamCount = 1
                                    gf16
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \revert Dots.staff-position
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 2
                                    \tweak style #'harmonic
                                    fqs16
                                    r16
                                    ]
                                    \override Dots.staff-position = #2
                                    \tweak style #'harmonic
                                    f16
                                    [
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \revert Dots.staff-position
                                    \set stemLeftBeamCount = 2
                                    \set stemRightBeamCount = 1
                                    e16
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 2
                                    r16
                                    \override Dots.staff-position = #2
                                    cs8.
                                    ]
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \tweak style #'harmonic
                                    dqf8.
                                    [
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \big-half-harmonic
                                    \set stemLeftBeamCount = 2
                                    \set stemRightBeamCount = 1
                                    a,16
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 2
                                    bqf,16
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \big-half-harmonic
                                    \revert Dots.staff-position
                                    aqs,16
                                    ]
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/5
                                    {
                                        \times 2/3
                                        {
                                            r16
                                            [
                                            \override Dots.staff-position = #2
                                            \revert Dots.staff-position
                                            \tweak style #'harmonic
                                            eqs16
                                            r16
                                        }
                                        r8
                                        \times 2/3
                                        {
                                            \override Dots.staff-position = #2
                                            \big-half-harmonic
                                            e16
                                            - \tweak bound-details.right.arrow ##t
                                            - \tweak thickness #1.5
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            \big-half-harmonic
                                            \revert Dots.staff-position
                                            eqf16
                                            r16
                                        }
                                        \override Dots.staff-position = #2
                                        \big-half-harmonic
                                        d8
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #1.5
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \revert Dots.staff-position
                                        \tweak style #'harmonic
                                        cs8
                                        ]
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 5/6
                                    {
                                        \times 2/3
                                        {
                                            r8
                                            [
                                            \override Dots.staff-position = #2
                                            \big-half-harmonic
                                            fqs8
                                            - \tweak bound-details.right.arrow ##t
                                            - \tweak thickness #1.5
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            \tweak style #'harmonic
                                            e8
                                            ]
                                            - \tweak bound-details.right.arrow ##t
                                            - \tweak thickness #1.5
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                        }
                                        cqs4
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #1.5
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \big-half-harmonic
                                        b,4
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #1.5
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                    }
                                    \times 2/3
                                    {
                                        \revert Dots.staff-position
                                        fs16
                                        [
                                        r16
                                        \override Dots.staff-position = #2
                                        \revert Dots.staff-position
                                        \tweak style #'harmonic
                                        g16
                                        ]
                                    }
                                    r8
                                    [
                                    \times 2/3
                                    {
                                        r16
                                        \override Dots.staff-position = #2
                                        \tweak style #'harmonic
                                        ef16
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #1.5
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \revert Dots.staff-position
                                        gf16
                                        ]
                                    }
                                    \times 2/3
                                    {
                                        r16
                                        [
                                        \override Dots.staff-position = #2
                                        \tweak style #'harmonic
                                        gf16
                                        - \accent
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #1.5
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \revert Dots.staff-position
                                        bqf16
                                    }
                                    r8
                                    ]
                                    \times 2/3
                                    {
                                        \override Dots.staff-position = #2
                                        aqf,4
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #1.5
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak padding #13
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " accel. ( to " } \fontsize #-0.5 { \note { 8 } #1.5 } \fontsize #3 { "= 120 )" } } } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #1.5 } \fontsize #4 { "= 120" } } }
                                        - \tweak bound-details.right.padding -8
                                        \startTextSpanThree
                                        \times 2/3
                                        {
                                            \tweak style #'harmonic
                                            b,8
                                            [
                                            - \tweak bound-details.right.arrow ##t
                                            - \tweak thickness #1.5
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            \big-half-harmonic
                                            as,8
                                            - \tweak bound-details.right.arrow ##t
                                            - \tweak thickness #1.5
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            \tweak style #'harmonic
                                            bqf,8
                                            - \tweak bound-details.right.arrow ##t
                                            - \tweak thickness #1.5
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                        }
                                        \times 2/3
                                        {
                                            \big-half-harmonic
                                            \revert Dots.staff-position
                                            c8
                                            r8
                                            \override Dots.staff-position = #2
                                            \big-half-harmonic
                                            \revert Dots.staff-position
                                            df8
                                            - \accent
                                            ]
                                        }
                                    }
                                    \times 2/3
                                    {
                                        r4
                                        \times 2/3
                                        {
                                            r8
                                            [
                                            \override Dots.staff-position = #2
                                            \big-half-harmonic
                                            af8
                                            - \accent
                                            - \tweak bound-details.right.arrow ##t
                                            - \tweak thickness #1.5
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            \revert Dots.staff-position
                                            \tweak style #'harmonic
                                            c'8
                                            ]
                                        }
                                        r4
                                    }
                                    \override Dots.staff-position = #2
                                    \big-half-harmonic
                                    \clef "tenor"
                                    b32
                                    [
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \revert Dots.staff-position
                                    \tweak style #'harmonic
                                    e'32
                                    r32
                                    \override Dots.staff-position = #2
                                    \set stemLeftBeamCount = 3
                                    \set stemRightBeamCount = 1
                                    \tweak style #'harmonic
                                    d'32
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \times 4/5
                                    {
                                        \big-half-harmonic
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 3
                                        cs'32
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #1.5
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        b32
                                        - \accent
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #1.5
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \tweak style #'harmonic
                                        g32
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #1.5
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \big-half-harmonic
                                        \revert Dots.staff-position
                                        d32
                                        r32
                                        ]
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 5/6
                                    {
                                        \override Dots.staff-position = #2
                                        f4
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #1.5
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \times 2/3
                                        {
                                            \tweak style #'harmonic
                                            a8
                                            [
                                            - \tweak bound-details.right.arrow ##t
                                            - \tweak thickness #1.5
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            bf8
                                            - \tweak bound-details.right.arrow ##t
                                            - \tweak thickness #1.5
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            \tweak style #'harmonic
                                            a8
                                            - \tweak bound-details.right.arrow ##t
                                            - \tweak thickness #1.5
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                        }
                                        \times 2/3
                                        {
                                            aqs8
                                            - \tweak bound-details.right.arrow ##t
                                            - \tweak thickness #1.5
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            \tweak style #'harmonic
                                            a8
                                            - \tweak bound-details.right.arrow ##t
                                            - \tweak thickness #1.5
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            bqf8
                                            - \tweak bound-details.right.arrow ##t
                                            - \tweak thickness #1.5
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                        }
                                    }
                                    \tweak style #'harmonic
                                    a8
                                    ]
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \times 2/3
                                    {
                                        b16
                                        - \accent
                                        [
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #1.5
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \tweak style #'harmonic
                                        c'16
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #1.5
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        b16
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #1.5
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                    }
                                    \tweak style #'harmonic
                                    bqf8
                                    ]
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    b8
                                    [
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \times 2/3
                                    {
                                        \tweak style #'harmonic
                                        c'16
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #1.5
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        b16
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #1.5
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \tweak style #'harmonic
                                        c'16
                                        ]
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #1.5
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                    }
                                    \clef "treble"
                                    dqs'8
                                    - \accent
                                    [
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \tweak style #'harmonic
                                    fs'8
                                    - \accent
                                    ]
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \times 2/3
                                    {
                                        gs'16
                                        - \accent
                                        [
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #1.5
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \tweak style #'harmonic
                                        a'16
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #1.5
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        g'16
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #1.5
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                    }
                                    \tweak style #'harmonic
                                    d''8
                                    - \accent
                                    ]
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \times 2/3
                                    {
                                        eqf''16
                                        - \accent
                                        [
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #1.5
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \tweak style #'harmonic
                                        d''16
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #1.5
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \set stemLeftBeamCount = 2
                                        \set stemRightBeamCount = 1
                                        e''16
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #1.5
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                    }
                                    \times 2/3
                                    {
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 2
                                        \tweak style #'harmonic
                                        b''16
                                        - \accent
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #1.5
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        bf''16
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #1.5
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \revert Dots.staff-position
                                        \tweak style #'harmonic
                                        bqf''16
                                        \stopTextSpanThree
                                        ]
                                    }
                                    <<
                                        \context Voice = "cello 2 voice temp"
                                        {
                                            \voiceOne
                                            bf''32
                                            [
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #11
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { { "CLB" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -4
                                            \startTextSpanOne
                                            \once \override Rest.staff-position = #9.5
                                            r16.
                                            f''32
                                            \once \override Rest.staff-position = #9.5
                                            r16.
                                            cs'''32
                                            \once \override Rest.staff-position = #9.5
                                            r16.
                                            b''32
                                            \once \override Rest.staff-position = #9.5
                                            r16.
                                            ]
                                            a''8
                                            \once \override Rest.staff-position = #9.5
                                            r4.
                                            cs'''8
                                            \once \override Rest.staff-position = #9.5
                                            r4.
                                            b''8
                                            \once \override Rest.staff-position = #9.5
                                            r4.
                                            \times 4/5
                                            {
                                                g''8
                                                \once \override Rest.staff-position = #6
                                                r4.
                                                f''8
                                                \once \override Rest.staff-position = #6
                                                r4.
                                                cs''8
                                                \once \override Rest.staff-position = #6
                                                r4.
                                                b''!8
                                                \once \override Rest.staff-position = #6
                                                r4.
                                                g''8
                                                \once \override Rest.staff-position = #6
                                                r4.
                                            }
                                            \times 4/6
                                            {
                                                e''16
                                                [
                                                r8.
                                                b'16
                                                r8.
                                                bf'16
                                                r8.
                                                bf'16
                                                r8.
                                                cs'16
                                                r8.
                                                e16
                                                r8.
                                                ]
                                            }
                                            \clef "tenor"
                                            g8
                                            r4.
                                            d'8
                                            r4.
                                            b,8
                                            r4.
                                            \times 4/5
                                            {
                                                bf16
                                                [
                                                r8.
                                                f16
                                                r8.
                                                cs16
                                                r8.
                                                e16
                                                r8.
                                                af16
                                                r8.
                                                ]
                                            }
                                            \clef "bass"
                                            d32
                                            [
                                            - \tweak padding #12
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " rit. ( to " } \fontsize #-0.5 { \note { 8 } #1.5 } \fontsize #3 { "= 72 )" } } } \hspace #0.5 }
                                            - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #1.5 } \fontsize #4 { "= 72" } } }
                                            - \tweak bound-details.right.padding -11
                                            \startTextSpanThree
                                            \once \override Rest.staff-position = #1
                                            r16.
                                            b,32
                                            \once \override Rest.staff-position = #1
                                            r16.
                                            c32
                                            \once \override Rest.staff-position = #1
                                            r16.
                                            bf,32
                                            \once \override Rest.staff-position = #1
                                            r16.
                                            ]
                                            d16
                                            [
                                            r8.
                                            b,16
                                            r8.
                                            g,16
                                            r8.
                                            cs,16
                                            r8.
                                            b!16
                                            r8.
                                            bf,16
                                            \stopTextSpanOne
                                            r8.
                                            \stopTextSpanThree
                                            ]
                                        }
                                        \context Voice = "cello polyrhythm voice"
                                        {
                                            \times 2/3
                                            {
                                                \voiceTwo
                                                d'''16
                                                [
                                                \once \override Rest.staff-position = #3
                                                r8.
                                                g''16
                                                \once \override Rest.staff-position = #3
                                                r8.
                                                e'''16
                                                \once \override Rest.staff-position = #3
                                                r8.
                                                ]
                                            }
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 6/5
                                            {
                                                cs'''16
                                                [
                                                \once \override Rest.staff-position = #3
                                                r8.
                                                f''16
                                                \once \override Rest.staff-position = #3
                                                r8.
                                                bf''16
                                                \once \override Rest.staff-position = #3
                                                r8.
                                                b''16
                                                \once \override Rest.staff-position = #3
                                                r8.
                                                d'''16
                                                \once \override Rest.staff-position = #3
                                                r8.
                                                ]
                                            }
                                            \times 4/6
                                            {
                                                g'8
                                                \once \override Rest.staff-position = #-4
                                                r4.
                                                fs'8
                                                \once \override Rest.staff-position = #-4
                                                r4.
                                                cs'''8
                                                \once \override Rest.staff-position = #-4
                                                r4.
                                                f'''8
                                                \once \override Rest.staff-position = #-4
                                                r4.
                                                bf'8
                                                \once \override Rest.staff-position = #-4
                                                r4.
                                                b'8
                                                \once \override Rest.staff-position = #-4
                                                r4.
                                            }
                                            \times 2/3
                                            {
                                                d''8
                                                r4.
                                                af'8
                                                r4.
                                                b8
                                                r4.
                                            }
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 6/5
                                            {
                                                cs'16
                                                [
                                                r8.
                                                f16
                                                r8.
                                                bf16
                                                r8.
                                                e16
                                                r8.
                                                d16
                                                r8.
                                                ]
                                            }
                                            g16
                                            [
                                            r8.
                                            e16
                                            r8.
                                            d16
                                            r8.
                                            bf16
                                            r8.
                                            ]
                                            \times 4/6
                                            {
                                                \once \override Staff.Clef.X-extent = ##f
                                                \once \override Staff.Clef.extra-offset = #'(-3 . 0)
                                                bf,32
                                                [
                                                \once \override Rest.staff-position = #-7
                                                r16.
                                                b,32
                                                \once \override Rest.staff-position = #-7
                                                r16.
                                                d,32
                                                \once \override Rest.staff-position = #-7
                                                r16.
                                                gs,32
                                                \once \override Rest.staff-position = #-7
                                                r16.
                                                e,32
                                                \once \override Rest.staff-position = #-7
                                                r16.
                                                cs,32
                                                \once \override Rest.staff-position = #-7
                                                r16.
                                                ]
                                            }
                                            f,8
                                            r4.
                                            bf,8
                                            r4.
                                            b,!8
                                            r4.
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
