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
            \time 7/4
            s1 * 7/4
            - \tweak color #(css-color 'darkred)
            ^ \markup \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #4 \box \line { Insect Language }
              %! +SCORE
            \noBreak
            \time 3/4
            s1 * 3/4
              %! +SCORE
            \break
            \time 8/8
            s1 * 1
            \time 3/4
            s1 * 3/4
            \time 6/4
            s1 * 3/2
            \time 7/4
            s1 * 7/4
            \time 5/4
            s1 * 5/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 5/4
            s1 * 5/4
            \time 2/2
            s1 * 1
            \once \override Score.TimeSignature.stencil = ##f
            \time 2/2
            s1 * 1
            \time 3/2
            s1 * 3/2
            \time 2/2
            s1 * 1
            \time 3/2
            s1 * 3/2
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/2
            s1 * 3/2
            \time 2/2
            s1 * 1
              %! +SCORE
            \noBreak
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            - \tweak font-size #'10
            _ \extremely-long-fermata
            \bar "|."
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
                                    r1..
                                    r2.
                                    r1
                                    r2.
                                    r1.
                                    r1..
                                    r2.
                                    r2
                                    r2.
                                    r2
                                    r1
                                    r1
                                    r1.
                                    r1
                                    r1.
                                    r1.
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
                                    <<
                                        \context Voice = "violin 2 voice upper"
                                        {
                                            \staff-line-count 0
                                            \once \override Accidental.stencil = ##f
                                            \override Staff.Clef.stencil = ##f
                                            \override Voice.NoteHead.color = #(css-color 'darkred)
                                            \override Voice.Dots.color = #(css-color 'darkred)
                                            \override Voice.Stem.color = #(css-color 'darkred)
                                            \override Voice.Beam.color = #(css-color 'darkred)
                                            \override Voice.Rest.color = #(css-color 'darkred)
                                            \override Voice.Tie.color = #(css-color 'darkred)
                                            \override Voice.TupletBracket.color = #(css-color 'darkred)
                                            \override Voice.TupletNumber.color = #(css-color 'darkred)
                                            \clef "percussion"
                                            \voiceOne
                                            \tweak style #'cross
                                            c'32
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                              %! +SCORE
                                            ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-7.5 \raise #3 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 16 } #1.5 } \fontsize #4 { "= 83" } } }
                                            - \tweak Beam.positions #'(11 . 11)
                                            [
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 1
                                            - \tweak padding #12.75
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLB OB" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -3
                                            \startTextSpan
                                            \once \override Rest.staff-position = 7
                                            r16.
                                            \once \override Accidental.stencil = ##f
                                            \tweak style #'cross
                                            c'32
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            \once \override Rest.staff-position = 7
                                            r16.
                                            \once \override Accidental.stencil = ##f
                                            \tweak style #'cross
                                            c'32
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            \once \override Rest.staff-position = 7
                                            r16.
                                            \once \override Accidental.stencil = ##f
                                            \tweak style #'cross
                                            c'32
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            \once \override Rest.staff-position = 7
                                            r16.
                                            \once \override Accidental.stencil = ##f
                                            \tweak style #'cross
                                            c'32
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            \once \override Rest.staff-position = 7
                                            r16.
                                            \once \override Accidental.stencil = ##f
                                            \tweak style #'cross
                                            c'32
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            \once \override Rest.staff-position = 7
                                            r16.
                                            ]
                                            \times 4/5
                                            {
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'32
                                                - \tweak color #(css-color 'darkred)
                                                _ \accent
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                - \tweak Beam.positions #'(11 . 11)
                                                [
                                                \once \override Rest.staff-position = 7
                                                r16.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'32
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r16.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'32
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r16.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'32
                                                - \tweak color #(css-color 'darkred)
                                                _ \accent
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r16.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'32
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r16.
                                                ]
                                            }
                                            \once \override Accidental.stencil = ##f
                                            \tweak style #'cross
                                            c'32
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            - \tweak Beam.positions #'(11 . 11)
                                            [
                                            \once \override Rest.staff-position = 7
                                            r16.
                                            \once \override Accidental.stencil = ##f
                                            \tweak style #'cross
                                            c'32
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            \once \override Rest.staff-position = 7
                                            r16.
                                            \once \override Accidental.stencil = ##f
                                            \tweak style #'cross
                                            c'32
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            \once \override Rest.staff-position = 7
                                            r16.
                                            \once \override Accidental.stencil = ##f
                                            \tweak style #'cross
                                            c'32
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            \once \override Rest.staff-position = 7
                                            r16.
                                            ]
                                            \times 2/3
                                            {
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'32
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                - \tweak Beam.positions #'(11 . 11)
                                                [
                                                \once \override Rest.staff-position = 7
                                                r16.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'32
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r16.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'32
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r16.
                                                ]
                                            }
                                            \times 4/6
                                            {
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'32
                                                - \tweak color #(css-color 'darkred)
                                                _ \accent
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                - \tweak Beam.positions #'(11 . 11)
                                                [
                                                \once \override Rest.staff-position = 7
                                                r16.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'32
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r16.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'32
                                                - \tweak color #(css-color 'darkred)
                                                _ \accent
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r16.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'32
                                                - \tweak color #(css-color 'darkred)
                                                _ \accent
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r16.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'32
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r16.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'32
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r16.
                                                ]
                                            }
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 6/5
                                            {
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'64
                                                - \tweak color #(css-color 'darkred)
                                                _ \accent
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                - \tweak Beam.positions #'(11 . 11)
                                                [
                                                \once \override Rest.staff-position = 7
                                                r32.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'64
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r32.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'64
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r32.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'64
                                                - \tweak color #(css-color 'darkred)
                                                _ \accent
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r32.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'64
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r32.
                                                ]
                                            }
                                            \once \override Accidental.stencil = ##f
                                            \tweak style #'cross
                                            c'32
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            - \tweak Beam.positions #'(11 . 11)
                                            [
                                            \once \override Rest.staff-position = 7
                                            r16.
                                            \once \override Accidental.stencil = ##f
                                            \tweak style #'cross
                                            c'32
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            \once \override Rest.staff-position = 7
                                            r16.
                                            \once \override Accidental.stencil = ##f
                                            \tweak style #'cross
                                            c'32
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            \once \override Rest.staff-position = 7
                                            r16.
                                            ]
                                            \once \override Accidental.stencil = ##f
                                            \tweak style #'cross
                                            c'64
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            - \tweak Beam.positions #'(11 . 11)
                                            [
                                            \once \override Rest.staff-position = 7
                                            r32.
                                            \once \override Accidental.stencil = ##f
                                            \tweak style #'cross
                                            c'64
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            \once \override Rest.staff-position = 7
                                            r32.
                                            \once \override Accidental.stencil = ##f
                                            \tweak style #'cross
                                            c'64
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            \once \override Rest.staff-position = 7
                                            r32.
                                            \once \override Accidental.stencil = ##f
                                            \tweak style #'cross
                                            c'64
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            \once \override Rest.staff-position = 7
                                            r32.
                                            ]
                                            \times 4/6
                                            {
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'32
                                                - \tweak color #(css-color 'darkred)
                                                _ \accent
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                - \tweak Beam.positions #'(11 . 11)
                                                [
                                                \once \override Rest.staff-position = 7
                                                r16.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'32
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r16.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'32
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r16.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'32
                                                - \tweak color #(css-color 'darkred)
                                                _ \accent
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r16.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'32
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r16.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'32
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r16.
                                                ]
                                            }
                                            \once \override Accidental.stencil = ##f
                                            \tweak style #'cross
                                            c'64
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            - \tweak Beam.positions #'(11 . 11)
                                            [
                                            \once \override Rest.staff-position = 7
                                            r32.
                                            \once \override Accidental.stencil = ##f
                                            \tweak style #'cross
                                            c'64
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            \once \override Rest.staff-position = 7
                                            r32.
                                            \once \override Accidental.stencil = ##f
                                            \tweak style #'cross
                                            c'64
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            \once \override Rest.staff-position = 7
                                            r32.
                                            \once \override Accidental.stencil = ##f
                                            \tweak style #'cross
                                            c'64
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            \once \override Rest.staff-position = 7
                                            r32.
                                            ]
                                            \times 4/5
                                            {
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'32
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                - \tweak Beam.positions #'(11 . 11)
                                                [
                                                \once \override Rest.staff-position = 7
                                                r16.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'32
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r16.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'32
                                                - \tweak color #(css-color 'darkred)
                                                _ \accent
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r16.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'32
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r16.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'32
                                                - \tweak color #(css-color 'darkred)
                                                _ \accent
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r16.
                                                ]
                                            }
                                            \times 2/3
                                            {
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'32
                                                - \tweak color #(css-color 'darkred)
                                                _ \accent
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                - \tweak Beam.positions #'(11 . 11)
                                                [
                                                \once \override Rest.staff-position = 7
                                                r16.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'32
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r16.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'32
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r16.
                                                ]
                                            }
                                            \times 4/6
                                            {
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'64
                                                - \tweak color #(css-color 'darkred)
                                                _ \accent
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                - \tweak Beam.positions #'(11 . 11)
                                                [
                                                \once \override Rest.staff-position = 7
                                                r32.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'64
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r32.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'64
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r16..
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'64
                                                - \tweak color #(css-color 'darkred)
                                                _ \accent
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r32.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'64
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r32.
                                                ]
                                            }
                                            \once \override Accidental.stencil = ##f
                                            \tweak style #'cross
                                            c'32
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            - \tweak Beam.positions #'(11 . 11)
                                            [
                                            \once \override Rest.staff-position = 7
                                            r16.
                                            \once \override Accidental.stencil = ##f
                                            \tweak style #'cross
                                            c'32
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            \once \override Rest.staff-position = 7
                                            r16.
                                            \once \override Accidental.stencil = ##f
                                            \tweak style #'cross
                                            c'32
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            \once \override Rest.staff-position = 7
                                            r16.
                                            \once \override Accidental.stencil = ##f
                                            \tweak style #'cross
                                            c'32
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            \once \override Rest.staff-position = 7
                                            r16.
                                            ]
                                            \times 2/3
                                            {
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'16
                                                - \tweak color #(css-color 'darkred)
                                                _ \accent
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                - \tweak Beam.positions #'(11 . 11)
                                                [
                                                \once \override Rest.staff-position = 7
                                                r8.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'16
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r8.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'16
                                                - \tweak color #(css-color 'darkred)
                                                _ \accent
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r8.
                                                ]
                                            }
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 6/5
                                            {
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'32
                                                - \tweak color #(css-color 'darkred)
                                                _ \accent
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                - \tweak Beam.positions #'(11 . 11)
                                                [
                                                \once \override Rest.staff-position = 7
                                                r16.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'32
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r16.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'32
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r16.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'32
                                                - \tweak color #(css-color 'darkred)
                                                _ \accent
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r16.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'32
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r16.
                                                ]
                                            }
                                            \times 4/6
                                            {
                                                \once \override Rest.staff-position = 7
                                                r8
                                                - \tweak Beam.positions #'(11 . 11)
                                                [
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'32
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r8..
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'32
                                                - \tweak color #(css-color 'darkred)
                                                _ \accent
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r8..
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'32
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r16.
                                                ]
                                            }
                                            \times 2/3
                                            {
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'16
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                - \tweak Beam.positions #'(11 . 11)
                                                [
                                                \once \override Rest.staff-position = 7
                                                r8.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'16
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r8.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'16
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r8.
                                                ]
                                            }
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 6/5
                                            {
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'32
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                - \tweak Beam.positions #'(11 . 11)
                                                [
                                                \once \override Rest.staff-position = 7
                                                r16.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'32
                                                - \tweak color #(css-color 'darkred)
                                                _ \accent
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r16.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'32
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r16.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'32
                                                - \tweak color #(css-color 'darkred)
                                                _ \accent
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r16.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'32
                                                - \tweak color #(css-color 'darkred)
                                                _ \accent
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r16.
                                                ]
                                            }
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 3/4
                                            {
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'16
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                - \tweak Beam.positions #'(11 . 11)
                                                [
                                                \once \override Rest.staff-position = 7
                                                r8.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'16
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r8.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'16
                                                - \tweak color #(css-color 'darkred)
                                                _ \accent
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r8.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'16
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r8.
                                                ]
                                            }
                                            \times 4/6
                                            {
                                                \once \override Rest.staff-position = 7
                                                r8
                                                - \tweak Beam.positions #'(11 . 11)
                                                [
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'32
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r8..
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'32
                                                - \tweak color #(css-color 'darkred)
                                                _ \accent
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r8..
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'32
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r16.
                                                ]
                                            }
                                            \times 2/3
                                            {
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'8
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r4.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'8
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r4.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'8
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r4.
                                            }
                                            \once \override Accidental.stencil = ##f
                                            \tweak style #'cross
                                            c'16
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            - \tweak Beam.positions #'(11 . 11)
                                            [
                                            \once \override Rest.staff-position = 7
                                            r8.
                                            \once \override Accidental.stencil = ##f
                                            \tweak style #'cross
                                            c'16
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            \once \override Rest.staff-position = 7
                                            r8.
                                            \once \override Accidental.stencil = ##f
                                            \tweak style #'cross
                                            c'16
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            \once \override Rest.staff-position = 7
                                            r8.
                                            \once \override Accidental.stencil = ##f
                                            \tweak style #'cross
                                            c'16
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            \once \override Rest.staff-position = 7
                                            r8.
                                            ]
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 6/5
                                            {
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'16
                                                - \tweak color #(css-color 'darkred)
                                                _ \accent
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                - \tweak Beam.positions #'(11 . 11)
                                                [
                                                \once \override Rest.staff-position = 7
                                                r8.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'16
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r8.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'16
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r8.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'16
                                                - \tweak color #(css-color 'darkred)
                                                _ \accent
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r8.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'16
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r8.
                                                ]
                                            }
                                            \times 4/5
                                            {
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'16
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                - \tweak Beam.positions #'(11 . 11)
                                                [
                                                \once \override Rest.staff-position = 7
                                                r8.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'16
                                                - \tweak color #(css-color 'darkred)
                                                _ \accent
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r8.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'16
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r8.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'16
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r8.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'16
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r8.
                                                ]
                                            }
                                            \once \override Accidental.stencil = ##f
                                            \tweak style #'cross
                                            c'16
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            - \tweak Beam.positions #'(11 . 11)
                                            [
                                            \once \override Rest.staff-position = 7
                                            r8.
                                            \once \override Accidental.stencil = ##f
                                            \tweak style #'cross
                                            c'16
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            \once \override Rest.staff-position = 7
                                            r8.
                                            ]
                                            \once \override Accidental.stencil = ##f
                                            \tweak style #'cross
                                            c'16
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            \once \override Rest.staff-position = 7
                                            r4..
                                            \once \override Accidental.stencil = ##f
                                            \tweak style #'cross
                                            c'16
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            - \tweak Beam.positions #'(11 . 11)
                                            [
                                            \once \override Rest.staff-position = 7
                                            r8.
                                            \once \override Accidental.stencil = ##f
                                            \tweak style #'cross
                                            c'16
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            \once \override Rest.staff-position = 7
                                            r8.
                                            ]
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 3/4
                                            {
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'8
                                                - \tweak color #(css-color 'darkred)
                                                _ \accent
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r4.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'8
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r4.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'8
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r4.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'8
                                                - \tweak color #(css-color 'darkred)
                                                _ \accent
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r4.
                                            }
                                            \times 2/3
                                            {
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'8
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r4.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'8
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r4.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'8
                                                - \tweak color #(css-color 'darkred)
                                                _ \accent
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r4.
                                                \stopTextSpan
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
                                        \context Voice = "violin 1 lower voice"
                                        {
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 6/5
                                            {
                                                \once \override Rest.staff-position = -7
                                                \override Voice.NoteHead.color = #(css-color 'darkred)
                                                \override Voice.Dots.color = #(css-color 'darkred)
                                                \override Voice.Stem.color = #(css-color 'darkred)
                                                \override Voice.Beam.color = #(css-color 'darkred)
                                                \override Voice.Rest.color = #(css-color 'darkred)
                                                \override Voice.Tie.color = #(css-color 'darkred)
                                                \override Voice.TupletBracket.color = #(css-color 'darkred)
                                                \override Voice.TupletNumber.color = #(css-color 'darkred)
                                                \textSpannerDown
                                                r8
                                                - \tweak padding 13.5
                                                _ \markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #1 { "Interruptive polyphony: Lower voice stops when interrupted by upper voice, and does not resume until next notated attack." }
                                                - \tweak Beam.positions #'(-8 . -8)
                                                [
                                                - \tweak color #(css-color 'darkred)
                                                - \tweak font-name "Bodoni72 Book" 
                                                - \tweak font-size 1
                                                - \tweak padding #12
                                                - \abjad-dashed-line-with-up-hook
                                                - \tweak bound-details.left.text \markup \concat { \upright { "CLT DP" } \hspace #0.5 }
                                                - \tweak bound-details.right.padding -3
                                                \startTextSpan
                                                c'8
                                                c'8
                                                c'8
                                                c'8
                                                ]
                                            }
                                            \once \override Rest.staff-position = -7
                                            r8
                                            - \tweak Beam.positions #'(-8 . -8)
                                            [
                                            c'8
                                            c'8
                                            c'8
                                            ]
                                            \times 2/3
                                            {
                                                \once \override Rest.staff-position = -7
                                                r4
                                                c'4
                                                c'4
                                            }
                                            \times 4/6
                                            {
                                                \once \override Rest.staff-position = -7
                                                r16
                                                - \tweak Beam.positions #'(-8 . -8)
                                                [
                                                c'16
                                                \once \override Rest.staff-position = -7
                                                r16
                                                c'16
                                                \once \override Rest.staff-position = -7
                                                r16
                                                c'16
                                                ]
                                            }
                                            \times 4/5
                                            {
                                                \once \override Rest.staff-position = -7
                                                r8
                                                - \tweak Beam.positions #'(-8 . -8)
                                                [
                                                c'8
                                                c'8
                                                c'8
                                                c'8
                                                ]
                                            }
                                            \once \override Rest.staff-position = -7
                                            r8
                                            - \tweak Beam.positions #'(-8 . -8)
                                            [
                                            c'8
                                            c'8
                                            ]
                                            \once \override Rest.staff-position = -7
                                            r16.
                                            - \tweak Beam.positions #'(-8 . -8)
                                            [
                                            c'16.
                                            c'16.
                                            c'16.
                                            ]
                                            \times 4/6
                                            {
                                                \once \override Rest.staff-position = -7
                                                r16
                                                - \tweak Beam.positions #'(-8 . -8)
                                                [
                                                c'16
                                                c'16
                                                \once \override Rest.staff-position = -7
                                                r16
                                                c'16
                                                c'16
                                                ]
                                            }
                                            \once \override Rest.staff-position = -7
                                            r8
                                            - \tweak Beam.positions #'(-8 . -8)
                                            [
                                            c'8
                                            \once \override Rest.staff-position = -7
                                            r8
                                            c'8
                                            ]
                                            \times 4/5
                                            {
                                                \once \override Rest.staff-position = -7
                                                r16
                                                - \tweak Beam.positions #'(-8 . -8)
                                                [
                                                c'16
                                                c'16
                                                c'16
                                                c'16
                                                ]
                                            }
                                            \times 2/3
                                            {
                                                \once \override Rest.staff-position = -7
                                                r4
                                                c'4
                                                c'4
                                            }
                                            \times 4/6
                                            {
                                                \once \override Rest.staff-position = -7
                                                r16
                                                - \tweak Beam.positions #'(-8 . -8)
                                                [
                                                c'16
                                                \once \override Rest.staff-position = -7
                                                r16
                                                c'16
                                                \once \override Rest.staff-position = -7
                                                r16
                                                c'16
                                                ]
                                            }
                                            \once \override Rest.staff-position = -7
                                            r16
                                            - \tweak Beam.positions #'(-8 . -8)
                                            [
                                            c'16
                                            c'16
                                            c'16
                                            ]
                                            \times 2/3
                                            {
                                                \once \override Rest.staff-position = -7
                                                r4
                                                c'4
                                                c'4
                                            }
                                            \times 4/5
                                            {
                                                \once \override Rest.staff-position = -7
                                                r8
                                                - \tweak Beam.positions #'(-8 . -8)
                                                [
                                                c'8
                                                c'8
                                                c'8
                                                c'8
                                                ]
                                            }
                                            \once \override Rest.staff-position = -7
                                            r8
                                            - \tweak Beam.positions #'(-8 . -8)
                                            [
                                            c'8
                                            c'8
                                            c'8
                                            c'8
                                            c'8
                                            ]
                                            \times 2/3
                                            {
                                                c'4
                                                c'4
                                                c'4
                                            }
                                            \times 4/5
                                            {
                                                \once \override Rest.staff-position = -7
                                                r8
                                                - \tweak Beam.positions #'(-8 . -8)
                                                [
                                                c'8
                                                c'8
                                                c'8
                                                c'8
                                                ]
                                            }
                                            \once \override Rest.staff-position = -7
                                            r8.
                                            - \tweak Beam.positions #'(-8 . -8)
                                            [
                                            c'8.
                                            c'8.
                                            c'8.
                                            ]
                                            \once \override Rest.staff-position = -7
                                            r8
                                            - \tweak Beam.positions #'(-8 . -8)
                                            [
                                            c'8
                                            c'8
                                            \once \override Rest.staff-position = -7
                                            r8
                                            c'8
                                            c'8
                                            ]
                                            \times 2/3
                                            {
                                                c'4
                                                c'4
                                                c'4
                                            }
                                            \once \override Rest.staff-position = -7
                                            r4
                                            c'4
                                            c'4
                                            c'4
                                            \times 4/5
                                            {
                                                \once \override Rest.staff-position = -7
                                                r4
                                                c'4
                                                c'4
                                                c'4
                                                c'4
                                            }
                                            \once \override Rest.staff-position = -7
                                            r1.
                                            \times 4/6
                                            {
                                                \once \override Rest.staff-position = -7
                                                r4
                                                c'4
                                                c'4
                                                c'4
                                                c'4
                                                c'4
                                            }
                                            \once \override Rest.staff-position = -7
                                            r4.
                                            c'4.
                                            c'4.
                                            c'4.
                                            \once \override Rest.staff-position = -7
                                            r2
                                            c'2
                                            c'2
                                            \times 4/5
                                            {
                                                \once \override Rest.staff-position = -7
                                                r4
                                                c'4
                                                c'4
                                                c'4
                                                c'4
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
                                    r1..
                                    r2.
                                    r1
                                    r2.
                                    r1.
                                    r1..
                                    r2.
                                    r2
                                    r2.
                                    r2
                                    r1
                                    r1
                                    r1.
                                    r1
                                    r1.
                                    r1.
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
                                    <<
                                        \context Voice = "violin 4 voice upper"
                                        {
                                            \times 4/5
                                            {
                                                \staff-line-count 0
                                                \once \override Accidental.stencil = ##f
                                                \override Staff.Clef.stencil = ##f
                                                \override Voice.NoteHead.color = #(css-color 'darkred)
                                                \override Voice.Dots.color = #(css-color 'darkred)
                                                \override Voice.Stem.color = #(css-color 'darkred)
                                                \override Voice.Beam.color = #(css-color 'darkred)
                                                \override Voice.Rest.color = #(css-color 'darkred)
                                                \override Voice.Tie.color = #(css-color 'darkred)
                                                \override Voice.TupletBracket.color = #(css-color 'darkred)
                                                \override Voice.TupletNumber.color = #(css-color 'darkred)
                                                \clef "percussion"
                                                \voiceOne
                                                \tweak style #'cross
                                                c'32
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                  %! +SCORE
                                                ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-7.5 \raise #3 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 16 } #1.5 } \fontsize #4 { "= 83" } } }
                                                - \tweak Beam.positions #'(11 . 11)
                                                [
                                                - \tweak color #(css-color 'darkred)
                                                - \tweak font-name "Bodoni72 Book" 
                                                - \tweak font-size 1
                                                - \tweak padding #15
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { \upright { "CLB OB" } \hspace #0.5 }
                                                - \tweak bound-details.right.padding -3
                                                \startTextSpan
                                                \once \override Rest.staff-position = 7
                                                r16.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'32
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r16.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'32
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r16.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'32
                                                - \tweak color #(css-color 'darkred)
                                                _ \accent
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r16.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'32
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r16.
                                                ]
                                            }
                                            \times 2/3
                                            {
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'16
                                                - \tweak color #(css-color 'darkred)
                                                _ \accent
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                - \tweak Beam.positions #'(11 . 11)
                                                [
                                                \once \override Rest.staff-position = 7
                                                r8.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'16
                                                - \tweak color #(css-color 'darkred)
                                                _ \accent
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r8.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'16
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r8.
                                                ]
                                            }
                                            \once \override Accidental.stencil = ##f
                                            \tweak style #'cross
                                            c'32
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            - \tweak Beam.positions #'(11 . 11)
                                            [
                                            \once \override Rest.staff-position = 7
                                            r16.
                                            \once \override Accidental.stencil = ##f
                                            \tweak style #'cross
                                            c'32
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            \once \override Rest.staff-position = 7
                                            r16.
                                            \once \override Accidental.stencil = ##f
                                            \tweak style #'cross
                                            c'32
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            \once \override Rest.staff-position = 7
                                            r16.
                                            \once \override Accidental.stencil = ##f
                                            \tweak style #'cross
                                            c'32
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            \once \override Rest.staff-position = 7
                                            r16.
                                            \once \override Accidental.stencil = ##f
                                            \tweak style #'cross
                                            c'32
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            \once \override Rest.staff-position = 7
                                            r16.
                                            \once \override Accidental.stencil = ##f
                                            \tweak style #'cross
                                            c'32
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            \once \override Rest.staff-position = 7
                                            r16.
                                            ]
                                            \once \override Accidental.stencil = ##f
                                            \tweak style #'cross
                                            c'32
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            - \tweak Beam.positions #'(11 . 11)
                                            [
                                            \once \override Rest.staff-position = 7
                                            r16.
                                            \once \override Accidental.stencil = ##f
                                            \tweak style #'cross
                                            c'32
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            \once \override Rest.staff-position = 7
                                            r16.
                                            \once \override Accidental.stencil = ##f
                                            \tweak style #'cross
                                            c'32
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            \once \override Rest.staff-position = 7
                                            r16.
                                            \once \override Accidental.stencil = ##f
                                            \tweak style #'cross
                                            c'32
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            \once \override Rest.staff-position = 7
                                            r16.
                                            ]
                                            \times 2/3
                                            {
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'32
                                                - \tweak color #(css-color 'darkred)
                                                _ \accent
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                - \tweak Beam.positions #'(11 . 11)
                                                [
                                                \once \override Rest.staff-position = 7
                                                r16.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'32
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r16.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'32
                                                - \tweak color #(css-color 'darkred)
                                                _ \accent
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r16.
                                                ]
                                            }
                                            \times 4/5
                                            {
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'64
                                                - \tweak color #(css-color 'darkred)
                                                _ \accent
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                - \tweak Beam.positions #'(11 . 11)
                                                [
                                                \once \override Rest.staff-position = 7
                                                r32.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'64
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r32.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'64
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r32.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'64
                                                - \tweak color #(css-color 'darkred)
                                                _ \accent
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r32.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'64
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r32.
                                                ]
                                            }
                                            \once \override Rest.staff-position = 7
                                            r16
                                            - \tweak Beam.positions #'(11 . 11)
                                            [
                                            \once \override Accidental.stencil = ##f
                                            \tweak style #'cross
                                            c'64
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            \once \override Rest.staff-position = 7
                                            r32.
                                            \once \override Rest.staff-position = 7
                                            r16
                                            \once \override Accidental.stencil = ##f
                                            \tweak style #'cross
                                            c'64
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            \once \override Rest.staff-position = 7
                                            r32.
                                            \once \override Rest.staff-position = 7
                                            r16
                                            \once \override Accidental.stencil = ##f
                                            \tweak style #'cross
                                            c'64
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            \once \override Rest.staff-position = 7
                                            r32.
                                            ]
                                            \once \override Accidental.stencil = ##f
                                            \tweak style #'cross
                                            c'32
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            - \tweak Beam.positions #'(11 . 11)
                                            [
                                            \once \override Rest.staff-position = 7
                                            r16.
                                            \once \override Accidental.stencil = ##f
                                            \tweak style #'cross
                                            c'32
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            \once \override Rest.staff-position = 7
                                            r16.
                                            \once \override Accidental.stencil = ##f
                                            \tweak style #'cross
                                            c'32
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            \once \override Rest.staff-position = 7
                                            r16.
                                            ]
                                            \times 4/5
                                            {
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'64
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                - \tweak Beam.positions #'(11 . 11)
                                                [
                                                \once \override Rest.staff-position = 7
                                                r32.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'64
                                                - \tweak color #(css-color 'darkred)
                                                _ \accent
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r32.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'64
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r32.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'64
                                                - \tweak color #(css-color 'darkred)
                                                _ \accent
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r32.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'64
                                                - \tweak color #(css-color 'darkred)
                                                _ \accent
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r32.
                                                ]
                                            }
                                            \once \override Accidental.stencil = ##f
                                            \tweak style #'cross
                                            c'32
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            - \tweak Beam.positions #'(11 . 11)
                                            [
                                            \once \override Rest.staff-position = 7
                                            r16.
                                            \once \override Accidental.stencil = ##f
                                            \tweak style #'cross
                                            c'32
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            \once \override Rest.staff-position = 7
                                            r16.
                                            \once \override Accidental.stencil = ##f
                                            \tweak style #'cross
                                            c'32
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            \once \override Rest.staff-position = 7
                                            r16.
                                            \once \override Accidental.stencil = ##f
                                            \tweak style #'cross
                                            c'32
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            \once \override Rest.staff-position = 7
                                            r16.
                                            ]
                                            \times 4/6
                                            {
                                                \once \override Rest.staff-position = 7
                                                r16
                                                - \tweak Beam.positions #'(11 . 11)
                                                [
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'64
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r16..
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'64
                                                - \tweak color #(css-color 'darkred)
                                                _ \accent
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r16..
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'64
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r32.
                                                ]
                                            }
                                            \times 2/3
                                            {
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'16
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                - \tweak Beam.positions #'(11 . 11)
                                                [
                                                \once \override Rest.staff-position = 7
                                                r8.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'16
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r8.
                                                \once \override Accidental.stencil = ##f
                                                \tweak style #'cross
                                                c'16
                                                - \tweak color #(css-color 'darkred)
                                                _ \staccato
                                                \once \override Rest.staff-position = 7
                                                r8.
                                                ]
                                            }
                                            \once \override Accidental.stencil = ##f
                                            \tweak style #'cross
                                            c'32
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            - \tweak Beam.positions #'(11 . 11)
                                            [
                                            \once \override Rest.staff-position = 7
                                            r16.
                                            \once \override Accidental.stencil = ##f
                                            \tweak style #'cross
                                            c'32
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            \once \override Rest.staff-position = 7
                                            r16.
                                            \once \override Accidental.stencil = ##f
                                            \tweak style #'cross
                                            c'32
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            \once \override Rest.staff-position = 7
                                            r16.
                                            \once \override Accidental.stencil = ##f
                                            \tweak style #'cross
                                            c'32
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            \once \override Rest.staff-position = 7
                                            r16.
                                            ]
                                            \once \override Rest.staff-position = 7
                                            r4
                                            \stopTextSpan
                                            \revert Voice.NoteHead.color
                                            \revert Voice.Dots.color
                                            \revert Voice.Stem.color
                                            \revert Voice.Beam.color
                                            \revert Voice.Rest.color
                                            \revert Voice.Tie.color
                                            \revert Voice.TupletBracket.color
                                            \revert Voice.TupletNumber.color
                                        }
                                        \context Voice = "violin 2 lower voice"
                                        {
                                            \times 2/3
                                            {
                                                \once \override Rest.staff-position = -7
                                                \override Voice.NoteHead.color = #(css-color 'darkred)
                                                \override Voice.Dots.color = #(css-color 'darkred)
                                                \override Voice.Stem.color = #(css-color 'darkred)
                                                \override Voice.Beam.color = #(css-color 'darkred)
                                                \override Voice.Rest.color = #(css-color 'darkred)
                                                \override Voice.Tie.color = #(css-color 'darkred)
                                                \override Voice.TupletBracket.color = #(css-color 'darkred)
                                                \override Voice.TupletNumber.color = #(css-color 'darkred)
                                                \textSpannerDown
                                                r4
                                                - \tweak padding 13.5
                                                _ \markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #1 { "Interruptive polyphony: Lower voice stops when interrupted by upper voice, and does not resume until next notated attack." }
                                                - \tweak color #(css-color 'darkred)
                                                - \tweak font-name "Bodoni72 Book" 
                                                - \tweak font-size 1
                                                - \tweak padding #12
                                                - \abjad-dashed-line-with-up-hook
                                                - \tweak bound-details.left.text \markup \concat { \upright { "CLT DP" } \hspace #0.5 }
                                                - \tweak bound-details.right.padding -3
                                                \startTextSpan
                                                \once \override Accidental.stencil = ##f
                                                c'4
                                                \once \override Accidental.stencil = ##f
                                                c'4
                                            }
                                            \times 4/6
                                            {
                                                \once \override Rest.staff-position = -7
                                                r8
                                                - \tweak Beam.positions #'(-8 . -8)
                                                [
                                                \once \override Accidental.stencil = ##f
                                                c'8
                                                \once \override Rest.staff-position = -7
                                                r8
                                                \once \override Accidental.stencil = ##f
                                                c'8
                                                \once \override Rest.staff-position = -7
                                                r8
                                                \once \override Accidental.stencil = ##f
                                                c'8
                                                ]
                                            }
                                            \once \override Rest.staff-position = -7
                                            r8.
                                            - \tweak Beam.positions #'(-8 . -8)
                                            [
                                            \once \override Accidental.stencil = ##f
                                            c'8.
                                            \once \override Rest.staff-position = -7
                                            r8.
                                            \once \override Accidental.stencil = ##f
                                            c'8.
                                            ]
                                            \times 2/3
                                            {
                                                \once \override Rest.staff-position = -7
                                                r4
                                                \once \override Accidental.stencil = ##f
                                                c'4
                                                \once \override Accidental.stencil = ##f
                                                c'4
                                            }
                                            \times 4/5
                                            {
                                                \once \override Rest.staff-position = -7
                                                r16
                                                - \tweak Beam.positions #'(-8 . -8)
                                                [
                                                \once \override Accidental.stencil = ##f
                                                c'16
                                                \once \override Accidental.stencil = ##f
                                                c'16
                                                \once \override Accidental.stencil = ##f
                                                c'16
                                                \once \override Accidental.stencil = ##f
                                                c'16
                                                ]
                                            }
                                            \times 4/6
                                            {
                                                \once \override Rest.staff-position = -7
                                                r16
                                                - \tweak Beam.positions #'(-8 . -8)
                                                [
                                                \once \override Accidental.stencil = ##f
                                                c'16
                                                \once \override Accidental.stencil = ##f
                                                c'16
                                                \once \override Accidental.stencil = ##f
                                                c'16
                                                \once \override Accidental.stencil = ##f
                                                c'16
                                                \once \override Accidental.stencil = ##f
                                                c'16
                                                ]
                                            }
                                            \once \override Accidental.stencil = ##f
                                            c'8
                                            - \tweak Beam.positions #'(-8 . -8)
                                            [
                                            \once \override Accidental.stencil = ##f
                                            c'8
                                            \once \override Accidental.stencil = ##f
                                            c'8
                                            ]
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 6/5
                                            {
                                                \once \override Rest.staff-position = -7
                                                r16
                                                - \tweak Beam.positions #'(-8 . -8)
                                                [
                                                \once \override Accidental.stencil = ##f
                                                c'16
                                                \once \override Accidental.stencil = ##f
                                                c'16
                                                \once \override Accidental.stencil = ##f
                                                c'16
                                                \once \override Accidental.stencil = ##f
                                                c'16
                                                ]
                                            }
                                            \once \override Rest.staff-position = -7
                                            r16
                                            - \tweak Beam.positions #'(-8 . -8)
                                            [
                                            \once \override Accidental.stencil = ##f
                                            c'16
                                            \once \override Accidental.stencil = ##f
                                            c'16
                                            \once \override Accidental.stencil = ##f
                                            c'16
                                            ]
                                            \times 4/6
                                            {
                                                \once \override Rest.staff-position = -7
                                                r8
                                                - \tweak Beam.positions #'(-8 . -8)
                                                [
                                                \once \override Accidental.stencil = ##f
                                                c'8
                                                \once \override Accidental.stencil = ##f
                                                c'8
                                                \once \override Rest.staff-position = -7
                                                r8
                                                \once \override Accidental.stencil = ##f
                                                c'8
                                                \once \override Accidental.stencil = ##f
                                                c'8
                                                ]
                                            }
                                            \times 2/3
                                            {
                                                \once \override Accidental.stencil = ##f
                                                c'8
                                                - \tweak Beam.positions #'(-8 . -8)
                                                [
                                                \once \override Accidental.stencil = ##f
                                                c'8
                                                \once \override Accidental.stencil = ##f
                                                c'8
                                                ]
                                            }
                                            \once \override Rest.staff-position = -7
                                            r8
                                            - \tweak Beam.positions #'(-8 . -8)
                                            [
                                            \once \override Accidental.stencil = ##f
                                            c'8
                                            \once \override Accidental.stencil = ##f
                                            c'8
                                            \once \override Accidental.stencil = ##f
                                            c'8
                                            ]
                                            \times 4/5
                                            {
                                                \once \override Rest.staff-position = -7
                                                r8
                                                - \tweak Beam.positions #'(-8 . -8)
                                                [
                                                \once \override Accidental.stencil = ##f
                                                c'8
                                                \once \override Accidental.stencil = ##f
                                                c'8
                                                \once \override Accidental.stencil = ##f
                                                c'8
                                                \once \override Accidental.stencil = ##f
                                                c'8
                                                ]
                                            }
                                            \times 4/5
                                            {
                                                \once \override Accidental.stencil = ##f
                                                c'16
                                                - \tweak Beam.positions #'(-8 . -8)
                                                [
                                                \once \override Accidental.stencil = ##f
                                                c'16
                                                \once \override Accidental.stencil = ##f
                                                c'16
                                                \once \override Accidental.stencil = ##f
                                                c'16
                                                \once \override Accidental.stencil = ##f
                                                c'16
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
                                            }
                                        }
                                    >>
                                    \oneVoice
                                    \override Voice.NoteHead.color = #(css-color 'darkred)
                                    \override Voice.Dots.color = #(css-color 'darkred)
                                    \override Voice.Stem.color = #(css-color 'darkred)
                                    \override Voice.Beam.color = #(css-color 'darkred)
                                    \override Voice.Rest.color = #(css-color 'darkred)
                                    \override Voice.Tie.color = #(css-color 'darkred)
                                    \override Voice.TupletBracket.color = #(css-color 'darkred)
                                    \override Voice.TupletNumber.color = #(css-color 'darkred)
                                    c'1..
                                    - \tweak color #(css-color 'darkred)
                                    - \tweak padding 1
                                    ^ \talon-to-punta
                                    - \tweak color #(css-color 'darkred)
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #4.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "CLT DP" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -3
                                    \startTextSpan
                                    c'2.
                                    - \tweak color #(css-color 'darkred)
                                    - \tweak padding 1
                                    ^ \punta-to-talon
                                    ~
                                    c'2
                                    c'2.
                                    - \tweak color #(css-color 'darkred)
                                    - \tweak padding 1
                                    ^ \talon-to-punta
                                    ~
                                    c'2
                                    c'1
                                    - \tweak color #(css-color 'darkred)
                                    - \tweak padding 1
                                    ^ \punta-to-talon
                                    c'1
                                    - \tweak color #(css-color 'darkred)
                                    - \tweak padding 1
                                    ^ \talon-to-punta
                                    \stopTextSpan
                                    \revert Voice.NoteHead.color
                                    \revert Voice.Dots.color
                                    \revert Voice.Stem.color
                                    \revert Voice.Beam.color
                                    \revert Voice.Rest.color
                                    \revert Voice.Tie.color
                                    \revert Voice.TupletBracket.color
                                    \revert Voice.TupletNumber.color
                                    \override Voice.NoteHead.color = #(css-color 'darkred)
                                    \override Voice.Dots.color = #(css-color 'darkred)
                                    \override Voice.Stem.color = #(css-color 'darkred)
                                    \override Voice.Beam.color = #(css-color 'darkred)
                                    \override Voice.Rest.color = #(css-color 'darkred)
                                    \override Voice.Tie.color = #(css-color 'darkred)
                                    \override Voice.TupletBracket.color = #(css-color 'darkred)
                                    \override Voice.TupletNumber.color = #(css-color 'darkred)
                                    \tweak style #'cross
                                    c'8
                                    - \tweak color #(css-color 'darkred)
                                    - \staccato
                                    [
                                    - \tweak color #(css-color 'darkred)
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #3.25
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "CLB OB" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding 1.5
                                    \startTextSpan
                                    \tweak style #'cross
                                    c'8
                                    - \tweak color #(css-color 'darkred)
                                    - \staccato
                                    ]
                                    c'4
                                    - \tweak color #(css-color 'darkred)
                                    - \tweak padding 1
                                    ^ \talon-to-punta
                                    \stopTextSpan
                                    - \tweak color #(css-color 'darkred)
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #4.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "CLT DP" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding 1.5
                                    \startTextSpan
                                    ~
                                    c'8
                                    [
                                    \tweak style #'cross
                                    c'16
                                    - \tweak color #(css-color 'darkred)
                                    - \accent
                                    - \tweak color #(css-color 'darkred)
                                    - \staccato
                                    \stopTextSpan
                                    - \tweak color #(css-color 'darkred)
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #8.75
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "CLB OB" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding 1.5
                                    \startTextSpan
                                    \tweak style #'cross
                                    c'16
                                    - \tweak color #(css-color 'darkred)
                                    - \staccato
                                    ]
                                    c'4
                                    - \tweak color #(css-color 'darkred)
                                    - \accent
                                    - \tweak color #(css-color 'darkred)
                                    - \tweak padding 1
                                    ^ \punta-to-talon
                                    \stopTextSpan
                                    - \tweak color #(css-color 'darkred)
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #6.75
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "CLT DP" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding 1.5
                                    \startTextSpan
                                    ~
                                    c'4.
                                    \times 2/3
                                    {
                                        \tweak style #'cross
                                        c'16
                                        - \tweak color #(css-color 'darkred)
                                        - \accent
                                        - \tweak color #(css-color 'darkred)
                                        - \staccato
                                        \stopTextSpan
                                        [
                                        - \tweak color #(css-color 'darkred)
                                        - \tweak font-name "Bodoni72 Book" 
                                        - \tweak font-size 1
                                        - \tweak padding #3.25
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "CLB OB" } \hspace #0.5 }
                                        - \tweak bound-details.right.padding 1.5
                                        \startTextSpan
                                        \tweak style #'cross
                                        c'16
                                        - \tweak color #(css-color 'darkred)
                                        - \staccato
                                        \tweak style #'cross
                                        c'16
                                        - \tweak color #(css-color 'darkred)
                                        - \staccato
                                        ]
                                    }
                                    \times 2/3
                                    {
                                        \tweak style #'cross
                                        c'8
                                        - \tweak color #(css-color 'darkred)
                                        - \accent
                                        - \tweak color #(css-color 'darkred)
                                        - \staccato
                                        [
                                        \tweak style #'cross
                                        c'8
                                        - \tweak color #(css-color 'darkred)
                                        - \staccato
                                        \tweak style #'cross
                                        c'8
                                        - \tweak color #(css-color 'darkred)
                                        - \staccato
                                    }
                                    \tweak style #'cross
                                    c'16
                                    - \tweak color #(css-color 'darkred)
                                    - \accent
                                    - \tweak color #(css-color 'darkred)
                                    - \staccato
                                    \tweak style #'cross
                                    c'16
                                    - \tweak color #(css-color 'darkred)
                                    - \staccato
                                    c'8
                                    - \tweak color #(css-color 'darkred)
                                    - \tweak padding 1
                                    ^ \talon-to-punta
                                    \stopTextSpan
                                    ]
                                    - \tweak color #(css-color 'darkred)
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #4.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "CLT DP" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding 1.5
                                    \startTextSpan
                                    ~
                                    c'8.
                                    [
                                    c'16
                                    - \tweak color #(css-color 'darkred)
                                    - \tweak padding 1
                                    ^ \punta-to-talon
                                    ~
                                    c'8
                                    \tweak style #'cross
                                    c'16
                                    - \tweak color #(css-color 'darkred)
                                    - \staccato
                                    \stopTextSpan
                                    - \tweak color #(css-color 'darkred)
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #3.25
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "CLB OB" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding 1.5
                                    \startTextSpan
                                    \tweak style #'cross
                                    c'16
                                    - \tweak color #(css-color 'darkred)
                                    - \staccato
                                    ]
                                    \tweak style #'cross
                                    c'8
                                    - \tweak color #(css-color 'darkred)
                                    - \accent
                                    - \tweak color #(css-color 'darkred)
                                    - \staccato
                                    [
                                    \tweak style #'cross
                                    c'8
                                    - \tweak color #(css-color 'darkred)
                                    - \staccato
                                    ]
                                    c'4
                                    - \tweak color #(css-color 'darkred)
                                    - \accent
                                    - \tweak color #(css-color 'darkred)
                                    - \tweak padding 1
                                    ^ \talon-to-punta
                                    \stopTextSpan
                                    - \tweak color #(css-color 'darkred)
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #6.75
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "CLT DP" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding 1.5
                                    \startTextSpan
                                    ~
                                    c'8
                                    c'4.
                                    - \tweak color #(css-color 'darkred)
                                    - \accent
                                    - \tweak color #(css-color 'darkred)
                                    - \tweak padding 1
                                    ^ \punta-to-talon
                                    ~
                                    c'4
                                    \times 2/3
                                    {
                                        \tweak style #'cross
                                        c'16
                                        - \tweak color #(css-color 'darkred)
                                        - \staccato
                                        \stopTextSpan
                                        [
                                        - \tweak color #(css-color 'darkred)
                                        - \tweak font-name "Bodoni72 Book" 
                                        - \tweak font-size 1
                                        - \tweak padding #3.25
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "CLB OB" } \hspace #0.5 }
                                        - \tweak bound-details.right.padding 1.5
                                        \startTextSpan
                                        \tweak style #'cross
                                        c'16
                                        - \tweak color #(css-color 'darkred)
                                        - \staccato
                                        \set stemLeftBeamCount = 2
                                        \set stemRightBeamCount = 1
                                        \tweak style #'cross
                                        c'16
                                        - \tweak color #(css-color 'darkred)
                                        - \accent
                                        - \tweak color #(css-color 'darkred)
                                        - \staccato
                                    }
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 2
                                    \tweak style #'cross
                                    c'16
                                    - \tweak color #(css-color 'darkred)
                                    - \staccato
                                    \tweak style #'cross
                                    c'16
                                    - \tweak color #(css-color 'darkred)
                                    - \staccato
                                    ]
                                    \tweak style #'cross
                                    c'8
                                    - \tweak color #(css-color 'darkred)
                                    - \accent
                                    - \tweak color #(css-color 'darkred)
                                    - \staccato
                                    [
                                    \tweak style #'cross
                                    c'8
                                    - \tweak color #(css-color 'darkred)
                                    - \staccato
                                    ]
                                    c'4
                                    - \tweak color #(css-color 'darkred)
                                    - \tweak padding 1
                                    ^ \talon-to-punta
                                    \stopTextSpan
                                    - \tweak color #(css-color 'darkred)
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #4.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "CLT DP" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding 1.5
                                    \startTextSpan
                                    ~
                                    c'4.
                                    \times 2/3
                                    {
                                        \tweak style #'cross
                                        c'16
                                        - \tweak color #(css-color 'darkred)
                                        - \staccato
                                        \stopTextSpan
                                        [
                                        - \tweak color #(css-color 'darkred)
                                        - \tweak font-name "Bodoni72 Book" 
                                        - \tweak font-size 1
                                        - \tweak padding #8.75
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "CLB OB" } \hspace #0.5 }
                                        - \tweak bound-details.right.padding 1.5
                                        \startTextSpan
                                        \tweak style #'cross
                                        c'16
                                        - \tweak color #(css-color 'darkred)
                                        - \staccato
                                        \tweak style #'cross
                                        c'16
                                        - \tweak color #(css-color 'darkred)
                                        - \staccato
                                        ]
                                    }
                                    c'4.
                                    - \tweak color #(css-color 'darkred)
                                    - \accent
                                    - \tweak color #(css-color 'darkred)
                                    - \tweak padding 1
                                    ^ \punta-to-talon
                                    \stopTextSpan
                                    - \tweak color #(css-color 'darkred)
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #6.75
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "CLT DP" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding 1.5
                                    \startTextSpan
                                    \tweak style #'cross
                                    c'16
                                    - \tweak color #(css-color 'darkred)
                                    - \staccato
                                    \stopTextSpan
                                    [
                                    - \tweak color #(css-color 'darkred)
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #3.25
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "CLB OB" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding 1.5
                                    \startTextSpan
                                    \tweak style #'cross
                                    c'16
                                    - \tweak color #(css-color 'darkred)
                                    - \accent
                                    - \tweak color #(css-color 'darkred)
                                    - \staccato
                                    ]
                                    \tweak style #'cross
                                    c'8
                                    - \tweak color #(css-color 'darkred)
                                    - \accent
                                    - \tweak color #(css-color 'darkred)
                                    - \staccato
                                    [
                                    \tweak style #'cross
                                    c'8
                                    - \tweak color #(css-color 'darkred)
                                    - \staccato
                                    c'8.
                                    - \tweak color #(css-color 'darkred)
                                    - \tweak padding 1
                                    ^ \talon-to-punta
                                    \stopTextSpan
                                    - \tweak color #(css-color 'darkred)
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #4.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "CLT DP" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding 1.5
                                    \startTextSpan
                                    \times 2/3
                                    {
                                        \tweak style #'cross
                                        c'16
                                        - \tweak color #(css-color 'darkred)
                                        - \accent
                                        - \tweak color #(css-color 'darkred)
                                        - \staccato
                                        \stopTextSpan
                                        - \tweak color #(css-color 'darkred)
                                        - \tweak font-name "Bodoni72 Book" 
                                        - \tweak font-size 1
                                        - \tweak padding #3.25
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "CLB OB" } \hspace #0.5 }
                                        - \tweak bound-details.right.padding 1.5
                                        \startTextSpan
                                        \tweak style #'cross
                                        c'16
                                        - \tweak color #(css-color 'darkred)
                                        - \staccato
                                        \tweak style #'cross
                                        c'16
                                        - \tweak color #(css-color 'darkred)
                                        - \staccato
                                        ]
                                    }
                                    \tweak style #'cross
                                    c'16
                                    - \tweak color #(css-color 'darkred)
                                    - \accent
                                    - \tweak color #(css-color 'darkred)
                                    - \staccato
                                    [
                                    \tweak style #'cross
                                    c'16
                                    - \tweak color #(css-color 'darkred)
                                    - \staccato
                                    c'16
                                    - \tweak color #(css-color 'darkred)
                                    - \tweak padding 1
                                    ^ \punta-to-talon
                                    \stopTextSpan
                                    ]
                                    - \tweak color #(css-color 'darkred)
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #6.75
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "CLT DP" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding 1.5
                                    \startTextSpan
                                    ~
                                    \afterGrace
                                    c'4
                                    {
                                        \once \override Stem.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.transparent = ##t
                                        c'16
                                        \stopTextSpan
                                    }
                                    \revert Voice.NoteHead.color
                                    \revert Voice.Dots.color
                                    \revert Voice.Stem.color
                                    \revert Voice.Beam.color
                                    \revert Voice.Rest.color
                                    \revert Voice.Tie.color
                                    \revert Voice.TupletBracket.color
                                    \revert Voice.TupletNumber.color
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
                                    r1..
                                    r2.
                                    r1
                                    r2.
                                    r1.
                                    r1..
                                    r2.
                                    r2
                                    r2.
                                    r2
                                    r1
                                    r1
                                    r1.
                                    r1
                                    r1.
                                    r1.
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
                                    \staff-line-count 0
                                    \override Staff.Clef.stencil = ##f
                                    \override Voice.NoteHead.color = #(css-color 'darkred)
                                    \override Voice.Dots.color = #(css-color 'darkred)
                                    \override Voice.Stem.color = #(css-color 'darkred)
                                    \override Voice.Beam.color = #(css-color 'darkred)
                                    \override Voice.Rest.color = #(css-color 'darkred)
                                    \override Voice.Tie.color = #(css-color 'darkred)
                                    \override Voice.TupletBracket.color = #(css-color 'darkred)
                                    \override Voice.TupletNumber.color = #(css-color 'darkred)
                                    \clef "percussion"
                                    c'1..
                                    - \tweak color #(css-color 'darkred)
                                    - \tweak padding 1
                                    ^ \talon-to-punta
                                      %! +SCORE
                                    ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-7.5 \raise #4.5 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 16 } #1.5 } \fontsize #4 { "= 83" } } }
                                    - \tweak color #(css-color 'darkred)
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #4.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "CLT DP" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -3
                                    \startTextSpan
                                    c'2.
                                    - \tweak color #(css-color 'darkred)
                                    - \tweak padding 1
                                    ^ \punta-to-talon
                                    c'1
                                    - \tweak color #(css-color 'darkred)
                                    - \tweak padding 1
                                    ^ \talon-to-punta
                                    c'2.
                                    - \tweak color #(css-color 'darkred)
                                    - \tweak padding 1
                                    ^ \punta-to-talon
                                    c'1.
                                    - \tweak color #(css-color 'darkred)
                                    - \tweak padding 1
                                    ^ \talon-to-punta
                                    c'1..
                                    - \tweak color #(css-color 'darkred)
                                    - \tweak padding 1
                                    ^ \punta-to-talon
                                    c'2.
                                    - \tweak color #(css-color 'darkred)
                                    - \tweak padding 1
                                    ^ \talon-to-punta
                                    ~
                                    c'2
                                    c'2.
                                    - \tweak color #(css-color 'darkred)
                                    - \tweak padding 1
                                    ^ \punta-to-talon
                                    ~
                                    c'2
                                    c'1
                                    - \tweak color #(css-color 'darkred)
                                    - \tweak padding 1
                                    ^ \talon-to-punta
                                    c'1
                                    - \tweak color #(css-color 'darkred)
                                    - \tweak padding 1
                                    ^ \punta-to-talon
                                    c'1.
                                    - \tweak color #(css-color 'darkred)
                                    - \tweak padding 1
                                    ^ \talon-to-punta
                                    c'1
                                    - \tweak color #(css-color 'darkred)
                                    - \tweak padding 1
                                    ^ \punta-to-talon
                                    c'1.
                                    - \tweak color #(css-color 'darkred)
                                    - \tweak padding 1
                                    ^ \talon-to-punta
                                    c'1.
                                    - \tweak color #(css-color 'darkred)
                                    - \tweak padding 1
                                    ^ \punta-to-talon
                                    c'1
                                    - \tweak color #(css-color 'darkred)
                                    - \tweak padding 1
                                    ^ \talon-to-punta
                                    \stopTextSpan
                                    \revert Voice.NoteHead.color
                                    \revert Voice.Dots.color
                                    \revert Voice.Stem.color
                                    \revert Voice.Beam.color
                                    \revert Voice.Rest.color
                                    \revert Voice.Tie.color
                                    \revert Voice.TupletBracket.color
                                    \revert Voice.TupletNumber.color
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
                                    r1..
                                    r2.
                                    r1
                                    r2.
                                    r1.
                                    r1..
                                    r2.
                                    r2
                                    r2.
                                    r2
                                    r1
                                    r1
                                    r1.
                                    r1
                                    r1.
                                    r1.
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
                                    \override Staff.Clef.stencil = ##f
                                    r1..
                                      %! +SCORE
                                    ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-7.5 \raise #3 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 16 } #1.5 } \fontsize #4 { "= 83" } } }
                                    r2.
                                    r1
                                    r2.
                                    r1.
                                    r1..
                                    r2.
                                    r2
                                    r2.
                                    r2
                                    r1
                                    r1
                                    r1.
                                    r1
                                    r1.
                                    r1.
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
