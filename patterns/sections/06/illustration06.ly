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
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (15 30 36 22)))
            \time 2/4
            s1 * 1/2
              %! +SCORE
            \noBreak
            \time 9/8
            s1 * 9/8
              %! +SCORE
            \break
              %! +SCORE
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (7 36 32 18)))
            \time 4/4
            s1 * 1
              %! +SCORE
            \noBreak
            \time 2/4
            s1 * 1/2
              %! +SCORE
            \break
              %! +SCORE
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (7 34 43 32)))
            \time 6/8
            s1 * 3/4
              %! +SCORE
            \break
              %! +SCORE
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (14 40 46 39)))
            \time 3/4
            s1 * 3/4
              %! +SCORE
            \noBreak
            \time 5/4
            s1 * 5/4
              %! +SCORE
            \break
              %! +SCORE
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (7 32 30 30)))
            \once \override Score.TimeSignature.stencil = ##f
            \time 5/4
            s1 * 5/4
              %! +SCORE
            \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 5/4
            s1 * 5/4
              %! +SCORE
            \break
              %! +SCORE
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (11 32 25 24)))
            \once \override Score.TimeSignature.stencil = ##f
            \time 5/4
            s1 * 5/4
              %! +SCORE
            \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 5/4
            s1 * 5/4
              %! +SCORE
            \break
              %! +SCORE
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (11 32 25 24)))
            \once \override Score.TimeSignature.stencil = ##f
            \time 5/4
            s1 * 5/4
              %! +SCORE
            \noBreak
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            - \tweak font-size #'10
            _ \extremely-long-fermata
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
                                    r4.
                                    r4.
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
                                    r2
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
                                    r2
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
                                    r2
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
                                            \big-half-harmonic
                                            \once \override Dots.staff-position = #-1
                                            \once \override Rest.staff-position = #-7
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
                                            \override Staff.Clef.stencil = #ly:text-interface::print
                                            \override Staff.Clef.text = \string-clef
                                            \staff-line-count 4
                                            \override Staff.StaffSymbol.line-positions = #'(9 7 0 -9)
                                            \override Staff.BarLine.bar-extent = #'(-4.5 . 4.5)
                                            \override Staff.Accidental.stencil = ##f
                                            \override Staff.NoteHead.no-ledgers = ##t
                                            \textSpannerDown
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \voiceTwo
                                            \pitchedTrill
                                            f''8.
                                            :32
                                            - \markup \fontsize #2 { \hspace #-10.5 { "Fng. Perc.:" } }
                                              %! +SCORE
                                            ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #9.5 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 72" } } }
                                            [
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #9
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "IV" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -1.5
                                            \startTextSpanOne
                                            - \tweak TrillPitchAccidental.stencil ##f
                                            - \tweak TrillPitchHead.layer 5
                                            - \tweak TrillPitchHead.no-ledgers ##t
                                            - \tweak TrillPitchHead.stencil #(lambda (grob) (grob-interpret-markup grob #{ \markup \musicglyph #"noteheads.s2cross" #}))
                                            - \tweak TrillPitchHead.whiteout 1
                                            - \tweak TrillPitchHead.whiteout-style #'outline
                                            - \tweak Y-extent ##f
                                            - \tweak bound-details.left.Y #-1
                                            - \tweak bound-details.right.Y #-1
                                            \startTrillSpan c''
                                            \big-half-harmonic
                                            \revert Staff.Stem.stemlet-length
                                            d''16
                                            \stopTextSpanOne
                                            \stopTrillSpan
                                            ]
                                            \textSpannerUp
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
                                            \textSpannerDown
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \pitchedTrill
                                            \tweak style #'harmonic
                                            e''8.
                                            :32
                                            [
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #9.5
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "III" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -1.5
                                            \startTextSpanOne
                                            - \tweak TrillPitchAccidental.stencil ##f
                                            - \tweak TrillPitchHead.layer 5
                                            - \tweak TrillPitchHead.no-ledgers ##t
                                            - \tweak TrillPitchHead.stencil #(lambda (grob) (grob-interpret-markup grob #{ \markup \musicglyph #"noteheads.s2cross" #}))
                                            - \tweak TrillPitchHead.whiteout 1
                                            - \tweak TrillPitchHead.whiteout-style #'outline
                                            - \tweak Y-extent ##f
                                            - \tweak bound-details.left.Y #-1.5
                                            - \tweak bound-details.right.Y #-1.5
                                            \startTrillSpan a'
                                            \revert Dots.staff-position
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic
                                            c''16
                                            \stopTextSpanOne
                                            \stopTrillSpan
                                            ]
                                            \textSpannerUp
                                            \once \override Rest.staff-position = #-7
                                            \once \override Rest.staff-position = #-7
                                            r4
                                            \once \override Rest.staff-position = #-7
                                            r16
                                            - \tweak Beam.positions #'(-8.5 . -8.5)
                                            [
                                            \textSpannerDown
                                            <
                                                \tweak style #'cross
                                                a'
                                                \tweak style #'harmonic
                                                b'
                                            >16
                                            ]
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #10.5
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "III" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -1.5
                                            \startTextSpanOne
                                            <
                                                \tweak style #'cross
                                                f'
                                                \tweak style #'harmonic
                                                b'
                                            >16
                                            [
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
                                            b'16
                                            :32
                                            ]
                                            ~
                                            - \tweak TrillPitchAccidental.stencil ##f
                                            - \tweak TrillPitchHead.layer 5
                                            - \tweak TrillPitchHead.no-ledgers ##t
                                            - \tweak TrillPitchHead.stencil #(lambda (grob) (grob-interpret-markup grob #{ \markup \musicglyph #"noteheads.s2cross" #}))
                                            - \tweak TrillPitchHead.whiteout 1
                                            - \tweak TrillPitchHead.whiteout-style #'outline
                                            - \tweak Y-extent ##f
                                            - \tweak bound-details.left.Y #-1.5
                                            - \tweak bound-details.right.Y #-4
                                            \startTrillSpan f'
                                            \big-half-harmonic
                                            b'4
                                            ~
                                            \big-half-harmonic
                                            b'16
                                            \stopTextSpanOne
                                            \stopTrillSpan
                                            - \tweak Beam.positions #'(-8.5 . -8.5)
                                            [
                                            \textSpannerUp
                                            \once \override Rest.staff-position = #-7
                                            r16
                                            \textSpannerDown
                                            <
                                                \tweak style #'cross
                                                a'
                                                \tweak style #'harmonic
                                                c''
                                            >16
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #10.5
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "IV" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -1.5
                                            \startTextSpanOne
                                            \once \override Rest.staff-position = #-7
                                            r16
                                            \once \override Rest.staff-position = #-7
                                            r16
                                            <
                                                \tweak style #'cross
                                                a'
                                                \tweak style #'harmonic
                                                b'
                                            >16
                                            \stopTextSpanOne
                                            ]
                                            \textSpannerUp
                                            \once \override Rest.staff-position = #-7
                                            \once \override Rest.staff-position = #-7
                                            r4
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
                                            \textSpannerDown
                                            \pitchedTrill
                                            \tweak style #'harmonic-mixed
                                            c'4
                                            :8
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #12
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "III" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -1.5
                                            \startTextSpanOne
                                            - \tweak TrillPitchAccidental.stencil ##f
                                            - \tweak TrillPitchHead.layer 5
                                            - \tweak TrillPitchHead.no-ledgers ##t
                                            - \tweak TrillPitchHead.stencil #(lambda (grob) (grob-interpret-markup grob #{ \markup \musicglyph #"noteheads.s2cross" #}))
                                            - \tweak TrillPitchHead.whiteout 1
                                            - \tweak TrillPitchHead.whiteout-style #'outline
                                            - \tweak Y-extent ##f
                                            - \tweak bound-details.left.Y #-4
                                            - \tweak bound-details.right.Y #-4
                                            \startTrillSpan a
                                            \tweak style #'harmonic-mixed
                                            a4
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            \revert Dots.staff-position
                                            \tweak style #'harmonic-mixed
                                            d'4
                                            \stopTextSpanOne
                                            \stopTrillSpan
                                            \textSpannerUp
                                            \override Dots.staff-position = #2
                                            \big-half-harmonic
                                            \once \override Rest.staff-position = #-7
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
                                            \textSpannerDown
                                            \pitchedTrill
                                            d'8
                                            :16
                                            [
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #14.5
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "IV" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -1.5
                                            \startTextSpanOne
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
                                            \startTrillSpan a
                                            \big-half-harmonic
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            d'32
                                            ]
                                            ~
                                            \times 2/3
                                            {
                                                \big-half-harmonic
                                                d'8
                                                \big-half-harmonic
                                                  %! abjad.glissando(6)
                                                \revert Accidental.stencil
                                                  %! abjad.glissando(6)
                                                \revert NoteColumn.glissando-skip
                                                  %! abjad.glissando(6)
                                                \revert NoteHead.no-ledgers
                                                  %! abjad.glissando(6)
                                                \undo \hide NoteHead
                                                b4
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                ~
                                            }
                                            \big-half-harmonic
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \afterGrace
                                            b16.
                                            {
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
                                                \stopTextSpanOne
                                                \stopTrillSpan
                                                \textSpannerUp
                                            }
                                            \once \override Rest.staff-position = #-7
                                            \once \override Rest.staff-position = #-7
                                            r16
                                            - \tweak Beam.positions #'(-8.5 . -8.5)
                                            [
                                            - \tweak padding #10
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " rit. ( to " } \fontsize #-0.5 { \note { 8 } #1.5 } \fontsize #3 { "= 86 )" } } } \hspace #0.5 }
                                            - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #1.5 } \fontsize #4 { "= 86" } } }
                                            \startTextSpanThree
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
                                            \textSpannerDown
                                            \pitchedTrill
                                            \tweak style #'harmonic
                                            d''16
                                            :32
                                            ]
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #12
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "III" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -1.5
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
                                            \startTrillSpan b'
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            d''4
                                            ~
                                            \afterGrace
                                            d''8
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
                                                \tweak style #'harmonic
                                                g'16
                                                \stopTrillSpan
                                            }
                                            \once \override Rest.staff-position = #-7
                                            r8.
                                            <
                                                \tweak style #'cross
                                                c'
                                                \tweak style #'harmonic
                                                g'
                                            >16
                                            \stopTextSpanOne
                                            ]
                                            \textSpannerUp
                                            \big-half-harmonic
                                            \once \override Dots.staff-position = #-3
                                            \once \override Rest.staff-position = #-7
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
                                            \textSpannerDown
                                            \pitchedTrill
                                            c''32.
                                            :128
                                            [
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #14
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "III" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -1.5
                                            \startTextSpanOne
                                            - \tweak TrillPitchAccidental.stencil ##f
                                            - \tweak TrillPitchHead.layer 5
                                            - \tweak TrillPitchHead.no-ledgers ##t
                                            - \tweak TrillPitchHead.stencil #(lambda (grob) (grob-interpret-markup grob #{ \markup \musicglyph #"noteheads.s2cross" #}))
                                            - \tweak TrillPitchHead.whiteout 1
                                            - \tweak TrillPitchHead.whiteout-style #'outline
                                            - \tweak Y-extent ##f
                                            - \tweak bound-details.left.Y #-6.5
                                            - \tweak bound-details.right.Y #-6
                                            \startTrillSpan a'
                                            \override Dots.staff-position = #2
                                            \big-half-harmonic
                                            b32.
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            \big-half-harmonic
                                            \set stemLeftBeamCount = 3
                                            \set stemRightBeamCount = 1
                                            d'32
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            ~
                                            \big-half-harmonic
                                            \set stemLeftBeamCount = 1
                                            \set stemRightBeamCount = 4
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            d'64
                                            \big-half-harmonic
                                            \once \override Dots.staff-position = #-2
                                            \revert Dots.staff-position
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            a16..
                                            ]
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            \big-half-harmonic
                                            \once \override Dots.staff-position = #-2
                                            a'16
                                            [
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            \override Dots.staff-position = #2
                                            \big-half-harmonic
                                            c'16
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            ~
                                            \big-half-harmonic
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            c'16
                                            \big-half-harmonic
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            f'16
                                            ]
                                            ~
                                            \big-half-harmonic
                                            \revert Dots.staff-position
                                            f'4
                                            \stopTextSpanOne
                                            \stopTrillSpan
                                            \textSpannerUp
                                            \override Dots.staff-position = #2
                                            \once \override Rest.staff-position = #-7
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
                                            \textSpannerDown
                                            \pitchedTrill
                                            \tweak style #'harmonic
                                            f'2
                                            :16
                                            \stopTextSpanThree
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #11.5
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "IV" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -2
                                            \startTextSpanOne
                                            ~
                                            - \tweak TrillPitchAccidental.stencil ##f
                                            - \tweak TrillPitchHead.layer 5
                                            - \tweak TrillPitchHead.no-ledgers ##t
                                            - \tweak TrillPitchHead.stencil #(lambda (grob) (grob-interpret-markup grob #{ \markup \musicglyph #"noteheads.s2cross" #}))
                                            - \tweak TrillPitchHead.whiteout 1
                                            - \tweak TrillPitchHead.whiteout-style #'outline
                                            - \tweak Y-extent ##f
                                            - \tweak bound-details.left.Y #-3.5
                                            - \tweak bound-details.right.Y #-5
                                            \startTrillSpan c'
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            f'8
                                            ~
                                            \times 2/3
                                            {
                                                f'8
                                                [
                                                  %! abjad.glissando(6)
                                                \revert Accidental.stencil
                                                  %! abjad.glissando(6)
                                                \revert NoteColumn.glissando-skip
                                                  %! abjad.glissando(6)
                                                \revert NoteHead.no-ledgers
                                                  %! abjad.glissando(6)
                                                \undo \hide NoteHead
                                                \tweak style #'harmonic
                                                b'8
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                                \tweak style #'harmonic
                                                e'8
                                                ]
                                                ~
                                            }
                                            \tweak style #'harmonic
                                            e'8
                                            ~
                                            \revert Dots.staff-position
                                            \tweak style #'harmonic
                                            e'16
                                            \stopTextSpanOne
                                            \stopTrillSpan
                                            [
                                            \textSpannerUp
                                            \textSpannerDown
                                            \tweak style #'cross
                                            f'16
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #8.5
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "III" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -1.5
                                            \startTextSpanOne
                                            \tweak style #'cross
                                            a'16
                                            \tweak style #'cross
                                            c''16
                                            \stopTextSpanOne
                                            ]
                                            \textSpannerUp
                                            \once \override Rest.staff-position = #-7
                                            \once \override Rest.staff-position = #-7
                                            r2.
                                            \once \override Rest.staff-position = #-7
                                            r4
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
                                            \textSpannerDown
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \pitchedTrill
                                            c'8.
                                            :32
                                            [
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #13.5
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "IV" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -1.5
                                            \startTextSpanOne
                                            - \tweak TrillPitchAccidental.stencil ##f
                                            - \tweak TrillPitchHead.layer 5
                                            - \tweak TrillPitchHead.no-ledgers ##t
                                            - \tweak TrillPitchHead.stencil #(lambda (grob) (grob-interpret-markup grob #{ \markup \musicglyph #"noteheads.s2cross" #}))
                                            - \tweak TrillPitchHead.whiteout 1
                                            - \tweak TrillPitchHead.whiteout-style #'outline
                                            - \tweak Y-extent ##f
                                            - \tweak bound-details.left.Y #-5.5
                                            - \tweak bound-details.right.Y #-4.5
                                            \startTrillSpan b
                                            \big-half-harmonic
                                            \revert Dots.staff-position
                                            \revert Staff.Stem.stemlet-length
                                            d'16
                                            \stopTextSpanOne
                                            \stopTrillSpan
                                            ]
                                            \textSpannerUp
                                            \once \override Rest.staff-position = #-7
                                            \once \override Rest.staff-position = #-7
                                            r2
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
                                            \once \override TrillSpanner.bound-details.right.padding = #1.5
                                            \textSpannerDown
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \pitchedTrill
                                            d'8.
                                            :32
                                            [
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #13.5
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "IV" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -1.5
                                            \startTextSpanOne
                                            - \tweak TrillPitchAccidental.stencil ##f
                                            - \tweak TrillPitchHead.layer 5
                                            - \tweak TrillPitchHead.no-ledgers ##t
                                            - \tweak TrillPitchHead.stencil #(lambda (grob) (grob-interpret-markup grob #{ \markup \musicglyph #"noteheads.s2cross" #}))
                                            - \tweak TrillPitchHead.whiteout 1
                                            - \tweak TrillPitchHead.whiteout-style #'outline
                                            - \tweak Y-extent ##f
                                            - \tweak bound-details.left.Y #-5.5
                                            - \tweak bound-details.right.Y #-5.5
                                            \startTrillSpan b
                                            \revert Dots.staff-position
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'cross
                                            a16
                                            - \accent
                                            \stopTrillSpan
                                            ]
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
                                            \tweak style #'harmonic-mixed
                                            e'4
                                            :8
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
                                            - \tweak bound-details.left.Y #-2.5
                                            - \tweak bound-details.right.Y #-3.5
                                            \startTrillSpan c'
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \override Staff.Stem.stemlet-length = 0.75
                                            e'8
                                            \stopTrillSpan
                                            [
                                            \revert Dots.staff-position
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'cross
                                            a8
                                            - \accent
                                            \stopTextSpanOne
                                            ]
                                            \textSpannerUp
                                            \once \override Rest.staff-position = #-7
                                            \once \override Rest.staff-position = #-7
                                            r2.
                                            \times 4/5
                                            {
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
                                                \textSpannerDown
                                                \pitchedTrill
                                                \tweak style #'harmonic
                                                a''8
                                                :16
                                                - \tweak Beam.positions #'(-8 . -8)
                                                [
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                                - \tweak font-name "Bodoni72 Book" 
                                                - \tweak font-size 2
                                                - \tweak padding #14.5
                                                - \abjad-dashed-line-with-up-hook
                                                - \tweak bound-details.left.text \markup \concat { \upright { "III" } \hspace #0.5 }
                                                - \tweak bound-details.right.padding -1.5
                                                \startTextSpanOne
                                                - \tweak TrillPitchAccidental.stencil ##f
                                                - \tweak TrillPitchHead.layer 5
                                                - \tweak TrillPitchHead.no-ledgers ##t
                                                - \tweak TrillPitchHead.stencil #(lambda (grob) (grob-interpret-markup grob #{ \markup \musicglyph #"noteheads.s2cross" #}))
                                                - \tweak TrillPitchHead.whiteout 1
                                                - \tweak TrillPitchHead.whiteout-style #'outline
                                                - \tweak Y-extent ##f
                                                - \tweak bound-details.left.Y #-6.5
                                                - \tweak bound-details.right.Y #-6.5
                                                \startTrillSpan f''
                                                \tweak style #'harmonic
                                                f''8
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                                \tweak style #'harmonic
                                                g''8
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                                \tweak style #'harmonic
                                                e''8
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                                \afterGrace
                                                \tweak style #'harmonic
                                                f''8
                                                ]
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                                {
                                                    \revert Dots.staff-position
                                                    \once \override Flag.stroke-style = #"grace"
                                                    \tweak style #'harmonic
                                                    e''16
                                                    \stopTextSpanOne
                                                    \stopTrillSpan
                                                    \textSpannerUp
                                                }
                                            }
                                            \once \override Rest.staff-position = #-7
                                            \once \override Voice.Rest.staff-position = #-10
                                            r4
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
                                            \textSpannerDown
                                            \pitchedTrill
                                            e'4
                                            :8
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #12
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "III" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -1.5
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
                                            \startTrillSpan b
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            e'8.
                                            \stopTrillSpan
                                            - \tweak Beam.positions #'(-8 . -8)
                                            [
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
                                                \tweak style #'cross
                                                a'
                                                \tweak style #'harmonic
                                                c''
                                            >16
                                            - \accent
                                            ]
                                            <
                                                \tweak style #'cross
                                                a'
                                                \tweak style #'harmonic
                                                d''
                                            >16
                                            - \accent
                                            \stopTextSpanOne
                                            - \tweak Beam.positions #'(-8 . -8)
                                            [
                                            \textSpannerUp
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
                                            \once \override TrillSpanner.bound-details.right.padding = #1.5
                                            \textSpannerDown
                                            \pitchedTrill
                                            e'8.
                                            :32
                                            ]
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #12
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "IV" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -1.5
                                            \startTextSpanOne
                                            - \tweak TrillPitchAccidental.stencil ##f
                                            - \tweak TrillPitchHead.layer 5
                                            - \tweak TrillPitchHead.no-ledgers ##t
                                            - \tweak TrillPitchHead.stencil #(lambda (grob) (grob-interpret-markup grob #{ \markup \musicglyph #"noteheads.s2cross" #}))
                                            - \tweak TrillPitchHead.whiteout 1
                                            - \tweak TrillPitchHead.whiteout-style #'outline
                                            - \tweak Y-extent ##f
                                            - \tweak bound-details.left.Y #-4
                                            - \tweak bound-details.right.Y #-4
                                            \startTrillSpan d'
                                            \revert Dots.staff-position
                                            <
                                                \tweak style #'cross
                                                a'
                                                \tweak style #'harmonic
                                                c''
                                            >8
                                            - \accent
                                            \stopTrillSpan
                                            - \tweak Beam.positions #'(-8 . -8)
                                            [
                                            <
                                                \tweak style #'cross
                                                a'
                                                \tweak style #'harmonic
                                                d''
                                            >8
                                            - \accent
                                            \stopTextSpanOne
                                            ]
                                            \textSpannerUp
                                            \once \override Rest.staff-position = #-7
                                            \once \override Rest.staff-position = #-7
                                            r1
                                            \times 2/3
                                            {
                                                \textSpannerDown
                                                <
                                                    \tweak style #'cross
                                                    b'
                                                    \tweak style #'harmonic
                                                    d''
                                                >4
                                                - \tweak font-name "Bodoni72 Book" 
                                                - \tweak font-size 2
                                                - \tweak padding #12
                                                - \abjad-dashed-line-with-up-hook
                                                - \tweak bound-details.left.text \markup \concat { \upright { "III" } \hspace #0.5 }
                                                - \tweak bound-details.right.padding -1.5
                                                \startTextSpanOne
                                                <
                                                    \tweak style #'cross
                                                    e'
                                                    \tweak style #'harmonic
                                                    a'
                                                >8
                                                \stopTextSpanOne
                                                \textSpannerUp
                                            }
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
                                    r4.
                                    r4.
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
                                    r2
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
                                    r2
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
                                    r2
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
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                gqf''!
                                                \tweak style #'harmonic
                                                bqf''!
                                            >4
                                            - \tweak padding 1
                                            ^ \talon-to-punta
                                              %! +SCORE
                                            ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-9 \raise #3 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 72" } } }
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 1
                                            - \tweak padding #13.5
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { MSP \hspace #0.5 }
                                            - \tweak bound-details.right.padding -1.5
                                            \startTextSpanOne
                                            ~
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                gqf''
                                                \tweak style #'harmonic
                                                bqf''
                                            >16.
                                            [
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                a''!
                                                \tweak style #'harmonic
                                                bf''!
                                            >32
                                            - \tweak padding 1
                                            ^ \punta-to-talon
                                            ~
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                a''
                                                \tweak style #'harmonic
                                                bf''
                                            >8
                                            \stopTextSpanOne
                                            ]
                                            <
                                                \tweak style #'harmonic-mixed
                                                bf!
                                                \tweak style #'harmonic-mixed
                                                f'!
                                                \tweak style #'harmonic-mixed
                                                b'!
                                                \tweak style #'harmonic-mixed
                                                gs''!
                                            >4.
                                            ^ \half-clb
                                            ^ \marcato
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                a''!
                                                \tweak style #'harmonic
                                                bf''!
                                            >4
                                            - \tweak padding 1
                                            ^ \punta-to-talon
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 1
                                            - \tweak padding #13.5
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { MSP \hspace #0.5 }
                                            - \tweak bound-details.right.padding -1.5
                                            \startTextSpanOne
                                            ~
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                a''
                                                \tweak style #'harmonic
                                                bf''
                                            >16
                                            ~
                                            \times 2/3
                                            {
                                                <
                                                    \tweak Accidental.font-size #-3.5
                                                    \tweak Accidental.parenthesized ##t
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-3.5
                                                    \tweak style #'harmonic
                                                    a''
                                                    \tweak style #'harmonic
                                                    bf''
                                                >16
                                                [
                                                <
                                                    \tweak Accidental.font-size #-3.5
                                                    \tweak Accidental.parenthesized ##t
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-3.5
                                                    \tweak style #'harmonic
                                                    bf'!
                                                    \tweak style #'harmonic
                                                    ef''!
                                                >8
                                                - \tweak padding 1
                                                ^ \talon-to-punta
                                                ]
                                                ~
                                            }
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                bf'
                                                \tweak style #'harmonic
                                                ef''
                                            >16
                                            ~
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                bf'
                                                \tweak style #'harmonic
                                                ef''
                                            >4
                                            \stopTextSpanOne
                                            <
                                                \tweak style #'harmonic-mixed
                                                bf!
                                                \tweak style #'harmonic-mixed
                                                f'!
                                                \tweak style #'harmonic-mixed
                                                b'!
                                                \tweak style #'harmonic-mixed
                                                gs''!
                                            >4..
                                            ^ \half-clb
                                            ^ \marcato
                                            \times 2/3
                                            {
                                                <
                                                    \tweak Accidental.font-size #-3.5
                                                    \tweak Accidental.parenthesized ##t
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-3.5
                                                    \tweak style #'harmonic
                                                    bf'!
                                                    \tweak style #'harmonic
                                                    ef''!
                                                >16
                                                - \tweak padding 1
                                                ^ \talon-to-punta
                                                [
                                                - \tweak font-name "Bodoni72 Book" 
                                                - \tweak font-size 1
                                                - \tweak padding #14.5
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { MSP \hspace #0.5 }
                                                - \tweak bound-details.right.padding -1.5
                                                \startTextSpanOne
                                                <
                                                    \tweak Accidental.font-size #-3.5
                                                    \tweak Accidental.parenthesized ##t
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-3.5
                                                    \tweak style #'harmonic
                                                    bqf'!
                                                    \tweak style #'harmonic
                                                    ef''!
                                                >8
                                                - \tweak padding 1
                                                ^ \punta-to-talon
                                                ]
                                                ~
                                            }
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                bqf'
                                                \tweak style #'harmonic
                                                ef''
                                            >4..
                                            \stopTextSpanOne
                                            <
                                                \tweak style #'harmonic
                                                bf!
                                                \tweak style #'harmonic
                                                f'!
                                                \tweak style #'harmonic
                                                b'!
                                                \tweak style #'harmonic
                                                gs''!
                                            >8
                                            ^ \half-clb
                                            ^ \marcato
                                            [
                                            ~
                                            <
                                                \tweak style #'harmonic
                                                bf
                                                \tweak style #'harmonic
                                                f'
                                                \tweak style #'harmonic
                                                b'
                                                \tweak style #'harmonic
                                                gs''
                                            >32
                                            ]
                                            ~
                                            \times 2/3
                                            {
                                                <
                                                    \tweak style #'harmonic
                                                    bf
                                                    \tweak style #'harmonic
                                                    f'
                                                    \tweak style #'harmonic
                                                    b'
                                                    \tweak style #'harmonic
                                                    gs''
                                                >8
                                                <
                                                    \tweak Accidental.font-size #-3.5
                                                    \tweak Accidental.parenthesized ##t
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-3.5
                                                    \tweak style #'harmonic
                                                    a''!
                                                    \tweak style #'harmonic
                                                    bf''!
                                                >4
                                                - \tweak padding 1
                                                ^ \punta-to-talon
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
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                a''
                                                \tweak style #'harmonic
                                                bf''
                                            >16.
                                            \stopTextSpanOne
                                            <
                                                \tweak style #'harmonic-mixed
                                                bf!
                                                \tweak style #'harmonic-mixed
                                                f'!
                                                \tweak style #'harmonic-mixed
                                                b'!
                                                \tweak style #'harmonic-mixed
                                                gs''!
                                            >4.
                                            ^ \half-clb
                                            ^ \marcato
                                            - \tweak padding #13
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " rit. ( to " } \fontsize #-0.5 { \note { 8 } #1.5 } \fontsize #3 { "= 86 )" } } } \hspace #0.5 }
                                            - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #1.5 } \fontsize #4 { "= 86" } } }
                                            - \tweak bound-details.right.padding -15.5
                                            \startTextSpanThree
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                a''!
                                                \tweak style #'harmonic
                                                bf''!
                                            >16
                                            - \tweak padding 1
                                            ^ \punta-to-talon
                                            [
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 1
                                            - \tweak padding #14.5
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { MSP \hspace #0.5 }
                                            - \tweak bound-details.right.padding -1.5
                                            \startTextSpanOne
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                fqs''!
                                                \tweak style #'harmonic
                                                bf''!
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
                                                fqs''
                                                \tweak style #'harmonic
                                                bf''
                                            >4
                                            \stopTextSpanOne
                                            \times 2/3
                                            {
                                                <
                                                    \tweak style #'harmonic
                                                    bf!
                                                    \tweak style #'harmonic
                                                    f'!
                                                    \tweak style #'harmonic
                                                    b'!
                                                    \tweak style #'harmonic
                                                    gs''!
                                                >8
                                                ^ \half-clb
                                                ^ \marcato
                                                <
                                                    \tweak Accidental.font-size #-3.5
                                                    \tweak Accidental.parenthesized ##t
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-3.5
                                                    \tweak style #'harmonic
                                                    bqs'!
                                                    \tweak style #'harmonic
                                                    cqs''!
                                                >4
                                                - \tweak padding 1
                                                ^ \punta-to-talon
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
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                bqs'
                                                \tweak style #'harmonic
                                                cqs''
                                            >4
                                            ~
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                bqs'
                                                \tweak style #'harmonic
                                                cqs''
                                            >16
                                            [
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                b'!
                                                \tweak style #'harmonic
                                                dqf''!
                                            >8.
                                            - \tweak padding 1
                                            ^ \talon-to-punta
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
                                    <
                                        \tweak style #'harmonic-mixed
                                        bf
                                        \tweak style #'harmonic-mixed
                                        f'
                                        \tweak style #'harmonic-mixed
                                        b'
                                        \tweak style #'harmonic-mixed
                                        gs''
                                    >4
                                    ^ \half-clb
                                    ^ \marcato
                                    r1
                                    <
                                        \tweak style #'harmonic-mixed
                                        bf
                                        \tweak style #'harmonic-mixed
                                        f'
                                        \tweak style #'harmonic-mixed
                                        b'
                                        \tweak style #'harmonic-mixed
                                        gs''
                                    >4
                                    ^ \half-clb
                                    ^ \marcato
                                    r2
                                    r4
                                    \once \override TupletBracket.direction = #DOWN
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/5
                                    {
                                        \override Dots.staff-position = #2
                                        \tweak style #'harmonic
                                        bf8.
                                        [
                                        (
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #1.5
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak font-name "Bodoni72 Book" 
                                        - \tweak font-size 1
                                        - \tweak padding #7
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright { "1/2 Spz." } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \upright { "Norm." }
                                        \startTextSpanTwo
                                        - \tweak padding #4.5
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \bow-tip-half-up \hspace #0.5 }
                                        - \tweak bound-details.right.text \normale-bow-rotation
                                        \startTextSpanOne
                                        \revert Dots.staff-position
                                        \tweak style #'harmonic
                                        cqs'16
                                        )
                                        \stopTextSpanOne
                                        \stopTextSpanTwo
                                        ]
                                        <
                                            \tweak style #'harmonic-mixed
                                            bf
                                            \tweak style #'harmonic-mixed
                                            f'
                                            \tweak style #'harmonic-mixed
                                            b'
                                            \tweak style #'harmonic-mixed
                                            gs''
                                        >4
                                        ^ \half-clb
                                        ^ \marcato
                                        \override Dots.staff-position = #2
                                        \tweak style #'harmonic-mixed
                                        c'''4
                                        (
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #1.5
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak font-name "Bodoni72 Book" 
                                        - \tweak font-size 1
                                        - \tweak padding #8
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { MSP \hspace #0.5 }
                                        - \tweak bound-details.right.padding -1
                                        \startTextSpanOne
                                        \tweak style #'harmonic-mixed
                                        cqs'''4
                                        \stopTextSpanOne
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #1.5
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak font-name "Bodoni72 Book" 
                                        - \tweak font-size 1
                                        - \tweak padding #12.5
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright { "Norm." } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \upright { "3/4 Spz." }
                                        - \tweak bound-details.right.padding 2.5
                                        \startTextSpanTwo
                                        - \tweak padding #10
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \normale-bow-rotation \hspace #0.5 }
                                        - \tweak bound-details.right.text \bow-tip-half-down
                                        - \tweak bound-details.right.padding 1.5
                                        \startTextSpanOne
                                        \afterGrace
                                        \tweak style #'harmonic-mixed
                                        b''4
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #1.5
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        {
                                            \revert Dots.staff-position
                                            \once \override Flag.stroke-style = #"grace"
                                            \tweak style #'harmonic
                                            cqf'''16
                                            )
                                            \stopTextSpanOne
                                            \stopTextSpanTwo
                                        }
                                    }
                                    <
                                        \tweak style #'harmonic-mixed
                                        bf
                                        \tweak style #'harmonic-mixed
                                        f'
                                        \tweak style #'harmonic-mixed
                                        b'
                                        \tweak style #'harmonic-mixed
                                        gs''
                                    >4
                                    ^ \half-clb
                                    ^ \marcato
                                    r2
                                    \times 4/5
                                    {
                                        \override Dots.staff-position = #2
                                        \tweak style #'harmonic
                                        bf'''8
                                        [
                                        (
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak font-name "Bodoni72 Book" 
                                        - \tweak font-size 1
                                        - \tweak padding #12.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { MSP \hspace #0.5 }
                                        - \tweak bound-details.right.padding -1
                                        \startTextSpanOne
                                        \tweak style #'harmonic
                                        cqs''''8
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \tweak style #'harmonic
                                        c''''8
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \tweak style #'harmonic
                                        cqs''''8
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \afterGrace
                                        \tweak style #'harmonic
                                        b'''8
                                        ]
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        {
                                            \revert Dots.staff-position
                                            \once \override Flag.stroke-style = #"grace"
                                            \tweak style #'harmonic
                                            c''''16
                                            )
                                            \stopTextSpanOne
                                        }
                                    }
                                    <
                                        \tweak style #'harmonic-mixed
                                        bf
                                        \tweak style #'harmonic-mixed
                                        f'
                                        \tweak style #'harmonic-mixed
                                        b'
                                        \tweak style #'harmonic-mixed
                                        gs''
                                    >4
                                    ^ \half-clb
                                    ^ \marcato
                                    r2
                                    r4
                                    \times 2/3
                                    {
                                        \override Dots.staff-position = #2
                                        \tweak style #'harmonic-mixed
                                        cqs''''4
                                        (
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak font-name "Bodoni72 Book" 
                                        - \tweak font-size 1
                                        - \tweak padding #13.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "1/2 Spz." } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -2
                                        \startTextSpanTwo
                                        - \tweak padding #11
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \bow-tip-half-down \hspace #0.5 }
                                        - \tweak bound-details.right.padding -2
                                        \startTextSpanOne
                                        \revert Dots.staff-position
                                        \tweak style #'harmonic
                                        bf'''8
                                        )
                                        \stopTextSpanOne
                                        \stopTextSpanTwo
                                    }
                                    <
                                        \tweak style #'harmonic-mixed
                                        bf
                                        \tweak style #'harmonic-mixed
                                        f'
                                        \tweak style #'harmonic-mixed
                                        b'
                                        \tweak style #'harmonic-mixed
                                        gs''
                                    >4
                                    ^ \half-clb
                                    ^ \marcato
                                    r2
                                    r4
                                    \times 2/3
                                    {
                                        \override Dots.staff-position = #2
                                        \tweak style #'harmonic-mixed
                                        cqs''''4
                                        (
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak font-name "Bodoni72 Book" 
                                        - \tweak font-size 1
                                        - \tweak padding #11
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "MSP" } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -2
                                        \startTextSpanTwo
                                        \revert Dots.staff-position
                                        \tweak style #'harmonic
                                        bf'''8
                                        )
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
                                    - \tenuto
                                      %! +SCORE
                                    ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-7 \raise #3 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 72" } } }
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 2
                                    - \tweak padding #3
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "bridge" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -3
                                    \startTextSpanOne
                                    \once \override Accidental.stencil = ##f
                                    c'4
                                    - \tenuto
                                    \stopTextSpanOne
                                    \staff-line-count 5
                                      %! +SCORE
                                    \set Staff.forceClef = ##t
                                    \clef "alto"
                                    <
                                        \tweak style #'harmonic-mixed
                                        f
                                        \tweak style #'harmonic-mixed
                                        b
                                        \tweak style #'harmonic-mixed
                                        g'
                                        \tweak style #'harmonic-mixed
                                        d''
                                    >4.
                                    ^ \half-clb
                                    ^ \marcato
                                      %! +SCORE
                                    \set Staff.forceClef = ##f
                                    \staff-line-count 1
                                    \once \override Accidental.stencil = ##f
                                    \clef "alto"
                                    c'4.
                                    - \tenuto
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 2
                                    - \tweak padding #3
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "tailpiece" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -3
                                    \startTextSpanOne
                                    \once \override Accidental.stencil = ##f
                                    c'4.
                                    - \tenuto
                                    \stopTextSpanOne
                                    \staff-line-count 5
                                      %! +SCORE
                                    \set Staff.forceClef = ##t
                                    \clef "alto"
                                    <
                                        \tweak style #'harmonic-mixed
                                        f
                                        \tweak style #'harmonic-mixed
                                        b
                                        \tweak style #'harmonic-mixed
                                        g'
                                        \tweak style #'harmonic-mixed
                                        d''
                                    >4
                                    ^ \half-clb
                                    ^ \marcato
                                      %! +SCORE
                                    \set Staff.forceClef = ##f
                                    \staff-line-count 1
                                    \once \override Accidental.stencil = ##f
                                    \clef "alto"
                                    c'4
                                    - \tenuto
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 2
                                    - \tweak padding #3
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "bridge" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -3
                                    \startTextSpanOne
                                    \once \override Accidental.stencil = ##f
                                    c'4
                                    - \tenuto
                                    \once \override Accidental.stencil = ##f
                                    c'4
                                    - \tenuto
                                    \stopTextSpanOne
                                    \staff-line-count 5
                                      %! +SCORE
                                    \set Staff.forceClef = ##t
                                    \clef "alto"
                                    <
                                        \tweak style #'harmonic-mixed
                                        f
                                        \tweak style #'harmonic-mixed
                                        b
                                        \tweak style #'harmonic-mixed
                                        g'
                                        \tweak style #'harmonic-mixed
                                        d''
                                    >4
                                    ^ \half-clb
                                    ^ \marcato
                                      %! +SCORE
                                    \set Staff.forceClef = ##f
                                    \staff-line-count 1
                                    \once \override Accidental.stencil = ##f
                                    \clef "alto"
                                    \afterGrace
                                    c'4
                                    - \tenuto
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
                                            \override DynamicLineSpanner.staff-padding = #13
                                              %! +SCORE
                                            \set Staff.forceClef = ##t
                                            \clef "alto"
                                            \voiceOne
                                            <
                                                \tweak style #'harmonic
                                                f!
                                                \tweak style #'harmonic
                                                b!
                                                \tweak style #'harmonic
                                                g'!
                                                \tweak style #'harmonic
                                                d''!
                                            >16
                                            ^ \half-clb
                                            ^ \marcato
                                            [
                                            - \tweak padding #19
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " rit. ( to " } \fontsize #-0.5 { \note { 8 } #1.5 } \fontsize #3 { "= 86 )" } } } \hspace #0.5 }
                                            - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #1.5 } \fontsize #4 { "= 86" } } }
                                            \startTextSpanThree
                                              %! +SCORE
                                            \set Staff.forceClef = ##f
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                dqf''!
                                                \tweak style #'harmonic
                                                dqs''!
                                            >16
                                            - \tweak padding 1
                                            ^ \punta-to-talon
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
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                dqf''
                                                \tweak style #'harmonic
                                                dqs''
                                            >4
                                            ~
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                dqf''
                                                \tweak style #'harmonic
                                                dqs''
                                            >16
                                            [
                                            \set stemLeftBeamCount = 2
                                            \set stemRightBeamCount = 1
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                cs''!
                                                \tweak style #'harmonic
                                                eqf''!
                                            >16
                                            - \tweak padding 1
                                            ^ \talon-to-punta
                                            \set stemLeftBeamCount = 1
                                            \set stemRightBeamCount = 2
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                bf'!
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                b'!
                                                \tweak style #'harmonic
                                                ef''!
                                            >16..
                                            - \tweak padding 1
                                            ^ \punta-to-talon
                                            \set stemLeftBeamCount = 4
                                            \set stemRightBeamCount = 1
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                dqf''!
                                                \tweak style #'harmonic
                                                ef''!
                                            >64
                                            - \tweak padding 1
                                            ^ \talon-to-punta
                                            ~
                                            \set stemLeftBeamCount = 1
                                            \set stemRightBeamCount = 3
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                dqf''
                                                \tweak style #'harmonic
                                                ef''
                                            >32
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                bqf'!
                                                \tweak style #'harmonic
                                                d''!
                                            >32.
                                            - \tweak padding 1
                                            ^ \punta-to-talon
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                bqf'!
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                cqs''!
                                                \tweak style #'harmonic
                                                d''!
                                            >32.
                                            - \tweak padding 1
                                            ^ \talon-to-punta
                                            \stopTextSpanOne
                                            ]
                                            <
                                                \tweak style #'harmonic
                                                f!
                                                \tweak style #'harmonic
                                                b!
                                                \tweak style #'harmonic
                                                g'!
                                                \tweak style #'harmonic
                                                d''!
                                            >32.
                                            ^ \half-clb
                                            ^ \marcato
                                            [
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                cqs''!
                                                \tweak style #'harmonic
                                                dqs''!
                                            >32.
                                            - \tweak padding 1
                                            ^ \punta-to-talon
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
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                c''!
                                                \tweak style #'harmonic
                                                ef''!
                                            >32
                                            - \tweak padding 1
                                            ^ \talon-to-punta
                                            ~
                                            \set stemLeftBeamCount = 1
                                            \set stemRightBeamCount = 4
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                c''
                                                \tweak style #'harmonic
                                                ef''
                                            >64
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                fs'!
                                                \tweak style #'harmonic
                                                aqf'!
                                            >16..
                                            - \tweak padding 1
                                            ^ \punta-to-talon
                                            ]
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                gqf'!
                                                \tweak style #'harmonic
                                                aqf'!
                                            >16
                                            - \tweak padding 1
                                            ^ \talon-to-punta
                                            [
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                eqs'!
                                                \tweak style #'harmonic
                                                aqf'!
                                            >16
                                            - \tweak padding 1
                                            ^ \punta-to-talon
                                            ~
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                eqs'
                                                \tweak style #'harmonic
                                                aqf'
                                            >16
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                gqf'!
                                                \tweak style #'harmonic
                                                aqf'!
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
                                                gqf'
                                                \tweak style #'harmonic
                                                aqf'
                                            >4
                                            \stopTextSpanOne
                                            <
                                                \tweak style #'harmonic
                                                f!
                                                \tweak style #'harmonic
                                                b!
                                                \tweak style #'harmonic
                                                g'!
                                                \tweak style #'harmonic
                                                d''!
                                            >2
                                            ^ \half-clb
                                            ^ \marcato
                                            \stopTextSpanThree
                                            ~
                                            <
                                                \tweak style #'harmonic
                                                f
                                                \tweak style #'harmonic
                                                b
                                                \tweak style #'harmonic
                                                g'
                                                \tweak style #'harmonic
                                                d''
                                            >8
                                            ~
                                            \times 2/3
                                            {
                                                <
                                                    \tweak style #'harmonic
                                                    f
                                                    \tweak style #'harmonic
                                                    b
                                                    \tweak style #'harmonic
                                                    g'
                                                    \tweak style #'harmonic
                                                    d''
                                                >8
                                                [
                                                <
                                                    \tweak Accidental.font-size #-3.5
                                                    \tweak Accidental.parenthesized ##t
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-3.5
                                                    \tweak style #'harmonic
                                                    fs'!
                                                    \tweak style #'harmonic
                                                    gqs'!
                                                >8
                                                - \tweak padding 1
                                                ^ \talon-to-punta
                                                - \tweak font-name "Bodoni72 Book" 
                                                - \tweak font-size 1
                                                - \tweak padding #15.5
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { MSP \hspace #0.5 }
                                                - \tweak bound-details.right.padding -1.5
                                                \startTextSpanOne
                                                <
                                                    \tweak Accidental.font-size #-3.5
                                                    \tweak Accidental.parenthesized ##t
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-3.5
                                                    e'!
                                                    \tweak Accidental.font-size #-3.5
                                                    \tweak Accidental.parenthesized ##t
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-3.5
                                                    \tweak style #'harmonic
                                                    f'!
                                                    \tweak style #'harmonic
                                                    af'!
                                                >8
                                                - \tweak padding 1
                                                ^ \punta-to-talon
                                                ]
                                                ~
                                            }
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                e'
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                f'
                                                \tweak style #'harmonic
                                                af'
                                            >8
                                            ~
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                e'
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                f'
                                                \tweak style #'harmonic
                                                af'
                                            >16
                                            [
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                g'!
                                                \tweak style #'harmonic
                                                af'!
                                            >16
                                            - \tweak padding 1
                                            ^ \talon-to-punta
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                cs''!
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                dqs''!
                                                \tweak style #'harmonic
                                                ef''!
                                            >16
                                            - \tweak padding 1
                                            ^ \punta-to-talon
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                cqs''!
                                                \tweak style #'harmonic
                                                dqs''!
                                            >16
                                            - \tweak padding 1
                                            ^ \talon-to-punta
                                            \stopTextSpanOne
                                            ]
                                            <
                                                \tweak style #'harmonic
                                                f!
                                                \tweak style #'harmonic
                                                b!
                                                \tweak style #'harmonic
                                                g'!
                                                \tweak style #'harmonic
                                                d''!
                                            >16
                                            ^ \half-clb
                                            ^ \marcato
                                            [
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                cs''!
                                                \tweak style #'harmonic
                                                eqf''!
                                            >16
                                            - \tweak padding 1
                                            ^ \punta-to-talon
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 1
                                            - \tweak padding #15.5
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { MSP \hspace #0.5 }
                                            - \tweak bound-details.right.padding -1.5
                                            \startTextSpanOne
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                f'!
                                                \tweak style #'harmonic
                                                aqf'!
                                            >16
                                            - \tweak padding 1
                                            ^ \talon-to-punta
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                e'!
                                                \tweak style #'harmonic
                                                af'!
                                            >16
                                            - \tweak padding 1
                                            ^ \punta-to-talon
                                            ]
                                            ~
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                e'
                                                \tweak style #'harmonic
                                                af'
                                            >8
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                g'!
                                                \tweak style #'harmonic
                                                af'!
                                            >4.
                                            - \tweak padding 1
                                            ^ \talon-to-punta
                                            ~
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                g'
                                                \tweak style #'harmonic
                                                af'
                                            >4
                                            ~
                                            \times 2/3
                                            {
                                                <
                                                    \tweak Accidental.font-size #-3.5
                                                    \tweak Accidental.parenthesized ##t
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-3.5
                                                    \tweak style #'harmonic
                                                    g'
                                                    \tweak style #'harmonic
                                                    af'
                                                >8
                                                [
                                                <
                                                    \tweak Accidental.font-size #-3.5
                                                    \tweak Accidental.parenthesized ##t
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-3.5
                                                    \tweak style #'harmonic
                                                    e'!
                                                    \tweak style #'harmonic
                                                    aqf'!
                                                >8
                                                - \tweak padding 1
                                                ^ \punta-to-talon
                                                <
                                                    \tweak Accidental.font-size #-3.5
                                                    \tweak Accidental.parenthesized ##t
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-3.5
                                                    \tweak style #'harmonic
                                                    eqf'!
                                                    \tweak style #'harmonic
                                                    fs'!
                                                >8
                                                - \tweak padding 1
                                                ^ \talon-to-punta
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
                                    <
                                        \tweak style #'harmonic
                                        f
                                        \tweak style #'harmonic
                                        b
                                        \tweak style #'harmonic
                                        g'
                                        \tweak style #'harmonic
                                        d''
                                    >2
                                    ^ \half-clb
                                    ^ \marcato
                                    \staff-line-count 1
                                    \once \override Accidental.stencil = ##f
                                    \clef "alto"
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'8.
                                    - \tenuto
                                    [
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 2
                                    - \tweak padding #3
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "tailpiece" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -3
                                    \startTextSpanOne
                                    \once \override Accidental.stencil = ##f
                                    \revert Staff.Stem.stemlet-length
                                    c'16
                                    ]
                                    \once \override Accidental.stencil = ##f
                                    c'4
                                    - \tenuto
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'8
                                    [
                                    \once \override Accidental.stencil = ##f
                                    \revert Staff.Stem.stemlet-length
                                    c'8
                                    \stopTextSpanOne
                                    ]
                                    \staff-line-count 5
                                      %! +SCORE
                                    \set Staff.forceClef = ##t
                                    \clef "alto"
                                    <
                                        \tweak style #'harmonic-mixed
                                        f
                                        \tweak style #'harmonic-mixed
                                        b
                                        \tweak style #'harmonic-mixed
                                        g'
                                        \tweak style #'harmonic-mixed
                                        d''
                                    >4
                                    ^ \half-clb
                                    ^ \marcato
                                      %! +SCORE
                                    \set Staff.forceClef = ##f
                                    \staff-line-count 1
                                    \once \override Accidental.stencil = ##f
                                    \clef "alto"
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'16
                                    [
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #7.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { { "bridge" } \hspace #0.5 }
                                    \startTextSpanOne
                                    \once \override Accidental.stencil = ##f
                                    \revert Staff.Stem.stemlet-length
                                    c'8.
                                    - \tenuto
                                    ]
                                    ~
                                    \once \override Stem.direction = #DOWN
                                    c'4
                                    \staff-line-count 5
                                    \once \override Stem.direction = #DOWN
                                      %! +SCORE
                                    \set Staff.forceClef = ##t
                                    \clef "alto"
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <gf af>16
                                    - \tenuto
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +8 }\line { -41 }} } }
                                    \stopTextSpanOne
                                    [
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #7.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { { "MSP" } \hspace #0.5 }
                                    \startTextSpanOne
                                      %! +SCORE
                                    \set Staff.forceClef = ##f
                                    \staff-line-count 1
                                    \once \override Accidental.stencil = ##f
                                    \clef "alto"
                                    \revert Staff.Stem.stemlet-length
                                    c'8.
                                    - \tenuto
                                    \stopTextSpanOne
                                    ]
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #7.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { { \hspace #0.5 { "bridge" } } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -3
                                    \startTextSpanOne
                                    ~
                                    c'4
                                    \stopTextSpanOne
                                    \staff-line-count 5
                                      %! +SCORE
                                    \set Staff.forceClef = ##t
                                    \clef "alto"
                                    <
                                        \tweak style #'harmonic-mixed
                                        f
                                        \tweak style #'harmonic-mixed
                                        b
                                        \tweak style #'harmonic-mixed
                                        g'
                                        \tweak style #'harmonic-mixed
                                        d''
                                    >4
                                    ^ \half-clb
                                    ^ \marcato
                                      %! +SCORE
                                    \set Staff.forceClef = ##f
                                    \staff-line-count 1
                                    \once \override Accidental.stencil = ##f
                                    \clef "alto"
                                    c'4
                                    - \tenuto
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 2
                                    - \tweak padding #3
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "tailpiece" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -3
                                    \startTextSpanOne
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'8.
                                    [
                                    \once \override Accidental.stencil = ##f
                                    \revert Staff.Stem.stemlet-length
                                    c'16
                                    ]
                                    \once \override Accidental.stencil = ##f
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'16
                                    [
                                    \once \override Accidental.stencil = ##f
                                    \revert Staff.Stem.stemlet-length
                                    c'8.
                                    - \tenuto
                                    ]
                                    \once \override Accidental.stencil = ##f
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'8
                                    - \tenuto
                                    [
                                    \once \override Accidental.stencil = ##f
                                    \revert Staff.Stem.stemlet-length
                                    c'8
                                    \stopTextSpanOne
                                    ]
                                    \staff-line-count 5
                                      %! +SCORE
                                    \set Staff.forceClef = ##t
                                    \clef "alto"
                                    <
                                        \tweak style #'harmonic-mixed
                                        f
                                        \tweak style #'harmonic-mixed
                                        b
                                        \tweak style #'harmonic-mixed
                                        g'
                                        \tweak style #'harmonic-mixed
                                        d''
                                    >4
                                    ^ \half-clb
                                    ^ \marcato
                                    ~
                                      %! +SCORE
                                    \set Staff.forceClef = ##f
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <
                                        \tweak style #'harmonic
                                        f
                                        \tweak style #'harmonic
                                        b
                                        \tweak style #'harmonic
                                        g'
                                        \tweak style #'harmonic
                                        d''
                                    >8
                                    [
                                    \staff-line-count 1
                                    \once \override Accidental.stencil = ##f
                                    \clef "alto"
                                    \revert Staff.Stem.stemlet-length
                                    c'8
                                    - \tenuto
                                    ]
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #11
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { { "bridge" } \hspace #0.5 }
                                    \startTextSpanOne
                                    ~
                                    c'4
                                    \once \override Accidental.stencil = ##f
                                    c'4
                                    - \tenuto
                                    \staff-line-count 5
                                      %! +SCORE
                                    \set Staff.forceClef = ##t
                                    \clef "alto"
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <gf af>16
                                    - \tenuto
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +8 }\line { -41 }} } }
                                    \stopTextSpanOne
                                    [
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #11
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { { "MSP" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -3
                                    \startTextSpanOne
                                      %! +SCORE
                                    \set Staff.forceClef = ##f
                                    \revert Staff.Stem.stemlet-length
                                    <gf af>8.
                                    - \tenuto
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +8 }\line { -41 }} } }
                                    \stopTextSpanOne
                                    ]
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
                                    ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-7 \raise #3 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 72" } } }
                                    r4.
                                    r4.
                                    r4.
                                    r1
                                    r2
                                    r2.
                                    - \tweak padding #9
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " rit. ( to " } \fontsize #-0.5 { \note { 8 } #1.5 } \fontsize #3 { "= 86 )" } } } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #1.5 } \fontsize #4 { "= 86" } } }
                                    \startTextSpanThree
                                    r4
                                    \staff-line-count 5
                                    \arpeggioArrowUp
                                      %! +SCORE
                                    \revert Staff.BarLine.bar-extent
                                      %! +SCORE
                                    \set Staff.forceClef = ##t
                                    \clef "bass"
                                    <
                                        \tweak style #'harmonic-mixed
                                        cs,
                                        \tweak style #'harmonic-mixed
                                        a,
                                        \tweak style #'harmonic-mixed
                                        ds
                                        \tweak style #'harmonic-mixed
                                        as
                                    >4
                                    \arpeggio
                                    \laissezVibrer
                                    ^ \tenuto
                                    - \tweak font-size #1
                                    ^ \markup { "Strum" }
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 2
                                    - \tweak padding #11.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "Pizz." } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -10
                                    \startTextSpanOne
                                      %! +SCORE
                                    \set Staff.forceClef = ##f
                                    r4
                                    r2.
                                    \stopTextSpanThree
                                    r2
                                    r8.
                                    [
                                    \arpeggioArrowDown
                                    <
                                        \tweak style #'harmonic
                                        d,
                                        \tweak style #'harmonic
                                        bf,
                                        \tweak style #'harmonic
                                        e
                                        a
                                    >16
                                    \arpeggio
                                    \laissezVibrer
                                    ^ \tenuto
                                    - \tweak font-size #1
                                    ^ \markup { "Strum" }
                                    ]
                                    r2
                                    r2
                                    \arpeggioArrowUp
                                    <
                                        c,
                                        \tweak style #'harmonic
                                        af,
                                        \tweak style #'harmonic
                                        f
                                        \tweak style #'harmonic
                                        b
                                    >4
                                    \arpeggio
                                    \laissezVibrer
                                    ^ \tenuto
                                    - \tweak font-size #1
                                    ^ \markup { "Strum" }
                                    r2
                                    r2
                                    r4
                                    r16
                                    [
                                    \arpeggioArrowDown
                                    <
                                        c,
                                        g,
                                        \tweak style #'harmonic
                                        b
                                        \tweak style #'harmonic
                                        fs'
                                    >8.
                                    \arpeggio
                                    \laissezVibrer
                                    ^ \tenuto
                                    - \tweak font-size #1
                                    ^ \markup { "Strum" }
                                    ]
                                    r4
                                    r2
                                    \arpeggioArrowUp
                                    <
                                        \tweak style #'harmonic
                                        cs,
                                        g,
                                        \tweak style #'harmonic
                                        fs
                                        \tweak style #'harmonic
                                        as
                                    >4
                                    \arpeggio
                                    \laissezVibrer
                                    ^ \tenuto
                                    - \tweak font-size #1
                                    ^ \markup { "Strum" }
                                    r2
                                    r2
                                    \arpeggioArrowDown
                                    <
                                        \tweak style #'harmonic
                                        d,
                                        \tweak style #'harmonic
                                        af,
                                        \tweak style #'harmonic
                                        f
                                        a
                                    >4
                                    \arpeggio
                                    \laissezVibrer
                                    ^ \tenuto
                                    - \tweak font-size #1
                                    ^ \markup { "Strum" }
                                    \stopTextSpanOne
                                    r2
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
