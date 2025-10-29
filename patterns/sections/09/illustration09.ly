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
            \time 7/8
            s1 * 7/8
            \time 4/4
            s1 * 1
            \time 2/4
            s1 * 1/2
            \time 5/4
            s1 * 5/4
            \time 7/4
            s1 * 7/4
            \time 5/4
            s1 * 5/4
            \time 6/4
            s1 * 3/2
            \time 9/8
            s1 * 9/8
            \time 4/4
            s1 * 1
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
                                    \set GrandStaff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { Violin 1 }
                                      %! +SCORE
                                    \set GrandStaff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { V1 }
                                    r2..
                                    r1
                                    r2
                                    r2.
                                    r2
                                    r1..
                                    r2.
                                    r2
                                    r1.
                                    r4.
                                    r4.
                                    r4.
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
                                      %! +SCORE
                                    ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #1 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 50" } } }
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                        \tweak style #'harmonic
                                        b!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        \tweak style #'harmonic
                                        g'!
                                    >8
                                    ^ \markup \center-align { \center-column { \line { \concat { +2 }  }\line { \concat { -12 }  } } }
                                    [
                                    - \tweak bound-details.left.Y #-1
                                    - \tweak bound-details.right.Y #3.25
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 0
                                    - \tweak padding #12
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "CLT, SP" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding 0.5
                                    \startTextSpanTwo
                                    - \tweak circled-tip ##t
                                    \<
                                    ~
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                        \tweak style #'harmonic
                                        b
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        \tweak style #'harmonic
                                        g'
                                    >16
                                    r16
                                    ]
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                        b!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        g'!
                                    >4
                                    ^ \markup \center-align { \center-column { \line { \concat { +2 }  }\line { \concat { -12 }  } } }
                                    r8.
                                    [
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        \tweak style #'harmonic
                                        c'!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        \tweak style #'harmonic
                                        a'!
                                    >16
                                    ^ \markup \center-align { \center-column { \line { \concat { +6 }  }\line { \concat { +0 }  } } }
                                    ]
                                    r8
                                    [
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        c'!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        a'!
                                    >8
                                    ^ \markup \center-align { \center-column { \line { \concat { +6 }  }\line { \concat { +0 }  } } }
                                    \stopTextSpanTwo
                                    ]
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 0
                                    - \tweak padding #15
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { { "" } \hspace #0.5 }
                                    \startTextSpanTwo
                                    ~
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        c'
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        a'
                                    >4
                                    r4
                                    \override Dots.staff-position = #2
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        c'!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        a'!
                                    >4
                                    ^ \markup \center-align { \center-column { \line { \concat { +6 }  }\line { \concat { +0 }  } } }
                                    (
                                      %! abjad.glissando(7)
                                    - \tweak bound-details.right.arrow ##t
                                      %! abjad.glissando(7)
                                    - \tweak thickness #1.5
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
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        c'
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        a'
                                    >8.
                                    [
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
                                        <
                                            \tweak Accidental.stencil #ly:text-interface::print
                                            \tweak Accidental.text \markup { \abjad-natural  }
                                            \tweak style #'harmonic
                                            c'!
                                            \tweak Accidental.stencil #ly:text-interface::print
                                            \tweak Accidental.text \markup { \abjad-natural  }
                                            \tweak style #'harmonic
                                            a'!
                                        >16
                                        ^ \markup \center-align { \center-column { \line { \concat { +6 }  }\line { \concat { +0 }  } } }
                                        )
                                        \stopTextSpanTwo
                                        - \tweak font-name "Bodoni72 Book" 
                                        - \tweak font-size 0
                                        - \tweak padding #15
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { { \override #'(baseline-skip . 2) \column { \line { "1/2 CLT, MSP" } \line { "(hair on bridge, wood on string)" } } } \hspace #0.5 }
                                        - \tweak bound-details.right.padding 0.5
                                        \startTextSpanTwo
                                    }
                                    r16
                                    ]
                                    \override Dots.staff-position = #2
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        \tweak style #'harmonic-mixed
                                        a'!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                        \tweak style #'harmonic-mixed
                                        e''!
                                    >4
                                    ^ \markup \center-align { \center-column { \line { \concat { -14 }  }\line { \concat { +6 }  } } }
                                    (
                                      %! abjad.glissando(7)
                                    - \tweak bound-details.right.arrow ##t
                                      %! abjad.glissando(7)
                                    - \tweak thickness #1.5
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
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        a'
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                        e''
                                    >8.
                                    [
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
                                        <
                                            \tweak Accidental.stencil #ly:text-interface::print
                                            \tweak Accidental.text \markup { \abjad-natural  }
                                            a'!
                                            \tweak Accidental.stencil #ly:text-interface::print
                                            \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                            e''!
                                        >16
                                        ^ \markup \center-align { \center-column { \line { \concat { -14 }  }\line { \concat { +6 }  } } }
                                        )
                                    }
                                    r16
                                    ]
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        a'!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                        e''!
                                    >8
                                    ^ \markup \center-align { \center-column { \line { \concat { -14 }  }\line { \concat { +6 }  } } }
                                    [
                                    r8
                                    ]
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        a'!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                        e''!
                                    >4
                                    ^ \markup \center-align { \center-column { \line { \concat { -14 }  }\line { \concat { +6 }  } } }
                                    r4
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                        e''!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        ds'''!
                                    >4
                                    ^ \markup \center-align { \center-column { \line { \concat { -4 }  }\line { \concat { -14 }  } } }
                                    \stopTextSpanTwo
                                    - \tweak bound-details.left.Y #-0.5
                                    - \tweak bound-details.right.Y #1
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 0
                                    - \tweak padding #15
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { { "" } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup { \override #'(baseline-skip . 2) \column { \line { "1/2 CLT, Ord., 1/2 Scratch" } \line { "(hair and wood on string)" } } }
                                    \startTextSpanTwo
                                    ~
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                        e''
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        ds'''
                                    >8.
                                    [
                                    r16
                                    ]
                                    \override Dots.staff-position = #2
                                    \afterGrace
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                        \tweak style #'harmonic-mixed
                                        e''!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        \tweak style #'harmonic-mixed
                                        ds'''!
                                    >4
                                    ^ \markup \center-align { \center-column { \line { \concat { -4 }  }\line { \concat { -14 }  } } }
                                    (
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    {
                                        \grace-half-harmonic
                                        \revert Dots.staff-position
                                        \once \override Flag.stroke-style = #"grace"
                                        <
                                            \tweak Accidental.stencil #ly:text-interface::print
                                            \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                            e''!
                                            \tweak Accidental.stencil #ly:text-interface::print
                                            \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                            ds'''!
                                        >16
                                        \f
                                        ^ \markup \center-align { \center-column { \line { \concat { -4 }  }\line { \concat { -14 }  } } }
                                        )
                                        \stopTextSpanTwo
                                    }
                                    r8.
                                    [
                                    \big-half-harmonic
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                        e''!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        ds'''!
                                    >16
                                    ^ \markup \center-align { \center-column { \line { \concat { -4 }  }\line { \concat { -14 }  } } }
                                    ]
                                    r8
                                    [
                                    \big-half-harmonic
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                        e''!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        ds'''!
                                    >8
                                    ^ \markup \center-align { \center-column { \line { \concat { -4 }  }\line { \concat { -14 }  } } }
                                    ]
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 0
                                    - \tweak padding #15
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -3
                                    \startTextSpanTwo
                                    r4
                                    \big-half-harmonic
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                        e''!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        ds'''!
                                    >16
                                    ^ \markup \center-align { \center-column { \line { \concat { -4 }  }\line { \concat { -14 }  } } }
                                    [
                                    r16
                                    \big-half-harmonic
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                        e''!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        ds'''!
                                    >8
                                    ^ \markup \center-align { \center-column { \line { \concat { -4 }  }\line { \concat { -14 }  } } }
                                    \stopTextSpanTwo
                                    ]
                                    r2.
                                    r2
                                    r1.
                                    r4.
                                    r4.
                                    r4.
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
                                    r2..
                                    r1
                                    r2
                                    r2.
                                    r2
                                    r1..
                                    r2.
                                    r2
                                    r1.
                                    r4.
                                    r4.
                                    r4.
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
                                    r2..
                                      %! +SCORE
                                    ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-7 \raise #3 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 50" } } }
                                    r1
                                    r2
                                    r2.
                                    r2
                                    r1..
                                    r2.
                                    r2
                                    r1.
                                    r4.
                                    r4.
                                    r4.
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
                                    r2..
                                    r1
                                    r2
                                    r2.
                                    r2
                                    r1..
                                    r2.
                                    r2
                                    r1.
                                    r4.
                                    r4.
                                    r4.
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
                                    r2..
                                    r1
                                    r2
                                    r2.
                                    r2
                                    r1..
                                    r2.
                                    r2
                                    r1.
                                    r4.
                                    r4.
                                    r4.
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
                                    r2..
                                    r1
                                    r2
                                    r2.
                                    r2
                                    r1..
                                    r2.
                                    r2
                                    r1.
                                    r4.
                                    r4.
                                    r4.
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
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 7/10
                                    {
                                        \override Dots.staff-position = #2
                                        c'8
                                          %! +SCORE
                                        ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-7 \raise #3 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 50" } } }
                                        [
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        c'8
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        c'8
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        c'8
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \revert Dots.staff-position
                                        c'8
                                        ]
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 7/6
                                    {
                                        r8
                                        [
                                        \override Dots.staff-position = #2
                                        c'8
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \revert Dots.staff-position
                                        c'8
                                        ]
                                    }
                                    \times 2/3
                                    {
                                        r4
                                        \override Dots.staff-position = #2
                                        \afterGrace
                                        c'4
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        {
                                            \revert Dots.staff-position
                                            \once \override Flag.stroke-style = #"grace"
                                            c'16
                                        }
                                        r4
                                    }
                                    \override Dots.staff-position = #2
                                    c'8
                                    [
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \revert Dots.staff-position
                                    c'8
                                    ]
                                    r4
                                    \times 4/5
                                    {
                                        \override Dots.staff-position = #2
                                        c'16
                                        [
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        c'16
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        c'16
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        c'16
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        c'16
                                        ]
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                    }
                                    \times 2/3
                                    {
                                        c'8
                                        [
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \revert Dots.staff-position
                                        c'8
                                        r8
                                        ]
                                    }
                                    \override Dots.staff-position = #2
                                    c'8
                                    [
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    c'8
                                    ]
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \revert Dots.staff-position
                                    c'8
                                    [
                                    r8
                                    ]
                                    \override Dots.staff-position = #2
                                    \afterGrace
                                    c'8
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    {
                                        \revert Dots.staff-position
                                        \once \override Flag.stroke-style = #"grace"
                                        c'16
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 5/6
                                    {
                                        r4
                                        \override Dots.staff-position = #2
                                        \afterGrace
                                        c'4
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        {
                                            \revert Dots.staff-position
                                            \once \override Flag.stroke-style = #"grace"
                                            c'16
                                        }
                                        r4
                                    }
                                    r1..
                                    r2.
                                    r2
                                    r1.
                                      %! +SCORE
                                    ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-7 \raise #3 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 125" } } }
                                    r4.
                                    r4.
                                    r4.
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
}
