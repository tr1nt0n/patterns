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
                                    <<
                                        \context Voice = "violin 2 voice fingers"
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
                                            r8.
                                            - \tweak Beam.positions #'(-6 . -6)
                                            [
                                            \once \override Voice.NoteHead.layer = 2
                                            \once \override Voice.NoteHead.whiteout-style = #'outline
                                            \once \override Voice.NoteHead.whiteout = 1
                                            c'''16
                                            ]
                                            ~
                                            \once \override Voice.NoteHead.layer = 2
                                            \once \override Voice.NoteHead.whiteout-style = #'outline
                                            \once \override Voice.NoteHead.whiteout = 1
                                            c'''8
                                            - \tweak Beam.positions #'(-6 . -6)
                                            [
                                            \once \override Rest.staff-position = #-7
                                            r8
                                            ]
                                            \once \override Rest.staff-position = #-7
                                            r4
                                            \once \override Rest.staff-position = #-7
                                            r4
                                            \once \override Rest.staff-position = #-7
                                            r8
                                            - \tweak Beam.positions #'(-6 . -6)
                                            [
                                            \once \override Voice.NoteHead.layer = 2
                                            \once \override Voice.NoteHead.whiteout-style = #'outline
                                            \once \override Voice.NoteHead.whiteout = 1
                                            c'''8
                                            ]
                                            ~
                                            \once \override Voice.NoteHead.layer = 2
                                            \once \override Voice.NoteHead.whiteout-style = #'outline
                                            \once \override Voice.NoteHead.whiteout = 1
                                            c'''8
                                              %! +SCORE
                                            ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-13 \raise #3 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 125" } } }
                                            - \tweak Beam.positions #'(-6 . -6)
                                            [
                                            \once \override Rest.staff-position = #-7
                                            r8
                                            ]
                                            \once \override Rest.staff-position = #-7
                                            r8.
                                            - \tweak Beam.positions #'(-6 . -6)
                                            [
                                            \once \override Voice.NoteHead.layer = 2
                                            \once \override Voice.NoteHead.whiteout-style = #'outline
                                            \once \override Voice.NoteHead.whiteout = 1
                                            c'''16
                                            ]
                                            ~
                                            \once \override Voice.NoteHead.layer = 2
                                            \once \override Voice.NoteHead.whiteout-style = #'outline
                                            \once \override Voice.NoteHead.whiteout = 1
                                            c'''8.
                                            - \tweak Beam.positions #'(-6 . -8)
                                            [
                                            \once \override Rest.staff-position = #-7
                                            r16
                                            ]
                                            \once \override Rest.staff-position = #-7
                                            r2.
                                            \once \override Rest.staff-position = #-7
                                            r1
                                            \once \override Voice.NoteHead.layer = 2
                                            \once \override Voice.NoteHead.whiteout-style = #'outline
                                            \once \override Voice.NoteHead.whiteout = 1
                                            c'''8
                                            ~
                                            \once \override Voice.NoteHead.layer = 2
                                            \once \override Voice.NoteHead.whiteout-style = #'outline
                                            \once \override Voice.NoteHead.whiteout = 1
                                            c'''4
                                            \once \override Rest.staff-position = #-7
                                            r2.
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
                                            r8.
                                            \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                                {
                                                    \context Score = "Score"
                                                    \with
                                                    {
                                                        \override SpacingSpanner.spacing-increment = 0.5
                                                        proportionalNotationDuration = ##f
                                                    }
                                                    <<
                                                        \context RhythmicStaff = "Rhythmic_Staff"
                                                        \with
                                                        {
                                                            \remove Time_signature_engraver
                                                            \remove Staff_symbol_engraver
                                                            \override Stem.direction = #up
                                                            \override Stem.length = 5
                                                            \override TupletBracket.bracket-visibility = ##t
                                                            \override TupletBracket.direction = #up
                                                            \override TupletBracket.minimum-length = 4
                                                            \override TupletBracket.padding = 1.25
                                                            \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                                            \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                                            \override TupletNumber.font-size = 0
                                                            \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                                            tupletFullLength = ##t
                                                        }
                                                        {
                                                            c'8.
                                                        }
                                                    >>
                                                    \layout
                                                    {
                                                        indent = 0
                                                        ragged-right = ##t
                                                    }
                                                }
                                            \times 1/1
                                            {
                                                \once \override Beam.grow-direction = #right
                                                c'''16 * 31/16
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                \mp
                                                [
                                                - \tweak color #(css-color 'darkred)
                                                (
                                                - \tweak color #(css-color 'darkred)
                                                - \tweak font-name "Bodoni72 Book" 
                                                - \tweak font-size 2
                                                - \tweak padding #15
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { \upright { "CLB" } \hspace #0.5 }
                                                - \tweak bound-details.right.padding -3
                                                \startTextSpanTwo
                                                - \tweak font-name "Bodoni72 Book" 
                                                - \tweak font-size 2
                                                - \tweak padding #17.5
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { \upright { "II + III, DP" } \hspace #0.5 }
                                                - \tweak bound-details.right.padding -3
                                                \startTextSpanOne
                                                c'''16 * 17/16
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                )
                                                ]
                                            }
                                            \revert TupletNumber.text
                                            \once \override Rest.staff-position = #7
                                            r8
                                            \once \override Rest.staff-position = #7
                                            r4
                                            \once \override Rest.staff-position = #7
                                            r4
                                            \once \override Rest.staff-position = #7
                                            r8
                                            \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                                {
                                                    \context Score = "Score"
                                                    \with
                                                    {
                                                        \override SpacingSpanner.spacing-increment = 0.5
                                                        proportionalNotationDuration = ##f
                                                    }
                                                    <<
                                                        \context RhythmicStaff = "Rhythmic_Staff"
                                                        \with
                                                        {
                                                            \remove Time_signature_engraver
                                                            \remove Staff_symbol_engraver
                                                            \override Stem.direction = #up
                                                            \override Stem.length = 5
                                                            \override TupletBracket.bracket-visibility = ##t
                                                            \override TupletBracket.direction = #up
                                                            \override TupletBracket.minimum-length = 4
                                                            \override TupletBracket.padding = 1.25
                                                            \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                                            \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                                            \override TupletNumber.font-size = 0
                                                            \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                                            tupletFullLength = ##t
                                                        }
                                                        {
                                                            c'4
                                                        }
                                                    >>
                                                    \layout
                                                    {
                                                        indent = 0
                                                        ragged-right = ##t
                                                    }
                                                }
                                            \times 1/1
                                            {
                                                \once \override Beam.grow-direction = #right
                                                c'''16 * 15/8
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                [
                                                - \tweak color #(css-color 'darkred)
                                                (
                                                c'''16 * 21/16
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                c'''16 * 13/16
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                )
                                                ]
                                            }
                                            \revert TupletNumber.text
                                            \once \override Rest.staff-position = #7
                                            r8
                                            \once \override Rest.staff-position = #7
                                            r8.
                                            \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                                {
                                                    \context Score = "Score"
                                                    \with
                                                    {
                                                        \override SpacingSpanner.spacing-increment = 0.5
                                                        proportionalNotationDuration = ##f
                                                    }
                                                    <<
                                                        \context RhythmicStaff = "Rhythmic_Staff"
                                                        \with
                                                        {
                                                            \remove Time_signature_engraver
                                                            \remove Staff_symbol_engraver
                                                            \override Stem.direction = #up
                                                            \override Stem.length = 5
                                                            \override TupletBracket.bracket-visibility = ##t
                                                            \override TupletBracket.direction = #up
                                                            \override TupletBracket.minimum-length = 4
                                                            \override TupletBracket.padding = 1.25
                                                            \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                                            \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                                            \override TupletNumber.font-size = 0
                                                            \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                                            tupletFullLength = ##t
                                                        }
                                                        {
                                                            c'4
                                                        }
                                                    >>
                                                    \layout
                                                    {
                                                        indent = 0
                                                        ragged-right = ##t
                                                    }
                                                }
                                            \times 1/1
                                            {
                                                \once \override Beam.grow-direction = #left
                                                c'''16 * 43/64
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                \p
                                                [
                                                - \tweak color #(css-color 'darkred)
                                                (
                                                \<
                                                c'''16 * 49/64
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                c'''16 * 17/16
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                \mf
                                                \>
                                                c'''16 * 3/2
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                \p
                                                )
                                                ]
                                            }
                                            \revert TupletNumber.text
                                            \once \override Rest.staff-position = #7
                                            r16
                                            \once \override Rest.staff-position = #7
                                            r2.
                                            \once \override Rest.staff-position = #7
                                            r1
                                            \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                                {
                                                    \context Score = "Score"
                                                    \with
                                                    {
                                                        \override SpacingSpanner.spacing-increment = 0.5
                                                        proportionalNotationDuration = ##f
                                                    }
                                                    <<
                                                        \context RhythmicStaff = "Rhythmic_Staff"
                                                        \with
                                                        {
                                                            \remove Time_signature_engraver
                                                            \remove Staff_symbol_engraver
                                                            \override Stem.direction = #up
                                                            \override Stem.length = 5
                                                            \override TupletBracket.bracket-visibility = ##t
                                                            \override TupletBracket.direction = #up
                                                            \override TupletBracket.minimum-length = 4
                                                            \override TupletBracket.padding = 1.25
                                                            \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                                            \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                                            \override TupletNumber.font-size = 0
                                                            \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                                            tupletFullLength = ##t
                                                        }
                                                        {
                                                            c'4.
                                                        }
                                                    >>
                                                    \layout
                                                    {
                                                        indent = 0
                                                        ragged-right = ##t
                                                    }
                                                }
                                            \times 1/1
                                            {
                                                \once \override Beam.grow-direction = #right
                                                c'''16 * 117/64
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                \p
                                                [
                                                - \tweak color #(css-color 'darkred)
                                                (
                                                \<
                                                c'''16 * 99/64
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                c'''16 * 69/64
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                \mf
                                                \>
                                                c'''16 * 13/16
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                c'''16 * 47/64
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                \p
                                                )
                                                \stopTextSpanOne
                                                \stopTextSpanTwo
                                                ]
                                            }
                                            \revert TupletNumber.text
                                            \once \override Rest.staff-position = #7
                                            r2.
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
                                        \big-half-harmonic
                                        \clef "bass"
                                        cs,8
                                          %! +SCORE
                                        ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-7 \raise #0.5 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 50" } } }
                                        [
                                        (
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak circled-tip ##t
                                        \<
                                        - \tweak font-name "Bodoni72 Book" 
                                        - \tweak font-size 1
                                        - \tweak padding #6
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "SP" } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -3
                                        \startTextSpanTwo
                                        \big-half-harmonic
                                        ds,8
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \big-half-harmonic
                                        dqf,8
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \override Dots.staff-position = #2
                                        \big-half-harmonic
                                        \revert Dots.staff-position
                                        e,8
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #1.5
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \revert Dots.staff-position
                                        \tweak style #'harmonic
                                        cqs,8
                                        )
                                        ]
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 7/6
                                    {
                                        r8
                                        [
                                        \override Dots.staff-position = #2
                                        \override Dots.staff-position = #2
                                        \revert Dots.staff-position
                                        \tweak style #'harmonic
                                        cs,8
                                        (
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #1.5
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \revert Dots.staff-position
                                        ds,8
                                        )
                                        ]
                                    }
                                    \times 2/3
                                    {
                                        r4
                                        \override Dots.staff-position = #2
                                        \override Dots.staff-position = #2
                                        \revert Dots.staff-position
                                        \afterGrace
                                        e,4
                                        (
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #1.5
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        {
                                            \revert Dots.staff-position
                                            \once \override Flag.stroke-style = #"grace"
                                            \tweak style #'harmonic
                                            gqf,16
                                            )
                                        }
                                        r4
                                    }
                                    \override Dots.staff-position = #2
                                    \override Dots.staff-position = #2
                                    \revert Dots.staff-position
                                    \tweak style #'harmonic
                                    fs,8
                                    [
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \big-half-harmonic
                                    \revert Dots.staff-position
                                    gqs,8
                                    \stopTextSpanTwo
                                    ]
                                    r4
                                    \times 4/5
                                    {
                                        \override Dots.staff-position = #2
                                        \big-half-harmonic
                                        g,16
                                        [
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak font-name "Bodoni72 Book" 
                                        - \tweak font-size 1
                                        - \tweak padding #10.5
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright { "SP" } \hspace #0.5 }
                                        \startTextSpanTwo
                                        \big-half-harmonic
                                        bf,16
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \big-half-harmonic
                                        af,16
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \big-half-harmonic
                                        b,16
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \big-half-harmonic
                                        a,16
                                        ]
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                    }
                                    \times 2/3
                                    {
                                        \override Dots.staff-position = #2
                                        \big-half-harmonic
                                        \revert Dots.staff-position
                                        aqs,8
                                        \stopTextSpanTwo
                                        [
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #1.5
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak font-name "Bodoni72 Book" 
                                        - \tweak font-size 1
                                        - \tweak padding #10.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "ST" } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -3
                                        \startTextSpanTwo
                                        \revert Dots.staff-position
                                        \tweak style #'harmonic
                                        f8
                                        r8
                                        ]
                                    }
                                    \override Dots.staff-position = #2
                                    \clef "tenor"
                                    \tweak style #'harmonic
                                    a8
                                    [
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \override Dots.staff-position = #2
                                    \revert Dots.staff-position
                                    \tweak style #'harmonic
                                    fs8
                                    ]
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \revert Dots.staff-position
                                    d'8
                                    [
                                    r8
                                    ]
                                    \override Dots.staff-position = #2
                                    \override Dots.staff-position = #2
                                    \revert Dots.staff-position
                                    \afterGrace
                                    e'8
                                    (
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    {
                                        \revert Dots.staff-position
                                        \once \override Flag.stroke-style = #"grace"
                                        \tweak style #'harmonic
                                        g'16
                                        )
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 5/6
                                    {
                                        r4
                                        \override Dots.staff-position = #2
                                        \override Dots.staff-position = #2
                                        \revert Dots.staff-position
                                        \clef "treble"
                                        \afterGrace
                                        \tweak style #'harmonic-mixed
                                        gs'4
                                        (
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #1.5
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        {
                                            \revert Dots.staff-position
                                            \once \override Flag.stroke-style = #"grace"
                                            d''16
                                            )
                                            \stopTextSpanTwo
                                        }
                                        r4
                                    }
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        c''!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        ds''!
                                    >4
                                    ^ \markup \center-align { \center-column { \line { \concat { -4 }  }\line { \concat { +0 }  } } }
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 0
                                    - \tweak padding #13.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "1/2 CLT" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpanOne
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        c''!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        ds''!
                                    >2
                                    ^ \markup \center-align { \center-column { \line { \concat { -4 }  }\line { \concat { +0 }  } } }
                                    \big-half-harmonic
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        c''!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        ds''!
                                    >16
                                    - \accent
                                    - \staccato
                                    \f
                                    ^ \markup \center-align { \center-column { \line { \concat { -4 }  }\line { \concat { +0 }  } } }
                                    [
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 0
                                    - \tweak padding #9.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "Scr." } \hspace #0.5 }
                                    - \tweak bound-details.right.padding 3
                                    \startTextSpanTwo
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        \tweak style #'harmonic
                                        c''!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        \tweak style #'harmonic
                                        ds''!
                                    >8.
                                    \mp
                                    ^ \markup \center-align { \center-column { \line { \concat { -4 }  }\line { \concat { +0 }  } } }
                                    \stopTextSpanTwo
                                    ]
                                    ~
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        \tweak style #'harmonic-mixed
                                        c''
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        \tweak style #'harmonic-mixed
                                        ds''
                                    >4
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        \tweak style #'harmonic
                                        c''!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        \tweak style #'harmonic
                                        ds''!
                                    >8.
                                    ^ \markup \center-align { \center-column { \line { \concat { -4 }  }\line { \concat { +0 }  } } }
                                    [
                                    \big-half-harmonic
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        c''!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        ds''!
                                    >16
                                    - \accent
                                    - \staccato
                                    \f
                                    ^ \markup \center-align { \center-column { \line { \concat { -4 }  }\line { \concat { +0 }  } } }
                                    ]
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        \tweak style #'harmonic-mixed
                                        c''!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        \tweak style #'harmonic-mixed
                                        ds''!
                                    >4
                                    \mp
                                    ^ \markup \center-align { \center-column { \line { \concat { -4 }  }\line { \concat { +0 }  } } }
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        fs'!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        c''!
                                    >8
                                    ^ \markup \center-align { \center-column { \line { \concat { +0 }  }\line { \concat { -10 }  } } }
                                    [
                                    \override Dots.staff-position = #2
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        fs'!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        c''!
                                    >8
                                    ^ \markup \center-align { \center-column { \line { \concat { +0 }  }\line { \concat { -10 }  } } }
                                    ]
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \big-half-harmonic
                                    \revert Dots.staff-position
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        fs'!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        c''!
                                    >16
                                    - \accent
                                    - \staccato
                                    \f
                                    ^ \markup \center-align { \center-column { \line { \concat { +0 }  }\line { \concat { -10 }  } } }
                                    [
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 0
                                    - \tweak padding #12.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "Scr." } \hspace #0.5 }
                                    - \tweak bound-details.right.padding 3
                                    \startTextSpanTwo
                                    r16
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        fs'!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        c''!
                                    >8
                                    \mp
                                    ^ \markup \center-align { \center-column { \line { \concat { +0 }  }\line { \concat { -10 }  } } }
                                    \stopTextSpanTwo
                                    ]
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        fs'!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        c''!
                                    >8
                                    ^ \markup \center-align { \center-column { \line { \concat { +0 }  }\line { \concat { -10 }  } } }
                                    [
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        fs'!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        c''!
                                    >8
                                    ^ \markup \center-align { \center-column { \line { \concat { +0 }  }\line { \concat { -10 }  } } }
                                    ]
                                    \override Dots.staff-position = #2
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        \tweak style #'harmonic-mixed
                                        fs'!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        \tweak style #'harmonic-mixed
                                        c''!
                                    >4
                                    ^ \markup \center-align { \center-column { \line { \concat { +0 }  }\line { \concat { -10 }  } } }
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
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        fs'
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        c''
                                    >8.
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
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        fs'!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        c''!
                                    >16
                                    - \accent
                                    - \staccato
                                    \f
                                    ^ \markup \center-align { \center-column { \line { \concat { +0 }  }\line { \concat { -10 }  } } }
                                    ]
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 0
                                    - \tweak padding #12.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "Scr." } \hspace #0.5 }
                                    - \tweak bound-details.right.padding 3
                                    \startTextSpanTwo
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        cs'!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        fs'!
                                    >2
                                    \mp
                                    ^ \markup \center-align { \center-column { \line { \concat { -10 }  }\line { \concat { -8 }  } } }
                                      %! +SCORE
                                    ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #6 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 125" } } }
                                    \stopTextSpanTwo
                                    \big-half-harmonic
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        cs'!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        fs'!
                                    >16
                                    - \accent
                                    - \staccato
                                    \f
                                    ^ \markup \center-align { \center-column { \line { \concat { -10 }  }\line { \concat { -8 }  } } }
                                    [
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 0
                                    - \tweak padding #10.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "Scr." } \hspace #0.5 }
                                    - \tweak bound-details.right.padding 3
                                    \startTextSpanTwo
                                    \big-half-harmonic
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        cs'!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        fs'!
                                    >16
                                    - \accent
                                    - \staccato
                                    ^ \markup \center-align { \center-column { \line { \concat { -10 }  }\line { \concat { -8 }  } } }
                                    \override Dots.staff-position = #2
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        cs'!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        fs'!
                                    >8
                                    \mp
                                    ^ \markup \center-align { \center-column { \line { \concat { -10 }  }\line { \concat { -8 }  } } }
                                    \stopTextSpanTwo
                                    ]
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
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        cs'
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        fs'
                                    >4
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
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        \tweak style #'harmonic
                                        cs'!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        \tweak style #'harmonic
                                        fs'!
                                    >8.
                                    ^ \markup \center-align { \center-column { \line { \concat { -10 }  }\line { \concat { -8 }  } } }
                                    [
                                    r16
                                    ]
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        \tweak style #'harmonic-mixed
                                        cs'!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        \tweak style #'harmonic-mixed
                                        fs'!
                                    >4
                                    ^ \markup \center-align { \center-column { \line { \concat { -10 }  }\line { \concat { -8 }  } } }
                                    \override Dots.staff-position = #2
                                    \clef "bass"
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        \tweak style #'harmonic-mixed
                                        as!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        \tweak style #'harmonic-mixed
                                        cs'!
                                    >4.
                                    ^ \markup \center-align { \center-column { \line { \concat { -8 }  }\line { \concat { -2 }  } } }
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        as!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        cs'!
                                    >8
                                    ^ \markup \center-align { \center-column { \line { \concat { -8 }  }\line { \concat { -2 }  } } }
                                    [
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
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        as
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        cs'
                                    >16
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
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        \tweak style #'harmonic
                                        as!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        \tweak style #'harmonic
                                        cs'!
                                    >16
                                    ^ \markup \center-align { \center-column { \line { \concat { -8 }  }\line { \concat { -2 }  } } }
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
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        as
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        cs'
                                    >8
                                    ]
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
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        as!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        cs'!
                                    >4.
                                    ^ \markup \center-align { \center-column { \line { \concat { -8 }  }\line { \concat { -2 }  } } }
                                    \big-half-harmonic
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        a,!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        as!
                                    >16
                                    - \accent
                                    - \staccato
                                    \f
                                    ^ \markup \center-align { \center-column { \line { \concat { -2 }  }\line { \concat { +6 }  } } }
                                    [
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 0
                                    - \tweak padding #10.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "Scr." } \hspace #0.5 }
                                    - \tweak bound-details.right.padding 3
                                    \startTextSpanTwo
                                    \big-half-harmonic
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        a,!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        as!
                                    >16
                                    - \accent
                                    - \staccato
                                    ^ \markup \center-align { \center-column { \line { \concat { -2 }  }\line { \concat { +6 }  } } }
                                    \override Dots.staff-position = #2
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        a,!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        as!
                                    >8
                                    \mp
                                    ^ \markup \center-align { \center-column { \line { \concat { -2 }  }\line { \concat { +6 }  } } }
                                    \stopTextSpanTwo
                                    ]
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
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        a,
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        as
                                    >4
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
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        \tweak style #'harmonic
                                        a,!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        \tweak style #'harmonic
                                        as!
                                    >8.
                                    ^ \markup \center-align { \center-column { \line { \concat { -2 }  }\line { \concat { +6 }  } } }
                                    [
                                    r16
                                    ]
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        a,!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        as!
                                    >4
                                    ^ \markup \center-align { \center-column { \line { \concat { -2 }  }\line { \concat { +6 }  } } }
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
            >>
        }
    >>
  %! abjad.LilyPondFile._get_format_pieces()
}
