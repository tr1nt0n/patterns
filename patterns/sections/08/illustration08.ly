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
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (9 30 22.5 17 26.5)))
            \time 2/4
            s1 * 1/2
              %! +SCORE
            \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 2/4
            s1 * 1/2
              %! +SCORE
            \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 2/4
            s1 * 1/2
              %! +SCORE
            \break
              %! +SCORE
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (9 30 20 17 24)))
            \time 5/4
            s1 * 5/4
              %! +SCORE
            \noBreak
            \time 4/4
            s1 * 1
              %! +SCORE
            \break
              %! +SCORE
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (7 26.5 25 34)))
            \time 3/4
            s1 * 3/4
              %! +SCORE
            \noBreak
            \time 5/4
            s1 * 5/4
              %! +SCORE
            \break
              %! +SCORE
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (8.5 26.5 27.5 29 14.5)))
            \time 6/8
            s1 * 3/4
              %! +SCORE
            \noBreak
            \time 6/16
            s1 * 3/8
              %! +SCORE
            \noBreak
            \time 4/4
            s1 * 1
              %! +SCORE
            \break
              %! +SCORE
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (10 31 26 25 17)))
            \time 6/16
            s1 * 3/8
              %! +SCORE
            \noBreak
            \time 2/4
            s1 * 1/2
              %! +SCORE
            \noBreak
            \time 4/4
            s1 * 1
              %! +SCORE
            \break
              %! +SCORE
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (9 25 24 21 14.5)))
            \time 6/4
            s1 * 3/2
              %! +SCORE
            \noBreak
            \time 10/16
            s1 * 5/8
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
                                    r2
                                    r2
                                    r2
                                    r2.
                                    r2
                                    r1
                                    r2.
                                    r2.
                                    r2
                                    r2.
                                    r4.
                                    r1
                                    r4.
                                    r2
                                    r1
                                    r1.
                                    r8.
                                    r8
                                    r8.
                                    r8
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
                                        \context Voice = "violin 2 voice fingers"
                                        {
                                            \override Dots.staff-position = #2
                                            \voiceTwo
                                            \tweak style #'harmonic
                                            a''2
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            \tweak style #'harmonic
                                            f''2
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            \revert Dots.staff-position
                                            \tweak style #'harmonic-mixed
                                            f''4.
                                            \once \override Rest.staff-position = #-7
                                            r8
                                            \override Dots.staff-position = #2
                                            \tweak style #'harmonic
                                            c''2.
                                            - \abjad-zero-padding-glissando
                                            \glissando
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
                                            \revert Dots.staff-position
                                            \pitchedTrill
                                            \tweak style #'harmonic
                                            e''2
                                            :16
                                            - \tweak TrillPitchAccidental.stencil ##f
                                            - \tweak TrillPitchHead.layer 5
                                            - \tweak TrillPitchHead.no-ledgers ##t
                                            - \tweak TrillPitchHead.stencil #(lambda (grob) (grob-interpret-markup grob #{ \markup \musicglyph #"noteheads.s0harmonic" #}))
                                            - \tweak TrillPitchHead.whiteout 1
                                            - \tweak TrillPitchHead.whiteout-style #'outline
                                            - \tweak Y-extent ##f
                                            - \tweak bound-details.left.Y #0
                                            - \tweak bound-details.right.Y #0
                                            \startTrillSpan a'
                                            \tweak style #'harmonic
                                            e''1
                                            \stopTrillSpan
                                            <
                                                \tweak style #'harmonic
                                                a'
                                                \tweak style #'harmonic
                                                e''
                                            >2
                                            \once \override Rest.staff-position = #-7
                                            r4
                                            \tweak style #'harmonic
                                            a''8
                                            [
                                            \times 4/5
                                            {
                                                \tweak style #'harmonic
                                                g''8
                                                <
                                                    \tweak style #'harmonic
                                                    c''
                                                    \tweak style #'harmonic
                                                    g''
                                                >8
                                                \tweak style #'harmonic
                                                g''8
                                                <
                                                    \tweak style #'harmonic
                                                    c''
                                                    \tweak style #'harmonic
                                                    f''
                                                >8
                                                \big-half-harmonic
                                                \tweak style #'harmonic
                                                c''8
                                            }
                                            \override Dots.staff-position = #2
                                            \tweak style #'harmonic
                                            f''8
                                            ]
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
                                            \tweak style #'harmonic-mixed
                                            f''4
                                            \times 2/3
                                            {
                                                \revert Dots.staff-position
                                                  %! abjad.glissando(6)
                                                \revert Accidental.stencil
                                                  %! abjad.glissando(6)
                                                \revert NoteColumn.glissando-skip
                                                  %! abjad.glissando(6)
                                                \revert NoteHead.no-ledgers
                                                  %! abjad.glissando(6)
                                                \undo \hide NoteHead
                                                \tweak style #'harmonic
                                                e''8
                                                [
                                                \big-half-harmonic
                                                \tweak style #'harmonic
                                                b'8
                                                <
                                                    \tweak style #'harmonic
                                                    b'
                                                    \tweak style #'harmonic
                                                    e''
                                                >8
                                                ]
                                            }
                                            \override Dots.staff-position = #2
                                            \once \override Tie.stencil = ##f
                                            \tweak style #'harmonic-mixed
                                            e''4.
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
                                            \tweak style #'harmonic
                                            e''8
                                            [
                                            \times 4/5
                                            {
                                                \revert Dots.staff-position
                                                  %! abjad.glissando(6)
                                                \revert Accidental.stencil
                                                  %! abjad.glissando(6)
                                                \revert NoteColumn.glissando-skip
                                                  %! abjad.glissando(6)
                                                \revert NoteHead.no-ledgers
                                                  %! abjad.glissando(6)
                                                \undo \hide NoteHead
                                                \tweak style #'harmonic
                                                f''16
                                                \big-half-harmonic
                                                \tweak style #'harmonic
                                                c''16
                                                \tweak style #'harmonic
                                                f''16
                                                \big-half-harmonic
                                                \tweak style #'harmonic
                                                c''16
                                                \override Dots.staff-position = #2
                                                \set glissandoMap = #'((0 . 1) (1 . 0))
                                                \tweak style #'harmonic
                                                g''16
                                                ]
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                            }
                                            \revert Dots.staff-position
                                            <
                                                \tweak style #'harmonic
                                                d''
                                                \tweak style #'harmonic
                                                a''
                                            >8.
                                            \once \override Rest.staff-position = #-7
                                            r8.
                                            \tweak style #'harmonic
                                            a''16
                                            [
                                            \big-half-harmonic
                                            \tweak style #'harmonic
                                            d''16
                                            <
                                                \tweak style #'harmonic
                                                d''
                                                \tweak style #'harmonic
                                                g''
                                            >16
                                            \override Dots.staff-position = #2
                                            \tweak style #'harmonic
                                            g''16
                                            ]
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
                                            \tweak style #'harmonic
                                            g''2.
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            <
                                                \tweak style #'harmonic-mixed
                                                b'
                                                \tweak style #'harmonic-mixed
                                                f''
                                            >4.
                                            ~
                                            \revert Dots.staff-position
                                            <
                                                \tweak style #'harmonic-mixed
                                                b'
                                                \tweak style #'harmonic-mixed
                                                f''
                                            >4
                                            \once \override Rest.staff-position = #-7
                                            r4
                                            \override Dots.staff-position = #2
                                            \unset glissandoMap
                                            \tweak style #'harmonic
                                            f''1
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            \revert Dots.staff-position
                                            <
                                                \tweak style #'harmonic
                                                b''
                                            >2.
                                            \tweak style #'harmonic
                                            a''2.
                                            \override Dots.staff-position = #2
                                            <
                                                \tweak style #'harmonic
                                                e''
                                                \tweak style #'harmonic
                                                b''
                                            >8.
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
                                                \tweak style #'harmonic
                                                e''
                                                \tweak style #'harmonic
                                                b''
                                            >8
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
                                                    \tweak style #'harmonic
                                                    b'
                                                    \tweak style #'harmonic
                                                    f''
                                                >16
                                            }
                                            \once \override Rest.staff-position = #-7
                                            r8.
                                            \once \override Rest.staff-position = #-7
                                            r8
                                        }
                                        \context Voice = "violin 1 bow voice"
                                        {
                                            \override Dots.staff-position = #2
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            \override Staff.Clef.stencil = #ly:text-interface::print
                                            \override Staff.Clef.text = \string-clef
                                            \staff-line-count 4
                                            \override Staff.StaffSymbol.line-positions = #'(9 7 0 -9)
                                            \override Staff.BarLine.bar-extent = #'(-4.5 . 4.5)
                                            \override Staff.Accidental.stencil = ##f
                                            \override Staff.NoteHead.no-ledgers = ##t
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
                                                f''
                                            >2
                                              %! +SCORE
                                            ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-8.5 \raise #3 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 100" } } }
                                            - \tweak color #(css-color 'darkred)
                                            (
                                            - \tweak color #(css-color 'darkred)
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #10
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "Scratch" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 0.5
                                            \startTextSpanTwo
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #12.5
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "III" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -3
                                            \startTextSpanOne
                                            \override Dots.staff-position = #2
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            \revert Dots.staff-position
                                            <
                                                \tweak style #'la
                                                d''
                                            >4.
                                            \stopTextSpanTwo
                                            - \tweak bound-details.right.arrow ##t
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak thickness #1.5
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 1
                                            - \tweak padding #10
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \upright { "" } \hspace #0.5 }
                                            \startTextSpanTwo
                                            \override Dots.staff-position = #2
                                            \revert Dots.staff-position
                                            d''8
                                            )
                                            \stopTextSpanTwo
                                            - \tweak color #(css-color 'darkred)
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 1
                                            - \tweak padding #10
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "Norm." } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 0.5
                                            \startTextSpanTwo
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            \revert Dots.staff-position
                                            <
                                                \tweak style #'la
                                                d''
                                            >8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \accent
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            \stopTextSpanTwo
                                            [
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #10
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "Scratch" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -3
                                            \startTextSpanTwo
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                d''
                                            >8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \accent
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                d''
                                            >8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \accent
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            \stopTextSpanOne
                                            \stopTextSpanTwo
                                            ]
                                            \once \override Rest.staff-position = #7
                                            r8
                                            \revert Voice.NoteHead.color
                                            \revert Voice.Dots.color
                                            \revert Voice.Stem.color
                                            \revert Voice.Beam.color
                                            \revert Voice.Rest.color
                                            \revert Voice.Tie.color
                                            \revert Voice.TupletBracket.color
                                            \revert Voice.TupletNumber.color
                                            \override Dots.staff-position = #2
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
                                            <
                                                \tweak style #'la
                                                a'
                                            >2.
                                            - \tweak bound-details.right.arrow ##t
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak thickness #1.5
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            - \tweak color #(css-color 'darkred)
                                            (
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 1
                                            - \tweak padding #7.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \upright { "Scratch" } \hspace #0.5 }
                                            - \tweak bound-details.right.text \markup \upright { "Norm." }
                                            \startTextSpanTwo
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #9.5
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "III" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -43
                                            \startTextSpanOne
                                            \override Dots.staff-position = #2
                                            \revert Dots.staff-position
                                            c''2
                                            )
                                            \stopTextSpanTwo
                                            - \tweak color #(css-color 'darkred)
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            c''1
                                            \stopTextSpanOne
                                            - \tweak color #(css-color 'darkred)
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            \times 4/5
                                            {
                                                \once \override NoteHead.X-offset = 0
                                                \once \override Staff.Accidental.stencil = ##f
                                                \once \override Voice.Glissando.thickness = #8.25
                                                \once \override NoteHead.duration-log = 2
                                                \revert Dots.staff-position
                                                <
                                                    \tweak style #'la
                                                    c''
                                                >8
                                                - \tweak color #(css-color 'darkred)
                                                ^ \accent
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                [
                                                - \tweak color #(css-color 'darkred)
                                                - \tweak font-name "Bodoni72 Book" 
                                                - \tweak font-size 2
                                                - \tweak padding #11
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { \upright { "Scratch" } \hspace #0.5 }
                                                - \tweak bound-details.right.padding -3
                                                \startTextSpanTwo
                                                - \tweak font-name "Bodoni72 Book" 
                                                - \tweak font-size 2
                                                - \tweak padding #13.5
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { \upright { "(III)" } \hspace #0.5 }
                                                - \tweak bound-details.right.padding 2.5
                                                \startTextSpanOne
                                                \once \override NoteHead.X-offset = 0
                                                \once \override Staff.Accidental.stencil = ##f
                                                \once \override Voice.Glissando.thickness = #8.25
                                                \once \override NoteHead.duration-log = 2
                                                <
                                                    \tweak style #'la
                                                    c''
                                                >8
                                                - \tweak color #(css-color 'darkred)
                                                ^ \accent
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                \once \override NoteHead.X-offset = 0
                                                \once \override Staff.Accidental.stencil = ##f
                                                \once \override Voice.Glissando.thickness = #8.25
                                                \once \override NoteHead.duration-log = 2
                                                <
                                                    \tweak style #'la
                                                    c''
                                                >8
                                                - \tweak color #(css-color 'darkred)
                                                ^ \accent
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                \once \override NoteHead.X-offset = 0
                                                \once \override Staff.Accidental.stencil = ##f
                                                \once \override Voice.Glissando.thickness = #8.25
                                                \once \override NoteHead.duration-log = 2
                                                <
                                                    \tweak style #'la
                                                    c''
                                                >8
                                                - \tweak color #(css-color 'darkred)
                                                ^ \accent
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                \once \override NoteHead.X-offset = 0
                                                \once \override Staff.Accidental.stencil = ##f
                                                \once \override Voice.Glissando.thickness = #8.25
                                                \once \override NoteHead.duration-log = 2
                                                <
                                                    \tweak style #'la
                                                    c''
                                                >8
                                                - \tweak color #(css-color 'darkred)
                                                ^ \accent
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                \stopTextSpanTwo
                                                ]
                                            }
                                            \once \override Rest.staff-position = #7
                                            r4
                                            \stopTextSpanOne
                                            \revert Voice.NoteHead.color
                                            \revert Voice.Dots.color
                                            \revert Voice.Stem.color
                                            \revert Voice.Beam.color
                                            \revert Voice.Rest.color
                                            \revert Voice.Tie.color
                                            \revert Voice.TupletBracket.color
                                            \revert Voice.TupletNumber.color
                                            \override Dots.staff-position = #2
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
                                            <
                                                \tweak style #'la
                                                f''
                                            >8
                                            [
                                            - \tweak bound-details.right.arrow ##t
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak thickness #1.5
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            - \tweak color #(css-color 'darkred)
                                            (
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 1
                                            - \tweak padding #9.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \upright { "Scr." } \hspace #0.5 }
                                            - \tweak bound-details.right.text \markup \upright { "Norm." }
                                            \startTextSpanTwo
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #12
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "IV" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -3
                                            \startTextSpanOne
                                            \override Dots.staff-position = #2
                                            e''8
                                            \stopTextSpanTwo
                                            ]
                                              %! abjad.glissando(7)
                                            - \tweak color #(css-color 'darkred)
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
                                            e''2
                                            ~
                                            \revert Dots.staff-position
                                            e''2
                                            )
                                            \override Dots.staff-position = #2
                                            \magnifyStaff #7/8
                                            \revert Dots.staff-position
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            c''2.
                                            - \tweak bound-details.right.arrow ##t
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak thickness #1.5
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 1
                                            - \tweak padding #10.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \upright { "(Norm.)" } \hspace #0.5 }
                                            \startTextSpanTwo
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            \revert Dots.staff-position
                                            <
                                                \tweak style #'la
                                                f''
                                            >16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \accent
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \stopTextSpanTwo
                                            [
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 1
                                            - \tweak padding #10.5
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "Scratch" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -3
                                            \startTextSpanTwo
                                            - \tweak padding #12
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " accel. ( to " } \fontsize #-0.5 { \note { 4 } #1.5 } \fontsize #3 { " . = 153 )" } } } \hspace #0.5 }
                                            - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { " . = 153" } } }
                                            \startTextSpanThree
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                f''
                                            >16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \accent
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                f''
                                            >16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \accent
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \stopTextSpanOne
                                            \stopTextSpanTwo
                                            ]
                                            \once \override Rest.staff-position = #7
                                            r8.
                                            \revert Voice.NoteHead.color
                                            \revert Voice.Dots.color
                                            \revert Voice.Stem.color
                                            \revert Voice.Beam.color
                                            \revert Voice.Rest.color
                                            \revert Voice.Tie.color
                                            \revert Voice.TupletBracket.color
                                            \revert Voice.TupletNumber.color
                                            \override Dots.staff-position = #2
                                            \override Voice.NoteHead.color = #(css-color 'darkred)
                                            \override Voice.Dots.color = #(css-color 'darkred)
                                            \override Voice.Stem.color = #(css-color 'darkred)
                                            \override Voice.Beam.color = #(css-color 'darkred)
                                            \override Voice.Rest.color = #(css-color 'darkred)
                                            \override Voice.Tie.color = #(css-color 'darkred)
                                            \override Voice.TupletBracket.color = #(css-color 'darkred)
                                            \override Voice.TupletNumber.color = #(css-color 'darkred)
                                            f''1
                                            - \tweak color #(css-color 'darkred)
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #9.5
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "II" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -3
                                            \startTextSpanOne
                                            \magnifyStaff #1
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            \revert Dots.staff-position
                                            <
                                                \tweak style #'la
                                                d''
                                            >8.
                                            - \tweak color #(css-color 'darkred)
                                            ^ \accent
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \stopTextSpanThree
                                            [
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 1
                                            - \tweak padding #8.5
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "Scratch" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -3
                                            \startTextSpanTwo
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                d''
                                            >8.
                                            - \tweak color #(css-color 'darkred)
                                            ^ \accent
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            ]
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                d''
                                            >8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \accent
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            [
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                d''
                                            >8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \accent
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \stopTextSpanOne
                                            \stopTextSpanTwo
                                            ]
                                            \once \override Rest.staff-position = #7
                                            r4
                                            \revert Voice.NoteHead.color
                                            \revert Voice.Dots.color
                                            \revert Voice.Stem.color
                                            \revert Voice.Beam.color
                                            \revert Voice.Rest.color
                                            \revert Voice.Tie.color
                                            \revert Voice.TupletBracket.color
                                            \revert Voice.TupletNumber.color
                                            \override Dots.staff-position = #2
                                            \override Voice.NoteHead.color = #(css-color 'darkred)
                                            \override Voice.Dots.color = #(css-color 'darkred)
                                            \override Voice.Stem.color = #(css-color 'darkred)
                                            \override Voice.Beam.color = #(css-color 'darkred)
                                            \override Voice.Rest.color = #(css-color 'darkred)
                                            \override Voice.Tie.color = #(css-color 'darkred)
                                            \override Voice.TupletBracket.color = #(css-color 'darkred)
                                            \override Voice.TupletNumber.color = #(css-color 'darkred)
                                            d''1
                                            - \tweak color #(css-color 'darkred)
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #6
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "IV" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -3
                                            \startTextSpanOne
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 6/5
                                            {
                                                \once \override NoteHead.X-offset = 0
                                                \once \override Staff.Accidental.stencil = ##f
                                                \once \override Voice.Glissando.thickness = #8.25
                                                \once \override NoteHead.duration-log = 2
                                                \revert Dots.staff-position
                                                <
                                                    \tweak style #'la
                                                    g''
                                                >8
                                                - \tweak color #(css-color 'darkred)
                                                ^ \accent
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                [
                                                - \tweak color #(css-color 'darkred)
                                                - \tweak font-name "Bodoni72 Book" 
                                                - \tweak font-size 1
                                                - \tweak padding #13
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { \upright { "Scratch" } \hspace #0.5 }
                                                - \tweak bound-details.right.padding 0.5
                                                \startTextSpanTwo
                                                \once \override NoteHead.X-offset = 0
                                                \once \override Staff.Accidental.stencil = ##f
                                                \once \override Voice.Glissando.thickness = #8.25
                                                \once \override NoteHead.duration-log = 2
                                                <
                                                    \tweak style #'la
                                                    g''
                                                >8
                                                - \tweak color #(css-color 'darkred)
                                                ^ \accent
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                \once \override NoteHead.X-offset = 0
                                                \once \override Staff.Accidental.stencil = ##f
                                                \once \override Voice.Glissando.thickness = #8.25
                                                \once \override NoteHead.duration-log = 2
                                                <
                                                    \tweak style #'la
                                                    g''
                                                >8
                                                - \tweak color #(css-color 'darkred)
                                                ^ \accent
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                \once \override NoteHead.X-offset = 0
                                                \once \override Staff.Accidental.stencil = ##f
                                                \once \override Voice.Glissando.thickness = #8.25
                                                \once \override NoteHead.duration-log = 2
                                                <
                                                    \tweak style #'la
                                                    g''
                                                >8
                                                - \tweak color #(css-color 'darkred)
                                                ^ \accent
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                \override Dots.staff-position = #2
                                                \once \override NoteHead.X-offset = 0
                                                \once \override Staff.Accidental.stencil = ##f
                                                \once \override Voice.Glissando.thickness = #8.25
                                                \once \override NoteHead.duration-log = 2
                                                <
                                                    \tweak style #'la
                                                    g''
                                                >8
                                                \stopTextSpanTwo
                                                ]
                                                  %! abjad.glissando(7)
                                                - \tweak bound-details.right.arrow ##t
                                                  %! abjad.glissando(7)
                                                - \tweak color #(css-color 'darkred)
                                                  %! abjad.glissando(7)
                                                - \tweak thickness #1.5
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                - \tweak color #(css-color 'darkred)
                                                (
                                                - \tweak color #(css-color 'darkred)
                                                - \tweak font-name "Bodoni72 Book" 
                                                - \tweak font-size 1
                                                - \tweak padding #13
                                                - \abjad-solid-line-with-arrow
                                                - \tweak bound-details.left.text \markup \concat { \upright { "" } \hspace #0.5 }
                                                - \tweak bound-details.right.text \markup \upright { "Norm." }
                                                \startTextSpanTwo
                                                ~
                                            }
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
                                            <
                                                \tweak style #'la
                                                g''
                                            >2.
                                            \override Dots.staff-position = #2
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            g''8.
                                            \stopTextSpanTwo
                                              %! abjad.glissando(7)
                                            - \tweak color #(css-color 'darkred)
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            ~
                                            \revert Dots.staff-position
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \afterGrace
                                            g''8
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
                                                d''16
                                                )
                                                \stopTextSpanOne
                                            }
                                            \once \override Rest.staff-position = #7
                                            r8.
                                            \once \override Rest.staff-position = #7
                                            r8
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
                                    r2
                                    r2
                                    r2
                                    r2.
                                    r2
                                    r1
                                    r2.
                                    r2.
                                    r2
                                    r2.
                                    r4.
                                    r1
                                    r4.
                                    r2
                                    r1
                                    r1.
                                    r8.
                                    r8
                                    r8.
                                    r8
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
                                    \override Dots.staff-position = #2
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \abjad-natural
                                        f'''!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \natural-one-syntonic-comma-down
                                        b'''!
                                    >2
                                    - \tenuto
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -12 } \line { +0 } } } }
                                      %! +SCORE
                                    ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-10 \raise #6 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 100" } } }
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 0
                                    - \tweak padding #15.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { { \override #'(baseline-skip . 2) \column { \line { "1/2 CLT, MSP" } \line { "(hair on bridge," } \line { "wood on string)" } } } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup { \override #'(baseline-skip . 2) \column { \line { "1/2 CLT, Ord." } \line { "(hair and wood" } \line { "on string)" } } }
                                    \startTextSpanTwo
                                    \override Dots.staff-position = #2
                                    \revert Dots.staff-position
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \abjad-natural
                                        \tweak style #'harmonic
                                        f'''!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \natural-one-syntonic-comma-down
                                        \tweak style #'harmonic
                                        b'''!
                                    >8
                                    - \tenuto
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -12 } \line { +0 } } } }
                                    [
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \override Dots.staff-position = #2
                                    \revert Staff.Stem.stemlet-length
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \abjad-natural
                                        f'''!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \natural-one-syntonic-comma-down
                                        b'''!
                                    >8
                                    - \tenuto
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -12 } \line { +0 } } } }
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
                                    \revert Dots.staff-position
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
                                        \tweak Accidental.text \abjad-natural
                                        f'''
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \natural-one-syntonic-comma-down
                                        b'''
                                    >4
                                    \override Dots.staff-position = #2
                                    \revert Dots.staff-position
                                    \override Staff.Stem.stemlet-length = 0.75
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
                                        \tweak Accidental.text \abjad-natural
                                        \tweak style #'harmonic
                                        f'''!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \natural-one-syntonic-comma-down
                                        \tweak style #'harmonic
                                        b'''!
                                    >8
                                    - \tenuto
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -12 } \line { +0 } } } }
                                    \stopTextSpanTwo
                                    [
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \override Dots.staff-position = #2
                                    \revert Staff.Stem.stemlet-length
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \abjad-natural
                                        f'''!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \natural-one-syntonic-comma-down
                                        b'''!
                                    >8
                                    - \tenuto
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -12 } \line { +0 } } } }
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
                                    \revert Dots.staff-position
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \abjad-natural
                                        f'''
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \natural-one-syntonic-comma-down
                                        b'''
                                    >8
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
                                        \tweak style #'harmonic
                                        f'''!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \natural-one-syntonic-comma-down
                                        \tweak style #'harmonic
                                        b'''!
                                    >16
                                    - \marcato
                                    - \staccato
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -12 } \line { +0 } } } }
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 0
                                    - \tweak padding #15
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "Scratch" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -3
                                    \startTextSpanTwo
                                    \revert Staff.Stem.stemlet-length
                                    <
                                        \tweak style #'harmonic
                                        f'''!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \natural-one-syntonic-comma-down
                                        \tweak style #'harmonic
                                        b'''!
                                    >16
                                    - \marcato
                                    - \staccato
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -12 } \line { +0 } } } }
                                    \stopTextSpanTwo
                                    ]
                                    \override Dots.staff-position = #2
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \sharp-one-syntonic-comma-down
                                        as''!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \abjad-natural
                                        f'''!
                                    >4
                                    - \tenuto
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +0 } \line { -2 } } } }
                                      %! abjad.glissando(7)
                                    - \tweak bound-details.right.arrow ##t
                                      %! abjad.glissando(7)
                                    - \tweak thickness #1.5
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 0
                                    - \tweak padding #13.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { { \override #'(baseline-skip . 2) \column { \line { "1/2 CLT, Ord." } \line { "(hair and wood" } \line { "on string)" } } } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup { \override #'(baseline-skip . 2) \column { \line { "1/2 CLT, MSP" } \line { "(hair on bridge," } \line { "wood on string)" } } }
                                    \startTextSpanTwo
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
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \sharp-one-syntonic-comma-down
                                        as''
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \abjad-natural
                                        f'''
                                    >8
                                    [
                                    \override Dots.staff-position = #2
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
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \sharp-one-syntonic-comma-down
                                        \tweak style #'harmonic
                                        as''!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \abjad-natural
                                        \tweak style #'harmonic
                                        f'''!
                                    >8
                                    - \tenuto
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +0 } \line { -2 } } } }
                                    ]
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \override Dots.staff-position = #2
                                    \revert Dots.staff-position
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \sharp-one-syntonic-comma-down
                                        as''!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \abjad-natural
                                        f'''!
                                    >4
                                    - \tenuto
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +0 } \line { -2 } } } }
                                    \stopTextSpanTwo
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \revert Dots.staff-position
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \sharp-one-syntonic-comma-down
                                        \tweak style #'harmonic
                                        as''!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \abjad-natural
                                        \tweak style #'harmonic
                                        f'''!
                                    >16
                                    - \marcato
                                    - \staccato
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +0 } \line { -2 } } } }
                                    [
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 0
                                    - \tweak padding #14.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "Scr." } \hspace #0.5 }
                                    - \tweak bound-details.right.padding 0.5
                                    \startTextSpanThree
                                    \override Dots.staff-position = #2
                                    \revert Staff.Stem.stemlet-length
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \sharp-one-syntonic-comma-down
                                        as''!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \abjad-natural
                                        f'''!
                                    >8.
                                    - \tenuto
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +0 } \line { -2 } } } }
                                    \stopTextSpanThree
                                    ]
                                      %! abjad.glissando(7)
                                    - \tweak bound-details.right.arrow ##t
                                      %! abjad.glissando(7)
                                    - \tweak thickness #1.5
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 0
                                    - \tweak padding #13.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { { \override #'(baseline-skip . 2) \column { \line { "1/2 CLT, MSP" } \line { "(hair on bridge," } \line { "wood on string)" } } } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup { \override #'(baseline-skip . 2) \column { \line { Ord. } \line { "(no wood)" } } }
                                    \startTextSpanTwo
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
                                        \tweak Accidental.text \sharp-one-syntonic-comma-down
                                        as''
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \abjad-natural
                                        f'''
                                    >4
                                    \override Dots.staff-position = #2
                                    \revert Dots.staff-position
                                    \override Staff.Stem.stemlet-length = 0.75
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
                                        \tweak Accidental.text \sharp-one-syntonic-comma-down
                                        \tweak style #'harmonic
                                        as''!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \abjad-natural
                                        \tweak style #'harmonic
                                        f'''!
                                    >8.
                                    - \tenuto
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +0 } \line { -2 } } } }
                                    [
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \revert Dots.staff-position
                                    \revert Staff.Stem.stemlet-length
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \sharp-one-syntonic-comma-down
                                        as''!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \abjad-natural
                                        f'''!
                                    >16
                                    - \marcato
                                    - \staccato
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +0 } \line { -2 } } } }
                                    ]
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 0
                                    - \tweak padding #14.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "Scr." } \hspace #0.5 }
                                    - \tweak bound-details.right.padding 0.5
                                    \startTextSpanThree
                                    \override Dots.staff-position = #2
                                    \big-half-harmonic
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \sharp-one-syntonic-comma-down
                                        as''!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \abjad-natural
                                        f'''!
                                    >4
                                    - \tenuto
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +0 } \line { -2 } } } }
                                    \stopTextSpanThree
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
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \sharp-one-syntonic-comma-down
                                        as''
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \abjad-natural
                                        f'''
                                    >8.
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
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \sharp-one-syntonic-comma-down
                                        as''!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \abjad-natural
                                        f'''!
                                    >16
                                    - \marcato
                                    - \staccato
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +0 } \line { -2 } } } }
                                    ]
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 0
                                    - \tweak padding #14.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "Scr." } \hspace #0.5 }
                                    - \tweak bound-details.right.padding 0.5
                                    \startTextSpanThree
                                    \override Dots.staff-position = #2
                                    \big-half-harmonic
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \sharp-one-syntonic-comma-down
                                        as''!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \abjad-natural
                                        f'''!
                                    >4
                                    - \tenuto
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +0 } \line { -2 } } } }
                                    \stopTextSpanThree
                                    \stopTextSpanTwo
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \override Dots.staff-position = #2
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \sharp-one-syntonic-comma-down
                                        as''!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \abjad-natural
                                        f'''!
                                    >4
                                    - \tenuto
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +0 } \line { -2 } } } }
                                      %! abjad.glissando(7)
                                    - \tweak bound-details.right.arrow ##t
                                      %! abjad.glissando(7)
                                    - \tweak thickness #1.5
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    ~
                                    \revert Dots.staff-position
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \sharp-one-syntonic-comma-down
                                        as''
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \abjad-natural
                                        f'''
                                    >8.
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
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \sharp-one-syntonic-comma-down
                                        \tweak style #'harmonic
                                        as''!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \abjad-natural
                                        \tweak style #'harmonic
                                        f'''!
                                    >16
                                    - \marcato
                                    - \staccato
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +0 } \line { -2 } } } }
                                    ]
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 0
                                    - \tweak padding #13.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "Scr." } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -1.5
                                    \startTextSpanThree
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \sharp-one-syntonic-comma-down
                                        \tweak style #'harmonic
                                        as''!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \abjad-natural
                                        \tweak style #'harmonic
                                        f'''!
                                    >16
                                    - \marcato
                                    - \staccato
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +0 } \line { -2 } } } }
                                    \stopTextSpanThree
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \sharp-one-syntonic-comma-down
                                        as''!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \abjad-natural
                                        f'''!
                                    >8.
                                    - \tenuto
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +0 } \line { -2 } } } }
                                    ]
                                    \override Dots.staff-position = #2
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        gs''!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        as''!
                                    >8
                                    - \tenuto
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -2 } \line { -6 } } } }
                                    [
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 0
                                    - \tweak padding #11
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { { \override #'(baseline-skip . 2) \column { \line { "1/2 CLT, MSP" } \line { "(hair on bridge," } \line { "wood on string)" } } } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -3
                                    \startTextSpanTwo
                                    \override Dots.staff-position = #2
                                    \revert Dots.staff-position
                                    \revert Staff.Stem.stemlet-length
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        \tweak style #'harmonic
                                        gs''!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        \tweak style #'harmonic
                                        as''!
                                    >8
                                    - \tenuto
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -2 } \line { -6 } } } }
                                    ]
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \override Dots.staff-position = #2
                                    \revert Dots.staff-position
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        gs''!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        as''!
                                    >2
                                    - \tenuto
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -2 } \line { -6 } } } }
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \revert Dots.staff-position
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        \tweak style #'harmonic
                                        gs''!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        \tweak style #'harmonic
                                        as''!
                                    >2
                                    - \tenuto
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -2 } \line { -6 } } } }
                                    \override Dots.staff-position = #2
                                    \magnifyStaff #7/8
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        \tweak style #'harmonic-mixed
                                        gs''!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        \tweak style #'harmonic-mixed
                                        as''!
                                    >4
                                    - \tenuto
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -2 } \line { -6 } } } }
                                    \stopTextSpanTwo
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \revert Dots.staff-position
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        gs''!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        as''!
                                    >16
                                    - \marcato
                                    - \staccato
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -2 } \line { -6 } } } }
                                    [
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size -2
                                    - \tweak padding #11
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "Scr." } \hspace #0.5 }
                                    - \tweak bound-details.right.padding 1.5
                                    \startTextSpanTwo
                                    \override Dots.staff-position = #2
                                    \revert Staff.Stem.stemlet-length
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        \tweak style #'harmonic
                                        gs''!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        \tweak style #'harmonic
                                        as''!
                                    >16
                                    - \tenuto
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -2 } \line { -6 } } } }
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
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size -2
                                    - \tweak padding #12
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { { \override #'(baseline-skip . 2) \column { \line { "1/2 CLT, MSP" } \line { "(hair on bridge," } \line { "wood on string)" } } } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup { \override #'(baseline-skip . 2) \column { \line { "1/2 CLT, SP" } \line { "(wood and hair" } \line { "on string)" } } }
                                    \startTextSpanTwo
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
                                        \tweak style #'harmonic-mixed
                                        gs''
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        \tweak style #'harmonic-mixed
                                        as''
                                    >4.
                                    \big-half-harmonic
                                    \revert Dots.staff-position
                                    \override Staff.Stem.stemlet-length = 0.75
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
                                        gs''!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        as''!
                                    >8
                                    - \tenuto
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -2 } \line { -6 } } } }
                                    [
                                    - \tweak padding #18.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " accel. ( to " } \fontsize #-0.5 { \note { 4 } #1.5 } \fontsize #3 { " . = 153 )" } } } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { " . = 153" } } }
                                    \startTextSpanThree
                                    \big-half-harmonic
                                    \revert Staff.Stem.stemlet-length
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        gs''!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        as''!
                                    >16
                                    - \tenuto
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -2 } \line { -6 } } } }
                                    \stopTextSpanTwo
                                    ]
                                    ~
                                    \big-half-harmonic
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        gs''
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        as''
                                    >8.
                                    \big-half-harmonic
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        g'!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        gs''!
                                    >16
                                    - \marcato
                                    - \staccato
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -6 } \line { +2 } } } }
                                    [
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size -2
                                    - \tweak padding #10.75
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "Scr." } \hspace #0.5 }
                                    - \tweak bound-details.right.padding 1.5
                                    \startTextSpan
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size -2
                                    - \tweak padding #14.75
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { { \override #'(baseline-skip . 2) \column { \line { "1/2 CLT, MSP" } \line { "(hair on bridge," } \line { "wood on string)" } } } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -3
                                    \startTextSpanTwo
                                    \revert Staff.Stem.stemlet-length
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        g'!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        gs''!
                                    >8.
                                    - \tenuto
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -6 } \line { +2 } } } }
                                    \stopTextSpan
                                    ]
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        g'!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        gs''!
                                    >4
                                    - \tenuto
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -6 } \line { +2 } } } }
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        g'
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        gs''
                                    >8.
                                    [
                                    \big-half-harmonic
                                    \revert Staff.Stem.stemlet-length
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        g'!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        gs''!
                                    >16
                                    - \marcato
                                    - \staccato
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -6 } \line { +2 } } } }
                                    ]
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size -2
                                    - \tweak padding #10.75
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "Scr." } \hspace #0.5 }
                                    - \tweak bound-details.right.padding 1.5
                                    \startTextSpan
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        g'!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        gs''!
                                    >4
                                    - \tenuto
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -6 } \line { +2 } } } }
                                    \stopTextSpan
                                    \magnifyStaff #1
                                    \override Dots.staff-position = #2
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        g'!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        gs''!
                                    >8.
                                    - \tenuto
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -6 } \line { +2 } } } }
                                    \stopTextSpanThree
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \revert Dots.staff-position
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        \tweak style #'harmonic
                                        g'!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        \tweak style #'harmonic
                                        gs''!
                                    >8.
                                    - \tenuto
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -6 } \line { +2 } } } }
                                    \big-half-harmonic
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        g'!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        gs''!
                                    >8
                                    - \marcato
                                    - \staccato
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -6 } \line { +2 } } } }
                                    [
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 0
                                    - \tweak padding #10.25
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "Scr." } \hspace #0.5 }
                                    - \tweak bound-details.right.padding 1.5
                                    \startTextSpan
                                    \revert Staff.Stem.stemlet-length
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        g'!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        gs''!
                                    >8
                                    - \tenuto
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -6 } \line { +2 } } } }
                                    \stopTextSpan
                                    ]
                                    ~
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        g'
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        gs''
                                    >4
                                    \stopTextSpanTwo
                                    \big-half-harmonic
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                        b!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        g'!
                                    >16
                                    - \marcato
                                    - \staccato
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +2 } \line { -12 } } } }
                                    [
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 0
                                    - \tweak padding #10
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "Scr." } \hspace #0.5 }
                                    - \tweak bound-details.right.padding 2
                                    \startTextSpanTwo
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 0
                                    - \tweak padding #14
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { { \override #'(baseline-skip . 2) \column { \line { "1/2 CLT, MSP" } \line { "(hair on bridge," } \line { "wood on string)" } } } \hspace #0.5 }
                                    \startTextSpanOne
                                    \big-half-harmonic
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                        b!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        g'!
                                    >16
                                    - \marcato
                                    - \staccato
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +2 } \line { -12 } } } }
                                    \big-half-harmonic
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                        b!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        g'!
                                    >16
                                    - \marcato
                                    - \staccato
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +2 } \line { -12 } } } }
                                    \big-half-harmonic
                                    \revert Staff.Stem.stemlet-length
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                        b!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        g'!
                                    >16
                                    - \marcato
                                    - \staccato
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +2 } \line { -12 } } } }
                                    ]
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                        b!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        g'!
                                    >4
                                    - \tenuto
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +2 } \line { -12 } } } }
                                    \stopTextSpanTwo
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                        b!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        g'!
                                    >2
                                    - \tenuto
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +2 } \line { -12 } } } }
                                    \big-half-harmonic
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                        b!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        g'!
                                    >8
                                    - \marcato
                                    - \staccato
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +2 } \line { -12 } } } }
                                    [
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 0
                                    - \tweak padding #10
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "Scr." } \hspace #0.5 }
                                    - \tweak bound-details.right.padding 2
                                    \startTextSpanTwo
                                    \revert Staff.Stem.stemlet-length
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                        b!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        g'!
                                    >8
                                    - \tenuto
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +2 } \line { -12 } } } }
                                    \stopTextSpanTwo
                                    ]
                                    ~
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                        b
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        g'
                                    >4
                                    \big-half-harmonic
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                        b!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        g'!
                                    >8
                                    - \marcato
                                    - \staccato
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +2 } \line { -12 } } } }
                                    [
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 0
                                    - \tweak padding #10
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "Scr." } \hspace #0.5 }
                                    - \tweak bound-details.right.padding 2
                                    \startTextSpanTwo
                                    \big-half-harmonic
                                    \revert Staff.Stem.stemlet-length
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                        b!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        g'!
                                    >8
                                    - \marcato
                                    - \staccato
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +2 } \line { -12 } } } }
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                        b!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        g'!
                                    >8.
                                    - \tenuto
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +2 } \line { -12 } } } }
                                    \stopTextSpanOne
                                    \stopTextSpanTwo
                                    [
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 0
                                    - \tweak padding #14
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { { \override #'(baseline-skip . 2) \column { \line { "CLT, SP" } \line { "(hair off bridge)" } } } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -10
                                    \startTextSpanOne
                                    \big-half-harmonic
                                    \revert Staff.Stem.stemlet-length
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                        b!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        g'!
                                    >16
                                    - \marcato
                                    - \staccato
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +2 } \line { -12 } } } }
                                    ]
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 0
                                    - \tweak padding #10
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "Scr." } \hspace #0.5 }
                                    - \tweak bound-details.right.padding 2
                                    \startTextSpanTwo
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                        b!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        g'!
                                    >4
                                    - \tenuto
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +2 } \line { -12 } } } }
                                    \stopTextSpanTwo
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                        b
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        g'
                                    >8
                                    [
                                    \big-half-harmonic
                                    \revert Staff.Stem.stemlet-length
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                        b!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        g'!
                                    >8
                                    - \marcato
                                    - \staccato
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +2 } \line { -12 } } } }
                                    ]
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 0
                                    - \tweak padding #10
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "Scr." } \hspace #0.5 }
                                    - \tweak bound-details.right.padding 2
                                    \startTextSpanTwo
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                        b!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        g'!
                                    >8.
                                    - \tenuto
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +2 } \line { -12 } } } }
                                    \stopTextSpanTwo
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                        b
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        g'
                                    >16
                                    [
                                    \big-half-harmonic
                                    \revert Staff.Stem.stemlet-length
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                        b!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        g'!
                                    >16
                                    - \marcato
                                    - \staccato
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +2 } \line { -12 } } } }
                                    ]
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 0
                                    - \tweak padding #10
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "Scr." } \hspace #0.5 }
                                    - \tweak bound-details.right.padding 2
                                    \startTextSpanTwo
                                    \big-half-harmonic
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                        b!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        g'!
                                    >16
                                    - \marcato
                                    - \staccato
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +2 } \line { -12 } } } }
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                        b!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        g'!
                                    >8
                                    - \tenuto
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +2 } \line { -12 } } } }
                                    \stopTextSpanOne
                                    \stopTextSpanTwo
                                    ]
                                    ~
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                        b
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        g'
                                    >8
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
                                    \override Dots.staff-position = #2
                                    \set GrandStaff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { Viola }
                                      %! +SCORE
                                    \set GrandStaff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { VA }
                                    c'1
                                      %! +SCORE
                                    ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-7 \raise #4 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 100" } } }
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #5.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "CLT" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding 0.5
                                    \startTextSpanOne
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #8
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "ST" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding 0.5
                                    \startTextSpanTwo
                                    a2
                                    \stopTextSpanOne
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #5.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "1/2 CLT" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding 0.5
                                    \startTextSpanOne
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 5/6
                                    {
                                        e'2.
                                        \stopTextSpanOne
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak font-name "Bodoni72 Book" 
                                        - \tweak font-size 1
                                        - \tweak padding #5.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "CLT" } \hspace #0.5 }
                                        - \tweak bound-details.right.padding 0.5
                                        \startTextSpanOne
                                        a2.
                                        \stopTextSpanOne
                                        \stopTextSpanTwo
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak font-name "Bodoni72 Book" 
                                        - \tweak font-size 1
                                        - \tweak padding #5.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "1/2 CLT" } \hspace #0.5 }
                                        - \tweak bound-details.right.padding 0.5
                                        \startTextSpanOne
                                        - \tweak font-name "Bodoni72 Book" 
                                        - \tweak font-size 1
                                        - \tweak padding #8
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright { "" } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \upright { "SP" }
                                        - \tweak bound-details.right.padding 2.5
                                        \startTextSpanTwo
                                    }
                                    \times 2/3
                                    {
                                        g'2
                                        \stopTextSpanOne
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak font-name "Bodoni72 Book" 
                                        - \tweak font-size 1
                                        - \tweak padding #5.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "CLT" } \hspace #0.5 }
                                        - \tweak bound-details.right.padding 0.5
                                        \startTextSpanOne
                                        a2
                                        \stopTextSpanOne
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        d''4.
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \revert Dots.staff-position
                                        a8
                                        \stopTextSpanTwo
                                    }
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
                                    \stopStaff
                                    \once \revert Staff.StaffSymbol.line-positions
                                    \once \override Staff.StaffSymbol.line-count = #0
                                    \once \override Staff.BarLine.transparent = ##f
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
                                    r4.
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
                                    r1.
                                    \once \override Staff.BarLine.transparent = ##f
                                    \startStaff
                                    \stopStaff
                                    \once \revert Staff.StaffSymbol.line-positions
                                    \once \override Staff.StaffSymbol.line-count = #0
                                    \once \override Staff.BarLine.transparent = ##f
                                    r8.
                                    \once \override Staff.BarLine.transparent = ##f
                                    \startStaff
                                    r8
                                    r8.
                                    r8
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
                                    <<
                                        \context Voice = "viola 2 voice temp 1"
                                        {
                                            \once \override Dots.staff-position = #2
                                            \clef "alto"
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \voiceOne
                                            \afterGrace
                                            a'8
                                            [
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            {
                                                #(define afterGraceFraction (cons 5 6))
                                                \once \override Accidental.stencil = ##f
                                                \once \override Dots.staff-position = #2
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
                                            \revert Staff.Stem.stemlet-length
                                            \afterGrace
                                            cs'8
                                            ]
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            {
                                                #(define afterGraceFraction (cons 5 8))
                                                \once \override Accidental.stencil = ##f
                                                \once \override Dots.staff-position = #2
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
                                                cs'16
                                            }
                                            \once \override Dots.staff-position = #2
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \afterGrace
                                            e'8
                                            [
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            {
                                                #(define afterGraceFraction (cons 1 2))
                                                \once \override Accidental.stencil = ##f
                                                \once \override Dots.staff-position = #2
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
                                            \revert Staff.Stem.stemlet-length
                                            \afterGrace
                                            g8
                                            ]
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            {
                                                #(define afterGraceFraction (cons 1 8))
                                                \once \override Accidental.stencil = ##f
                                                \once \override Dots.staff-position = #2
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
                                            \times 4/5
                                            {
                                                \once \override Dots.staff-position = #2
                                                \override Staff.Stem.stemlet-length = 0.75
                                                \afterGrace
                                                g8
                                                [
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 15 16))
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override Dots.staff-position = #2
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
                                                \once \override Dots.staff-position = #2
                                                \afterGrace
                                                ef'8
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 3 4))
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override Dots.staff-position = #2
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
                                                    ef'16
                                                }
                                                \once \override Dots.staff-position = #2
                                                \afterGrace
                                                ef8
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 15 16))
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override Dots.staff-position = #2
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
                                                    ef16
                                                }
                                                \once \override Dots.staff-position = #2
                                                \afterGrace
                                                ef'8
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 1 4))
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override Dots.staff-position = #2
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
                                                    ef'16
                                                }
                                                \once \override Dots.staff-position = #2
                                                \revert Staff.Stem.stemlet-length
                                                \afterGrace
                                                g8
                                                ]
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 15 16))
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override Dots.staff-position = #2
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
                                            \times 2/3
                                            {
                                                ef'4
                                                a4
                                                gf'4
                                            }
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 5/6
                                            {
                                                \once \override Dots.staff-position = #2
                                                \afterGrace
                                                g4
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 15 16))
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override Dots.staff-position = #2
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
                                                \once \override Dots.staff-position = #2
                                                \afterGrace
                                                af4
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 1 2))
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override Dots.staff-position = #2
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
                                                    af16
                                                }
                                                \once \override Dots.staff-position = #2
                                                \afterGrace
                                                c'4
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 15 16))
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override Dots.staff-position = #2
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
                                                bf4
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 15 16))
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override Dots.staff-position = #2
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
                                                    bf16
                                                }
                                                \once \override Dots.staff-position = #2
                                                \afterGrace
                                                af4
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 1 2))
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override Dots.staff-position = #2
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
                                                    af16
                                                }
                                                \once \override Dots.staff-position = #2
                                                \afterGrace
                                                gf'4
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 15 16))
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override Dots.staff-position = #2
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
                                                    gf'16
                                                }
                                            }
                                            \once \override Dots.staff-position = #2
                                            \afterGrace
                                            g'4
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            {
                                                #(define afterGraceFraction (cons 15 16))
                                                \once \override Accidental.stencil = ##f
                                                \once \override Dots.staff-position = #2
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
                                                g'16
                                            }
                                            \once \override Dots.staff-position = #2
                                            \afterGrace
                                            g4
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            {
                                                #(define afterGraceFraction (cons 1 3))
                                                \once \override Accidental.stencil = ##f
                                                \once \override Dots.staff-position = #2
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
                                            \once \override Dots.staff-position = #2
                                            \afterGrace
                                            gf'4
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            {
                                                #(define afterGraceFraction (cons 2 3))
                                                \once \override Accidental.stencil = ##f
                                                \once \override Dots.staff-position = #2
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
                                                gf'16
                                            }
                                            \once \override Dots.staff-position = #2
                                            \afterGrace
                                            cs'4
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            {
                                                #(define afterGraceFraction (cons 15 16))
                                                \once \override Accidental.stencil = ##f
                                                \once \override Dots.staff-position = #2
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
                                                cs'16
                                            }
                                        }
                                        \context Voice = "viola polyrhythm voice 1"
                                        {
                                            \times 4/5
                                            {
                                                \once \override Dots.staff-position = #2
                                                \override Staff.Stem.stemlet-length = 0.75
                                                \voiceTwo
                                                \afterGrace
                                                b'8
                                                [
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 15 16))
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override Dots.staff-position = #2
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
                                                fs'8
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 1 5))
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override Dots.staff-position = #2
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
                                                fs8
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 5 8))
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override Dots.staff-position = #2
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
                                                    fs16
                                                }
                                                \once \override Dots.staff-position = #2
                                                \afterGrace
                                                c8
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 13 16))
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override Dots.staff-position = #2
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
                                                    c16
                                                }
                                                \once \override Dots.staff-position = #2
                                                \revert Staff.Stem.stemlet-length
                                                \afterGrace
                                                bf8
                                                ]
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 15 16))
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override Dots.staff-position = #2
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
                                                    bf16
                                                }
                                            }
                                            \times 2/3
                                            {
                                                \once \override Dots.staff-position = #2
                                                \afterGrace
                                                c''4
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 1 2))
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override Dots.staff-position = #2
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
                                                    c''16
                                                }
                                                \once \override Dots.staff-position = #2
                                                \afterGrace
                                                a4
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 1 8))
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override Dots.staff-position = #2
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
                                                b4
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 3 8))
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override Dots.staff-position = #2
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
                                            \times 4/6
                                            {
                                                \override Staff.Stem.stemlet-length = 0.75
                                                f8
                                                [
                                                af8
                                                f'8
                                                g'8
                                                b'8
                                                \revert Staff.Stem.stemlet-length
                                                ef'8
                                                ]
                                            }
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 5/4
                                            {
                                                g4
                                                \once \override Dots.staff-position = #2
                                                \afterGrace
                                                ef4
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 1 3))
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override Dots.staff-position = #2
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
                                                    ef16
                                                }
                                                \once \override Dots.staff-position = #2
                                                \afterGrace
                                                gf4
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 15 24))
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override Dots.staff-position = #2
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
                                                    gf16
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
                                            }
                                            \times 2/3
                                            {
                                                \once \override Dots.staff-position = #2
                                                \afterGrace
                                                d'2
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 2 3))
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override Dots.staff-position = #2
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
                                                    d'16
                                                }
                                                \once \override Dots.staff-position = #2
                                                \afterGrace
                                                af'2
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 1 2))
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override Dots.staff-position = #2
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
                                                a2
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 1 4))
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override Dots.staff-position = #2
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
                                            }
                                        }
                                    >>
                                    \oneVoice
                                    <<
                                        \context Voice = "viola 2 voice temp 2"
                                        {
                                            \big-half-harmonic
                                            \voiceOne
                                            d''16
                                            - \tweak padding 1
                                            ^ \punta-to-talon
                                            [
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 1
                                            - \tweak padding #16
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "MSP" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -2
                                            \startTextSpanOne
                                            \big-half-harmonic
                                            eqf''16
                                            - \tweak padding 1
                                            ^ \talon-to-punta
                                            \big-half-harmonic
                                            d''16
                                            - \tweak padding 1
                                            ^ \punta-to-talon
                                            \big-half-harmonic
                                            b'16
                                            - \tweak padding 1
                                            ^ \talon-to-punta
                                            ]
                                            ~
                                            \times 2/3
                                            {
                                                \big-half-harmonic
                                                b'8
                                                [
                                                \big-half-harmonic
                                                cqs''8
                                                - \tweak padding 1
                                                ^ \punta-to-talon
                                                \big-half-harmonic
                                                dqf''8
                                                - \tweak padding 1
                                                ^ \talon-to-punta
                                                ]
                                                ~
                                            }
                                            \big-half-harmonic
                                            dqf''4
                                            \big-half-harmonic
                                            af'2.
                                            - \tweak padding 1
                                            ^ \punta-to-talon
                                            ~
                                            \big-half-harmonic
                                            af'2
                                            \big-half-harmonic
                                            \magnifyStaff #7/8
                                            eqf'4
                                            - \tweak padding 1
                                            ^ \talon-to-punta
                                            ~
                                            \big-half-harmonic
                                            eqf'16
                                            [
                                            \big-half-harmonic
                                            bf16
                                            - \tweak padding 1
                                            ^ \punta-to-talon
                                            ]
                                            ~
                                            \big-half-harmonic
                                            bf16
                                            [
                                            \big-half-harmonic
                                            c'16
                                            - \tweak padding 1
                                            ^ \talon-to-punta
                                            ~
                                            \big-half-harmonic
                                            c'16
                                            \big-half-harmonic
                                            cs'8.
                                            - \tweak padding 1
                                            ^ \punta-to-talon
                                            ]
                                            \big-half-harmonic
                                            bqf16.
                                            - \tweak padding 1
                                            ^ \talon-to-punta
                                            [
                                            - \tweak padding #10
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " accel. ( to " } \fontsize #-0.5 { \note { 4 } #1.5 } \fontsize #3 { " . = 153 )" } } } \hspace #0.5 }
                                            - \tweak bound-details.right.text \markup {}
                                            - \tweak bound-details.right.padding -30
                                            \startTextSpanThree
                                            \big-half-harmonic
                                            aqs16.
                                            - \tweak padding 1
                                            ^ \punta-to-talon
                                            \big-half-harmonic
                                            b16.
                                            - \tweak padding 1
                                            ^ \talon-to-punta
                                            \big-half-harmonic
                                            aqs16.
                                            - \tweak padding 1
                                            ^ \punta-to-talon
                                            ]
                                            ~
                                            \big-half-harmonic
                                            aqs16
                                            [
                                            \big-half-harmonic
                                            dqs16
                                            - \tweak padding 1
                                            ^ \talon-to-punta
                                            \big-half-harmonic
                                            d16
                                            - \tweak padding 1
                                            ^ \punta-to-talon
                                            \big-half-harmonic
                                            fs16
                                            - \tweak padding 1
                                            ^ \talon-to-punta
                                            ]
                                            ~
                                            \big-half-harmonic
                                            fs8
                                            [
                                            \big-half-harmonic
                                            eqf8
                                            - \tweak padding 1
                                            ^ \punta-to-talon
                                            ]
                                            ~
                                            \big-half-harmonic
                                            eqf2
                                            \stopTextSpanOne
                                            \stopTextSpanThree
                                            \magnifyStaff #1
                                        }
                                        \context Voice = "viola legno voice"
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
                                            \tweak style #'cross
                                            a,8.
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            [
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #14
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLB OB" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -1.5
                                            \startTextSpan
                                            \tweak style #'cross
                                            a,8.
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \tweak style #'cross
                                            a,8.
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \tweak style #'cross
                                            a,8.
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            ]
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 5/6
                                            {
                                                \tweak style #'cross
                                                a,2
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                \tweak style #'cross
                                                a,2
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                - \tweak color #(css-color 'darkred)
                                                _ \accent
                                                \tweak style #'cross
                                                a,2
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                - \tweak color #(css-color 'darkred)
                                                _ \accent
                                            }
                                            \tweak style #'cross
                                            a,8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            [
                                            \tweak style #'cross
                                            a,8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \tweak style #'cross
                                            a,8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            ]
                                            \tweak style #'cross
                                            a,8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            [
                                            \tweak style #'cross
                                            a,8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \tweak style #'cross
                                            a,8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            ]
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 6/5
                                            {
                                                \tweak style #'cross
                                                a,16
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                [
                                                \tweak style #'cross
                                                a,16
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                \tweak style #'cross
                                                a,16
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                \tweak style #'cross
                                                a,16
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                \tweak style #'cross
                                                a,16
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                ]
                                            }
                                            \times 2/3
                                            {
                                                \tweak style #'cross
                                                a,2
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                - \tweak color #(css-color 'darkred)
                                                _ \accent
                                                \tweak style #'cross
                                                a,2
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                \tweak style #'cross
                                                a,2
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                - \tweak color #(css-color 'darkred)
                                                _ \accent
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
                                        }
                                    >>
                                    \oneVoice
                                    <<
                                        \context Voice = "viola 2 voice temp 3"
                                        {
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 7/10
                                            {
                                                \voiceOne
                                                a'16
                                                  %! +SCORE
                                                ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #10 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { " . = 153" } } }
                                                [
                                                - \tweak font-name "Bodoni72 Book" 
                                                - \tweak font-size 1
                                                - \tweak padding #11
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { \upright { "CLB" } \hspace #0.5 }
                                                - \tweak bound-details.right.padding -1.5
                                                \startTextSpanOne
                                                r8.
                                                cs'16
                                                r8.
                                                e'16
                                                r8.
                                                g16
                                                r8.
                                                g16
                                                r8.
                                                ]
                                            }
                                            \times 2/3
                                            {
                                                ef'8
                                                r4.
                                                ef'8
                                                r4.
                                                ef'8
                                                r4.
                                            }
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 3/4
                                            {
                                                g8
                                                r4.
                                                ef'8
                                                r4.
                                                a8
                                                r4.
                                                fs'8
                                                r4.
                                            }
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 5/6
                                            {
                                                g32
                                                [
                                                r16.
                                                af32
                                                r16.
                                                c'32
                                                r16.
                                                bf32
                                                r16.
                                                af32
                                                r16.
                                                gf'32
                                                \stopTextSpanOne
                                                r16.
                                                ]
                                            }
                                        }
                                        \context Voice = "viola polyrhythm voice 2"
                                        {
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 7/8
                                            {
                                                \voiceTwo
                                                b'16
                                                [
                                                r8.
                                                fs'16
                                                r8.
                                                fs16
                                                r8.
                                                c16
                                                r8.
                                                ]
                                            }
                                            \times 2/3
                                            {
                                                bf8
                                                r4.
                                                c''8
                                                r4.
                                                a8
                                                r4.
                                            }
                                            b16
                                            [
                                            r8.
                                            f16
                                            r8.
                                            af16
                                            r8.
                                            f'16
                                            r8.
                                            g'16
                                            r8.
                                            b'16
                                            r8.
                                            ]
                                            ef'32
                                            [
                                            r16.
                                            g32
                                            r16.
                                            ef32
                                            r16.
                                            gf32
                                            r16.
                                            af'32
                                            r16.
                                            ]
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
                                    r2
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
                                    \once \override Staff.Clef.stencil = ##f
                                    \stopStaff
                                    \once \revert Staff.StaffSymbol.line-positions
                                    \once \override Staff.StaffSymbol.line-count = #0
                                    \once \override Staff.BarLine.transparent = ##f
                                    r2.
                                    \magnifyStaff #7/8
                                    \once \override Staff.Clef.Y-extent = ##f
                                    \once \override Staff.Clef.Y-offset = #-2
                                    \once \override Staff.Clef.X-extent = ##f
                                    \once \override Staff.Clef.extra-offset = #'(4 . 0)
                                    \once \override Staff.BarLine.transparent = ##f
                                    \startStaff
                                    \override Dots.staff-position = #2
                                    \set Staff.forceClef = ##t
                                    d'''16.
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #6
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "ST poss." } \hspace #0.5 }
                                    \startTextSpanOne
                                    - \tweak padding #9.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " accel. ( to " } \fontsize #-0.5 { \note { 4 } #1.5 } \fontsize #3 { " . = 153 )" } } } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { " . = 153" } } }
                                    \startTextSpanThree
                                    a32
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    a''16
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    c'16
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    d''32
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    e'16.
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \set Staff.forceClef = ##f
                                    \times 4/5
                                    {
                                        d''4
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        a4
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        c'4
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        c'''4
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        a''4
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \magnifyStaff #1
                                    }
                                    c'''4.
                                    \stopTextSpanThree
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #7.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "1/2 CLT" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding 0.5
                                    \startTextSpanTwo
                                    a2
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    f'2
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    a2
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    e'1.
                                    \stopTextSpanTwo
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #7.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "CLT" } \hspace #0.5 }
                                    \startTextSpanTwo
                                    b2
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
                                    b8
                                    {
                                        \revert Dots.staff-position
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        a16
                                        \stopTextSpanOne
                                        \stopTextSpanTwo
                                    }
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
                                    \staff-line-count 5
                                    \big-half-harmonic
                                      %! +SCORE
                                    \revert Staff.BarLine.bar-extent
                                    \clef "bass"
                                    g4
                                    - \tweak padding 1
                                    ^ \punta-to-talon
                                      %! +SCORE
                                    ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-7 \raise #6 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 100" } } }
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #7.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "MST" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding 0.5
                                    \startTextSpanOne
                                    ~
                                    \big-half-harmonic
                                    g8
                                    [
                                    \big-half-harmonic
                                    cs8
                                    - \tweak padding 1
                                    ^ \talon-to-punta
                                    ]
                                    (
                                    ~
                                    \big-half-harmonic
                                    cs4
                                    ~
                                    \big-half-harmonic
                                    cs8
                                    [
                                    \big-half-harmonic
                                    aqf,8
                                    ]
                                    \big-half-harmonic
                                    cs8
                                    )
                                    [
                                    \times 4/5
                                    {
                                        \big-half-harmonic
                                        f16
                                        - \tweak padding 1
                                        ^ \punta-to-talon
                                        (
                                        \big-half-harmonic
                                        g16
                                        \big-half-harmonic
                                        af16
                                        \big-half-harmonic
                                        fqs16
                                        \big-half-harmonic
                                        eqs16
                                        )
                                    }
                                    \big-half-harmonic
                                    aqs,8
                                    - \tweak padding 1
                                    ^ \talon-to-punta
                                    ]
                                    (
                                    ~
                                    \big-half-harmonic
                                    aqs,4
                                    ~
                                    \big-half-harmonic
                                    aqs,8
                                    \stopTextSpanOne
                                    [
                                    - \tweak bound-details.left.Y #-0.5
                                    - \tweak bound-details.right.Y #4
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #7.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "" } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \upright { "MSP" }
                                    - \tweak bound-details.right.padding 2
                                    \startTextSpanOne
                                    \times 4/5
                                    {
                                        \big-half-harmonic
                                        a,16
                                        \big-half-harmonic
                                        cs16
                                        \big-half-harmonic
                                        bqf,16
                                        \big-half-harmonic
                                        b,16
                                        \big-half-harmonic
                                        bqf,16
                                        )
                                    }
                                    \big-half-harmonic
                                    cs'8
                                    - \tweak padding 1
                                    ^ \punta-to-talon
                                    ]
                                    (
                                    ~
                                    \big-half-harmonic
                                    cs'4
                                    \times 2/3
                                    {
                                        \big-half-harmonic
                                        b8
                                        [
                                        \big-half-harmonic
                                        cqs'8
                                        \big-half-harmonic
                                        eqf'8
                                        ]
                                    }
                                    \times 2/3
                                    {
                                        \big-half-harmonic
                                        dqf'8
                                        [
                                        \big-half-harmonic
                                        dqs'8
                                        )
                                        \big-half-harmonic
                                        gqf8
                                        - \tweak padding 1
                                        ^ \talon-to-punta
                                        ]
                                        (
                                    }
                                    \big-half-harmonic
                                    fs2
                                    )
                                    \once \override TupletBracket.padding = #4
                                    \times 4/5
                                    {
                                        \big-half-harmonic
                                        b,16
                                        - \tweak padding 1
                                        ^ \punta-to-talon
                                        [
                                        (
                                        \big-half-harmonic
                                        bqs,16
                                        \big-half-harmonic
                                        aqs,16
                                        \big-half-harmonic
                                        bqs,16
                                        \big-half-harmonic
                                        cs16
                                        )
                                        \stopTextSpanOne
                                        ]
                                    }
                                    <<
                                        \context Voice = "cello 2 voice temp"
                                        {
                                            \big-half-harmonic
                                            \voiceOne
                                            cs'4
                                            - \tweak padding 1
                                            ^ \talon-to-punta
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 1
                                            - \tweak padding #14.5
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "(MSP)" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -1
                                            \startTextSpanOne
                                            ~
                                            \big-half-harmonic
                                            cs'8
                                            [
                                            \once \override TupletBracket.padding = #1
                                            \times 4/5
                                            {
                                                \big-half-harmonic
                                                cqs'16
                                                - \tweak padding 1
                                                ^ \punta-to-talon
                                                \big-half-harmonic
                                                cs'16
                                                - \tweak padding 1
                                                ^ \talon-to-punta
                                                \big-half-harmonic
                                                dqs'16
                                                - \tweak padding 1
                                                ^ \punta-to-talon
                                                \big-half-harmonic
                                                d'16
                                                - \tweak padding 1
                                                ^ \talon-to-punta
                                                \big-half-harmonic
                                                cqs'16
                                                - \tweak padding 1
                                                ^ \punta-to-talon
                                            }
                                            \big-half-harmonic
                                            bqf8
                                            - \tweak padding 1
                                            ^ \talon-to-punta
                                            ]
                                            \big-half-harmonic
                                            dqs'8
                                            - \tweak padding 1
                                            ^ \punta-to-talon
                                            [
                                            \once \override TupletBracket.padding = #1
                                            \times 4/5
                                            {
                                                \big-half-harmonic
                                                ef'8
                                                - \tweak padding 1
                                                ^ \talon-to-punta
                                                \big-half-harmonic
                                                bqs8
                                                - \tweak padding 1
                                                ^ \punta-to-talon
                                                \big-half-harmonic
                                                b8
                                                - \tweak padding 1
                                                ^ \talon-to-punta
                                                \big-half-harmonic
                                                dqf'8
                                                - \tweak padding 1
                                                ^ \punta-to-talon
                                                \big-half-harmonic
                                                b8
                                                - \tweak padding 1
                                                ^ \talon-to-punta
                                            }
                                            \big-half-harmonic
                                            dqf'8
                                            - \tweak padding 1
                                            ^ \punta-to-talon
                                            ]
                                            ~
                                            \big-half-harmonic
                                            dqf'4
                                            \times 2/3
                                            {
                                                \big-half-harmonic
                                                ef'8
                                                - \tweak padding 1
                                                ^ \talon-to-punta
                                                [
                                                \big-half-harmonic
                                                dqs'8
                                                - \tweak padding 1
                                                ^ \punta-to-talon
                                                \big-half-harmonic
                                                cs'8
                                                - \tweak padding 1
                                                ^ \talon-to-punta
                                                ]
                                            }
                                            \big-half-harmonic
                                            \magnifyStaff #7/8
                                            dqf'4.
                                            - \tweak padding 1
                                            ^ \punta-to-talon
                                            ~
                                            \big-half-harmonic
                                            dqf'8
                                            [
                                            \times 4/5
                                            {
                                                \big-half-harmonic
                                                bqf16
                                                - \tweak padding 1
                                                ^ \talon-to-punta
                                                \big-half-harmonic
                                                cs'16
                                                - \tweak padding 1
                                                ^ \punta-to-talon
                                                \big-half-harmonic
                                                cqs'16
                                                - \tweak padding 1
                                                ^ \talon-to-punta
                                                \big-half-harmonic
                                                cs'16
                                                - \tweak padding 1
                                                ^ \punta-to-talon
                                                \big-half-harmonic
                                                dqs'16
                                                - \tweak padding 1
                                                ^ \talon-to-punta
                                                \stopTextSpanOne
                                                ]
                                            }
                                        }
                                        \context Voice = "cello legno voice"
                                        {
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 6/5
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
                                                \tweak style #'cross
                                                c,8
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                [
                                                - \tweak color #(css-color 'darkred)
                                                - \tweak font-name "Bodoni72 Book" 
                                                - \tweak font-size 2
                                                - \tweak padding #13.5
                                                - \abjad-dashed-line-with-up-hook
                                                - \tweak bound-details.left.text \markup \concat { \upright { "CLB OB" } \hspace #0.5 }
                                                - \tweak bound-details.right.padding -1.5
                                                \startTextSpan
                                                \tweak style #'cross
                                                c,8
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                \tweak style #'cross
                                                c,8
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                \tweak style #'cross
                                                c,8
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                - \tweak color #(css-color 'darkred)
                                                _ \accent
                                                \tweak style #'cross
                                                c,8
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                ]
                                            }
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 5/6
                                            {
                                                \tweak style #'cross
                                                c,2
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                - \tweak color #(css-color 'darkred)
                                                _ \accent
                                                \tweak style #'cross
                                                c,2
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                - \tweak color #(css-color 'darkred)
                                                _ \accent
                                                \tweak style #'cross
                                                c,2
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                            }
                                            \tweak style #'cross
                                            c,8.
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            [
                                            \tweak style #'cross
                                            c,8.
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            \tweak style #'cross
                                            c,8.
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \tweak style #'cross
                                            c,8.
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
                                    <<
                                        \context Voice = "cello 2 voice upper"
                                        {
                                            \once \override Dots.staff-position = #2
                                            \clef "treble"
                                            \voiceOne
                                            \afterGrace
                                            df'16.
                                            [
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            {
                                                #(define afterGraceFraction (cons 15 16))
                                                \once \override Accidental.stencil = ##f
                                                \once \override Dots.staff-position = #2
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
                                                df'16
                                            }
                                            \once \override Dots.staff-position = #2
                                            \afterGrace
                                            f'16.
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            {
                                                #(define afterGraceFraction (cons 1 4))
                                                \once \override Accidental.stencil = ##f
                                                \once \override Dots.staff-position = #2
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
                                                f'16
                                            }
                                            \once \override Dots.staff-position = #2
                                            \afterGrace
                                            bf16.
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            {
                                                #(define afterGraceFraction (cons 5 8))
                                                \once \override Accidental.stencil = ##f
                                                \once \override Dots.staff-position = #2
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
                                                bf16
                                            }
                                            \once \override Dots.staff-position = #2
                                            \afterGrace
                                            b16.
                                            ]
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            {
                                                #(define afterGraceFraction (cons 15 16))
                                                \once \override Accidental.stencil = ##f
                                                \once \override Dots.staff-position = #2
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
                                            \times 2/3
                                            {
                                                \once \override Dots.staff-position = #2
                                                \afterGrace
                                                d'2
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 3 5))
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override Dots.staff-position = #2
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
                                                    d'16
                                                }
                                                \once \override Dots.staff-position = #2
                                                \afterGrace
                                                g'2
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 1 5))
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override Dots.staff-position = #2
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
                                                    g'16
                                                }
                                                \once \override Dots.staff-position = #2
                                                \afterGrace
                                                fs''2
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 2 5))
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override Dots.staff-position = #2
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
                                            }
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 7/10
                                            {
                                                \once \override Dots.staff-position = #2
                                                \afterGrace
                                                cs''4
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 5 6))
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override Dots.staff-position = #2
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
                                                    cs''16
                                                }
                                                \once \override Dots.staff-position = #2
                                                \afterGrace
                                                f''4
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 2 3))
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override Dots.staff-position = #2
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
                                                    f''16
                                                }
                                                \once \override Dots.staff-position = #2
                                                \afterGrace
                                                bf'4
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 1 2))
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override Dots.staff-position = #2
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
                                                b4
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 1 3))
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override Dots.staff-position = #2
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
                                                \once \override Dots.staff-position = #2
                                                \afterGrace
                                                d'4
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 1 6))
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override Dots.staff-position = #2
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
                                                    d'16
                                                }
                                            }
                                            \times 4/6
                                            {
                                                af'4
                                                b4
                                                cs'4
                                                f'4
                                                bf4
                                                e'4
                                            }
                                            \once \override Dots.staff-position = #2
                                            \afterGrace
                                            d'2
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            {
                                                #(define afterGraceFraction (cons 3 5))
                                                \once \override Accidental.stencil = ##f
                                                \once \override Dots.staff-position = #2
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
                                                d'16
                                            }
                                            \once \override Dots.staff-position = #2
                                            \afterGrace
                                            g'2
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            {
                                                #(define afterGraceFraction (cons 1 5))
                                                \once \override Accidental.stencil = ##f
                                                \once \override Dots.staff-position = #2
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
                                                g'16
                                            }
                                            \once \override Dots.staff-position = #2
                                            \afterGrace
                                            e''2
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            {
                                                #(define afterGraceFraction (cons 2 5))
                                                \once \override Accidental.stencil = ##f
                                                \once \override Dots.staff-position = #2
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
                                                e''16
                                            }
                                            \once \override Dots.staff-position = #2
                                            \afterGrace
                                            d''8
                                            [
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            {
                                                #(define afterGraceFraction (cons 15 16))
                                                \once \override Accidental.stencil = ##f
                                                \once \override Dots.staff-position = #2
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
                                                d''16
                                            }
                                            \once \override Dots.staff-position = #2
                                            \afterGrace
                                            bf''8
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            {
                                                #(define afterGraceFraction (cons 5 16))
                                                \once \override Accidental.stencil = ##f
                                                \once \override Dots.staff-position = #2
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
                                                bf''16
                                            }
                                            \once \override Dots.staff-position = #2
                                            \afterGrace
                                            bf'8
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            {
                                                #(define afterGraceFraction (cons 7 16))
                                                \once \override Accidental.stencil = ##f
                                                \once \override Dots.staff-position = #2
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
                                            b''8
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            {
                                                #(define afterGraceFraction (cons 7 8))
                                                \once \override Accidental.stencil = ##f
                                                \once \override Dots.staff-position = #2
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
                                                b''16
                                            }
                                            \once \override Dots.staff-position = #2
                                            \afterGrace
                                            d''8
                                            ]
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            {
                                                #(define afterGraceFraction (cons 15 16))
                                                \once \override Accidental.stencil = ##f
                                                \once \override Dots.staff-position = #2
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
                                                d''16
                                            }
                                        }
                                        \context Voice = "cello lower voice"
                                        {
                                            \once \override Dots.staff-position = #2
                                            \voiceTwo
                                            \afterGrace
                                            bf8
                                            [
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            {
                                                #(define afterGraceFraction (cons 3 4))
                                                \once \override Accidental.stencil = ##f
                                                \once \override Dots.staff-position = #2
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
                                                bf16
                                            }
                                            \once \override Dots.staff-position = #2
                                            \afterGrace
                                            b8
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            {
                                                #(define afterGraceFraction (cons 7 16))
                                                \once \override Accidental.stencil = ##f
                                                \once \override Dots.staff-position = #2
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
                                            \once \override Dots.staff-position = #2
                                            \afterGrace
                                            d'8
                                            ]
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            {
                                                #(define afterGraceFraction (cons 3 16))
                                                \once \override Accidental.stencil = ##f
                                                \once \override Dots.staff-position = #2
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
                                                d'16
                                            }
                                            \times 4/5
                                            {
                                                \once \override Dots.staff-position = #2
                                                \afterGrace
                                                g4
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 15 16))
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override Dots.staff-position = #2
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
                                                \once \override Dots.staff-position = #2
                                                \afterGrace
                                                fs'4
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 2 3))
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override Dots.staff-position = #2
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
                                                cs''4
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 15 16))
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override Dots.staff-position = #2
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
                                                    cs''16
                                                }
                                                \once \override Dots.staff-position = #2
                                                \afterGrace
                                                f''4
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 1 3))
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override Dots.staff-position = #2
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
                                                    f''16
                                                }
                                                \once \override Dots.staff-position = #2
                                                \afterGrace
                                                as'4
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 15 16))
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override Dots.staff-position = #2
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
                                                    as'16
                                                }
                                                \magnifyStaff #1
                                            }
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 7/6
                                            {
                                                \once \override Dots.staff-position = #2
                                                \afterGrace
                                                b'8
                                                [
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 15 16))
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override Dots.staff-position = #2
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
                                                d''8
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 1 5))
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override Dots.staff-position = #2
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
                                                    d''16
                                                }
                                                \once \override Dots.staff-position = #2
                                                \afterGrace
                                                af'8
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 2 5))
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override Dots.staff-position = #2
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
                                                b'8
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 3 5))
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override Dots.staff-position = #2
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
                                                cs'8
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 4 5))
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override Dots.staff-position = #2
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
                                                    cs'16
                                                }
                                                \once \override Dots.staff-position = #2
                                                \afterGrace
                                                f'8
                                                ]
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 15 16))
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override Dots.staff-position = #2
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
                                                    f'16
                                                }
                                            }
                                            \times 2/3
                                            {
                                                bf2
                                                e'2
                                                d'2
                                            }
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 6/5
                                            {
                                                \once \override Dots.staff-position = #2
                                                \afterGrace
                                                g'4
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 15 16))
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override Dots.staff-position = #2
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
                                                    g'16
                                                }
                                                \once \override Dots.staff-position = #2
                                                \afterGrace
                                                e'4
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 11 16))
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override Dots.staff-position = #2
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
                                                d''4
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 15 16))
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override Dots.staff-position = #2
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
                                                    d''16
                                                }
                                                \once \override Dots.staff-position = #2
                                                \afterGrace
                                                bf''4
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 21 64))
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override Dots.staff-position = #2
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
                                                    bf''16
                                                }
                                                \once \override Dots.staff-position = #2
                                                \afterGrace
                                                bf'!4
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 15 16))
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override Dots.staff-position = #2
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
                                            }
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 5/4
                                            {
                                                \once \override Dots.staff-position = #2
                                                \afterGrace
                                                b''8
                                                [
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 4 5))
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override Dots.staff-position = #2
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
                                                    b''16
                                                }
                                                \once \override Dots.staff-position = #2
                                                \afterGrace
                                                d''8
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 3 5))
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override Dots.staff-position = #2
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
                                                    d''16
                                                }
                                                \once \override Dots.staff-position = #2
                                                \afterGrace
                                                gs''8
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 2 5))
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override Dots.staff-position = #2
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
                                                e''8
                                                ]
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                {
                                                    #(define afterGraceFraction (cons 1 5))
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override Dots.staff-position = #2
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
                                                    e''16
                                                }
                                            }
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
