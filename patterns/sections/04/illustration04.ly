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
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (13 24 19 26.5 33)))
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
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (13 19 20 27 32)))
            \time 3/4
            s1 * 3/4
              %! +SCORE
            \noBreak
            \time 2/4
            s1 * 1/2
              %! +SCORE
            \break
            \time 3/2
            s1 * 3/2
            \time 4/2
            s1 * 2
            \time 2/2
            s1 * 1
            \time 3/2
            s1 * 3/2
            \time 2/2
            s1 * 1
            \time 1/2
            s1 * 1/2
            \time 3/2
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
                                    \once \override Staff.BarLine.transparent = ##f
                                    \startStaff
                                    r4.
                                    r4.
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
                                    r4
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
                                    ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-7 \raise #3 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #1.5 } \fontsize #4 { "= 100" } } }
                                    [
                                    \override Staff.BarLine.bar-extent = #'(-2 . 2)
                                    c'16
                                    - \tenuto
                                    \p
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
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    r4
                                    \!
                                    - \tweak padding #14
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " accel. ( to " } \fontsize #-0.5 { \note { 4 } #1.5 } \fontsize #3 { "= 125 )" } } } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 125" } } }
                                    \startTextSpanThree
                                    c'2
                                    - \tenuto
                                    \p
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
                                    - \tweak padding #1
                                    ^ \talon-to-punta
                                    - \tweak font-size #10
                                    - \tweak padding #7.5
                                    ^ \middle-fermata
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -49 }\line { +0 }} } }
                                    [
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #12.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "On bridge, allowing strings to ring" } \hspace #0.5 }
                                    \startTextSpanOne
                                    r8.
                                    ]
                                    <cs'! ds'!>2
                                    - \tenuto
                                    \pp
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
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    r16
                                    \!
                                    [
                                    <cs'! ds'!>16
                                    - \tenuto
                                    \pp
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
                                    \ppp
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +8 }\line { +32 }} } }
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    r8.
                                    \!
                                    [
                                    <cs'! ds'!>16
                                    - \accent
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +8 }\line { +32 }} } }
                                    \stopTextSpanOne
                                    ]
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #12.5
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
                                    \<
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
                                    \p
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +39 }\line { +8 }} } }
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    - \tweak padding #14
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " rit. ( to " } \fontsize #-0.5 { \note { 4 } #1.5 } \fontsize #3 { "= 50 )" } } } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 50" } } }
                                    \startTextSpanThree
                                    r8.
                                    [
                                    <gf''! d'''!>16
                                    - \accent
                                    \p
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +39 }\line { +8 }} } }
                                    ]
                                    \<
                                    r4
                                    d'''!16
                                    - \accent
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +39 } } } }
                                    [
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #10
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
                                    \mf
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +39 } } } }
                                    \stopTextSpanOne
                                    \stopTextSpanTwo
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
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
                                    ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-7 \raise #4 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #1.5 } \fontsize #4 { "= 100" } } }
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
                                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " accel. ( to " } \fontsize #-0.5 { \note { 4 } #1.5 } \fontsize #3 { "= 125 )" } } } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 125" } } }
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
                                                ^ \p
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
                                                ^ \>
                                                fs'4
                                                g4
                                                ef'4
                                                a'4
                                                b4
                                            }
                                            fs'16
                                            ^ \pp
                                            [
                                            bf'16
                                            af'16
                                            c'16
                                            ]
                                            fs'4
                                            - \tweak font-size #10
                                            - \tweak padding #3
                                            ^ \middle-fermata
                                            e'4
                                            a'4
                                            ^ \>
                                            af'4
                                            af'4
                                            f'4
                                            a'4
                                            b'4
                                            \times 4/6
                                            {
                                                fs''8
                                                ^ \ppp
                                                [
                                                fs'8
                                                a''8
                                                ds''8
                                                fs'''8
                                                b'''8
                                                ]
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
                                                fs'16
                                                [
                                                b'16
                                                a'16
                                                fs'16
                                                g16
                                                ]
                                            }
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 5/6
                                            {
                                                c'2
                                                a2
                                                b2
                                            }
                                            b8
                                            [
                                            fs'8
                                            g'8
                                            d''8
                                            fs''8
                                            b''8
                                            ]
                                            a'8
                                            [
                                            fs''8
                                            gs''8
                                            ds'''8
                                            ]
                                        }
                                    >>
                                    \oneVoice
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
                                        \tweak style #'cross
                                        f''16
                                        ^ \markup 0
                                        [
                                        \tweak style #'cross
                                        g''16
                                        ^ \markup 1
                                        \tweak style #'cross
                                        f''16
                                        ^ \markup 2
                                        \tweak style #'cross
                                        e''16
                                        ^ \markup 3
                                        \tweak style #'cross
                                        g''16
                                        ^ \markup 4
                                        ]
                                        \once \override Rest.staff-position = #-7
                                        r4
                                        ^ \markup 5
                                        \tweak style #'cross
                                        g''16
                                        ^ \markup 6
                                    }
                                    <
                                        \tweak style #'cross
                                        d''
                                        \tweak style #'harmonic
                                        f''
                                    >16
                                    ^ \markup 7
                                    <
                                        \tweak style #'cross
                                        c''
                                        \tweak style #'harmonic
                                        f''
                                    >16
                                    ^ \markup 8
                                    [
                                    \tweak style #'cross
                                    g''16
                                    ^ \markup 9
                                    \once \override Rest.staff-position = #-7
                                    r8
                                    ^ \markup 10
                                    ]
                                    \times 4/5
                                    {
                                        <
                                            \tweak style #'cross
                                            c''
                                            \tweak style #'harmonic
                                            f''
                                        >16
                                        ^ \markup 11
                                        [
                                        <
                                            \tweak style #'cross
                                            c''
                                            \tweak style #'harmonic
                                            f''
                                        >16
                                        ^ \markup 12
                                        \once \override Rest.staff-position = #-7
                                        r8
                                        ^ \markup 13
                                        \tweak style #'cross
                                        g''16
                                        ^ \markup 14
                                        ]
                                    }
                                    \times 4/5
                                    {
                                        \once \override Rest.staff-position = #-7
                                        r8
                                        ^ \markup 15
                                        [
                                        \tweak style #'cross
                                        g''16
                                        ^ \markup 16
                                        \tweak style #'cross
                                        f''16
                                        ^ \markup 17
                                        \tweak style #'cross
                                        c''16
                                        ^ \markup 18
                                        ]
                                    }
                                    \once \override Rest.staff-position = #-7
                                    r4
                                    ^ \markup 19
                                    \times 4/6
                                    {
                                        \once \override Rest.staff-position = #-7
                                        r8
                                        ^ \markup 20
                                        [
                                        \tweak style #'cross
                                        d'8
                                        ^ \markup 21
                                        \tweak style #'cross
                                        d''8
                                        ^ \markup 22
                                        \tweak style #'cross
                                        e'8
                                        ^ \markup 23
                                        ]
                                        \once \override Rest.staff-position = #-7
                                        r4
                                        ^ \markup 24
                                    }
                                    \times 4/6
                                    {
                                        \once \override Rest.staff-position = #-7
                                        r8
                                        ^ \markup 25
                                        [
                                        \tweak style #'cross
                                        e''16
                                        ^ \markup 26
                                        \tweak style #'cross
                                        e'16
                                        ^ \markup 27
                                        \once \override Rest.staff-position = #-7
                                        r8
                                        ^ \markup 28
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
                                        ^ \markup 29
                                        [
                                        \tweak style #'cross
                                        d'16
                                        ^ \markup 30
                                        \once \override Rest.staff-position = #-7
                                        r8
                                        ^ \markup 31
                                        \tweak style #'cross
                                        e'16
                                        ^ \markup 32
                                        \tweak style #'cross
                                        d''16
                                        ^ \markup 33
                                        ]
                                    }
                                    \times 2/3
                                    {
                                        \once \override Rest.staff-position = #-7
                                        r16
                                        ^ \markup 34
                                        [
                                        \tweak style #'cross
                                        f''16
                                        ^ \markup 35
                                        \tweak style #'cross
                                        g'16
                                        ^ \markup 36
                                        ]
                                    }
                                    \once \override Rest.staff-position = #-7
                                    r16
                                    ^ \markup 37
                                    \once \override Rest.staff-position = #-7
                                    r8
                                    ^ \markup 38
                                    [
                                    \tweak style #'cross
                                    f''16.
                                    ^ \markup 39
                                    \set stemLeftBeamCount = 3
                                    \set stemRightBeamCount = 1
                                    <
                                        \tweak style #'cross
                                        g'
                                        \tweak style #'harmonic
                                        b'
                                    >32
                                    ^ \markup 40
                                    ~
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 2
                                    <
                                        \tweak style #'cross
                                        g'
                                        \tweak style #'harmonic
                                        b'
                                    >16
                                    ^ \markup 41
                                    \set stemLeftBeamCount = 2
                                    \set stemRightBeamCount = 1
                                    \tweak style #'cross
                                    g''16
                                    ^ \markup 42
                                    ~
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 3
                                    \tweak style #'cross
                                    g''32
                                    ^ \markup 43
                                    <
                                        \tweak style #'cross
                                        a'
                                        \tweak style #'harmonic
                                        d''
                                    >16.
                                    ^ \markup 44
                                    ]
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 11/12
                                    {
                                        \once \override Rest.staff-position = #-7
                                        r4
                                        ^ \markup 45
                                        \tweak style #'cross
                                        f''8
                                        ^ \markup 46
                                        [
                                        \tweak style #'cross
                                        e''8
                                        ^ \markup 47
                                        \once \override Rest.staff-position = #-7
                                        r8
                                        ^ \markup 48
                                        \tweak style #'cross
                                        d''8
                                        ^ \markup 49
                                        ]
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 5/6
                                    {
                                        \tweak style #'cross
                                        c''8
                                        ^ \markup 50
                                        [
                                        \tweak style #'cross
                                        b'8
                                        ^ \markup 51
                                        \once \override Rest.staff-position = #-7
                                        r8
                                        ^ \markup 52
                                        ]
                                    }
                                    \times 4/5
                                    {
                                        \tweak style #'cross
                                        b'16
                                        ^ \markup 53
                                        [
                                        \tweak style #'cross
                                        d''16
                                        ^ \markup 54
                                        <
                                            \tweak style #'cross
                                            b'
                                            \tweak style #'harmonic
                                            d''
                                        >16
                                        ^ \markup 55
                                        \once \override Rest.staff-position = #-7
                                        r8
                                        ^ \markup 56
                                        ]
                                    }
                                    \times 4/5
                                    {
                                        \once \override Rest.staff-position = #-7
                                        r16
                                        ^ \markup 57
                                        [
                                        <
                                            \tweak style #'cross
                                            b'
                                            \tweak style #'harmonic
                                            d''
                                        >16
                                        ^ \markup 58
                                        \tweak style #'cross
                                        a'16
                                        ^ \markup 59
                                        \set stemLeftBeamCount = 2
                                        \set stemRightBeamCount = 1
                                        \tweak style #'cross
                                        c''16
                                        ^ \markup 60
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 2
                                        <
                                            \tweak style #'cross
                                            g'
                                            \tweak style #'harmonic
                                            c''
                                        >16
                                        ^ \markup 61
                                        \once \override Rest.staff-position = #-7
                                        r8.
                                        ^ \markup 62
                                        \tweak style #'cross
                                        g'16
                                        ^ \markup 63
                                        \tweak style #'cross
                                        b'16
                                        ^ \markup 64
                                        ]
                                    }
                                    \times 4/5
                                    {
                                        \once \override Rest.staff-position = #-7
                                        r8
                                        ^ \markup 65
                                        [
                                        \tweak style #'cross
                                        g'16
                                        ^ \markup 66
                                        \tweak style #'cross
                                        f'16
                                        ^ \markup 67
                                        \tweak style #'cross
                                        e'16
                                        ^ \markup 68
                                        ]
                                        \once \override Rest.staff-position = #-7
                                        r4
                                        ^ \markup 69
                                        <
                                            \tweak style #'cross
                                            e'
                                            \tweak style #'harmonic
                                            g'
                                        >16
                                        ^ \markup 70
                                    }
                                    \times 4/5
                                    {
                                        \tweak style #'cross
                                        e'16
                                        ^ \markup 71
                                        [
                                        <
                                            \tweak style #'cross
                                            e'
                                            \tweak style #'harmonic
                                            g'
                                        >16
                                        ^ \markup 72
                                        \once \override Rest.staff-position = #-7
                                        r16
                                        ^ \markup 73
                                        \tweak style #'cross
                                        f'16
                                        ^ \markup 74
                                        \once \override Rest.staff-position = #-7
                                        r16
                                        ^ \markup 75
                                        ]
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 5/4
                                    {
                                        \tweak style #'cross
                                        e'16
                                        ^ \markup 76
                                        [
                                        \tweak style #'cross
                                        d'16
                                        ^ \markup 77
                                        \tweak style #'cross
                                        c'16
                                        ^ \markup 78
                                        \once \override Rest.staff-position = #-7
                                        r16
                                        ^ \markup 79
                                        ]
                                    }
                                    \once \override Rest.staff-position = #-7
                                    r16
                                    ^ \markup 80
                                    [
                                    <
                                        \tweak style #'cross
                                        c'
                                        \tweak style #'harmonic
                                        d'
                                    >16
                                    ^ \markup 81
                                    ]
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 9/8
                                    {
                                        \once \override Rest.staff-position = #-7
                                        r8
                                        ^ \markup 82
                                        [
                                        <
                                            \tweak style #'cross
                                            d'
                                            \tweak style #'harmonic
                                            f'
                                        >16
                                        ^ \markup 83
                                        \tweak style #'cross
                                        c'16
                                        ^ \markup 84
                                        \tweak style #'cross
                                        b16
                                        ^ \markup 85
                                        \once \override Rest.staff-position = #-7
                                        r8
                                        ^ \markup 86
                                        \tweak style #'cross
                                        a16
                                        ^ \markup 87
                                        ]
                                    }
                                    \times 2/3
                                    {
                                        \tweak style #'cross
                                        a16
                                        ^ \markup 88
                                        [
                                        \tweak style #'cross
                                        b16
                                        ^ \markup 89
                                        <
                                            \tweak style #'cross
                                            a
                                            \tweak style #'harmonic
                                            d'
                                        >16
                                        ^ \markup 90
                                        \tweak style #'cross
                                        a16
                                        ^ \markup 91
                                        \once \override Rest.staff-position = #-7
                                        r8.
                                        ^ \markup 92
                                        \set stemLeftBeamCount = 2
                                        \set stemRightBeamCount = 1
                                        \tweak style #'cross
                                        c'16
                                        ^ \markup 93
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 2
                                        <
                                            \tweak style #'cross
                                            b
                                            \tweak style #'harmonic
                                            c'
                                        >16
                                        ^ \markup 94
                                        \tweak style #'cross
                                        b16
                                        ^ \markup 95
                                        \once \override Rest.staff-position = #-7
                                        r8
                                        ^ \markup 96
                                        ]
                                    }
                                    \once \override Rest.staff-position = #-7
                                    r8.
                                    ^ \markup 97
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 5/6
                                    {
                                        \once \override Rest.staff-position = #-7
                                        r8
                                        ^ \markup 98
                                        [
                                        \tweak style #'cross
                                        a8
                                        ^ \markup 99
                                        \tweak style #'cross
                                        b8
                                        ^ \markup 100
                                        ]
                                    }
                                    \times 2/3
                                    {
                                        \once \override Rest.staff-position = #-7
                                        r8
                                        ^ \markup 101
                                        [
                                        <
                                            \tweak style #'cross
                                            a
                                            \tweak style #'harmonic
                                            d'
                                        >8
                                        ^ \markup 102
                                        \tweak style #'cross
                                        a8
                                        ^ \markup 103
                                        ]
                                    }
                                    \times 2/3
                                    {
                                        \once \override Rest.staff-position = #-7
                                        r4
                                        ^ \markup 104
                                        \tweak style #'cross
                                        c'4
                                        ^ \markup 105
                                        <
                                            \tweak style #'cross
                                            b
                                            \tweak style #'harmonic
                                            c'
                                        >4
                                        ^ \markup 106
                                    }
                                    \times 2/3
                                    {
                                        \once \override Rest.staff-position = #-7
                                        r8
                                        ^ \markup 107
                                        [
                                        \tweak style #'cross
                                        b8
                                        ^ \markup 108
                                        \tweak style #'cross
                                        a8
                                        ^ \markup 109
                                        ]
                                    }
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
                                      %! +SCORE
                                    ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-7 \raise #5 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #1.5 } \fontsize #4 { "= 100" } } }
                                    (
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #3.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "Tailpiece" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpan
                                    \<
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'16
                                    [
                                    \revert Staff.Stem.stemlet-length
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
                                    ]
                                    - \tweak circled-tip ##t
                                    \>
                                    ~
                                    c'4
                                    ~
                                    c'4.
                                    )
                                    c'4.
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
                                    (
                                    \<
                                    ~
                                    c'8
                                    c'4
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
                                    \>
                                    ~
                                    c'4
                                    c'8
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
                                    ~
                                    c'4.
                                    )
                                    c'2
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
                                    (
                                    \>
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'8
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    c'8
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
                                    ]
                                    ~
                                    c'2
                                    )
                                    c'4..
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
                                    - \tweak padding #12
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " accel. ( to " } \fontsize #-0.5 { \note { 4 } #1.5 } \fontsize #3 { "= 125 )" } } } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 125" } } }
                                    \startTextSpanThree
                                    \>
                                    c'16
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
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    ~
                                    c'4
                                    c'4
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
                                    )
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'8
                                    [
                                    (
                                    \>
                                    \revert Staff.Stem.stemlet-length
                                    c'8
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
                                    ]
                                    \<
                                    c'4
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
                                    - \tweak font-size #10
                                    - \tweak padding #4
                                    ^ \middle-fermata
                                    \stopTextSpan
                                    \staff-line-count 5
                                      %! +SCORE
                                    \revert Staff.BarLine.bar-extent
                                    \revert Staff.Clef.stencil
                                    \clef "alto"
                                    <g a>2
                                    - \accent
                                    \mp
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +16 }\line { +0 }} } }
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
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
                                    \ppp
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +16 }\line { +0 }} } }
                                    (
                                    \<
                                    <g a>4
                                    \p
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +16 }\line { +0 }} } }
                                    \>
                                    <g a>4
                                    \pp
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +16 }\line { +0 }} } }
                                    )
                                    - \tweak circled-tip ##t
                                    \>
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <g a>8.
                                    - \accent
                                    \mp
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +16 }\line { +0 }} } }
                                    \stopTextSpanThree
                                    [
                                    (
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    \revert Staff.Stem.stemlet-length
                                    <g a>16
                                    \pp
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +16 }\line { +0 }} } }
                                    ]
                                    \>
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <g a>8
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    <g a>8
                                    \ppp
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +16 }\line { +0 }} } }
                                    )
                                    ]
                                    <a cs'>2
                                    - \accent
                                    \mp
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -41 }\line { +16 }} } }
                                    (
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <a cs'>8.
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    <a cs'>16
                                    \pp
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
                                    \>
                                    ~
                                    <a cs'>4
                                    ~
                                    <a cs'>4
                                    <a cs'>4
                                    \ppp
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -41 }\line { +16 }} } }
                                    )
                                    <d cs'>4
                                    - \accent
                                    \mp
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -41 }\line { +39 }} } }
                                    (
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    <d cs'>4
                                    \pp
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -41 }\line { +39 }} } }
                                    \>
                                    ~
                                    <d cs'>4..
                                    <d cs'>16
                                    \ppp
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -41 }\line { +39 }} } }
                                    ~
                                    <d cs'>1
                                    )
                                    <f d'>2
                                    - \accent
                                    \mp
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +39 }\line { +8 }} } }
                                    (
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <f d'>8.
                                    \pp
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +39 }\line { +8 }} } }
                                    [
                                    \>
                                    \revert Staff.Stem.stemlet-length
                                    <f d'>16
                                    \ppp
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +39 }\line { +8 }} } }
                                    ]
                                    ~
                                    <f d'>4
                                    )
                                    <d' a'>4
                                    - \accent
                                    \mp
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +16 }\line { +39 }} } }
                                    (
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    <d' a'>2.
                                    \pp
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +16 }\line { +39 }} } }
                                    \>
                                    <d' a'>2
                                    \ppp
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +16 }\line { +39 }} } }
                                    )
                                    <a' e''>4
                                    - \accent
                                    \mf
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +33 }\line { +16 }} } }
                                    (
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <a' e''>16
                                    [
                                    <a' e''>16
                                    \p
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +33 }\line { +16 }} } }
                                    \>
                                    ~
                                    <a' e''>16
                                    \revert Staff.Stem.stemlet-length
                                    <a' e''>16
                                    \pp
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
                                    \mf
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
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " rit. ( to " } \fontsize #-0.5 { \note { 4 } #1.5 } \fontsize #3 { "= 50 )" } } } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 50" } } }
                                    \startTextSpanThree
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf'8.
                                    \p
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -34 } } } }
                                    [
                                    \>
                                    \revert Staff.Stem.stemlet-length
                                    bf'16
                                    \pp
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -34 } } } }
                                    )
                                    ]
                                    ef''2
                                    - \accent
                                    \f
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +8 } } } }
                                    (
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    ~
                                    ef''16
                                    ef''4..
                                    \mp
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +8 } } } }
                                    \>
                                    ef''2
                                    \p
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
                                    \p
                                      %! +SCORE
                                    ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-7 \raise #9.5 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #1.5 } \fontsize #4 { "= 100" } } }
                                    [
                                    (
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #10
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "Norm." } \hspace #0.5 }
                                    \startTextSpanTwo
                                    - \tweak padding #7.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \normale-bow-rotation \hspace #0.5 }
                                    \startTextSpanOne
                                    \tweak style #'harmonic
                                    fs8.
                                    \stopTextSpanTwo
                                    ]
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #10
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "1/2 Spz." } \hspace #0.5 }
                                    - \tweak bound-details.right.padding 0.5
                                    \startTextSpanTwo
                                    \big-half-harmonic
                                    \revert Dots.staff-position
                                    eqf,8.
                                    )
                                    \stopTextSpanOne
                                    [
                                    - \tweak padding #7.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \bow-tip-half-up \hspace #0.5 }
                                    - \tweak bound-details.right.padding 0.5
                                    \startTextSpanOne
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
                                    (
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \revert Dots.staff-position
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 2
                                    \tweak style #'harmonic
                                    fqs16
                                    )
                                    r16
                                    ]
                                    \override Dots.staff-position = #2
                                    \tweak style #'harmonic
                                    f16
                                    [
                                    (
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \revert Dots.staff-position
                                    \set stemLeftBeamCount = 2
                                    \set stemRightBeamCount = 1
                                    e16
                                    )
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 2
                                    r16
                                    \override Dots.staff-position = #2
                                    cs8.
                                    \stopTextSpanOne
                                    \stopTextSpanTwo
                                    ]
                                    (
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #10
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "" } \hspace #0.5 }
                                    \startTextSpanTwo
                                    - \tweak padding #7.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { {} \hspace #0.5 }
                                    \startTextSpanOne
                                    \tweak style #'harmonic
                                    dqf8.
                                    )
                                    \stopTextSpanOne
                                    [
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    - \tweak padding #7.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \bow-tip-half-down \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpanOne
                                    \big-half-harmonic
                                    \set stemLeftBeamCount = 2
                                    \set stemRightBeamCount = 1
                                    a,16
                                    (
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
                                    )
                                    \stopTextSpanTwo
                                    ]
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #10
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "3/4 Spz." } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpanTwo
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
                                            (
                                            - \tweak bound-details.right.arrow ##t
                                            - \tweak thickness #1.5
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            \big-half-harmonic
                                            \revert Dots.staff-position
                                            eqf16
                                            )
                                            r16
                                        }
                                        \override Dots.staff-position = #2
                                        \big-half-harmonic
                                        d8
                                        (
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #1.5
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \revert Dots.staff-position
                                        \tweak style #'harmonic
                                        cs8
                                        )
                                        \stopTextSpanOne
                                        \stopTextSpanTwo
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
                                            (
                                            - \tweak bound-details.right.arrow ##t
                                            - \tweak thickness #1.5
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 1
                                            - \tweak padding #12
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \upright { "Norm." } \hspace #0.5 }
                                            \startTextSpanTwo
                                            - \tweak padding #9.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \bow-tip-half-down \hspace #0.5 }
                                            \startTextSpanOne
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
                                        \stopTextSpanOne
                                        \stopTextSpanTwo
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #1.5
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak font-name "Bodoni72 Book" 
                                        - \tweak font-size 1
                                        - \tweak padding #12
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "Spz." } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -1
                                        \startTextSpanTwo
                                        - \tweak padding #9.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \normale-bow-rotation \hspace #0.5 }
                                        - \tweak bound-details.right.padding -2
                                        \startTextSpanOne
                                    }
                                    \times 2/3
                                    {
                                        \revert Dots.staff-position
                                        fs16
                                        )
                                        \stopTextSpanTwo
                                        [
                                        r16
                                        \override Dots.staff-position = #2
                                        \revert Dots.staff-position
                                        \tweak style #'harmonic
                                        g16
                                        \stopTextSpanOne
                                        ]
                                        - \tweak font-name "Bodoni72 Book" 
                                        - \tweak font-size 1
                                        - \tweak padding #12
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "1/4 Spz." } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -2
                                        \startTextSpanTwo
                                    }
                                    r8
                                    [
                                    \times 2/3
                                    {
                                        r16
                                        \override Dots.staff-position = #2
                                        \tweak style #'harmonic
                                        ef16
                                        (
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #1.5
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak padding #9.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \bow-tip-half-up \hspace #0.5 }
                                        - \tweak bound-details.right.padding -2
                                        \startTextSpanOne
                                        \revert Dots.staff-position
                                        gf16
                                        )
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
                                        (
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #1.5
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \revert Dots.staff-position
                                        bqf16
                                        )
                                        \stopTextSpanOne
                                        \stopTextSpanTwo
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
                                        - \tweak font-name "Bodoni72 Book" 
                                        - \tweak font-size 1
                                        - \tweak padding #14
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "1/2 Spz." } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -2
                                        \startTextSpanTwo
                                        - \tweak padding #11.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \bow-tip-half-up \hspace #0.5 }
                                        - \tweak bound-details.right.padding -2
                                        \startTextSpanOne
                                        - \tweak padding #16
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " accel. ( to " } \fontsize #-0.5 { \note { 4 } #1.5 } \fontsize #3 { "= 125 )" } } } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 125" } } }
                                        - \tweak bound-details.right.padding -8
                                        \startTextSpanThree
                                        \>
                                        \times 2/3
                                        {
                                            \tweak style #'harmonic
                                            b,8
                                            [
                                            (
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
                                            )
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
                                            \stopTextSpanOne
                                            \stopTextSpanTwo
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
                                            (
                                            - \tweak bound-details.right.arrow ##t
                                            - \tweak thickness #1.5
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            \revert Dots.staff-position
                                            \tweak style #'harmonic
                                            c'8
                                            )
                                            ]
                                        }
                                        r4
                                    }
                                    \override Dots.staff-position = #2
                                    \big-half-harmonic
                                    \clef "tenor"
                                    b32
                                    \pp
                                    [
                                    (
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \revert Dots.staff-position
                                    \tweak style #'harmonic
                                    e'32
                                    )
                                    r32
                                    \override Dots.staff-position = #2
                                    \set stemLeftBeamCount = 3
                                    \set stemRightBeamCount = 1
                                    \tweak style #'harmonic
                                    d'32
                                    (
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
                                        )
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #1.5
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        b32
                                        - \accent
                                        (
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
                                        )
                                        r32
                                        ]
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 5/6
                                    {
                                        \override Dots.staff-position = #2
                                        f4
                                        - \tweak font-size #10
                                        - \tweak padding #3
                                        ^ \middle-fermata
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #1.5
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \times 2/3
                                        {
                                            \tweak style #'harmonic
                                            a8
                                            [
                                            (
                                            - \tweak bound-details.right.arrow ##t
                                            - \tweak thickness #1.5
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 1
                                            - \tweak padding #11
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \upright { "(Norm.)" } \hspace #0.5 }
                                            \startTextSpanTwo
                                            - \tweak padding #8.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \normale-bow-rotation \hspace #0.5 }
                                            \startTextSpanOne
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
                                            \stopTextSpanOne
                                            - \tweak bound-details.right.arrow ##t
                                            - \tweak thickness #1.5
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            - \tweak padding #8.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \bow-tip-half-up \hspace #0.5 }
                                            \startTextSpanOne
                                            bqf8
                                            - \tweak bound-details.right.arrow ##t
                                            - \tweak thickness #1.5
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                        }
                                    }
                                    \tweak style #'harmonic
                                    a8
                                    )
                                    ]
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \times 2/3
                                    {
                                        b16
                                        - \accent
                                        \stopTextSpanTwo
                                        [
                                        (
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #1.5
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak font-name "Bodoni72 Book" 
                                        - \tweak font-size 1
                                        - \tweak padding #11
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright { "1/2 Spz." } \hspace #0.5 }
                                        \startTextSpanTwo
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
                                    \stopTextSpanOne
                                    [
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    - \tweak padding #8.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \bow-tip-half-down \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpanOne
                                    \times 2/3
                                    {
                                        \tweak style #'harmonic
                                        c'16
                                        \stopTextSpanTwo
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #1.5
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak font-name "Bodoni72 Book" 
                                        - \tweak font-size 1
                                        - \tweak padding #11
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright { "1/4 Spz." } \hspace #0.5 }
                                        \startTextSpanTwo
                                        b16
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #1.5
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \tweak style #'harmonic
                                        c'16
                                        )
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
                                    \<
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
                                        (
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
                                        )
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
                                        \stopTextSpanTwo
                                        [
                                        (
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #1.5
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak font-name "Bodoni72 Book" 
                                        - \tweak font-size 1
                                        - \tweak padding #11
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "Spz." } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -2
                                        \startTextSpanTwo
                                        \tweak style #'harmonic
                                        d''16
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #1.5
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \set stemLeftBeamCount = 2
                                        \set stemRightBeamCount = 1
                                        e''16
                                        )
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
                                        (
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
                                        \f
                                        )
                                        \stopTextSpanOne
                                        \stopTextSpanThree
                                        \stopTextSpanTwo
                                        ]
                                    }
                                    <<
                                        \context Voice = "cello 2 voice temp"
                                        {
                                            \voiceOne
                                            bf''8
                                            [
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #10
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { { "CLB" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -4
                                            \startTextSpanOne
                                            - \tweak stencil #abjad-flared-hairpin
                                            \>
                                            f''8
                                            cs'''8
                                            b''8
                                            ]
                                            a''2
                                            \ppp
                                            cs'''2
                                            b''2
                                            \times 4/5
                                            {
                                                g''2
                                                f''2
                                                cs''2
                                                b''!2
                                                g''2
                                            }
                                            \times 4/6
                                            {
                                                e''4
                                                b'4
                                                bf'4
                                                bf'4
                                                cs'4
                                                e4
                                            }
                                            \clef "tenor"
                                            g2
                                            d'2
                                            b,2
                                            \times 4/5
                                            {
                                                bf4
                                                \<
                                                f4
                                                cs4
                                                e4
                                                af4
                                            }
                                            \clef "bass"
                                            d8
                                            [
                                            - \tweak padding #11
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " rit. ( to " } \fontsize #-0.5 { \note { 4 } #1.5 } \fontsize #3 { "= 50 )" } } } \hspace #0.5 }
                                            - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 50" } } }
                                            - \tweak bound-details.right.padding -15
                                            \startTextSpanThree
                                            b,8
                                            c8
                                            as,8
                                            ]
                                            d4
                                            \mf
                                            b,4
                                            g,4
                                            df,4
                                            b!4
                                            bf,4
                                            \stopTextSpanOne
                                            \stopTextSpanThree
                                        }
                                        \context Voice = "cello polyrhythm voice"
                                        {
                                            \times 2/3
                                            {
                                                \voiceTwo
                                                d'''4
                                                g''4
                                                e'''4
                                            }
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 6/5
                                            {
                                                cs'''4
                                                f''4
                                                bf''4
                                                b''4
                                                d'''4
                                            }
                                            \times 4/6
                                            {
                                                g'2
                                                fs'2
                                                cs'''2
                                                f'''2
                                                bf'2
                                                b'2
                                            }
                                            \times 2/3
                                            {
                                                d''2
                                                af'2
                                                b2
                                            }
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 6/5
                                            {
                                                cs'4
                                                f4
                                                bf4
                                                e4
                                                d4
                                            }
                                            g4
                                            e4
                                            d4
                                            bf4
                                            \times 4/6
                                            {
                                                \once \override Staff.Clef.X-extent = ##f
                                                \once \override Staff.Clef.extra-offset = #'(-3 . 0)
                                                bf,8
                                                [
                                                b,8
                                                d,8
                                                gs,8
                                                e,8
                                                cs,8
                                                ]
                                            }
                                            f,2
                                            bf,2
                                            b,!2
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
