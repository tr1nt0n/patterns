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
            \time 9/8
            s1 * 9/8
              %! +SCORE
            \noBreak
            \time 12/8
            s1 * 3/2
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
            \time 1/4
            s1 * 1/4
              %! +SCORE
            \noBreak
            \time 5/4
            s1 * 5/4
              %! +SCORE
            \break
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
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -34 } } } }
                                    r16
                                    gf''!16
                                    - \accent
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -34 } } } }
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
                                    r1.
                                    r\breve
                                    r1
                                    r1.
                                    r1
                                    r2
                                    - \tweak padding #2
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " rit. ( to " } \fontsize #-0.5 { \note { 4 } #1.5 } \fontsize #3 { "= 50 )" } } } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 50" } } }
                                    \startTextSpanThree
                                    r1.
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
                                    r4.
                                      %! +SCORE
                                    ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-7 \raise #2 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #1.5 } \fontsize #4 { "= 100" } } }
                                    r4.
                                    r4.
                                    r1.
                                    r2.
                                    r2
                                    r1
                                    - \tweak padding #2
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " accel. ( to " } \fontsize #-0.5 { \note { 4 } #1.5 } \fontsize #3 { "= 125 )" } } } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 125" } } }
                                    \startTextSpanThree
                                    r4
                                    r2.
                                    r2
                                    r2.
                                    r2
                                    \stopTextSpanThree
                                    r1.
                                    r\breve
                                    r1
                                    r1.
                                    r1
                                    r2
                                    - \tweak padding #2
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " rit. ( to " } \fontsize #-0.5 { \note { 4 } #1.5 } \fontsize #3 { "= 50 )" } } } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 50" } } }
                                    \startTextSpanThree
                                    r1.
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
                                    ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-7 \raise #2 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #1.5 } \fontsize #4 { "= 100" } } }
                                    [
                                    (
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    fs8.
                                    ]
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \revert Dots.staff-position
                                    eqf,8.
                                    )
                                    [
                                    \set stemLeftBeamCount = 2
                                    \set stemRightBeamCount = 1
                                    r16
                                    \override Dots.staff-position = #2
                                    \revert Dots.staff-position
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 2
                                    bf,16
                                    r16
                                    ]
                                    r8.
                                    [
                                    \override Dots.staff-position = #2
                                    \set stemLeftBeamCount = 2
                                    \set stemRightBeamCount = 1
                                    gf16
                                    (
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \revert Dots.staff-position
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 2
                                    fqs16
                                    )
                                    r16
                                    ]
                                    \override Dots.staff-position = #2
                                    f16
                                    [
                                    (
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
                                    ]
                                    (
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    dqf8.
                                    )
                                    [
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \set stemLeftBeamCount = 2
                                    \set stemRightBeamCount = 1
                                    a,16
                                    (
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 2
                                    bqf,16
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \revert Dots.staff-position
                                    aqs,16
                                    )
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
                                            eqs16
                                            r16
                                        }
                                        r8
                                        \times 2/3
                                        {
                                            \override Dots.staff-position = #2
                                            e16
                                            (
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            \revert Dots.staff-position
                                            eqf16
                                            )
                                            r16
                                        }
                                        \override Dots.staff-position = #2
                                        d8
                                        (
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \revert Dots.staff-position
                                        cs8
                                        )
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
                                            fqs8
                                            (
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            e8
                                            ]
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                        }
                                        cqs4
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        b,4
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                    }
                                    \times 2/3
                                    {
                                        \revert Dots.staff-position
                                        fs16
                                        )
                                        [
                                        r16
                                        \override Dots.staff-position = #2
                                        \revert Dots.staff-position
                                        g16
                                        ]
                                    }
                                    r8
                                    [
                                    \times 2/3
                                    {
                                        r16
                                        \override Dots.staff-position = #2
                                        ef16
                                        (
                                        - \abjad-zero-padding-glissando
                                        \glissando
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
                                        gf16
                                        - \accent
                                        (
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \revert Dots.staff-position
                                        bqf16
                                        )
                                    }
                                    r8
                                    ]
                                    \times 2/3
                                    {
                                        \override Dots.staff-position = #2
                                        aqf,4
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak padding #14
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " accel. ( to " } \fontsize #-0.5 { \note { 4 } #1.5 } \fontsize #3 { "= 125 )" } } } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 125" } } }
                                        \startTextSpanThree
                                        \times 2/3
                                        {
                                            b,8
                                            [
                                            (
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            as,8
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            bqf,8
                                            )
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                        }
                                        \times 2/3
                                        {
                                            \revert Dots.staff-position
                                            c8
                                            r8
                                            \override Dots.staff-position = #2
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
                                            af8
                                            - \accent
                                            (
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            \revert Dots.staff-position
                                            c'8
                                            )
                                            ]
                                        }
                                        r4
                                    }
                                    \override Dots.staff-position = #2
                                    \clef "tenor"
                                    b32
                                    [
                                    (
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \revert Dots.staff-position
                                    e'32
                                    )
                                    r32
                                    \override Dots.staff-position = #2
                                    \set stemLeftBeamCount = 3
                                    \set stemRightBeamCount = 1
                                    d'32
                                    (
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \times 4/5
                                    {
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 3
                                        cs'32
                                        )
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        b32
                                        - \accent
                                        (
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        g32
                                        - \abjad-zero-padding-glissando
                                        \glissando
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
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \times 2/3
                                        {
                                            a8
                                            [
                                            (
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            bf8
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            a8
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                        }
                                        \times 2/3
                                        {
                                            aqs8
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            a8
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            bqf8
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                        }
                                    }
                                    a8
                                    )
                                    ]
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \times 2/3
                                    {
                                        b16
                                        - \accent
                                        [
                                        (
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        c'16
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        b16
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                    }
                                    bqf8
                                    ]
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    b8
                                    [
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \times 2/3
                                    {
                                        c'16
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        b16
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        c'16
                                        )
                                        ]
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                    }
                                    dqs'8
                                    - \accent
                                    [
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    fs'8
                                    - \accent
                                    ]
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \times 2/3
                                    {
                                        \clef "treble"
                                        gs'16
                                        - \accent
                                        [
                                        (
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        a'16
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        g'16
                                        )
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                    }
                                    d''8
                                    - \accent
                                    ]
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \times 2/3
                                    {
                                        eqf''16
                                        - \accent
                                        [
                                        (
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        d''16
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \set stemLeftBeamCount = 2
                                        \set stemRightBeamCount = 1
                                        e''16
                                        )
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                    }
                                    \times 2/3
                                    {
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 2
                                        b''16
                                        - \accent
                                        (
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        bf''16
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \revert Dots.staff-position
                                        bqf''16
                                        )
                                        ]
                                    }
                                    r2
                                    \stopTextSpanThree
                                    r1.
                                    r\breve
                                    r1
                                    r1.
                                    r1
                                    r2
                                    - \tweak padding #2
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " rit. ( to " } \fontsize #-0.5 { \note { 4 } #1.5 } \fontsize #3 { "= 50 )" } } } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 50" } } }
                                    \startTextSpanThree
                                    r1.
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
            >>
        }
    >>
  %! abjad.LilyPondFile._get_format_pieces()
}
