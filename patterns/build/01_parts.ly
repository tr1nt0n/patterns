    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
              %! +SCORE
        %%% \set Score.proportionalNotationDuration = #(ly:make-moment 1/100)
            \time 10/16
            s1 * 5/8
              %! +SCORE
        %%% \break
              %! +SCORE
        %%% \set Score.proportionalNotationDuration = #(ly:make-moment 1/20)
            \time 6/4
            s1 * 3/2
              %! +SCORE
        %%% \break
              %! +SCORE
        %%% \set Score.proportionalNotationDuration = #(ly:make-moment 1/40)
            \time 12/8
            s1 * 3/2
              %! +SCORE
        %%% \noBreak
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
              %! +SCORE
        %%% \set Score.proportionalNotationDuration = #(ly:make-moment 1/20)
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
                            \context Staff = "violin 1 staff"
                            {
                                \context Voice = "violin 1 voice"
                                {
                                    <<
                                        \context Voice = "violin 1 voice temp"
                                        {
                                            \override Dots.staff-position = #2
                                            \big-half-harmonic
                                            \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { Violin 1 }
                                              %! +SCORE
                                        %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { V1 }
                                            \voiceOne
                                            eqf'''64
                                            - \tweak padding #1
                                            - \punta-to-talon
                                              %! +SCORE
                                        %%% ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #19 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #1.5 } \fontsize #5.5 { "= 60" } } }
                                            [
                                            (
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #18.5
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "MSP" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -2
                                            \startTextSpan
                                            \big-half-harmonic
                                            b''64
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            \big-half-harmonic
                                            d'''64
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            \big-half-harmonic
                                            cqs'''64
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            \big-half-harmonic
                                            \set stemLeftBeamCount = 2
                                            \set stemRightBeamCount = 1
                                            e'''16
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            \big-half-harmonic
                                            \revert Dots.staff-position
                                            \set stemLeftBeamCount = 1
                                            \set stemRightBeamCount = 2
                                            fs''16
                                            )
                                            \override Dots.staff-position = #2
                                            \big-half-harmonic
                                            eqs''16
                                            - \tweak padding #1
                                            - \talon-to-punta
                                            (
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            \big-half-harmonic
                                            \revert Dots.staff-position
                                            dqf''16
                                            )
                                            ]
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 5/6
                                            {
                                                \override Dots.staff-position = #2
                                                \big-half-harmonic
                                                \fancy-gliss
                                                   #'(
                                                      (0 0 0.5 0.5 1 0)
                                                      (1 0 1.5 -0.5 2 0)
                                                      (2 0 2.5 1 3 0)
                                                      (3 0 3.5 -1 4 0)
                                                      (4 0 4.5 2 5 0)
                                                      (5 0 5.5 -2 6 0)
                                                      (6 0 6.5 3 7 0)
                                                      (7 0 7.5 -3 8 0)
                                                      (8 0 8.5 2 9 0)
                                                      (9 0 9.5 -2 10 0)
                                                      (10 0 10.5 1 11 0)
                                                      (11 0 11.5 -1 12 0)
                                                      (12 0 12.5 0.5 13 0)
                                                      (13 0 13.5 -0.5 14 0)
                                                 )
                                                 #0.5
                                                c'8
                                                - \tweak padding #1
                                                - \punta-to-talon
                                                [
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                                \big-half-harmonic
                                                \fancy-gliss
                                                   #'(
                                                      (0 0 0.5 0.5 1 0)
                                                      (1 0 1.5 -0.5 2 0)
                                                      (2 0 2.5 0.6 3 0)
                                                      (3 0 3.5 -0.6 4 0)
                                                      (4 0 4.5 0.8 5 0)
                                                      (5 0 5.5 -0.8 6 0)
                                                      (6 0 6.5 1 7 0)
                                                      (7 0 7.5 -1 8 0)
                                                      (8 0 8.5 2 9 0)
                                                      (9 0 9.5 -2 10 0)
                                                      (10 0 10.5 3 11 0)
                                                      (11 0 11.5 -3 12 0)
                                                      (12 0 12.5 2 13 0)
                                                      (13 0 13.5 -2 14 0)
                                                 )
                                                 #0.5
                                                c'8
                                                - \tweak padding #1
                                                - \talon-to-punta
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                                \big-half-harmonic
                                                c'32
                                                - \tweak padding #1
                                                - \punta-to-talon
                                                (
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                                \big-half-harmonic
                                                bf'32
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                                \big-half-harmonic
                                                aqf'32
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                                \big-half-harmonic
                                                \revert Dots.staff-position
                                                d''32
                                                )
                                                \stopTextSpan
                                                ]
                                            }
                                        }
                                        \context Voice = "violin 1 legno voice 1"
                                        {
                                            \override Voice.NoteHead.no-ledgers = ##t
                                            \override Voice.Accidental.stencil = ##f
                                            \textSpannerDown
                                            \once \override DynamicLineSpanner.staff-padding = 12
                                            \voiceTwo
                                            \tweak style #'cross
                                            f8
                                            \pp
                                            ^ \staccato
                                            [
                                            - \tweak Y-extent ##f
                                            - \tweak Y-offset -12
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #0
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CL" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -2
                                            \startTextSpan
                                            \set stemLeftBeamCount = 1
                                            \set stemRightBeamCount = 2
                                            r16
                                            \tweak style #'cross
                                            f8
                                            ^ \staccato
                                            ]
                                            \once \override TupletBracket.padding = #3
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 5/6
                                            {
                                                f8
                                                [
                                                f8
                                                \tweak style #'cross
                                                f8
                                                - \staccato
                                                \stopTextSpan
                                                ]
                                                \textSpannerUp
                                                \revert Voice.NoteHead.no-ledgers
                                                \revert Voice.Accidental.stencil
                                            }
                                        }
                                    >>
                                    \oneVoice
                                    <<
                                        \context Voice = "violin 1 voice temp 2"
                                        {
                                            \override Dots.staff-position = #2
                                            \big-half-harmonic
                                            \voiceOne
                                            cs''4
                                            - \tweak padding #1
                                            - \talon-to-punta
                                            (
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #11.5
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "MSP" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -1
                                            \startTextSpan
                                            - \tweak padding #14
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " accel. ( to " } \fontsize #-0.5 { \note { 8 } #1.5 } \fontsize #3 { "= 160 )" } } } \hspace #0.5 }
                                            - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #1.5 } \fontsize #5.5 { "= 160" } } }
                                            \startTextSpanThree
                                            \big-half-harmonic
                                            \fancy-gliss
                                               #'(
                                                  (0 0 0.5 1 1 0)
                                                  (1 0 1.5 -1 2 0)
                                                  (2 0 2.5 1 3 0)
                                                  (3 0 3.5 -1 4 0)
                                                  (4 0 4.5 2 5 0)
                                                  (5 0 5.5 -2 6 0)
                                                  (6 0 6.5 1 7 0)
                                                  (7 0 7.5 -1 8 0)
                                                  (8 0 8.5 4 9 0)
                                                  (9 0 9.5 -4 10 0)
                                                  (10 0 10.5 1 11 0)
                                                  (11 0 11.5 -1 12 0)
                                                  (12 0 12.5 1 13 0)
                                                  (13 0 13.5 -1 14 0)
                                                  (14 0 14.5 3 15 0)
                                                  (15 0 15.5 -3 16 0)
                                                  (16 0 16.5 1 17 0)
                                                  (17 0 17.5 -1 18 0)
                                                  (18 0 18.5 1 19 0)
                                                  (19 0 19.5 -1 20 0)
                                                  (20 0 20.5 1 21 0)
                                                  (21 0 21.5 -1 22 0)
                                                  (22 0 22.5 1 23 0)
                                                  (23 0 23.5 -1 24 0)
                                                  (24 0 24.5 1 25 0)
                                                  (25 0 25.5 -1 26 0)
                                                  (26 0 26.5 5 27 0)
                                                  (27 0 27.5 -5 28 0)
                                                  (28 0 28.5 1 29 0)
                                                  (29 0 29.5 -1 30 0)
                                             )
                                             #0.5
                                            bqf'4
                                            )
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            \times 4/5
                                            {
                                                \big-half-harmonic
                                                e'16
                                                - \tweak padding #1
                                                - \punta-to-talon
                                                [
                                                (
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                                \big-half-harmonic
                                                gqs'16
                                                )
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                                \big-half-harmonic
                                                g'16
                                                - \tweak padding #1
                                                - \talon-to-punta
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                                \big-half-harmonic
                                                c''16
                                                - \tweak padding #1
                                                - \punta-to-talon
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                                \big-half-harmonic
                                                eqf'16
                                                - \tweak padding #1
                                                - \talon-to-punta
                                                ]
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                            }
                                            \big-half-harmonic
                                            \fancy-gliss
                                               #'(
                                                  (0 0 0.5 1 1 0)
                                                  (1 0 1.5 -1 2 0)
                                                  (2 0 2.5 4 3 0)
                                                  (3 0 3.5 -4 4 0)
                                                  (4 0 4.5 1 5 0)
                                                  (5 0 5.5 -1 6 0)
                                                  (6 0 6.5 1 7 0)
                                                  (7 0 7.5 -1 8 0)
                                                  (8 0 8.5 3 9 0)
                                                  (9 0 9.5 -3 10 0)
                                                  (10 0 10.5 1 11 0)
                                                  (11 0 11.5 -1 12 0)
                                                  (12 0 12.5 1 13 0)
                                                  (13 0 13.5 -1 14 0)
                                                  (14 0 14.5 1 15 0)
                                                  (15 0 15.5 -1 16 0)
                                                  (16 0 16.5 1 17 0)
                                                  (17 0 17.5 -1 18 0)
                                                  (18 0 18.5 1 19 0)
                                                  (19 0 19.5 -1 20 0)
                                                  (20 0 20.5 5 21 0)
                                                  (21 0 21.5 -5 22 0)
                                                  (22 0 22.5 1 23 0)
                                                  (23 0 23.5 -1 24 0)
                                                  (24 0 24.5 7 25 0)
                                                  (25 0 25.5 -7 26 0)
                                                  (26 0 26.5 1 27 0)
                                                  (27 0 27.5 -1 28 0)
                                                  (28 0 28.5 1 29 0)
                                                  (29 0 29.5 -1 30 0)
                                                  (30 0 30.5 1 31 0)
                                                  (31 0 31.5 -1 32 0)
                                                  (32 0 32.5 1 33 0)
                                                  (33 0 33.5 -1 34 0)
                                                  (34 0 34.5 1 35 0)
                                                  (35 0 35.5 -1 36 0)
                                             )
                                             #0.5
                                            eqf'4
                                            - \tweak padding #1
                                            - \punta-to-talon
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            \once \override TupletBracket.padding = #1
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 8/7
                                            {
                                                \big-half-harmonic
                                                \fancy-gliss
                                                   #'(
                                                      (0 0 0.5 1 1 0)
                                                      (1 0 1.5 -1 2 0)
                                                      (2 0 2.5 1 3 0)
                                                      (3 0 3.5 -1 4 0)
                                                      (4 0 4.5 1 5 0)
                                                      (5 0 5.5 -1 6 0)
                                                      (6 0 6.5 3 7 0)
                                                      (7 0 7.5 -3 8 0)
                                                      (8 0 8.5 1 9 0)
                                                      (9 0 9.5 -1 10 0)
                                                      (10 0 10.5 1 11 0)
                                                      (11 0 11.5 -1 12 0)
                                                      (12 0 12.5 1 13 0)
                                                      (13 0 13.5 -1 14 0)
                                                      (14 0 14.5 7 15 0)
                                                      (15 0 15.5 -7 16 0)
                                                      (16 0 16.5 1 17 0)
                                                      (17 0 17.5 -1 18 0)
                                                      (18 0 18.5 1 19 0)
                                                      (19 0 19.5 -1 20 0)
                                                      (20 0 20.5 1 21 0)
                                                      (21 0 21.5 -1 22 0)
                                                      (22 0 22.5 11 23 0)
                                                      (23 0 23.5 -11 24 0)
                                                      (24 0 24.5 1 25 0)
                                                      (25 0 25.5 -1 26 0)
                                                      (26 0 26.5 1 27 0)
                                                      (27 0 27.5 -1 28 0)
                                                 )
                                                 #0.5
                                                cqs'8
                                                - \tweak padding #1
                                                - \talon-to-punta
                                                [
                                                (
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                                \big-half-harmonic
                                                cqs'32
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                                \big-half-harmonic
                                                b32
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                                \big-half-harmonic
                                                c'32
                                                ]
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                            }
                                            \big-half-harmonic
                                            aqs4
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            \big-half-harmonic
                                            a8.
                                            )
                                            \stopTextSpanThree
                                            [
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            \big-half-harmonic
                                            aqf'16
                                            - \tweak padding #1
                                            - \punta-to-talon
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            \big-half-harmonic
                                            fs''16
                                            - \tweak padding #1
                                            - \talon-to-punta
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            \big-half-harmonic
                                            fqs''16
                                            - \tweak padding #1
                                            - \punta-to-talon
                                            ]
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            \big-half-harmonic
                                            aqf''16
                                            - \tweak padding #1
                                            - \talon-to-punta
                                            [
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            \big-half-harmonic
                                            g''16
                                            - \tweak padding #1
                                            - \punta-to-talon
                                            ]
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            \big-half-harmonic
                                            dqf'''4
                                            - \tweak padding #1
                                            - \talon-to-punta
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            \big-half-harmonic
                                            \fancy-gliss
                                               #'(
                                                  (0 0 0.5 1 1 0)
                                                  (1 0 1.5 -1 2 0)
                                                  (2 0 2.5 0.5 3 0)
                                                  (3 0 3.5 -0.5 4 0)
                                                  (4 0 4.5 1 5 0)
                                                  (5 0 5.5 -1 6 0)
                                                  (6 0 6.5 1 7 0)
                                                  (7 0 7.5 -1 8 0)
                                                  (8 0 8.5 1 9 0)
                                                  (9 0 9.5 -1 10 0)
                                                  (10 0 10.5 0.5 11 0)
                                                  (11 0 11.5 -0.5 12 0)
                                                  (12 0 12.5 1 13 0)
                                                  (13 0 13.5 -1 14 0)
                                                  (14 0 14.5 1 15 0)
                                                  (15 0 15.5 -1 16 0)
                                                  (16 0 16.5 1 17 0)
                                                  (17 0 17.5 -1 18 0)
                                                  (18 0 18.5 1 19 0)
                                                  (19 0 19.5 -1 20 0)
                                                  (20 0 20.5 1 21 0)
                                                  (21 0 21.5 -1 22 0)
                                                  (22 0 22.5 1 23 0)
                                                  (23 0 23.5 -1 24 0)
                                                  (24 0 24.5 0.5 25 0)
                                                  (25 0 25.5 -0.5 26 0)
                                                  (26 0 26.5 1 27 0)
                                                  (27 0 27.5 -1 28 0)
                                                  (28 0 28.5 1 29 0)
                                                  (29 0 29.5 -1 30 0)
                                                  (30 0 30.5 0.5 31 0)
                                                  (31 0 31.5 -0.5 32 0)
                                                  (32 0 32.5 1 33 0)
                                                  (33 0 33.5 -1 34 0)
                                                  (34 0 34.5 1 35 0)
                                                  (35 0 35.5 -1 36 0)
                                                  (36 0 36.5 1 37 0)
                                                  (37 0 37.5 -1 38 0)
                                                  (38 0 38.5 1 39 0)
                                                  (39 0 39.5 -1 40 0)
                                                  (40 0 40.5 1 41 0)
                                                  (41 0 41.5 -1 42 0)
                                             )
                                             #0.5
                                            \revert Dots.staff-position
                                            \afterGrace
                                            eqs''''2.
                                            - \tweak padding #1
                                            - \punta-to-talon
                                            - \abjad-zero-padding-glissando
                                            \glissando
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
                                        \context Voice = "violin 1 legno voice 2"
                                        {
                                            \voiceTwo
                                            r8.
                                            [
                                            \override Voice.NoteHead.no-ledgers = ##t
                                            \override Voice.Accidental.stencil = ##f
                                            \textSpannerDown
                                            \tweak style #'cross
                                            e32
                                            - \tweak Y-extent ##f
                                            - \tweak Y-offset -13
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #0
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CL" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -1
                                            \startTextSpan
                                            \tweak style #'cross
                                            e32
                                            ]
                                            e4
                                            \once \override TupletBracket.padding = #3
                                            \times 4/5
                                            {
                                                \tweak style #'cross
                                                e16
                                                [
                                                r16
                                                \tweak style #'cross
                                                e16
                                                \tweak style #'cross
                                                e16
                                                \tweak style #'cross
                                                e16
                                                ]
                                            }
                                            e4
                                            \once \override TupletBracket.padding = #3
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 8/7
                                            {
                                                e8
                                                [
                                                \tweak style #'cross
                                                e32
                                                \tweak style #'cross
                                                e32
                                                \tweak style #'cross
                                                e32
                                                ]
                                            }
                                            e8.
                                            [
                                            \tweak style #'cross
                                            e16
                                            ]
                                            \once \override DynamicLineSpanner.staff-padding = 12
                                            e8.
                                            [
                                            - \tweak circled-tip ##t
                                            \>
                                            e16
                                            e16
                                            e16
                                            ]
                                            e16
                                            [
                                            e16
                                            r8.
                                            \tweak style #'cross
                                            e16
                                            ]
                                            \tweak style #'cross
                                            e16
                                            [
                                            \tweak style #'cross
                                            e16
                                            \tweak style #'cross
                                            e16
                                            \tweak style #'cross
                                            e16
                                            \tweak style #'cross
                                            e16
                                            \tweak style #'cross
                                            e16
                                            \tweak style #'cross
                                            e16
                                            \tweak style #'cross
                                            e16
                                            \tweak style #'cross
                                            e16
                                            \tweak style #'cross
                                            e16
                                            \tweak style #'cross
                                            e16
                                            \tweak style #'cross
                                            e16
                                            \!
                                            \stopTextSpan
                                            ]
                                            \textSpannerUp
                                            \revert Voice.NoteHead.no-ledgers
                                            \revert Voice.Accidental.stencil
                                        }
                                    >>
                                    \oneVoice
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \once \override Rest.transparent = ##t
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice2
                        {
                            \context Staff = "violin 2 staff"
                            {
                                \context Voice = "violin 2 voice"
                                {
                                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { Violin 2 }
                                      %! +SCORE
                                %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { V2 }
                                    r8.
                                      %! +SCORE
                                %%% ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #2 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #1.5 } \fontsize #5.5 { "= 60" } } }
                                    r8
                                    r8.
                                    r8
                                    r1.
                                    - \tweak padding #5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " accel. ( to " } \fontsize #-0.5 { \note { 8 } #1.5 } \fontsize #3 { "= 160 )" } } } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #1.5 } \fontsize #5.5 { "= 160" } } }
                                    \startTextSpanThree
                                    r1.
                                    \stopTextSpanThree
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \once \override Rest.transparent = ##t
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                }
                            }
                        }
                    >>
                }
                \tag #'voice3
                {
                    \context Staff = "viola staff"
                    {
                        \context Voice = "viola voice"
                        {
                            \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { Viola }
                              %! +SCORE
                        %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { VA }
                            r8.
                              %! +SCORE
                        %%% ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #2 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #1.5 } \fontsize #5.5 { "= 60" } } }
                            r8
                            r8.
                            r8
                            r1.
                            - \tweak padding #5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " accel. ( to " } \fontsize #-0.5 { \note { 8 } #1.5 } \fontsize #3 { "= 160 )" } } } \hspace #0.5 }
                            - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #1.5 } \fontsize #5.5 { "= 160" } } }
                            \startTextSpanThree
                            r1.
                            \stopTextSpanThree
                              %! +SCORE
                        %%% \once \override MultiMeasureRest.transparent = ##t
                              %! +SCORE
                        %%% \once \override Rest.transparent = ##t
                              %! +SCORE
                        %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            r4
                              %! +SCORE
                        %%% \stopStaff \startStaff
                        }
                    }
                }
                \tag #'voice4
                {
                    \context Staff = "cello staff"
                    {
                        \context Voice = "cello voice"
                        {
                            \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { Violoncello }
                              %! +SCORE
                        %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { VC }
                            r8.
                              %! +SCORE
                        %%% ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #2 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #1.5 } \fontsize #5.5 { "= 60" } } }
                            r8
                            r8.
                            r8
                            r1.
                            - \tweak padding #5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " accel. ( to " } \fontsize #-0.5 { \note { 8 } #1.5 } \fontsize #3 { "= 160 )" } } } \hspace #0.5 }
                            - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #1.5 } \fontsize #5.5 { "= 160" } } }
                            \startTextSpanThree
                            r1.
                            \stopTextSpanThree
                              %! +SCORE
                        %%% \once \override MultiMeasureRest.transparent = ##t
                              %! +SCORE
                        %%% \once \override Rest.transparent = ##t
                              %! +SCORE
                        %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            r4
                              %! +SCORE
                        %%% \stopStaff \startStaff
                        }
                    }
                }
            >>
        }
    >>
  %! abjad.LilyPondFile._get_format_pieces()
