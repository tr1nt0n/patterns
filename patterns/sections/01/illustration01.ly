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
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (11 33 27 35)))
            \time 10/16
            s1 * 5/8
              %! +SCORE
            \break
              %! +SCORE
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (11 33 27 33)))
            \time 6/4
            s1 * 3/2
              %! +SCORE
            \break
              %! +SCORE
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (11 30 25 35)))
            \time 12/8
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
                                    r8.
                                    r8
                                    r8.
                                    r8
                                    r1.
                                    r1.
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
                                        \context Voice = "violin 2 voice temp"
                                        {
                                            \voiceOne
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                c'!
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                cs'!
                                                \tweak style #'harmonic
                                                dqs'!
                                            >32
                                            - \tweak padding #1
                                            ^ \punta-to-talon
                                              %! +SCORE
                                            ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-10 \raise #3 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 16 } #1.5 } \fontsize #4 { "= 120" } } }
                                            [
                                            - \tweak bound-details.left.Y #7.5
                                            - \tweak bound-details.right.Y #11
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #0
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "MSP" } \hspace #0.5 }
                                            \startTextSpan
                                            ~
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 11/12
                                            {
                                                <
                                                    \tweak Accidental.font-size #-3.5
                                                    \tweak Accidental.parenthesized ##t
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-3.5
                                                    c'
                                                    \tweak Accidental.font-size #-3.5
                                                    \tweak Accidental.parenthesized ##t
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-3.5
                                                    \tweak style #'harmonic
                                                    cs'
                                                    \tweak style #'harmonic
                                                    dqs'
                                                >8
                                                <
                                                    \tweak Accidental.font-size #-3.5
                                                    \tweak Accidental.parenthesized ##t
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-3.5
                                                    \tweak style #'harmonic
                                                    aqs!
                                                    \tweak style #'harmonic
                                                    dqs'!
                                                >8
                                                - \tweak padding #1
                                                ^ \talon-to-punta
                                                <
                                                    \tweak Accidental.font-size #-3.5
                                                    \tweak Accidental.parenthesized ##t
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-3.5
                                                    \tweak style #'harmonic
                                                    c'!
                                                    \tweak style #'harmonic
                                                    cs'!
                                                >8
                                                - \tweak padding #1
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
                                                c'
                                                \tweak style #'harmonic
                                                cs'
                                            >8
                                            [
                                            ~
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                c'
                                                \tweak style #'harmonic
                                                cs'
                                            >32
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                a!
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                bqs!
                                                \tweak style #'harmonic
                                                dqs'!
                                            >32
                                            - \tweak padding #1
                                            ^ \talon-to-punta
                                            ~
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                a
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                bqs
                                                \tweak style #'harmonic
                                                dqs'
                                            >16
                                            ]
                                            ~
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 6/5
                                            {
                                                <
                                                    \tweak Accidental.font-size #-3.5
                                                    \tweak Accidental.parenthesized ##t
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-3.5
                                                    a
                                                    \tweak Accidental.font-size #-3.5
                                                    \tweak Accidental.parenthesized ##t
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-3.5
                                                    \tweak style #'harmonic
                                                    bqs
                                                    \tweak style #'harmonic
                                                    dqs'
                                                >32
                                                [
                                                - \tweak padding #14
                                                - \abjad-solid-line-with-arrow
                                                - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " accel. ( to " } \fontsize #-0.5 { \note { 8 } #1.5 } \fontsize #3 { "= 100 )" } } } \hspace #0.5 }
                                                - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #1.5 } \fontsize #4 { "= 100" } } }
                                                \startTextSpanThree
                                                <
                                                    \tweak Accidental.font-size #-3.5
                                                    \tweak Accidental.parenthesized ##t
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-3.5
                                                    eqf'!
                                                    \tweak Accidental.font-size #-3.5
                                                    \tweak Accidental.parenthesized ##t
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-3.5
                                                    \tweak style #'harmonic
                                                    gqf'!
                                                    \tweak style #'harmonic
                                                    af'!
                                                >32
                                                - \tweak padding #1
                                                ^ \punta-to-talon
                                                <
                                                    \tweak Accidental.font-size #-3.5
                                                    \tweak Accidental.parenthesized ##t
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-3.5
                                                    \tweak style #'harmonic
                                                    ef'!
                                                    \tweak style #'harmonic
                                                    af'!
                                                >32
                                                - \tweak padding #1
                                                ^ \talon-to-punta
                                                <
                                                    \tweak Accidental.font-size #-3.5
                                                    \tweak Accidental.parenthesized ##t
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-3.5
                                                    \tweak style #'harmonic
                                                    eqf'!
                                                    \tweak style #'harmonic
                                                    af'!
                                                >32
                                                - \tweak padding #1
                                                ^ \punta-to-talon
                                                \set stemLeftBeamCount = 3
                                                \set stemRightBeamCount = 1
                                                <
                                                    \tweak Accidental.font-size #-3.5
                                                    \tweak Accidental.parenthesized ##t
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-3.5
                                                    \tweak style #'harmonic
                                                    fqs'!
                                                    \tweak style #'harmonic
                                                    gqs'!
                                                >32
                                                - \tweak padding #1
                                                ^ \talon-to-punta
                                                ~
                                            }
                                            \set stemLeftBeamCount = 2
                                            \set stemRightBeamCount = 0
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                fqs'
                                                \tweak style #'harmonic
                                                gqs'
                                            >16
                                            ]
                                            ~
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                fqs'
                                                \tweak style #'harmonic
                                                gqs'
                                            >4
                                            ~
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                fqs'
                                                \tweak style #'harmonic
                                                gqs'
                                            >16
                                            [
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                f'!
                                                \tweak style #'harmonic
                                                af'!
                                            >8.
                                            - \tweak padding #1
                                            ^ \punta-to-talon
                                            ]
                                            ~
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                f'
                                                \tweak style #'harmonic
                                                af'
                                            >4
                                            ~
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                f'
                                                \tweak style #'harmonic
                                                af'
                                            >8.
                                            [
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                c''!
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                dqf''!
                                                \tweak style #'harmonic
                                                dqs''!
                                            >16
                                            - \tweak padding #1
                                            ^ \talon-to-punta
                                            ]
                                            ~
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                c''
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                dqf''
                                                \tweak style #'harmonic
                                                dqs''
                                            >8
                                            [
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                d''!
                                                \tweak style #'harmonic
                                                ef''!
                                            >16
                                            - \tweak padding #1
                                            ^ \punta-to-talon
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                bqf'!
                                                \tweak style #'harmonic
                                                ef''!
                                            >16
                                            - \tweak padding #1
                                            ^ \talon-to-punta
                                            ]
                                            ~
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 15/12
                                            {
                                                <
                                                    \tweak Accidental.font-size #-3.5
                                                    \tweak Accidental.parenthesized ##t
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-3.5
                                                    \tweak style #'harmonic
                                                    bqf'
                                                    \tweak style #'harmonic
                                                    ef''
                                                >8
                                                \stopTextSpanThree
                                                [
                                                <
                                                    \tweak Accidental.font-size #-3.5
                                                    \tweak Accidental.parenthesized ##t
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-3.5
                                                    cqs''!
                                                    \tweak Accidental.font-size #-3.5
                                                    \tweak Accidental.parenthesized ##t
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-3.5
                                                    \tweak style #'harmonic
                                                    dqf''!
                                                    \tweak style #'harmonic
                                                    eqf''!
                                                >8
                                                - \tweak padding #1
                                                ^ \punta-to-talon
                                                <
                                                    \tweak Accidental.font-size #-3.5
                                                    \tweak Accidental.parenthesized ##t
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-3.5
                                                    gqf''!
                                                    \tweak Accidental.font-size #-3.5
                                                    \tweak Accidental.parenthesized ##t
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-3.5
                                                    \tweak style #'harmonic
                                                    af''!
                                                    \tweak style #'harmonic
                                                    a''!
                                                >8
                                                - \tweak padding #1
                                                ^ \talon-to-punta
                                                ~
                                            }
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                gqf''
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                af''
                                                \tweak style #'harmonic
                                                a''
                                            >32
                                            ]
                                            ~
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                gqf''
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                af''
                                                \tweak style #'harmonic
                                                a''
                                            >4
                                            ~
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                gqf''
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                af''
                                                \tweak style #'harmonic
                                                a''
                                            >32
                                            [
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                gqf''!
                                                \tweak style #'harmonic
                                                gqs''!
                                            >16
                                            - \tweak padding #1
                                            ^ \punta-to-talon
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                fs''!
                                                \tweak style #'harmonic
                                                aqf''!
                                            >32
                                            - \tweak padding #1
                                            ^ \talon-to-punta
                                            ]
                                            ~
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                fs''
                                                \tweak style #'harmonic
                                                aqf''
                                            >4
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                gqf''!
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                a''!
                                                \tweak style #'harmonic
                                                bf''!
                                            >16.
                                            - \tweak padding #1
                                            ^ \punta-to-talon
                                            [
                                            \set stemLeftBeamCount = 3
                                            \set stemRightBeamCount = 1
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                gqs''!
                                                \tweak style #'harmonic
                                                aqf''!
                                            >32
                                            - \tweak padding #1
                                            ^ \talon-to-punta
                                            ~
                                            \set stemLeftBeamCount = 1
                                            \set stemRightBeamCount = 2
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                gqs''
                                                \tweak style #'harmonic
                                                aqf''
                                            >16
                                            \set stemLeftBeamCount = 2
                                            \set stemRightBeamCount = 1
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                af''!
                                                \tweak style #'harmonic
                                                bqf''!
                                            >16
                                            - \tweak padding #1
                                            ^ \punta-to-talon
                                            ~
                                            \set stemLeftBeamCount = 1
                                            \set stemRightBeamCount = 3
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                af''
                                                \tweak style #'harmonic
                                                bqf''
                                            >32
                                            \afterGrace
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                gqs''!
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                a''!
                                                \tweak style #'harmonic
                                                bqf''!
                                            >16.
                                            - \tweak padding #1
                                            ^ \talon-to-punta
                                            ]
                                            {
                                                \once \override Stem.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override Accidental.stencil = ##f
                                                \once \override NoteHead.transparent = ##t
                                                c'16
                                                \stopTextSpan
                                            }
                                        }
                                        \context Voice = "violin 1 legno voice"
                                        {
                                            \once \override Rest.staff-position = #-13.5
                                            \override Voice.NoteHead.color = #(css-color 'darkred)
                                            \override Voice.Dots.color = #(css-color 'darkred)
                                            \override Voice.Stem.color = #(css-color 'darkred)
                                            \override Voice.Beam.color = #(css-color 'darkred)
                                            \override Voice.Rest.color = #(css-color 'darkred)
                                            \override Voice.Tie.color = #(css-color 'darkred)
                                            \override Voice.TupletBracket.color = #(css-color 'darkred)
                                            \override Voice.TupletNumber.color = #(css-color 'darkred)
                                            \voiceTwo
                                            r32
                                            - \tweak Beam.positions #'(-12 . -10.5)
                                            [
                                            \override Voice.NoteHead.no-ledgers = ##t
                                            \override Voice.Accidental.stencil = ##f
                                            \textSpannerDown
                                            e32
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #13.5
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLT DP" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -2
                                            \startTextSpan
                                            ~
                                            e8
                                            ~
                                            e8
                                            ]
                                            ~
                                            e16
                                            \stopTextSpan
                                            [
                                            \textSpannerUp
                                            \once \override Rest.staff-position = #-11
                                            r16
                                            \textSpannerDown
                                            \tweak style #'cross
                                            e32
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #13.5
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLB OB" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -2
                                            \startTextSpan
                                            \set stemLeftBeamCount = 3
                                            \set stemRightBeamCount = 1
                                            \tweak style #'cross
                                            e32
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \once \override Rest.staff-position = #-11
                                            \set stemLeftBeamCount = 1
                                            \set stemRightBeamCount = 2
                                            r16
                                            \once \override Rest.staff-position = #-13
                                            r32
                                            \tweak style #'cross
                                            c32
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            ]
                                            r8.
                                            [
                                            \tweak style #'cross
                                            e16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            ]
                                            \once \override Rest.staff-position = #-8
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
                                            \once \override Rest.staff-position = #-7
                                            r8
                                            ]
                                            \once \override Rest.staff-position = #-7
                                            r16
                                            [
                                            \tweak style #'cross
                                            e16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \stopTextSpan
                                            \textSpannerUp
                                            \once \override Rest.staff-position = #-7
                                            r16
                                            \textSpannerDown
                                            b16
                                            ]
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #11
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLT DP" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpan
                                            ~
                                            b8.
                                            [
                                            \textSpannerDown
                                            \tweak style #'cross
                                            b16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \stopTextSpan
                                            ]
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #11
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLB OB" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -2
                                            \startTextSpan
                                            \textSpannerUp
                                            \tweak style #'cross
                                            b16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            [
                                            \tweak style #'cross
                                            b16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \tweak style #'cross
                                            b16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \tweak style #'cross
                                            b16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \stopTextSpan
                                            ]
                                            \textSpannerUp
                                            \textSpannerDown
                                            b2.
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #10.5
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLT DP" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -2
                                            \startTextSpan
                                            ~
                                            b32
                                            \stopTextSpan
                                            [
                                            \textSpannerUp
                                            \textSpannerDown
                                            \tweak style #'cross
                                            b16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #11
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLB OB" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -2
                                            \startTextSpan
                                            \tweak style #'cross
                                            b32
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \once \override Rest.staff-position = #-7
                                            r8
                                            \tweak style #'cross
                                            b8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            ]
                                            \tweak style #'cross
                                            b8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            [
                                            \tweak style #'cross
                                            b8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \tweak style #'cross
                                            b8
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
                                    r8.
                                    r8
                                    r8.
                                    r8
                                    r1.
                                    r1.
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
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 5/6
                                    {
                                        \override Dots.staff-position = #2
                                        \override Staff.Stem.stemlet-length = 0.75
                                        \tweak style #'harmonic
                                        cs'8
                                          %! +SCORE
                                        ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-10 \raise #2 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 16 } #1.5 } \fontsize #4 { "= 120" } } }
                                        [
                                        (
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #1.5
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \big-half-harmonic
                                        dqs'8
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #1.5
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \revert Staff.Stem.stemlet-length
                                        \tweak style #'harmonic
                                        b8
                                        ]
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #1.5
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 5/4
                                    {
                                        \big-half-harmonic
                                        \override Staff.Stem.stemlet-length = 0.75
                                        cqs'8
                                        )
                                        [
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #1.5
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \revert Staff.Stem.stemlet-length
                                        \tweak style #'harmonic
                                        d'8
                                        ]
                                        (
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #1.5
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/5
                                    {
                                        \big-half-harmonic
                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'8
                                        [
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #1.5
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak padding #9.5
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " accel. ( to " } \fontsize #-0.5 { \note { 8 } #1.5 } \fontsize #3 { "= 100 )" } } } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #1.5 } \fontsize #4 { "= 100" } } }
                                        \startTextSpanThree
                                        \tweak style #'harmonic
                                        g'8
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #1.5
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \big-half-harmonic
                                        fs'8
                                        )
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #1.5
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \tweak style #'harmonic
                                        gs'8
                                        (
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #1.5
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \big-half-harmonic
                                        \revert Staff.Stem.stemlet-length
                                        \afterGrace
                                        bqf'8
                                        ]
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #1.5
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        {
                                            \revert Dots.staff-position
                                            \once \override Flag.stroke-style = #"grace"
                                            \tweak style #'harmonic
                                            dqs''16
                                            )
                                        }
                                    }
                                    r2.
                                    r1.
                                    \stopTextSpanThree
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
                                    r8.
                                    r8
                                    r8.
                                    r8
                                    r1.
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
                                    <<
                                        \context Voice = "viola 2 voice temp"
                                        {
                                            \big-half-harmonic
                                            \clef "alto"
                                            \voiceOne
                                            eqs32
                                            - \tweak padding #1
                                            ^ \punta-to-talon
                                              %! +SCORE
                                            ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-10 \raise #1 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 16 } #1.5 } \fontsize #4 { "= 120" } } }
                                            [
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #13
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "MSP" } \hspace #0.5 }
                                            \startTextSpan
                                            \big-half-harmonic
                                            dqs32
                                            - \tweak padding #1
                                            ^ \talon-to-punta
                                            ~
                                            \big-half-harmonic
                                            dqs8
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 7/6
                                            {
                                                \big-half-harmonic
                                                eqs16
                                                - \tweak padding #1
                                                ^ \punta-to-talon
                                                \big-half-harmonic
                                                fs16
                                                - \tweak padding #1
                                                ^ \talon-to-punta
                                                ]
                                                \big-half-harmonic
                                                \set stemLeftBeamCount = 2
                                                \set stemRightBeamCount = 2
                                                e16
                                                - \tweak padding #1
                                                ^ \punta-to-talon
                                                - \tweak Beam.positions #'(5 . 8)
                                                [
                                            }
                                            \big-half-harmonic
                                            \set stemLeftBeamCount = 1
                                            \set stemRightBeamCount = 3
                                            d32
                                            - \tweak padding #1
                                            ^ \talon-to-punta
                                            ~
                                            \big-half-harmonic
                                            d64.
                                            \big-half-harmonic
                                            f128
                                            - \tweak padding #1
                                            ^ \punta-to-talon
                                            ~
                                            \big-half-harmonic
                                            \set stemLeftBeamCount = 3
                                            \set stemRightBeamCount = 1
                                            f32
                                            ~
                                            \big-half-harmonic
                                            \set stemLeftBeamCount = 1
                                            \set stemRightBeamCount = 4
                                            f64
                                            \big-half-harmonic
                                            cqs32.
                                            - \tweak padding #1
                                            ^ \talon-to-punta
                                            ~
                                            \big-half-harmonic
                                            cqs128
                                            \big-half-harmonic
                                            e32..
                                            - \tweak padding #1
                                            ^ \punta-to-talon
                                            ]
                                            \big-half-harmonic
                                            eqs16.
                                            - \tweak padding #1
                                            ^ \talon-to-punta
                                            [
                                            - \tweak padding #14
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " accel. ( to " } \fontsize #-0.5 { \note { 8 } #1.5 } \fontsize #3 { "= 100 )" } } } \hspace #0.5 }
                                            - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #1.5 } \fontsize #4 { "= 100" } } }
                                            \startTextSpanThree
                                            \big-half-harmonic
                                            bqf32
                                            - \tweak padding #1
                                            ^ \punta-to-talon
                                            ~
                                            \big-half-harmonic
                                            bqf16
                                            \big-half-harmonic
                                            b16
                                            - \tweak padding #1
                                            ^ \talon-to-punta
                                            ]
                                            ~
                                            \big-half-harmonic
                                            b32
                                            [
                                            \big-half-harmonic
                                            cqs'16.
                                            - \tweak padding #1
                                            ^ \punta-to-talon
                                            \big-half-harmonic
                                            c'8
                                            - \tweak padding #1
                                            ^ \talon-to-punta
                                            ]
                                            \big-half-harmonic
                                            bqf8
                                            - \tweak padding #1
                                            ^ \punta-to-talon
                                            [
                                            \big-half-harmonic
                                            b8
                                            - \tweak padding #1
                                            ^ \talon-to-punta
                                            ]
                                            \big-half-harmonic
                                            af'8
                                            - \tweak padding #1
                                            ^ \punta-to-talon
                                            [
                                            \big-half-harmonic
                                            g'8
                                            - \tweak padding #1
                                            ^ \talon-to-punta
                                            ]
                                            ~
                                            \big-half-harmonic
                                            g'2
                                            \big-half-harmonic
                                            \once \override DynamicLineSpanner.staff-padding = #12
                                            aqf'4
                                            - \tweak padding #1
                                            ^ \punta-to-talon
                                            \stopTextSpanThree
                                            - \tweak circled-tip ##t
                                            _ \>
                                            ~
                                            \big-half-harmonic
                                            aqf'16
                                            [
                                            \big-half-harmonic
                                            eqf'16
                                            - \tweak padding #1
                                            ^ \talon-to-punta
                                            ]
                                            ~
                                            \big-half-harmonic
                                            eqf'8
                                            [
                                            \big-half-harmonic
                                            gqs'8
                                            - \tweak padding #1
                                            ^ \punta-to-talon
                                            ~
                                            \big-half-harmonic
                                            gqs'16
                                            \big-half-harmonic
                                            dqs''16
                                            - \tweak padding #1
                                            ^ \talon-to-punta
                                            ]
                                            ~
                                            \big-half-harmonic
                                            dqs''8
                                            [
                                            \big-half-harmonic
                                            c''16
                                            - \tweak padding #1
                                            ^ \punta-to-talon
                                            ]
                                            \once \override TupletBracket.padding = #-2
                                            \once \override TupletBracket.stencil = #(lambda (grob) (let* ((pos (ly:grob-property grob 'positions)) (dir (ly:grob-property grob 'direction)) (new-pos (if (= dir 1) (max (car pos)(cdr pos)) (min (car pos)(cdr pos))))) (ly:grob-set-property! grob 'positions (cons new-pos new-pos)) (ly:tuplet-bracket::print grob)))
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 9/8
                                            {
                                                \big-half-harmonic
                                                cqs''8
                                                - \tweak padding #1
                                                ^ \talon-to-punta
                                                [
                                                \big-half-harmonic
                                                c''8
                                                - \tweak padding #1
                                                ^ \punta-to-talon
                                                \big-half-harmonic
                                                cqs''8
                                                - \tweak padding #1
                                                ^ \talon-to-punta
                                                \big-half-harmonic
                                                \afterGrace
                                                b'8
                                                - \tweak padding #1
                                                ^ \punta-to-talon
                                                ]
                                                {
                                                    \once \override Stem.stencil = ##f
                                                    \once \override Flag.stencil = ##f
                                                    \once \override NoteHead.no-ledgers = ##t
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override NoteHead.transparent = ##t
                                                    c'16
                                                    \!
                                                    \stopTextSpan
                                                }
                                            }
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
                                            e,32
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak Beam.positions #'(-12 . -10.5)
                                            [
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #13.5
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLB OB" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpan
                                            \once \override Rest.staff-position = #-12.5
                                            r32
                                            \once \override Rest.staff-position = #-12.5
                                            r8
                                            \textSpannerDown
                                            e,8
                                            \stopTextSpan
                                            ]
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #13.5
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLT DP" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpan
                                            ~
                                            \textSpannerUp
                                            e,8.
                                            [
                                            \textSpannerDown
                                            \tweak style #'cross
                                            e,32
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \stopTextSpan
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #13.5
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLB OB" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpan
                                            \textSpannerUp
                                            \tweak style #'cross
                                            e,32
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            ~
                                            \tweak style #'cross
                                            e,32
                                            \tweak style #'cross
                                            e,32
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            ]
                                            \tweak style #'cross
                                            g,32
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            [
                                            \tweak style #'cross
                                            g,32
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \tweak style #'cross
                                            g,16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \tweak style #'cross
                                            g,16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            r16
                                            ]
                                            \once \override Rest.staff-position = #-8
                                            r16
                                            [
                                            \tweak style #'cross
                                            g,16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \once \override Rest.staff-position = #-8
                                            r16
                                            \tweak style #'cross
                                            g,16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            ]
                                            \once \override Rest.staff-position = #-8
                                            r8
                                            [
                                            \tweak style #'cross
                                            b,16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \tweak style #'cross
                                            b,16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            ]
                                            \tweak style #'cross
                                            b,16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            [
                                            \once \override Rest.staff-position = #-8
                                            r16
                                            \tweak style #'cross
                                            b,16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \tweak style #'cross
                                            b,16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            ]
                                            \tweak style #'cross
                                            b,16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            [
                                            \tweak style #'cross
                                            b,16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \textSpannerDown
                                            b,8
                                            \stopTextSpan
                                            ]
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #11.5
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLT DP" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -2
                                            \startTextSpan
                                            ~
                                            \textSpannerUp
                                            b,4
                                            ~
                                            b,4
                                            ~
                                            b,16
                                            \stopTextSpan
                                            [
                                            \textSpannerUp
                                            \once \override Rest.staff-position = #-8
                                            r16
                                            ]
                                            \textSpannerDown
                                            \tweak style #'cross
                                            b,16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            [
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #11.5
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLB OB" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -2
                                            \startTextSpan
                                            \tweak style #'cross
                                            b,16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \once \override Rest.staff-position = #-8
                                            r16
                                            \tweak style #'cross
                                            b,16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            ~
                                            \tweak style #'cross
                                            b,8
                                            ]
                                            \tweak style #'cross
                                            b,16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            [
                                            \tweak style #'cross
                                            b,16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \tweak style #'cross
                                            b,16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \stopTextSpan
                                            \textSpannerUp
                                            \textSpannerDown
                                            b,16
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #11.5
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLT DP" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -25
                                            \startTextSpan
                                            ~
                                            b,8
                                            ]
                                            ~
                                            b,4.
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
                                    r8.
                                    r8
                                    r8.
                                    r8
                                    r1.
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
                                    <<
                                        \context Voice = "cello 2 voice temp"
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
                                            b'16
                                            ^ \staccato
                                            - \markup \fontsize #2 { \hspace #-12.5 \lower #2 { "Finger Perc.:" } }
                                              %! +SCORE
                                            ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-10 \raise #0.1 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 16 } #1.5 } \fontsize #4 { "= 120" } } }
                                            [
                                            \once \override Rest.staff-position = #-7
                                            r8
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
                                            \pitchedTrill
                                            c'8
                                            :16
                                            ]
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
                                            - \tweak bound-details.left.Y #-6
                                            - \tweak bound-details.right.Y #-4.5
                                            \startTrillSpan a
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \afterGrace
                                            c'8.
                                            [
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
                                                e'16
                                                \stopTrillSpan
                                            }
                                            \tweak style #'cross
                                            b'16
                                            ^ \staccato
                                            \tweak style #'cross
                                            d''16
                                            ^ \staccato
                                            ]
                                        }
                                        \context Voice = "cello bow voice"
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
                                            r32
                                            - \tweak color #(css-color 'darkred)
                                            - \markup \fontsize #2 { \hspace #-4.5 \raise #4 { "Bow:" } }
                                            - \tweak Beam.positions #'(9 . 6)
                                            [
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #11
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "II" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -3
                                            \startTextSpanOne
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                a''
                                            >32
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            \once \override Dots.staff-position = #2
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                f'
                                            >8
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
                                            <
                                                \tweak style #'la
                                                f'
                                            >8
                                            ]
                                            ~
                                            \once \override Dots.staff-position = #2
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            \afterGrace
                                            <
                                                \tweak style #'la
                                                f'
                                            >16.
                                            - \tweak Beam.positions #'(9 . 9)
                                            [
                                            {
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
                                                <f'>16
                                            }
                                            \once \override Rest.staff-position = #7
                                            r32
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                g''
                                            >32
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            \set stemLeftBeamCount = 3
                                            \set stemRightBeamCount = 1
                                            <
                                                \tweak style #'la
                                                a''
                                            >32
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
                                            \once \override Rest.staff-position = #7
                                            \set stemLeftBeamCount = 1
                                            \set stemRightBeamCount = 2
                                            r16.
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                f''
                                            >32
                                            - \tweak color #(css-color 'darkred)
                                            _ \staccato
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
                                    \staff-line-count 5
                                    \revert Staff.StaffSymbol.line-positions
                                    \revert Staff.Accidental.stencil
                                    \revert Staff.NoteHead.no-ledgers
                                    \revert Staff.Clef.stencil
                                    \clef "bass"
                                    r2
                                    - \tweak padding #14
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " accel. ( to " } \fontsize #-0.5 { \note { 8 } #1.5 } \fontsize #3 { "= 100 )" } } } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #1.5 } \fontsize #4 { "= 100" } } }
                                    \startTextSpanThree
                                    \override Staff.BarLine.bar-extent = #'(-2 . 2)
                                    <a, bqf,>4
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #6.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "diagonal bow, touching bridge for added air sound" } \hspace #0.5 }
                                    \startTextSpanOne
                                    ~
                                    <a, bqf,>4
                                    r16
                                    [
                                    \override Dots.staff-position = #2
                                    <a, bqf,>8.
                                    ]
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
                                    <a, bqf,>4
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
                                        <a, bqf,>16
                                        )
                                        \stopTextSpanOne
                                    }
                                    \times 4/5
                                    {
                                        \big-half-harmonic
                                        <a, bqf,>8
                                        - \tweak padding #1
                                        ^ \punta-to-talon
                                        \stopTextSpanThree
                                        - \tweak font-name "Bodoni72 Book" 
                                        - \tweak font-size 2
                                        - \tweak padding #12
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "MSP" } \hspace #0.5 }
                                        \startTextSpan
                                        \big-half-harmonic
                                        <a, bqf,>4.
                                        - \tweak padding #1
                                        ^ \talon-to-punta
                                        \big-half-harmonic
                                        <a, bqf,>8
                                        - \tweak padding #1
                                        ^ \punta-to-talon
                                        ~
                                    }
                                    \big-half-harmonic
                                    <a, bqf,>8
                                    [
                                    ~
                                    \big-half-harmonic
                                    <a, bqf,>16
                                    ]
                                    ~
                                    \times 2/3
                                    {
                                        \big-half-harmonic
                                        <a, bqf,>8
                                        \big-half-harmonic
                                        <a, bqf,>4
                                        - \tweak padding #1
                                        ^ \talon-to-punta
                                        ~
                                    }
                                    \big-half-harmonic
                                    <a, bqf,>16
                                    [
                                    ~
                                    \big-half-harmonic
                                    <a, bqf,>8
                                    ]
                                    ~
                                    \big-half-harmonic
                                    <a, bqf,>16
                                    ~
                                    \times 4/5
                                    {
                                        \big-half-harmonic
                                        <a, bqf,>16
                                        [
                                        \big-half-harmonic
                                        <a, bqf,>8.
                                        - \tweak padding #1
                                        ^ \punta-to-talon
                                        \big-half-harmonic
                                        <a, bqf,>16
                                        - \tweak padding #1
                                        ^ \talon-to-punta
                                        ]
                                        ~
                                    }
                                    \big-half-harmonic
                                    \afterGrace
                                    <a, bqf,>16
                                    {
                                        \big-half-harmonic
                                        \once \override Stem.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.transparent = ##t
                                        <a, bqf,>16
                                        \stopTextSpan
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
            >>
        }
    >>
  %! abjad.LilyPondFile._get_format_pieces()
}
