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
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (3 23 25 17 17)))
            \tweak text \markup { \center-column { \line { "×3" } \override #'(font-name . "Bodoni72 Book Italic") \override #'(font-size . 1.5) \line { "rit. moltiss. sempre" } } } \startMeasureSpanner
            \bar ".|:"
            \time 9/8
            s1 * 9/8
            \bar ":|."
              %! +SCORE
            \noBreak
            \stopMeasureSpanner
            \time 5/4
            s1 * 5/4
              %! +SCORE
            \break
              %! +SCORE
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (14 17 16 19)))
            \time 10/8
            s1 * 5/4
              %! +SCORE
            \noBreak
            \time 2/4
            s1 * 1/2
              %! +SCORE
            \break
              %! +SCORE
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (7 23 33 30)))
            \time 4/4
            s1 * 1
              %! +SCORE
            \noBreak
            \time 3/4
            s1 * 3/4
              %! +SCORE
            \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
              %! +SCORE
            \break
              %! +SCORE
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (11 17 27 24)))
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
              %! +SCORE
            \noBreak
            \time 2/4
            s1 * 1/2
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
                                    r4.
                                    r4.
                                    r4.
                                    r2.
                                    r2
                                    r4.
                                    r4
                                    r4.
                                    r4
                                    r2
                                    r1
                                    r2.
                                    r2.
                                    r2.
                                    r2
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
                                    ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #1.5 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { " . = 58" } } }
                                    r4.
                                    r4.
                                    r2.
                                      %! +SCORE
                                    ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #1.5 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 87" } } }
                                    r2
                                    r4.
                                    r4
                                    r4.
                                    r4
                                    r2
                                    r2
                                    - \tweak padding #5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " rit. ( to " } \fontsize #-0.5 { \note { 4 } #1.5 } \fontsize #3 { "= 52 )" } } } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 52" } } }
                                    \startTextSpanThree
                                    \staff-line-count 1
                                    \override Staff.Clef.stencil = ##f
                                    \clef "percussion"
                                    c'2
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #3
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "bridge" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -5
                                    \startTextSpanTwo
                                    ~
                                    c'2.
                                    ~
                                    c'2.
                                    \stopTextSpanThree
                                    ~
                                    c'2.
                                    ~
                                    \revert Staff.Clef.stencil
                                    c'2
                                    \stopTextSpanTwo
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
                                    r4.
                                    r4.
                                    r4.
                                    r2.
                                    r2
                                    r4.
                                    r4
                                    r4.
                                    r4
                                    r2
                                    r1
                                    r2.
                                    r2.
                                    r2.
                                    r2
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
                                    d'8
                                      %! +SCORE
                                    ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #5 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { " . = 58" } } }
                                    (
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #6
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "norm." } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \upright { "3/4 scratch" }
                                    \startTextSpanTwo
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                    b!4
                                    - \tenuto
                                    ^ \markup \center-align { \concat { -12 } }
                                    )
                                    d'8
                                    (
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                    b!4
                                    - \tenuto
                                    ^ \markup \center-align { \concat { -12 } }
                                    )
                                    d'8
                                    (
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                    b!4
                                    - \tenuto
                                    ^ \markup \center-align { \concat { -12 } }
                                    )
                                    \stopTextSpanTwo
                                    <<
                                        \context Voice = "violin 4 voice fingers"
                                        {
                                            \once \override Rest.staff-position = #-8
                                            \override Staff.Clef.stencil = #ly:text-interface::print
                                            \override Staff.Clef.text = \string-clef
                                            \staff-line-count 4
                                            \override Staff.StaffSymbol.line-positions = #'(9 7 0 -9)
                                            \override Staff.BarLine.bar-extent = #'(-4.5 . 4.5)
                                            \override Staff.Accidental.stencil = ##f
                                            \override Staff.NoteHead.no-ledgers = ##t
                                            \override TrillSpanner.bound-details.right.padding = #1.5
                                            \set Staff.forceClef = ##t
                                            \voiceTwo
                                            r16
                                              %! +SCORE
                                            ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #8.5 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 87" } } }
                                            - \tweak Beam.positions #'(-9 . -9)
                                            [
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
                                            d'8.
                                            :32
                                            - \tweak TrillPitchAccidental.stencil ##f
                                            - \tweak TrillPitchHead.layer 5
                                            - \tweak TrillPitchHead.no-ledgers ##t
                                            - \tweak TrillPitchHead.stencil #(lambda (grob) (grob-interpret-markup grob #{ \markup \musicglyph #"noteheads.s2cross" #}))
                                            - \tweak TrillPitchHead.whiteout 1
                                            - \tweak TrillPitchHead.whiteout-style #'outline
                                            - \tweak Y-extent ##f
                                            - \tweak bound-details.left.Y #-5
                                            - \tweak bound-details.right.Y #-5
                                            \startTrillSpan g
                                            \set Staff.forceClef = ##f
                                            \once \override Rest.staff-position = #-8
                                            r16
                                            \stopTrillSpan
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
                                            a8.
                                            :32
                                            - \tweak TrillPitchAccidental.stencil ##f
                                            - \tweak TrillPitchHead.layer 5
                                            - \tweak TrillPitchHead.no-ledgers ##t
                                            - \tweak TrillPitchHead.stencil #(lambda (grob) (grob-interpret-markup grob #{ \markup \musicglyph #"noteheads.s2cross" #}))
                                            - \tweak TrillPitchHead.whiteout 1
                                            - \tweak TrillPitchHead.whiteout-style #'outline
                                            - \tweak Y-extent ##f
                                            - \tweak bound-details.left.Y #-5
                                            - \tweak bound-details.right.Y #-5
                                            \startTrillSpan e'
                                            \once \override Rest.staff-position = #-8
                                            r16
                                            \stopTrillSpan
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
                                            g'8.
                                            :32
                                            - \tweak TrillPitchAccidental.stencil ##f
                                            - \tweak TrillPitchHead.layer 5
                                            - \tweak TrillPitchHead.no-ledgers ##t
                                            - \tweak TrillPitchHead.stencil #(lambda (grob) (grob-interpret-markup grob #{ \markup \musicglyph #"noteheads.s2cross" #}))
                                            - \tweak TrillPitchHead.whiteout 1
                                            - \tweak TrillPitchHead.whiteout-style #'outline
                                            - \tweak Y-extent ##f
                                            - \tweak bound-details.left.Y #-5
                                            - \tweak bound-details.right.Y #-5
                                            \startTrillSpan b
                                            \once \override Rest.staff-position = #-8
                                            r16
                                            \stopTrillSpan
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
                                            c'8.
                                            :32
                                            - \tweak TrillPitchAccidental.stencil ##f
                                            - \tweak TrillPitchHead.layer 5
                                            - \tweak TrillPitchHead.no-ledgers ##t
                                            - \tweak TrillPitchHead.stencil #(lambda (grob) (grob-interpret-markup grob #{ \markup \musicglyph #"noteheads.s2cross" #}))
                                            - \tweak TrillPitchHead.whiteout 1
                                            - \tweak TrillPitchHead.whiteout-style #'outline
                                            - \tweak Y-extent ##f
                                            - \tweak bound-details.left.Y #-5
                                            - \tweak bound-details.right.Y #-5
                                            \startTrillSpan g'
                                            \once \override Rest.staff-position = #-8
                                            r16
                                            \stopTrillSpan
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
                                            b'8.
                                            :32
                                            ]
                                            - \tweak TrillPitchAccidental.stencil ##f
                                            - \tweak TrillPitchHead.layer 5
                                            - \tweak TrillPitchHead.no-ledgers ##t
                                            - \tweak TrillPitchHead.stencil #(lambda (grob) (grob-interpret-markup grob #{ \markup \musicglyph #"noteheads.s2cross" #}))
                                            - \tweak TrillPitchHead.whiteout 1
                                            - \tweak TrillPitchHead.whiteout-style #'outline
                                            - \tweak Y-extent ##f
                                            - \tweak bound-details.left.Y #-5
                                            - \tweak bound-details.right.Y #-5
                                            \startTrillSpan e'
                                            \once \override Rest.staff-position = #-8
                                            r8
                                            \stopTrillSpan
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
                                            \tweak style #'harmonic-mixed
                                            e''4
                                            :8
                                            ~
                                            - \tweak TrillPitchAccidental.stencil ##f
                                            - \tweak TrillPitchHead.layer 5
                                            - \tweak TrillPitchHead.no-ledgers ##t
                                            - \tweak TrillPitchHead.stencil #(lambda (grob) (grob-interpret-markup grob #{ \markup \musicglyph #"noteheads.s2cross" #}))
                                            - \tweak TrillPitchHead.whiteout 1
                                            - \tweak TrillPitchHead.whiteout-style #'outline
                                            - \tweak Y-extent ##f
                                            - \tweak bound-details.left.Y #0
                                            - \tweak bound-details.right.Y #0
                                            \startTrillSpan f'
                                            \tweak style #'harmonic-mixed
                                            e''8
                                            - \tweak Beam.positions #'(-9 . -9)
                                            [
                                            \once \override Rest.staff-position = #-8
                                            r8
                                            \stopTrillSpan
                                            ]
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 5/6
                                            {
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
                                                \tweak style #'harmonic-mixed
                                                e''4
                                                :8
                                                - \tweak TrillPitchAccidental.stencil ##f
                                                - \tweak TrillPitchHead.layer 5
                                                - \tweak TrillPitchHead.no-ledgers ##t
                                                - \tweak TrillPitchHead.stencil #(lambda (grob) (grob-interpret-markup grob #{ \markup \musicglyph #"noteheads.s2cross" #}))
                                                - \tweak TrillPitchHead.whiteout 1
                                                - \tweak TrillPitchHead.whiteout-style #'outline
                                                - \tweak Y-extent ##f
                                                - \tweak bound-details.left.Y #-2.5
                                                - \tweak bound-details.right.Y #-2.5
                                                \startTrillSpan a'
                                                \once \override Rest.staff-position = #-8
                                                r4
                                                \stopTrillSpan
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
                                                \tweak style #'harmonic-mixed
                                                e''4
                                                :8
                                                - \tweak TrillPitchAccidental.stencil ##f
                                                - \tweak TrillPitchHead.layer 5
                                                - \tweak TrillPitchHead.no-ledgers ##t
                                                - \tweak TrillPitchHead.stencil #(lambda (grob) (grob-interpret-markup grob #{ \markup \musicglyph #"noteheads.s2cross" #}))
                                                - \tweak TrillPitchHead.whiteout 1
                                                - \tweak TrillPitchHead.whiteout-style #'outline
                                                - \tweak Y-extent ##f
                                                - \tweak bound-details.left.Y #-2.5
                                                - \tweak bound-details.right.Y #-2.5
                                                \startTrillSpan a'
                                            }
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
                                            b'4
                                            :8
                                            \stopTrillSpan
                                            - \tweak TrillPitchAccidental.stencil ##f
                                            - \tweak TrillPitchHead.layer 5
                                            - \tweak TrillPitchHead.no-ledgers ##t
                                            - \tweak TrillPitchHead.stencil #(lambda (grob) (grob-interpret-markup grob #{ \markup \musicglyph #"noteheads.s2cross" #}))
                                            - \tweak TrillPitchHead.whiteout 1
                                            - \tweak TrillPitchHead.whiteout-style #'outline
                                            - \tweak Y-extent ##f
                                            - \tweak bound-details.left.Y #-1
                                            - \tweak bound-details.right.Y #-1
                                            \startTrillSpan e''
                                            \once \override Rest.staff-position = #-8
                                            r4
                                            \stopTrillSpan
                                            \once \override Rest.staff-position = #-8
                                            r2
                                            \once \override NoteHead.duration-log = #1
                                            \once \override Dots.stencil = ##f
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
                                            \tweak style #'harmonic-mixed
                                            e'4..
                                            :32
                                            - \tweak TrillPitchAccidental.stencil ##f
                                            - \tweak TrillPitchHead.layer 5
                                            - \tweak TrillPitchHead.no-ledgers ##t
                                            - \tweak TrillPitchHead.stencil #(lambda (grob) (grob-interpret-markup grob #{ \markup \musicglyph #"noteheads.s0harmonic" #}))
                                            - \tweak TrillPitchHead.whiteout 1
                                            - \tweak TrillPitchHead.whiteout-style #'outline
                                            - \tweak Y-extent ##f
                                            - \tweak bound-details.left.Y #-2.5
                                            - \tweak bound-details.right.Y #-2.5
                                            \startTrillSpan a
                                            \once \override Accidental.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override RepeatTie.transparent = ##t
                                            \once \override Beam.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override Dots.stencil = ##f
                                            \once \override Tie.stencil = ##f
                                            \once \override NoteHead.duration-log = 2
                                            \once \override Stem.stencil = ##f
                                            \once \override NoteHead.transparent = ##t
                                            c'16
                                            \stopTrillSpan
                                            \revert TrillSpanner.bound-details.right.padding
                                        }
                                        \context Voice = "violin 2 bow voice"
                                        {
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 5/6
                                            {
                                                \once \override Rest.staff-position = #8
                                                \override Voice.NoteHead.color = #(css-color 'darkred)
                                                \override Voice.Dots.color = #(css-color 'darkred)
                                                \override Voice.Stem.color = #(css-color 'darkred)
                                                \override Voice.Beam.color = #(css-color 'darkred)
                                                \override Voice.Rest.color = #(css-color 'darkred)
                                                \override Voice.Tie.color = #(css-color 'darkred)
                                                \override Voice.TupletBracket.color = #(css-color 'darkred)
                                                \override Voice.TupletNumber.color = #(css-color 'darkred)
                                                \voiceOne
                                                r16
                                                - \tweak Beam.positions #'(8 . 8)
                                                [
                                                \once \override Dots.staff-position = #2
                                                \once \override NoteHead.X-offset = 0
                                                \once \override Staff.Accidental.stencil = ##f
                                                \once \override Voice.Glissando.thickness = #8.25
                                                \once \override NoteHead.duration-log = 2
                                                \afterGrace
                                                <
                                                    \tweak style #'la
                                                    b
                                                >8.
                                                  %! abjad.glissando(7)
                                                - \tweak color #(css-color 'darkred)
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                - \tweak font-name "Bodoni72 Book" 
                                                - \tweak font-size 1
                                                - \tweak padding #12
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { \upright { "IV" } \hspace #0.5 }
                                                - \tweak bound-details.right.padding -0.5
                                                \startTextSpanTwo
                                                {
                                                    #(define afterGraceFraction (cons 15 16))
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
                                                    <b>16
                                                }
                                                \once \override Rest.staff-position = #8
                                                r16
                                                \once \override Dots.staff-position = #2
                                                \once \override NoteHead.X-offset = 0
                                                \once \override Staff.Accidental.stencil = ##f
                                                \once \override Voice.Glissando.thickness = #8.25
                                                \once \override NoteHead.duration-log = 2
                                                \afterGrace
                                                <
                                                    \tweak style #'la
                                                    c'
                                                >8.
                                                  %! abjad.glissando(7)
                                                - \tweak color #(css-color 'darkred)
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 15 16))
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
                                                    <c'>16
                                                }
                                                \once \override Rest.staff-position = #8
                                                r16
                                                \once \override Dots.staff-position = #2
                                                \once \override NoteHead.X-offset = 0
                                                \once \override Staff.Accidental.stencil = ##f
                                                \once \override Voice.Glissando.thickness = #8.25
                                                \once \override NoteHead.duration-log = 2
                                                \afterGrace
                                                <
                                                    \tweak style #'la
                                                    d'
                                                >8.
                                                  %! abjad.glissando(7)
                                                - \tweak color #(css-color 'darkred)
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 15 16))
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
                                                    <d'>16
                                                }
                                                \once \override Rest.staff-position = #8
                                                r16
                                                \once \override Dots.staff-position = #2
                                                \once \override NoteHead.X-offset = 0
                                                \once \override Staff.Accidental.stencil = ##f
                                                \once \override Voice.Glissando.thickness = #8.25
                                                \once \override NoteHead.duration-log = 2
                                                \afterGrace
                                                <
                                                    \tweak style #'la
                                                    e'
                                                >8.
                                                  %! abjad.glissando(7)
                                                - \tweak color #(css-color 'darkred)
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 15 16))
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
                                                    <e'>16
                                                }
                                                \once \override Rest.staff-position = #8
                                                r16
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
                                                  %! abjad.glissando(7)
                                                - \tweak color #(css-color 'darkred)
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 15 16))
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
                                                \once \override Rest.staff-position = #8
                                                r16
                                                \once \override Dots.staff-position = #2
                                                \once \override NoteHead.X-offset = 0
                                                \once \override Staff.Accidental.stencil = ##f
                                                \once \override Voice.Glissando.thickness = #8.25
                                                \once \override NoteHead.duration-log = 2
                                                \afterGrace
                                                <
                                                    \tweak style #'la
                                                    g'
                                                >8.
                                                ]
                                                  %! abjad.glissando(7)
                                                - \tweak color #(css-color 'darkred)
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 15 16))
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
                                                    \stopTextSpanTwo
                                                }
                                            }
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 5/6
                                            {
                                                \once \override Dots.staff-position = #2
                                                \once \override NoteHead.X-offset = 0
                                                \once \override Staff.Accidental.stencil = ##f
                                                \once \override Voice.Glissando.thickness = #8.25
                                                \once \override NoteHead.duration-log = 2
                                                \afterGrace
                                                <
                                                    \tweak style #'la
                                                    a'
                                                >4
                                                  %! abjad.glissando(7)
                                                - \tweak color #(css-color 'darkred)
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                - \tweak font-name "Bodoni72 Book" 
                                                - \tweak font-size 1
                                                - \tweak padding #10
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { \upright { "(IV)" } \hspace #0.5 }
                                                - \tweak bound-details.right.padding -0.5
                                                \startTextSpanTwo
                                                {
                                                    #(define afterGraceFraction (cons 15 16))
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
                                                }
                                                \once \override Rest.staff-position = #8
                                                r4
                                                \once \override Dots.staff-position = #2
                                                \once \override NoteHead.X-offset = 0
                                                \once \override Staff.Accidental.stencil = ##f
                                                \once \override Voice.Glissando.thickness = #8.25
                                                \once \override NoteHead.duration-log = 2
                                                \afterGrace
                                                <
                                                    \tweak style #'la
                                                    b'
                                                >4
                                                  %! abjad.glissando(7)
                                                - \tweak color #(css-color 'darkred)
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 15 16))
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
                                                    <b'>16
                                                }
                                            }
                                            \once \override Rest.staff-position = #8
                                            r8
                                            \once \override Dots.staff-position = #2
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                c''
                                            >4
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
                                                c''
                                            >8
                                            - \tweak Beam.positions #'(8 . 8)
                                            [
                                            {
                                                #(define afterGraceFraction (cons 15 16))
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
                                                <c''>16
                                            }
                                            \once \override Rest.staff-position = #8
                                            r8
                                            ]
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 8/7
                                            {
                                                \once \override Rest.staff-position = #8
                                                r8
                                                \once \override Dots.staff-position = #2
                                                \once \override NoteHead.X-offset = 0
                                                \once \override Staff.Accidental.stencil = ##f
                                                \once \override Voice.Glissando.thickness = #8.25
                                                \once \override NoteHead.duration-log = 2
                                                <
                                                    \tweak style #'la
                                                    d''
                                                >4
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
                                                >16
                                                {
                                                    #(define afterGraceFraction (cons 15 16))
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
                                                    \stopTextSpanTwo
                                                }
                                            }
                                            \once \override Rest.staff-position = #8
                                            r2
                                            - \tweak padding #11
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " rit. ( to " } \fontsize #-0.5 { \note { 4 } #1.5 } \fontsize #3 { "= 52 )" } } } \hspace #0.5 }
                                            - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 52" } } }
                                            - \tweak bound-details.right.padding -58
                                            \startTextSpanThree
                                            \once \override Dots.staff-position = #2
                                            \afterGrace
                                            <c'>2
                                            - \tweak color #(css-color 'darkred)
                                            _ \tenuto
                                              %! abjad.glissando(7)
                                            - \tweak color #(css-color 'darkred)
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 1
                                            - \tweak padding #6
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "(IV)" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -0.5
                                            \startTextSpanTwo
                                            {
                                                #(define afterGraceFraction (cons 15 16))
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
                                                <c'>16
                                                \stopTextSpanThree
                                                \stopTextSpanTwo
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
                                        \context Voice = "violin 4 voice hair"
                                        {
                                            \once \override TupletBracket.padding = #3.5
                                            \times 2/3
                                            {
                                                \set Staff.forceClef = ##t
                                                \staff-line-count 5
                                                \revert Staff.StaffSymbol.line-positions
                                                \revert Staff.Accidental.stencil
                                                \revert Staff.NoteHead.no-ledgers
                                                \revert Staff.Clef.stencil
                                                \voiceOne
                                                r8
                                                [
                                                \override Staff.BarLine.bar-extent = #'(-2 . 2)
                                                \big-half-harmonic
                                                dqs'8
                                                - \tweak padding 1
                                                ^ \talon-to-punta
                                                - \tweak font-name "Bodoni72 Book" 
                                                - \tweak font-size 1
                                                - \tweak padding #9.5
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { \upright { "MSP" } \hspace #0.5 }
                                                - \tweak bound-details.right.padding -3
                                                \startTextSpanTwo
                                                _ (
                                                \set Staff.forceClef = ##f
                                                \big-half-harmonic
                                                aqf8
                                                )
                                                ]
                                            }
                                            r4
                                            \big-half-harmonic
                                            bqf16
                                            - \tweak padding 1
                                            ^ \punta-to-talon
                                            [
                                            _ (
                                            \big-half-harmonic
                                            cqs'8.
                                            )
                                            ]
                                            r8
                                            [
                                            \big-half-harmonic
                                            cs'8
                                            - \tweak padding 1
                                            ^ \talon-to-punta
                                            ]
                                            _ (
                                            \big-half-harmonic
                                            a8.
                                            )
                                            [
                                            r16
                                            ]
                                            r8.
                                            [
                                            \big-half-harmonic
                                            b16
                                            - \tweak padding 1
                                            ^ \punta-to-talon
                                            ]
                                            _ (
                                            \big-half-harmonic
                                            cs'8
                                            )
                                            [
                                            r8
                                            ]
                                            \big-half-harmonic
                                            aqf4
                                            - \tweak padding 1
                                            ^ \talon-to-punta
                                            _ (
                                            ~
                                            \big-half-harmonic
                                            aqf16
                                            [
                                            \big-half-harmonic
                                            b8.
                                            ]
                                            \big-half-harmonic
                                            cqs'8
                                            [
                                            \big-half-harmonic
                                            c'8
                                            ]
                                            \big-half-harmonic
                                            dqs'16.
                                            [
                                            \big-half-harmonic
                                            aqf32
                                            ~
                                            \big-half-harmonic
                                            aqf8
                                            )
                                            \stopTextSpanTwo
                                            ]
                                        }
                                        \context Voice = "violin 2 legno voice"
                                        {
                                            \times 2/3
                                            {
                                                \once \override Rest.staff-position = #-16
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
                                                - \tweak font-name "Bodoni72 Book" 
                                                - \tweak font-size 1
                                                - \tweak padding #16.5
                                                - \abjad-dashed-line-with-up-hook
                                                - \tweak bound-details.left.text \markup \concat { \upright { "CLT DP" } \hspace #0.5 }
                                                - \tweak bound-details.right.padding 2
                                                \startTextSpan
                                                \override Voice.NoteHead.no-ledgers = ##t
                                                \override Voice.Accidental.stencil = ##f
                                                a,4
                                            }
                                            \times 4/5
                                            {
                                                \textSpannerDown
                                                \tweak style #'cross
                                                a,16
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                \stopTextSpan
                                                [
                                                - \tweak color #(css-color 'darkred)
                                                - \tweak font-name "Bodoni72 Book" 
                                                - \tweak font-size 1
                                                - \tweak padding #18.5
                                                - \abjad-dashed-line-with-up-hook
                                                - \tweak bound-details.left.text \markup \concat { \upright { "CLB OB" } \hspace #0.5 }
                                                - \tweak bound-details.right.padding -1
                                                \startTextSpan
                                                \textSpannerUp
                                                \once \override Rest.staff-position = #-16
                                                r8
                                                \tweak style #'cross
                                                a,16
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                \tweak style #'cross
                                                a,16
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                - \tweak color #(css-color 'darkred)
                                                _ \accent
                                                \stopTextSpan
                                                ]
                                                \textSpannerUp
                                            }
                                            \textSpannerDown
                                            a,4
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 1
                                            - \tweak padding #13.5
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLT DP" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 2
                                            \startTextSpan
                                            \textSpannerDown
                                            \tweak style #'cross
                                            a,16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            \stopTextSpan
                                            [
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 1
                                            - \tweak padding #17
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \column { \line { "CLB" } \line { "OB" } } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 2
                                            \startTextSpan
                                            \textSpannerUp
                                            \tweak style #'cross
                                            a,16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            \textSpannerDown
                                            a,8
                                            \stopTextSpan
                                            ]
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 1
                                            - \tweak padding #14
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLT DP" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -3
                                            \startTextSpan
                                            ~
                                            \textSpannerUp
                                            a,8.
                                            \stopTextSpan
                                            \textSpannerUp
                                            \times 4/6
                                            {
                                                \textSpannerDown
                                                \tweak style #'cross
                                                a,16
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                [
                                                - \tweak color #(css-color 'darkred)
                                                - \tweak font-name "Bodoni72 Book" 
                                                - \tweak font-size 1
                                                - \tweak padding #18.5
                                                - \abjad-dashed-line-with-up-hook
                                                - \tweak bound-details.left.text \markup \concat { \upright { "CLB OB" } \hspace #0.5 }
                                                - \tweak bound-details.right.padding -1
                                                \startTextSpan
                                                \tweak style #'cross
                                                a,16
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                - \tweak color #(css-color 'darkred)
                                                _ \accent
                                                \tweak style #'cross
                                                a,16
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                \once \override Rest.staff-position = #-16
                                                r8
                                                \tweak style #'cross
                                                a,16
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                \stopTextSpan
                                                ]
                                                \textSpannerUp
                                            }
                                            \textSpannerDown
                                            a,16
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 1
                                            - \tweak padding #15.5
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLT DP" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -3
                                            \startTextSpan
                                            ~
                                            a,8
                                            \stopTextSpan
                                            [
                                            \textSpannerUp
                                            \times 4/5
                                            {
                                                \textSpannerDown
                                                \tweak style #'cross
                                                a,16
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                - \tweak color #(css-color 'darkred)
                                                - \tweak font-name "Bodoni72 Book" 
                                                - \tweak font-size 1
                                                - \tweak padding #18.5
                                                - \abjad-dashed-line-with-up-hook
                                                - \tweak bound-details.left.text \markup \concat { \column { \line { "CLB" } \line { "OB" } } \hspace #0.5 }
                                                - \tweak bound-details.right.padding -2
                                                \startTextSpan
                                                \tweak style #'cross
                                                a,16
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                \tweak style #'cross
                                                a,32
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                \stopTextSpan
                                                ]
                                                \textSpannerUp
                                            }
                                            \textSpannerDown
                                            a,2
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 1
                                            - \tweak padding #13.5
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLT DP" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -5
                                            \startTextSpan
                                            ~
                                            a,2
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
                                    r2.
                                    r2
                                    \once \override Staff.BarLine.transparent = ##f
                                    \startStaff
                                    \stopStaff
                                    \once \revert Staff.StaffSymbol.line-positions
                                    \once \override Staff.StaffSymbol.line-count = #0
                                    \once \override Staff.BarLine.transparent = ##f
                                    r4.
                                    r4
                                    r4.
                                    r4
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
                                    r1
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
                                    r4
                                    \once \override Staff.BarLine.transparent = ##f
                                    \startStaff
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
                                    ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #1.5 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { " . = 58" } } }
                                    r4.
                                    r4.
                                    r2.
                                      %! +SCORE
                                    ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #1.5 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 87" } } }
                                    r2
                                    r4.
                                    r4
                                    r4.
                                    r4
                                    r2
                                    r2
                                    - \tweak padding #6
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " rit. ( to " } \fontsize #-0.5 { \note { 4 } #1.5 } \fontsize #3 { "= 52 )" } } } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 52" } } }
                                    \startTextSpanThree
                                    \override Dots.staff-position = #2
                                    \big-half-harmonic
                                    \clef "alto"
                                    cqs2
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    ^ (
                                    ~
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    cqs2.
                                    ~
                                    cqs2.
                                    \stopTextSpanThree
                                    ~
                                    cqs2.
                                    ~
                                    \afterGrace
                                    cqs2
                                    {
                                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                                        \once \override Stem.direction = #DOWN
                                        \revert Dots.staff-position
                                        \once \override Flag.stroke-style = #"grace"
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        g''16
                                        )
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
                                    \once \override Staff.BarLine.transparent = ##f
                                    \override Dots.staff-position = #2
                                    \set GrandStaff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { Violoncello }
                                      %! +SCORE
                                    \set GrandStaff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { VC }
                                    a4.
                                      %! +SCORE
                                    ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #3 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { " . = 58" } } }
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #6
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "1/2 CLT" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -1
                                    \startTextSpanTwo
                                    c'4.
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \afterGrace
                                    a4.
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    {
                                        \revert Dots.staff-position
                                        b16
                                        \stopTextSpanTwo
                                    }
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
                                    r4.
                                    r4
                                    r4.
                                    r4
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
                                    r1
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
                                    r4
                                    \once \override Staff.BarLine.transparent = ##f
                                    \startStaff
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
                                        \context Voice = "cello 2 voice upper 1"
                                        {
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 9/10
                                            {
                                                \voiceOne
                                                \tweak Accidental.stencil #ly:text-interface::print
                                                \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                                e!16
                                                - \tenuto
                                                ^ \markup \center-align { \concat { -14 } }
                                                [
                                                r8.
                                                \tweak Accidental.stencil #ly:text-interface::print
                                                \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                                e!16
                                                - \tenuto
                                                ^ \markup \center-align { \concat { -14 } }
                                                r8.
                                                \tweak Accidental.stencil #ly:text-interface::print
                                                \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                                e!16
                                                - \tenuto
                                                ^ \markup \center-align { \concat { -14 } }
                                                r8.
                                                \tweak Accidental.stencil #ly:text-interface::print
                                                \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                                e!16
                                                - \tenuto
                                                ^ \markup \center-align { \concat { -14 } }
                                                r8.
                                                \tweak Accidental.stencil #ly:text-interface::print
                                                \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                                e!16
                                                - \tenuto
                                                ^ \markup \center-align { \concat { -14 } }
                                                r8.
                                                ]
                                            }
                                        }
                                        \context Voice = "cello lower voice 1"
                                        {
                                            \clef "bass"
                                            \voiceTwo
                                            c,4.
                                            c,4.
                                            c,4.
                                        }
                                    >>
                                    \oneVoice
                                    <<
                                        \context Voice = "cello 2 voice upper 2"
                                        {
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 5/6
                                            {
                                                \voiceOne
                                                df,16
                                                  %! +SCORE
                                                ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #10 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 87" } } }
                                                - \tweak Beam.positions #'(5 . 7)
                                                [
                                                - \tweak font-name "Bodoni72 Book" 
                                                - \tweak font-size 1
                                                - \tweak padding #10.5
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { \upright { "1/2 CLB" } \hspace #0.5 }
                                                - \tweak bound-details.right.padding -8
                                                \startTextSpanTwo
                                                r8.
                                                f,16
                                                r8.
                                                bf,16
                                                \stopTextSpanTwo
                                                r8.
                                                b,16
                                                - \tweak font-name "Bodoni72 Book" 
                                                - \tweak font-size 1
                                                - \tweak padding #11
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { \upright { "CLB" } \hspace #0.5 }
                                                - \tweak bound-details.right.padding -2
                                                \startTextSpanTwo
                                                r8.
                                                d16
                                                r8.
                                                af16
                                                \stopTextSpanTwo
                                                r8.
                                                ]
                                            }
                                        }
                                        \context Voice = "cello lower voice 2"
                                        {
                                            \voiceTwo
                                            df,16
                                            [
                                            r8.
                                            f,16
                                            r8.
                                            bf,16
                                            r8.
                                            b,16
                                            r8.
                                            d16
                                            r8.
                                            ]
                                        }
                                    >>
                                    \oneVoice
                                    <<
                                        \context Voice = "cello 2 voice fingers"
                                        {
                                            \override Staff.Clef.stencil = #ly:text-interface::print
                                            \override Staff.Clef.text = \string-clef
                                            \staff-line-count 4
                                            \override Staff.StaffSymbol.line-positions = #'(9 7 0 -9)
                                            \override Staff.BarLine.bar-extent = #'(-4.5 . 4.5)
                                            \override Staff.Accidental.stencil = ##f
                                            \override Staff.NoteHead.no-ledgers = ##t
                                            \clef "treble"
                                            \voiceTwo
                                            <
                                                \tweak style #'cross
                                                e''
                                                \tweak style #'harmonic
                                                g''
                                            >8
                                            ^ \staccato
                                            _ \marcato
                                            \once \override Rest.staff-position = #-9
                                            r4
                                            \once \override Rest.staff-position = #-9
                                            r8
                                            - \tweak Beam.positions #'(-9 . -9)
                                            [
                                            <
                                                \tweak style #'cross
                                                b'
                                                \tweak style #'harmonic
                                                e''
                                            >8
                                            ^ \staccato
                                            _ \marcato
                                            ]
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 5/6
                                            {
                                                \once \override Rest.staff-position = #-9
                                                r4
                                                <
                                                    \tweak style #'cross
                                                    b'
                                                    \tweak style #'harmonic
                                                    c''
                                                >4
                                                ^ \staccato
                                                _ \marcato
                                                \once \override Rest.staff-position = #-9
                                                r4
                                            }
                                            \once \override Rest.staff-position = #-9
                                            r4
                                            <
                                                \tweak style #'cross
                                                d'
                                                \tweak style #'harmonic
                                                g'
                                            >4
                                            ^ \staccato
                                            _ \marcato
                                        }
                                        \context Voice = "cello bow voice"
                                        {
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 5/6
                                            {
                                                \once \override Rest.staff-position = #12
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
                                                - \tweak font-name "Bodoni72 Book" 
                                                - \tweak font-size 1
                                                - \tweak padding #12.5
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { \upright { "I" } \hspace #0.5 }
                                                - \tweak bound-details.right.padding -0.5
                                                \startTextSpanTwo
                                                \once \override NoteHead.X-offset = 0
                                                \once \override Staff.Accidental.stencil = ##f
                                                \once \override Voice.Glissando.thickness = #8.25
                                                \once \override NoteHead.duration-log = 2
                                                <
                                                    \tweak style #'la
                                                    f''
                                                >4
                                                - \tweak color #(css-color 'darkred)
                                                ^ \marcato
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = #8
                                                r4
                                            }
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                d''
                                            >8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \marcato
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            \once \override Rest.staff-position = #8
                                            r4
                                            \once \override Rest.staff-position = #8
                                            r8
                                            - \tweak Beam.positions #'(8 . 8)
                                            [
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                b'
                                            >8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \marcato
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            ]
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 8/7
                                            {
                                                \once \override NoteHead.X-offset = 0
                                                \once \override Staff.Accidental.stencil = ##f
                                                \once \override Voice.Glissando.thickness = #8.25
                                                \once \override NoteHead.duration-log = 2
                                                <
                                                    \tweak style #'la
                                                    a'
                                                >8
                                                - \tweak color #(css-color 'darkred)
                                                ^ \marcato
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = #8
                                                r4
                                                \once \override Rest.staff-position = #8
                                                r16
                                                \stopTextSpanTwo
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
                                    \staff-line-count 5
                                    \revert Staff.StaffSymbol.line-positions
                                    \revert Staff.Accidental.stencil
                                    \revert Staff.NoteHead.no-ledgers
                                    \revert Staff.Clef.stencil
                                    \clef "bass"
                                    r2
                                    - \tweak padding #17.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " rit. ( to " } \fontsize #-0.5 { \note { 4 } #1.5 } \fontsize #3 { "= 52 )" } } } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 52" } } }
                                    - \tweak bound-details.right.padding -9
                                    \startTextSpanThree
                                    \override Staff.BarLine.bar-extent = #'(-2 . 2)
                                    \big-half-harmonic
                                    c2
                                    - \tenuto
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #6.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "IV, MST, bowing string + waist" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -1.5
                                    \startTextSpanTwo
                                    r16
                                    [
                                    \big-half-harmonic
                                    c8.
                                    - \tenuto
                                    ]
                                    r4
                                    r8.
                                    [
                                    \big-half-harmonic
                                    c16
                                    - \tenuto
                                    \stopTextSpanThree
                                    \stopTextSpanTwo
                                    ]
                                    <<
                                        \context Voice = "cello 2 voice hair"
                                        {
                                            \once \override TupletBracket.padding = #4.25
                                            \times 4/5
                                            {
                                                \voiceOne
                                                <
                                                    \tweak Accidental.font-size #-3.5
                                                    \tweak Accidental.parenthesized ##t
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-3.5
                                                    bf!
                                                    \tweak Accidental.font-size #-3.5
                                                    \tweak Accidental.parenthesized ##t
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-3.5
                                                    \tweak style #'harmonic
                                                    cs'!
                                                    \tweak style #'harmonic
                                                    eqf'!
                                                >16
                                                - \tweak padding 1
                                                ^ \punta-to-talon
                                                [
                                                - \tweak font-name "Bodoni72 Book" 
                                                - \tweak font-size 1
                                                - \tweak padding #15.5
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { \upright { "MSP" } \hspace #0.5 }
                                                - \tweak bound-details.right.padding -1
                                                \startTextSpanTwo
                                                _ (
                                                <
                                                    \tweak Accidental.font-size #-3.5
                                                    \tweak Accidental.parenthesized ##t
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-3.5
                                                    \tweak style #'harmonic
                                                    c'!
                                                    \tweak style #'harmonic
                                                    ef'!
                                                >8.
                                                )
                                                r16
                                                ]
                                            }
                                            r8.
                                            [
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                cs'!
                                                \tweak style #'harmonic
                                                ef'!
                                            >16
                                            - \tweak padding 1
                                            ^ \talon-to-punta
                                            ]
                                            ~
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                cs'
                                                \tweak style #'harmonic
                                                ef'
                                            >8.
                                            [
                                            r16
                                            ]
                                            r16
                                            [
                                            \once \override TupletBracket.padding = #5
                                            \times 4/5
                                            {
                                                \set stemLeftBeamCount = 1
                                                \set stemRightBeamCount = 2
                                                r16
                                                <
                                                    \tweak Accidental.font-size #-3.5
                                                    \tweak Accidental.parenthesized ##t
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-3.5
                                                    \tweak style #'harmonic
                                                    cqs'!
                                                    \tweak style #'harmonic
                                                    d'!
                                                >8.
                                                - \tweak padding 1
                                                ^ \punta-to-talon
                                                _ (
                                                \set stemLeftBeamCount = 2
                                                \set stemRightBeamCount = 1
                                                <
                                                    \tweak Accidental.font-size #-3.5
                                                    \tweak Accidental.parenthesized ##t
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-3.5
                                                    \tweak style #'harmonic
                                                    dqf'!
                                                    \tweak style #'harmonic
                                                    ef'!
                                                >16
                                                ~
                                            }
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                dqf'
                                                \tweak style #'harmonic
                                                ef'
                                            >8.
                                            ]
                                            ~
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                dqf'
                                                \tweak style #'harmonic
                                                ef'
                                            >16
                                            [
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                b!
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                cqs'!
                                                \tweak style #'harmonic
                                                d'!
                                            >8.
                                            ]
                                            ~
                                            \times 2/3
                                            {
                                                <
                                                    \tweak Accidental.font-size #-3.5
                                                    \tweak Accidental.parenthesized ##t
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-3.5
                                                    b
                                                    \tweak Accidental.font-size #-3.5
                                                    \tweak Accidental.parenthesized ##t
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-3.5
                                                    \tweak style #'harmonic
                                                    cqs'
                                                    \tweak style #'harmonic
                                                    d'
                                                >8
                                                <
                                                    \tweak Accidental.font-size #-3.5
                                                    \tweak Accidental.parenthesized ##t
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-3.5
                                                    \tweak style #'harmonic
                                                    dqf'!
                                                    \tweak style #'harmonic
                                                    eqf'!
                                                >4
                                                ~
                                            }
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                dqf'
                                                \tweak style #'harmonic
                                                eqf'
                                            >8
                                            [
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                b!
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                c'!
                                                \tweak style #'harmonic
                                                ef'!
                                            >16.
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                bf!
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                cs'!
                                                \tweak style #'harmonic
                                                eqf'!
                                            >32
                                            )
                                            \stopTextSpanTwo
                                            ]
                                        }
                                        \context Voice = "cello legno voice"
                                        {
                                            \times 4/5
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
                                                c,4
                                                - \tweak color #(css-color 'darkred)
                                                - \tweak font-name "Bodoni72 Book" 
                                                - \tweak font-size 1
                                                - \tweak padding #14
                                                - \abjad-dashed-line-with-up-hook
                                                - \tweak bound-details.left.text \markup \concat { \upright { "CLT DP" } \hspace #0.5 }
                                                - \tweak bound-details.right.padding 2
                                                \startTextSpan
                                                \textSpannerDown
                                                \tweak style #'cross
                                                c,16
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                \stopTextSpan
                                                - \tweak color #(css-color 'darkred)
                                                - \tweak font-name "Bodoni72 Book" 
                                                - \tweak font-size 1
                                                - \tweak padding #13
                                                - \abjad-dashed-line-with-up-hook
                                                - \tweak bound-details.left.text \markup \concat { \upright { "CLB OB" } \hspace #0.5 }
                                                - \tweak bound-details.right.padding -1
                                                \startTextSpan
                                                \textSpannerUp
                                            }
                                            \tweak style #'cross
                                            c,16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            [
                                            \tweak style #'cross
                                            c,16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            \once \override Rest.staff-position = #-8
                                            r16
                                            \stopTextSpan
                                            \textSpannerUp
                                            \textSpannerDown
                                            c,16
                                            ]
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 1
                                            - \tweak padding #11
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLT DP" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 2
                                            \startTextSpan
                                            ~
                                            c,8.
                                            [
                                            \textSpannerDown
                                            \tweak style #'cross
                                            c,32
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            \stopTextSpan
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 1
                                            - \tweak padding #12
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLB OB" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -1
                                            \startTextSpan
                                            \textSpannerUp
                                            \tweak style #'cross
                                            c,32
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            ]
                                            \tweak style #'cross
                                            c,16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            [
                                            \times 4/5
                                            {
                                                \set stemLeftBeamCount = 1
                                                \set stemRightBeamCount = 3
                                                \tweak style #'cross
                                                c,32
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                \tweak style #'cross
                                                c,32
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                - \tweak color #(css-color 'darkred)
                                                _ \accent
                                                \stopTextSpan
                                                ]
                                                \textSpannerUp
                                                \textSpannerDown
                                                c,4
                                                - \tweak color #(css-color 'darkred)
                                                - \tweak font-name "Bodoni72 Book" 
                                                - \tweak font-size 1
                                                - \tweak padding #15
                                                - \abjad-dashed-line-with-up-hook
                                                - \tweak bound-details.left.text \markup \concat { \upright { "CLT DP" } \hspace #0.5 }
                                                - \tweak bound-details.right.padding -4
                                                \startTextSpan
                                                ~
                                            }
                                            c,8.
                                            ~
                                            c,4
                                            ~
                                            c,2
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
