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
            \time 4/2
            s1 * 2
            \time 3/2
            s1 * 3/2
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/2
            s1 * 3/2
            \time 12/8
            s1 * 3/2
            \time 8/8
            s1 * 1
            \time 7/4
            s1 * 7/4
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            - \tweak font-size #'10
            _ \very-long-fermata
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
                                    r\breve
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
                                    r1.
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
                                    r1..
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
                                    r\breve
                                      %! +SCORE
                                    ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-7 \raise #3 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 2 } #1.5 } \fontsize #4 { "= 69" } } }
                                    r1.
                                    r1.
                                    r1.
                                    r1
                                    r1..
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
                                    r1.
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
                                    r1..
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
                                    r\breve
                                      %! +SCORE
                                    ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-7 \raise #3 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 2 } #1.5 } \fontsize #4 { "= 69" } } }
                                    r1.
                                    r1.
                                    r1.
                                    r1
                                    r1..
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
                                    r\breve
                                    r1.
                                    r1.
                                    r1.
                                    r1
                                    r1..
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
                                            ef1
                                            - \tweak padding 1
                                            - \punta-to-talon
                                              %! +SCORE
                                            ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-7 \raise #3 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 2 } #1.5 } \fontsize #4 { "= 69" } } }
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #10
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "MSP" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -3
                                            \startTextSpan
                                            ~
                                            \big-half-harmonic
                                            ef4
                                            \times 2/3
                                            {
                                                \big-half-harmonic
                                                eqs8
                                                - \tweak padding 1
                                                - \talon-to-punta
                                                [
                                                \big-half-harmonic
                                                ef8
                                                - \tweak padding 1
                                                - \punta-to-talon
                                                \big-half-harmonic
                                                fs8
                                                - \tweak padding 1
                                                - \talon-to-punta
                                                ]
                                                ~
                                            }
                                            \big-half-harmonic
                                            fs4
                                            \big-half-harmonic
                                            f16
                                            - \tweak padding 1
                                            - \punta-to-talon
                                            [
                                            \big-half-harmonic
                                            gqf16
                                            - \tweak padding 1
                                            - \talon-to-punta
                                            \big-half-harmonic
                                            cqs16
                                            - \tweak padding 1
                                            - \punta-to-talon
                                            \big-half-harmonic
                                            fqs16
                                            - \tweak padding 1
                                            - \talon-to-punta
                                            ]
                                            ~
                                            \big-half-harmonic
                                            fqs16.
                                            [
                                            \big-half-harmonic
                                            e32
                                            - \tweak padding 1
                                            - \punta-to-talon
                                            ~
                                            \big-half-harmonic
                                            e16
                                            \big-half-harmonic
                                            \set stemLeftBeamCount = 2
                                            \set stemRightBeamCount = 1
                                            gqf16
                                            - \tweak padding 1
                                            - \talon-to-punta
                                            ~
                                            \big-half-harmonic
                                            \set stemLeftBeamCount = 1
                                            \set stemRightBeamCount = 3
                                            gqf32
                                            r8..
                                            ]
                                            \big-half-harmonic
                                            fs2
                                            - \tweak padding 1
                                            - \punta-to-talon
                                            ~
                                            \big-half-harmonic
                                            fs8
                                            [
                                            \big-half-harmonic
                                            eqf8
                                            - \tweak padding 1
                                            - \talon-to-punta
                                            \big-half-harmonic
                                            e8
                                            - \tweak padding 1
                                            - \punta-to-talon
                                            \big-half-harmonic
                                            gqf8
                                            - \tweak padding 1
                                            - \talon-to-punta
                                            ]
                                            ~
                                            \big-half-harmonic
                                            gqf8
                                            [
                                            r8
                                            ]
                                            \big-half-harmonic
                                            f4
                                            - \tweak padding 1
                                            - \punta-to-talon
                                            \big-half-harmonic
                                            fs2
                                            - \tweak padding 1
                                            - \talon-to-punta
                                            ~
                                            \big-half-harmonic
                                            fs8
                                            [
                                            r16.
                                            \big-half-harmonic
                                            \set stemLeftBeamCount = 3
                                            \set stemRightBeamCount = 1
                                            eqs32
                                            - \tweak padding 1
                                            - \punta-to-talon
                                            ~
                                            \big-half-harmonic
                                            \set stemLeftBeamCount = 1
                                            \set stemRightBeamCount = 2
                                            eqs16
                                            r16
                                            \once \override Rest.staff-position = #-5
                                            r32
                                            \big-half-harmonic
                                            e16.
                                            - \tweak padding 1
                                            - \talon-to-punta
                                            ]
                                            ~
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 9/8
                                            {
                                                \big-half-harmonic
                                                e8
                                                [
                                                r8
                                                r8
                                                \big-half-harmonic
                                                ef8
                                                - \tweak padding 1
                                                - \punta-to-talon
                                                ]
                                                ~
                                            }
                                            \big-half-harmonic
                                            ef16
                                            [
                                            ~
                                            \big-half-harmonic
                                            ef8
                                            ]
                                            ~
                                            \big-half-harmonic
                                            ef8
                                            [
                                            r8
                                            r16
                                            \big-half-harmonic
                                            eqs16
                                            - \tweak padding 1
                                            - \talon-to-punta
                                            ]
                                            ~
                                            \big-half-harmonic
                                            eqs8
                                            \stopTextSpan
                                            r4
                                        }
                                        \context Voice = "viola legno voice"
                                        {
                                            \once \override DynamicLineSpanner.staff-padding = #15
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
                                            d,4.
                                            \pppp
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #14.5
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \hspace #-3 { "CLT DP" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 0.5
                                            \startTextSpan
                                            \textSpannerDown
                                            \tweak style #'cross
                                            d,8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \stopTextSpan
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #14.5
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLB OB" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -3
                                            \startTextSpan
                                            \textSpannerUp
                                            \tweak style #'cross
                                            d,8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \stopTextSpan
                                            [
                                            \textSpannerUp
                                            \textSpannerDown
                                            d,8
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #14.5
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLT DP" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -3
                                            \startTextSpan
                                            ~
                                            d,8
                                            \stopTextSpan
                                            \textSpannerUp
                                            \textSpannerDown
                                            \tweak style #'cross
                                            d,8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            ]
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #14.5
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLB OB" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -3
                                            \startTextSpan
                                            \tweak style #'cross
                                            d,8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            [
                                            \tweak style #'cross
                                            d,8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            \once \override Rest.staff-position = #-12
                                            r8
                                            \tweak style #'cross
                                            d,8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \stopTextSpan
                                            ]
                                            \textSpannerUp
                                            \textSpannerDown
                                            d,4
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #14.5
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \hspace #-3 { "CLT DP" } \hspace #0.5 }
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
                                            - \tweak padding #14.5
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLB OB" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -3
                                            \startTextSpan
                                            \textSpannerUp
                                            \tweak style #'cross
                                            d,8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            \stopTextSpan
                                            ]
                                            \textSpannerUp
                                            \textSpannerDown
                                            d,4
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #14.5
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \hspace #-3 { "CLT DP" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 4
                                            \startTextSpan
                                            \textSpannerDown
                                            \tweak style #'cross
                                            d,8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \stopTextSpan
                                            [
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #14.5
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \hspace #-4 { "CLB OB" } \hspace #0.5 }
                                            \startTextSpan
                                            \textSpannerUp
                                            \textSpannerDown
                                            d,8
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            \stopTextSpan
                                            ]
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #14.5
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLT DP" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -3
                                            \startTextSpan
                                            ~
                                            \textSpannerUp
                                            d,4.
                                            \stopTextSpan
                                            \textSpannerUp
                                            \textSpannerDown
                                            \tweak style #'cross
                                            d,8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #14.5
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLB OB" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -3
                                            \startTextSpan
                                            \once \override Rest.staff-position = #-12
                                            r4
                                            \tweak style #'cross
                                            d,8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            [
                                            \once \override Rest.staff-position = #-12
                                            r8
                                            ]
                                            \once \override Rest.staff-position = #-12
                                            r4.
                                            \tweak style #'cross
                                            d,8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \stopTextSpan
                                            \textSpannerUp
                                            \textSpannerDown
                                            d,2
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #14.5
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLT DP" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -3
                                            \startTextSpan
                                            ~
                                            d,8
                                            \stopTextSpan
                                            [
                                            \textSpannerUp
                                            \textSpannerDown
                                            \tweak style #'cross
                                            d,8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #14.5
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLB OB" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -3
                                            \startTextSpan
                                            \tweak style #'cross
                                            d,8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            \tweak style #'cross
                                            d,8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            ]
                                            \once \override Rest.staff-position = #-12
                                            r8
                                            [
                                            \tweak style #'cross
                                            d,8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            \tweak style #'cross
                                            d,8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            ]
                                            \tweak style #'cross
                                            d,8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            [
                                            \tweak style #'cross
                                            d,8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \stopTextSpan
                                            \textSpannerUp
                                            \textSpannerDown
                                            d,8
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            ]
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #14.5
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLT DP" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -3
                                            \startTextSpan
                                            ~
                                            d,8
                                            \stopTextSpan
                                            [
                                            \textSpannerUp
                                            \textSpannerDown
                                            \tweak style #'cross
                                            d,8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #14.5
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLB OB" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -3
                                            \startTextSpan
                                            \tweak style #'cross
                                            d,8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            ]
                                            \once \override Rest.staff-position = #-12
                                            r8
                                            [
                                            \tweak style #'cross
                                            d,8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            \tweak style #'cross
                                            d,8
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
                                    \staff-line-count 1
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
                                    \tweak style #'cross
                                    c'16
                                    - \tweak color #(css-color 'darkred)
                                    - \accent
                                    - \tweak color #(css-color 'darkred)
                                    - \staccato
                                    [
                                    - \tweak color #(css-color 'darkred)
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 2
                                    - \tweak padding #3.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "CLB OB" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -3
                                    \startTextSpan
                                    \tweak style #'cross
                                    c'16
                                    - \tweak color #(css-color 'darkred)
                                    - \staccato
                                    r8
                                    ]
                                    r8
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 5/6
                                    {
                                        \tweak style #'cross
                                        c'8
                                        - \tweak color #(css-color 'darkred)
                                        - \staccato
                                        [
                                        \tweak style #'cross
                                        c'8
                                        - \tweak color #(css-color 'darkred)
                                        - \accent
                                        - \tweak color #(css-color 'darkred)
                                        - \staccato
                                        \tweak style #'cross
                                        c'8
                                        - \tweak color #(css-color 'darkred)
                                        - \staccato
                                        ]
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 5/4
                                    {
                                        r16
                                        [
                                        \tweak style #'cross
                                        c'16
                                        - \tweak color #(css-color 'darkred)
                                        - \accent
                                        - \tweak color #(css-color 'darkred)
                                        - \staccato
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
                                        ]
                                    }
                                    r8
                                    [
                                    \tweak style #'cross
                                    c'8
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
                                    \times 4/6
                                    {
                                        r4
                                        \tweak style #'cross
                                        c'8
                                        - \tweak color #(css-color 'darkred)
                                        - \staccato
                                        [
                                        r8
                                        \tweak style #'cross
                                        c'8
                                        - \tweak color #(css-color 'darkred)
                                        - \accent
                                        - \tweak color #(css-color 'darkred)
                                        - \staccato
                                        r8
                                        ]
                                    }
                                    r8
                                    [
                                    \tweak style #'cross
                                    c'8
                                    - \tweak color #(css-color 'darkred)
                                    - \staccato
                                    \stopTextSpan
                                    ]
                                    r2
                                    \revert Staff.Clef.stencil
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
                                    r\breve
                                    r1.
                                    r1.
                                    r1.
                                    r1
                                    r1..
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
                                    r\breve
                                      %! +SCORE
                                    ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-7 \raise #3 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 2 } #1.5 } \fontsize #4 { "= 69" } } }
                                    r1.
                                    r1.
                                    r1.
                                    r1
                                    r1..
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
