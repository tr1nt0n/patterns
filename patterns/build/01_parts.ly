    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
              %! +SCORE
        %%% \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (-7 31 30 30)))
            \time 10/16
            s1 * 5/8
              %! +SCORE
        %%% \noBreak
            \time 6/4
            s1 * 3/2
              %! +SCORE
        %%% \break
              %! +SCORE
        %%% \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (-7 33 25 33)))
            \time 12/8
            s1 * 3/2
              %! +SCORE
        %%% \noBreak
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
                                            af32
                                            - \tweak padding #1
                                            ^ \punta-to-talon
                                              %! +SCORE
                                        %%% ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-10 \raise #3 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 16 } #1.5 } \fontsize #4 { "= 120" } } }
                                            [
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            - \tweak bound-details.left.Y #7
                                            - \tweak bound-details.right.Y #13
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #0
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "MSP" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -4
                                            \startTextSpan
                                            ~
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 11/12
                                            {
                                                  %! abjad.glissando(1)
                                                \hide NoteHead
                                                  %! abjad.glissando(1)
                                                \override Accidental.stencil = ##f
                                                  %! abjad.glissando(1)
                                                \override NoteColumn.glissando-skip = ##t
                                                  %! abjad.glissando(1)
                                                \override NoteHead.no-ledgers = ##t
                                                af8
                                                \big-half-harmonic
                                                  %! abjad.glissando(6)
                                                \revert Accidental.stencil
                                                  %! abjad.glissando(6)
                                                \revert NoteColumn.glissando-skip
                                                  %! abjad.glissando(6)
                                                \revert NoteHead.no-ledgers
                                                  %! abjad.glissando(6)
                                                \undo \hide NoteHead
                                                cqs'8
                                                - \tweak padding #1
                                                ^ \talon-to-punta
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                                \big-half-harmonic
                                                b8
                                                - \tweak padding #1
                                                ^ \punta-to-talon
                                                ]
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                ~
                                            }
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            b8
                                            [
                                            ~
                                            b32
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
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            dqf'32
                                            - \tweak padding #1
                                            ^ \talon-to-punta
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
                                            dqf'16
                                            ]
                                            ~
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 6/5
                                            {
                                                dqf'32
                                                [
                                                - \tweak padding #14
                                                - \abjad-solid-line-with-arrow
                                                - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " accel. ( to " } \fontsize #-0.5 { \note { 8 } #1.5 } \fontsize #3 { "= 160 )" } } } \hspace #0.5 }
                                                - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #1.5 } \fontsize #4 { "= 160" } } }
                                                \startTextSpanThree
                                                \big-half-harmonic
                                                  %! abjad.glissando(6)
                                                \revert Accidental.stencil
                                                  %! abjad.glissando(6)
                                                \revert NoteColumn.glissando-skip
                                                  %! abjad.glissando(6)
                                                \revert NoteHead.no-ledgers
                                                  %! abjad.glissando(6)
                                                \undo \hide NoteHead
                                                f'32
                                                - \tweak padding #1
                                                ^ \punta-to-talon
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                                \big-half-harmonic
                                                e'32
                                                - \tweak padding #1
                                                ^ \talon-to-punta
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                                \big-half-harmonic
                                                g'32
                                                - \tweak padding #2
                                                ^ \punta-to-talon
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                                \big-half-harmonic
                                                \set stemLeftBeamCount = 3
                                                \set stemRightBeamCount = 1
                                                f'32
                                                - \tweak padding #1
                                                ^ \talon-to-punta
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                ~
                                            }
                                            \set stemLeftBeamCount = 2
                                            \set stemRightBeamCount = 0
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            f'16
                                            ]
                                            ~
                                            f'4
                                            ~
                                            f'16
                                            [
                                            \big-half-harmonic
                                            \fancy-gliss
                                               #'(
                                                  (0 0 0.5 0.1 1 0)
                                                  (1 0 1.5 -0.1 2 0)
                                                  (2 0 2.5 0.2 3 0)
                                                  (3 0 3.5 -0.2 4 0)
                                                  (4 0 4.5 0.3 5 0)
                                                  (5 0 5.5 -0.3 6 0)
                                                  (6 0 6.5 0.4 7 0)
                                                  (7 0 7.5 -0.4 8 0)
                                                  (8 0 8.5 0.5 9 0)
                                                  (9 0 9.5 -0.5 10 0)
                                                  (10 0 10.5 0.7 11 0)
                                                  (11 0 11.5 -0.7 12 0)
                                                  (12 0 12.5 0.8 13 0)
                                                  (13 0 13.5 -0.8 14 0)
                                                  (14 0 14.5 0.9 15 0)
                                                  (15 0 15.5 -0.9 16 0)
                                                  (16 0 16.5 1 17 0)
                                                  (17 0 17.5 -1 18 0)
                                                  (18 0 18.5 1.2 19 0)
                                                  (19 0 19.5 -1.2 20 0)
                                                  (20 0 20.5 1.3 21 0)
                                                  (21 0 21.5 -1.3 22 0)
                                                  (22 0 22.5 7 23 0)
                                                  (23 0 23.5 -7 24 0)
                                                  (24 0 24.5 1.4 25 0)
                                                  (25 0 25.5 -1.4 26 0)
                                                  (26 0 26.5 1.5 27 0)
                                                  (27 0 27.5 -1.5 28 0)
                                                  (28 0 28.5 1.6 29 0)
                                                  (29 0 29.5 -1.6 30 0)
                                                  (30 0 30.5 1.7 31 0)
                                                  (31 0 31.5 -1.7 32 0)
                                                  (32 0 32.5 1.8 33 0)
                                                  (33 0 33.5 -1.8 34 0)
                                                  (34 0 34.5 1.9 35 0)
                                                  (35 0 35.5 -1.9 36 0)
                                                  (36 0 36.5 2 37 0)
                                                  (37 0 37.5 -2 38 0)
                                                  (38 0 38.5 2.3 39 0)
                                                  (39 0 39.5 -2.3 40 0)
                                                  (40 0 40.5 2.6 41 0)
                                                  (41 0 41.5 -2.6 42 0)
                                                  (42 0 42.5 2.9 43 0)
                                                  (43 0 43.5 -2.9 44 0)
                                                  (44 0 44.5 3 45 0)
                                                  (45 0 45.5 -3 46 0)
                                                  (46 0 46.5 3 47 0)
                                                  (47 0 47.5 -3 48 0)
                                                  (48 0 48.5 3 49 0)
                                                  (49 0 49.5 -3 50 0)
                                                  (50 0 50.5 3 51 0)
                                                  (51 0 51.5 -3 52 0)
                                                  (52 0 52.5 3 53 0)
                                                  (53 0 53.5 -3 54 0)
                                                  (54 0 54.5 2 55 0)
                                                  (55 0 55.5 -2 56 0)
                                                  (56 0 56.5 1 57 0)
                                                  (57 0 57.5 -1 58 0)
                                                  (58 0 58.5 0.5 59 0)
                                                  (59 0 59.5 -0.5 60 0)
                                             )
                                             #0.5
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            aqf'8.
                                            - \tweak padding #1
                                            ^ \punta-to-talon
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
                                            aqf'4
                                            ~
                                            aqf'8.
                                            [
                                            \big-half-harmonic
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            cs''16
                                            - \tweak padding #1
                                            ^ \talon-to-punta
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
                                            cs''8
                                            [
                                            \big-half-harmonic
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            dqs''16
                                            - \tweak padding #1
                                            ^ \punta-to-talon
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            \big-half-harmonic
                                            c''16
                                            - \tweak padding #1
                                            ^ \talon-to-punta
                                            ]
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            ~
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 15/12
                                            {
                                                  %! abjad.glissando(1)
                                                \hide NoteHead
                                                  %! abjad.glissando(1)
                                                \override Accidental.stencil = ##f
                                                  %! abjad.glissando(1)
                                                \override NoteColumn.glissando-skip = ##t
                                                  %! abjad.glissando(1)
                                                \override NoteHead.no-ledgers = ##t
                                                c''8
                                                \stopTextSpanThree
                                                [
                                                - \tweak circled-tip ##t
                                                _ \>
                                                \big-half-harmonic
                                                \fancy-gliss
                                                   #'(
                                                      (0 0 0.5 2 1 0)
                                                      (1 0 1.5 -2 2 0)
                                                      (2 0 2.5 0.5 3 0)
                                                      (3 0 3.5 -0.5 4 0)
                                                      (4 0 4.5 3 5 0)
                                                      (5 0 5.5 -3 6 0)
                                                      (6 0 6.5 0.5 7 0)
                                                      (7 0 7.5 -0.5 8 0)
                                                      (8 0 8.5 2 9 0)
                                                      (9 0 9.5 -2 10 0)
                                                      (10 0 10.5 1 11 0)
                                                      (11 0 11.5 -1 12 0)
                                                      (12 0 12.5 3 13 0)
                                                      (13 0 13.5 -3 14 0)
                                                      (14 0 14.5 0.5 15 0)
                                                      (15 0 15.5 -0.5 16 0)
                                                 )
                                                 #0.5
                                                  %! abjad.glissando(6)
                                                \revert Accidental.stencil
                                                  %! abjad.glissando(6)
                                                \revert NoteColumn.glissando-skip
                                                  %! abjad.glissando(6)
                                                \revert NoteHead.no-ledgers
                                                  %! abjad.glissando(6)
                                                \undo \hide NoteHead
                                                eqf''8
                                                - \tweak padding #1
                                                ^ \punta-to-talon
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                                \big-half-harmonic
                                                eqs''8
                                                - \tweak padding #1
                                                ^ \talon-to-punta
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                ~
                                            }
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            eqs''32
                                            ]
                                            ~
                                            eqs''4
                                            ~
                                            eqs''32
                                            [
                                            \big-half-harmonic
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            c'''16
                                            - \tweak padding #1
                                            ^ \punta-to-talon
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            \big-half-harmonic
                                            b''32
                                            - \tweak padding #1
                                            ^ \talon-to-punta
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
                                            b''4
                                            \big-half-harmonic
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            gs'''16.
                                            - \tweak padding #1
                                            ^ \punta-to-talon
                                            [
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            \big-half-harmonic
                                            \set stemLeftBeamCount = 3
                                            \set stemRightBeamCount = 1
                                            gqs'''32
                                            - \tweak padding #1
                                            ^ \talon-to-punta
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            ~
                                            \set stemLeftBeamCount = 1
                                            \set stemRightBeamCount = 2
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            gqs'''16
                                            \big-half-harmonic
                                            \set stemLeftBeamCount = 2
                                            \set stemRightBeamCount = 1
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            bqf'''16
                                            - \tweak padding #1
                                            ^ \punta-to-talon
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            ~
                                            \set stemLeftBeamCount = 1
                                            \set stemRightBeamCount = 3
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            bqf'''32
                                            \override Dots.staff-position = #2
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
                                            \afterGrace
                                            a'''16.
                                            - \tweak padding #1
                                            ^ \talon-to-punta
                                            \stopTextSpan
                                            ]
                                            (
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            {
                                                \grace-half-harmonic
                                                \revert Dots.staff-position
                                                \once \override Flag.stroke-style = #"grace"
                                                cqf''''16
                                                \!
                                                )
                                            }
                                        }
                                        \context Voice = "violin 1 legno voice"
                                        {
                                            \once \override Rest.staff-position = #-13.5
                                            \voiceTwo
                                            r32
                                            \pp
                                            - \tweak Beam.positions #'(-12 . -10.5)
                                            [
                                            \override Voice.NoteHead.no-ledgers = ##t
                                            \override Voice.Accidental.stencil = ##f
                                            \textSpannerDown
                                            e32
                                            - \tweak bound-details.left.Y #-10.5
                                            - \tweak bound-details.right.Y #-6.5
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #0
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLDP" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -2
                                            \startTextSpan
                                            ~
                                            e8
                                            ~
                                            e8
                                            ]
                                            ~
                                            e16
                                            [
                                            \once \override Rest.staff-position = #-11
                                            r16
                                            \tweak style #'cross
                                            e32
                                            ^ \staccato
                                            \set stemLeftBeamCount = 3
                                            \set stemRightBeamCount = 1
                                            \tweak style #'cross
                                            e32
                                            ^ \staccato
                                            \once \override Rest.staff-position = #-11
                                            \set stemLeftBeamCount = 1
                                            \set stemRightBeamCount = 2
                                            r16
                                            \once \override Rest.staff-position = #-11
                                            r32
                                            \tweak style #'cross
                                            e32
                                            ^ \staccato
                                            ]
                                            r8.
                                            [
                                            \tweak style #'cross
                                            b16
                                            ^ \staccato
                                            ]
                                            \once \override Rest.staff-position = #-8
                                            r4
                                            \tweak style #'cross
                                            b16
                                            ^ \staccato
                                            [
                                            \tweak style #'cross
                                            b16
                                            ^ \staccato
                                            \once \override Rest.staff-position = #-7
                                            r8
                                            ]
                                            \once \override Rest.staff-position = #-7
                                            r16
                                            [
                                            \tweak style #'cross
                                            e16
                                            ^ \staccato
                                            \once \override Rest.staff-position = #-7
                                            r16
                                            b16
                                            ]
                                            ~
                                            b8.
                                            [
                                            \tweak style #'cross
                                            b16
                                            ^ \staccato
                                            ]
                                            \tweak style #'cross
                                            b16
                                            ^ \staccato
                                            [
                                            \tweak style #'cross
                                            b16
                                            ^ \staccato
                                            \tweak style #'cross
                                            b16
                                            ^ \staccato
                                            \tweak style #'cross
                                            b16
                                            ^ \staccato
                                            ]
                                            b2.
                                            ~
                                            b32
                                            [
                                            \tweak style #'cross
                                            b16
                                            ^ \staccato
                                            \tweak style #'cross
                                            b32
                                            ^ \staccato
                                            \once \override Rest.staff-position = #-7
                                            r8
                                            \tweak style #'cross
                                            b8
                                            ^ \staccato
                                            ]
                                            \tweak style #'cross
                                            b8
                                            ^ \staccato
                                            [
                                            \tweak style #'cross
                                            b8
                                            ^ \staccato
                                            \tweak style #'cross
                                            b8
                                            ^ \staccato
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
                                    \once \override TupletBracket.padding = #4.5
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 5/6
                                    {
                                        \override Dots.staff-position = #2
                                        \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { Violin 2 }
                                          %! +SCORE
                                    %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { V2 }
                                        \override Staff.Stem.stemlet-length = 0.75
                                        af8
                                        - \tweak padding #1
                                        ^ \punta-to-talon
                                        \p
                                          %! +SCORE
                                    %%% ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-10 \raise #2 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 16 } #1.5 } \fontsize #4 { "= 120" } } }
                                        [
                                        (
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #1.5
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak circled-tip ##t
                                        \>
                                        - \tweak font-name "Bodoni72 Book" 
                                        - \tweak font-size 1
                                        - \tweak padding #13
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "1/2 Spz." } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -2
                                        \startTextSpan
                                        - \tweak padding #11
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \bow-tip-up \hspace #0.5 }
                                        \startTextSpanOne
                                        \revert Dots.staff-position
                                        \tweak style #'harmonic
                                        a8
                                        )
                                        \big-half-harmonic
                                        \revert Staff.Stem.stemlet-length
                                        fs'8
                                        - \tweak padding #1
                                        ^ \talon-to-punta
                                        \p
                                        ]
                                        (
                                        - \tweak circled-tip ##t
                                        \>
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 5/4
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        g8
                                        \stopTextSpanOne
                                        [
                                        - \tweak padding #11
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \bow-tip-half-down \hspace #0.5 }
                                        \startTextSpanOne
                                        \big-half-harmonic
                                        \revert Staff.Stem.stemlet-length
                                        f'8
                                        )
                                        ]
                                    }
                                    \once \override TupletBracket.padding = #4.5
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/5
                                    {
                                        \override Dots.staff-position = #2
                                        \override Staff.Stem.stemlet-length = 0.75
                                        \tweak style #'harmonic
                                        fs'8
                                        - \tweak padding #1
                                        ^ \punta-to-talon
                                        \pp
                                        \stopTextSpanOne
                                        [
                                        (
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #1.5
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak circled-tip ##t
                                        \>
                                        - \tweak padding #11
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \normale-bow-rotation \hspace #0.5 }
                                        \startTextSpanOne
                                        - \tweak padding #14
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " accel. ( to " } \fontsize #-0.5 { \note { 8 } #1.5 } \fontsize #3 { "= 160 )" } } } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #1.5 } \fontsize #4 { "= 160" } } }
                                        \startTextSpanThree
                                        \big-half-harmonic
                                        e'8
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #1.5
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        f'8
                                        )
                                        \stopTextSpanOne
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #1.5
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak padding #11
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \bow-tip-half-down \hspace #0.5 }
                                        - \tweak bound-details.right.text \bow-tip-half-up
                                        \startTextSpanOne
                                        \tweak style #'harmonic
                                        ef'8
                                        - \tweak padding #1
                                        ^ \talon-to-punta
                                        \pp
                                        (
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #1.5
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak circled-tip ##t
                                        \>
                                        \big-half-harmonic
                                        \revert Dots.staff-position
                                        \revert Staff.Stem.stemlet-length
                                        e'8
                                        )
                                        \stopTextSpan
                                        \stopTextSpanOne
                                        ]
                                    }
                                    r2.
                                    \!
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
                            <<
                                \context Voice = "viola voice temp"
                                {
                                    \override Dots.staff-position = #2
                                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { Viola }
                                      %! +SCORE
                                %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { VA }
                                    \clef "alto"
                                    \voiceOne
                                    gqf32
                                    - \tweak padding #1
                                    ^ \punta-to-talon
                                      %! +SCORE
                                %%% ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-10 \raise #1 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 16 } #1.5 } \fontsize #4 { "= 120" } } }
                                    [
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    - \tweak bound-details.left.Y #13
                                    - \tweak bound-details.right.Y #15
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 2
                                    - \tweak padding #0
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "MSP" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -6
                                    \startTextSpan
                                    - \tweak Y-extent ##f
                                    - \tweak bound-details.left.Y #8
                                    - \tweak bound-details.left.text \markup \override #'(font-name . "ekmelos") \concat { \general-align #Y #-0.5 \override #'(baseline-skip . 0) { \center-column { \line { \concat { \fontsize #6 { ( } \fontsize #6 { \char ##xe0d9 } \fontsize #6 { ) } } }\line { \concat { \fontsize #6 { ( } \fontsize #6 { \char ##xe0a4 } \fontsize #6 { ) } } }\fontsize #8 \line { \char ##xe0e3 }} } }
                                    - \tweak bound-details.right.Y #10
                                    \startTrillSpan
                                    cqs32
                                    - \tweak padding #1
                                    ^ \talon-to-punta
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
                                    cqs8
                                    \once \override TupletBracket.padding = #1
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 7/6
                                    {
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        d16
                                        - \tweak padding #1
                                        ^ \punta-to-talon
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        cs16
                                        - \tweak padding #1
                                        ^ \talon-to-punta
                                        ]
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \set stemLeftBeamCount = 2
                                        \set stemRightBeamCount = 2
                                        f16
                                        - \tweak padding #1
                                        ^ \punta-to-talon
                                        - \tweak Beam.positions #'(5 . 8)
                                        [
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                    }
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 3
                                    eqf32
                                    - \tweak padding #1
                                    ^ \talon-to-punta
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
                                    eqf64.
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    f128
                                    - \tweak padding #1
                                    ^ \punta-to-talon
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    ~
                                    \set stemLeftBeamCount = 3
                                    \set stemRightBeamCount = 1
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    f32
                                    ~
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 4
                                    f64
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    eqs32.
                                    - \tweak padding #1
                                    ^ \talon-to-punta
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
                                    eqs128
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    gf32..
                                    - \tweak padding #1
                                    ^ \punta-to-talon
                                    ]
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \fancy-gliss
                                       #'(
                                          (0 0 0.5 3 1 0)
                                          (1 0 1.5 -3 2 0)
                                          (2 0 2.5 2.5 3 0)
                                          (3 0 3.5 -2.5 4 0)
                                          (4 0 4.5 2 5 0)
                                          (5 0 5.5 -2 6 0)
                                          (6 0 6.5 1.5 7 0)
                                          (7 0 7.5 -1.5 8 0)
                                          (8 0 8.5 1 9 0)
                                          (9 0 9.5 -1 10 0)
                                          (10 0 10.5 0.5 11 0)
                                          (11 0 11.5 -0.5 12 0)
                                     )
                                     #0.5
                                    f16.
                                    - \tweak padding #1
                                    ^ \talon-to-punta
                                    \stopTrillSpan
                                    [
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    - \tweak padding #18
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " accel. ( to " } \fontsize #-0.5 { \note { 8 } #1.5 } \fontsize #3 { "= 160 )" } } } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #1.5 } \fontsize #4 { "= 160" } } }
                                    \startTextSpanThree
                                    bf32
                                    - \tweak padding #1
                                    ^ \punta-to-talon
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    ~
                                    - \tweak bound-details.left.text \markup \override #'(font-name . "ekmelos") \concat { \general-align #Y #-0.5 \override #'(baseline-skip . 0) { \center-column { \line { \concat { \fontsize #6 { ( } \fontsize #6 { \char ##xe0d9 } \fontsize #6 { ) } } }\fontsize #8 \line { \char ##xe0e3 }} } }
                                    \startTrillSpan
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    bf16
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    gqs16
                                    - \tweak padding #1
                                    ^ \talon-to-punta
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
                                    gqs32
                                    [
                                    \fancy-gliss
                                       #'(
                                          (0 0 0.5 0.5 1 0)
                                          (1 0 1.5 -0.5 2 0)
                                          (2 0 2.5 0.5 3 0)
                                          (3 0 3.5 -0.5 4 0)
                                          (4 0 4.5 4 5 0)
                                          (5 0 5.5 -4 6 0)
                                          (6 0 6.5 0.5 7 0)
                                          (7 0 7.5 -0.5 8 0)
                                          (8 0 8.5 0.5 9 0)
                                          (9 0 9.5 -0.5 10 0)
                                          (10 0 10.5 0.5 11 0)
                                          (11 0 11.5 -0.5 12 0)
                                          (12 0 12.5 3 13 0)
                                          (13 0 13.5 -3 14 0)
                                          (14 0 14.5 0.5 15 0)
                                          (15 0 15.5 -0.5 16 0)
                                     )
                                     #0.5
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    bqf16.
                                    - \tweak padding #1
                                    ^ \punta-to-talon
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \fancy-gliss
                                       #'(
                                          (0 0 0.5 3 1 0)
                                          (1 0 1.5 -3 2 0)
                                          (2 0 2.5 2 3 0)
                                          (3 0 3.5 -2 4 0)
                                          (4 0 4.5 4 5 0)
                                          (5 0 5.5 -4 6 0)
                                          (6 0 6.5 1 7 0)
                                          (7 0 7.5 -1 8 0)
                                          (8 0 8.5 0.5 9 0)
                                          (9 0 9.5 -0.5 10 0)
                                     )
                                     #0.5
                                    a8
                                    - \tweak padding #1
                                    ^ \talon-to-punta
                                    ]
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \fancy-gliss
                                       #'(
                                          (0 0 0.5 0.5 1 0)
                                          (1 0 1.5 -0.5 2 0)
                                          (2 0 2.5 1 3 0)
                                          (3 0 3.5 -1 4 0)
                                          (4 0 4.5 5 5 0)
                                          (5 0 5.5 -5 6 0)
                                          (6 0 6.5 2 7 0)
                                          (7 0 7.5 -2 8 0)
                                     )
                                     #0.5
                                    cqs'8
                                    - \tweak padding #1
                                    ^ \punta-to-talon
                                    [
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    b8
                                    - \tweak padding #1
                                    ^ \talon-to-punta
                                    ]
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \fancy-gliss
                                       #'(
                                          (0 0 0.5 3 1 0)
                                          (1 0 1.5 -3 2 0)
                                          (2 0 2.5 0.5 3 0)
                                          (3 0 3.5 -0.5 4 0)
                                          (4 0 4.5 1 5 0)
                                          (5 0 5.5 -1 6 0)
                                          (6 0 6.5 1.5 7 0)
                                          (7 0 7.5 -1.5 8 0)
                                          (8 0 8.5 2 9 0)
                                          (9 0 9.5 -2 10 0)
                                          (10 0 10.5 1.5 11 0)
                                          (11 0 11.5 -1.5 12 0)
                                          (12 0 12.5 1 13 0)
                                          (13 0 13.5 -1 14 0)
                                          (14 0 14.5 0.5 15 0)
                                          (15 0 15.5 -0.5 16 0)
                                     )
                                     #0.5
                                    cs'8
                                    - \tweak padding #1
                                    ^ \punta-to-talon
                                    \stopTrillSpan
                                    [
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    e'8
                                    - \tweak padding #1
                                    ^ \talon-to-punta
                                    ]
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    ~
                                    - \tweak bound-details.left.text \markup \override #'(font-name . "ekmelos") \concat { \general-align #Y #-0.5 \override #'(baseline-skip . 0) { \center-column { \line { \concat { \fontsize #6 { ( } \fontsize #6 { \char ##xe0d9 } \fontsize #6 { ) } } }\line { \concat { \fontsize #6 { ( } \fontsize #6 { \char ##xe0d9 } \fontsize #6 { ) } } }\fontsize #8 \line { \char ##xe0e3 }} } }
                                    \startTrillSpan
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    e'2
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    dqs'4
                                    - \tweak padding #1
                                    ^ \punta-to-talon
                                    \stopTextSpanThree
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    - \tweak circled-tip ##t
                                    _ \>
                                    ~
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    dqs'16
                                    [
                                    \fancy-gliss
                                       #'(
                                          (0 0 0.5 0.5 1 0)
                                          (1 0 1.5 -0.5 2 0)
                                          (2 0 2.5 0.5 3 0)
                                          (3 0 3.5 -0.5 4 0)
                                          (4 0 4.5 0.5 5 0)
                                          (5 0 5.5 -0.5 6 0)
                                          (6 0 6.5 5 7 0)
                                          (7 0 7.5 -5 8 0)
                                          (8 0 8.5 0.5 9 0)
                                          (9 0 9.5 -0.5 10 0)
                                          (10 0 10.5 0.5 11 0)
                                          (11 0 11.5 -0.5 12 0)
                                          (12 0 12.5 0.5 13 0)
                                          (13 0 13.5 -0.5 14 0)
                                          (14 0 14.5 0.5 15 0)
                                          (15 0 15.5 -0.5 16 0)
                                          (16 0 16.5 5 17 0)
                                          (17 0 17.5 -5 18 0)
                                          (18 0 18.5 0.5 19 0)
                                          (19 0 19.5 -0.5 20 0)
                                          (20 0 20.5 0.5 21 0)
                                          (21 0 21.5 -0.5 22 0)
                                          (22 0 22.5 5 23 0)
                                          (23 0 23.5 -5 24 0)
                                          (24 0 24.5 0.5 25 0)
                                          (25 0 25.5 -0.5 26 0)
                                     )
                                     #0.5
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    g'16
                                    - \tweak padding #1
                                    ^ \talon-to-punta
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
                                    g'8
                                    [
                                    \fancy-gliss
                                       #'(
                                          (0 0 0.5 0.5 1 0)
                                          (1 0 1.5 -0.5 2 0)
                                          (2 0 2.5 1 3 0)
                                          (3 0 3.5 -1 4 0)
                                          (4 0 4.5 1.5 5 0)
                                          (5 0 5.5 -1.5 6 0)
                                          (6 0 6.5 2 7 0)
                                          (7 0 7.5 -2 8 0)
                                          (8 0 8.5 2.5 9 0)
                                          (9 0 9.5 -2.5 10 0)
                                          (10 0 10.5 3 11 0)
                                          (11 0 11.5 -3 12 0)
                                          (12 0 12.5 2.5 13 0)
                                          (13 0 13.5 -2.5 14 0)
                                          (14 0 14.5 2 15 0)
                                          (15 0 15.5 -2 16 0)
                                          (16 0 16.5 1.5 17 0)
                                          (17 0 17.5 -1.5 18 0)
                                          (18 0 18.5 1 19 0)
                                          (19 0 19.5 -1 20 0)
                                          (20 0 20.5 0.5 21 0)
                                          (21 0 21.5 -0.5 22 0)
                                     )
                                     #0.5
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    fqs'8
                                    - \tweak padding #1
                                    ^ \punta-to-talon
                                    \stopTrillSpan
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
                                    fqs'16
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    cqf'16
                                    - \tweak padding #1
                                    ^ \talon-to-punta
                                    ]
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    ~
                                    - \tweak Y-extent ##f
                                    - \tweak bound-details.left.Y #9
                                    - \tweak bound-details.left.text \markup \override #'(font-name . "ekmelos") \concat { \general-align #Y #-0.5 \override #'(baseline-skip . 0) { \center-column { \line { \concat { \fontsize #6 { ( } \fontsize #8 { \char ##xe0e3 } \fontsize #6 { ) } } }\line { \concat { \fontsize #6 { ( } \fontsize #6 { \char ##xe0d9 } \fontsize #6 { ) } } }\fontsize #8 \line { \char ##xe0e3 }} } }
                                    - \tweak bound-details.right.Y #13
                                    \startTrillSpan
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    cqf'8
                                    [
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    b16
                                    - \tweak padding #1
                                    ^ \punta-to-talon
                                    ]
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \once \override TupletBracket.padding = #1
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 9/8
                                    {
                                        a'8
                                        - \tweak padding #1
                                        ^ \talon-to-punta
                                        [
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        gqs'8
                                        - \tweak padding #1
                                        ^ \punta-to-talon
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        d''8
                                        - \tweak padding #1
                                        ^ \talon-to-punta
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \override Dots.staff-position = #2
                                        \revert Dots.staff-position
                                        \afterGrace
                                        cqs''8
                                        - \tweak padding #1
                                        ^ \punta-to-talon
                                        \stopTextSpan
                                        ]
                                        (
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        {
                                            \revert Dots.staff-position
                                            \once \override Flag.stroke-style = #"grace"
                                            f''16
                                            \!
                                            )
                                            \stopTrillSpan
                                        }
                                    }
                                }
                                \context Voice = "viola legno voice"
                                {
                                    \override Voice.NoteHead.no-ledgers = ##t
                                    \override Voice.Accidental.stencil = ##f
                                    \textSpannerDown
                                    \once \override DynamicLineSpanner.staff-padding = 14
                                    \voiceTwo
                                    \tweak style #'cross
                                    e,32
                                    \pp
                                    ^ \staccato
                                    - \tweak Beam.positions #'(-12 . -10.5)
                                    [
                                    - \tweak bound-details.left.Y #-11
                                    - \tweak bound-details.right.Y #-7
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 2
                                    - \tweak padding #0
                                    - \abjad-dashed-line-with-up-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "CLDP" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpan
                                    \once \override Rest.staff-position = #-12.5
                                    r32
                                    \once \override Rest.staff-position = #-12.5
                                    r8
                                    e,8
                                    ]
                                    ~
                                    e,8.
                                    [
                                    \tweak style #'cross
                                    e,32
                                    ^ \staccato
                                    \tweak style #'cross
                                    e,32
                                    ^ \staccato
                                    ~
                                    \tweak style #'cross
                                    e,32
                                    \tweak style #'cross
                                    e,32
                                    ^ \staccato
                                    ]
                                    \tweak style #'cross
                                    g,32
                                    ^ \staccato
                                    [
                                    \tweak style #'cross
                                    g,32
                                    ^ \staccato
                                    \tweak style #'cross
                                    g,16
                                    ^ \staccato
                                    \tweak style #'cross
                                    g,16
                                    ^ \staccato
                                    r16
                                    ]
                                    \once \override Rest.staff-position = #-8
                                    r16
                                    [
                                    \tweak style #'cross
                                    g,16
                                    ^ \staccato
                                    \once \override Rest.staff-position = #-8
                                    r16
                                    \tweak style #'cross
                                    g,16
                                    ^ \staccato
                                    ]
                                    \once \override Rest.staff-position = #-8
                                    r8
                                    [
                                    \tweak style #'cross
                                    b,16
                                    ^ \staccato
                                    \tweak style #'cross
                                    b,16
                                    ^ \staccato
                                    ]
                                    \tweak style #'cross
                                    b,16
                                    ^ \staccato
                                    [
                                    \once \override Rest.staff-position = #-8
                                    r16
                                    \tweak style #'cross
                                    b,16
                                    ^ \staccato
                                    \tweak style #'cross
                                    b,16
                                    ^ \staccato
                                    ]
                                    \tweak style #'cross
                                    b,16
                                    ^ \staccato
                                    [
                                    \tweak style #'cross
                                    b,16
                                    ^ \staccato
                                    b,8
                                    ]
                                    ~
                                    b,4
                                    ~
                                    b,4
                                    ~
                                    b,16
                                    [
                                    \once \override Rest.staff-position = #-8
                                    r16
                                    ]
                                    \tweak style #'cross
                                    b,16
                                    ^ \staccato
                                    [
                                    \tweak style #'cross
                                    b,16
                                    ^ \staccato
                                    \once \override Rest.staff-position = #-8
                                    r16
                                    \tweak style #'cross
                                    b,16
                                    ^ \staccato
                                    ~
                                    \tweak style #'cross
                                    b,8
                                    ]
                                    \tweak style #'cross
                                    b,16
                                    ^ \staccato
                                    [
                                    \tweak style #'cross
                                    b,16
                                    ^ \staccato
                                    \tweak style #'cross
                                    b,16
                                    ^ \staccato
                                    b,16
                                    ~
                                    b,8
                                    ]
                                    ~
                                    b,4.
                                    \stopTextSpan
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
                \tag #'voice4
                {
                    \context Staff = "cello staff"
                    {
                        \context Voice = "cello voice"
                        {
                            \override Dots.staff-position = #2
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \once \override NoteHead.no-ledgers = ##t
                            \override Staff.Clef.stencil = #ly:text-interface::print
                            \override Staff.Clef.text = \string-clef
                            \staff-line-count 4
                            \override Staff.StaffSymbol.line-positions = #'(9 7 0 -9)
                            \override Staff.BarLine.bar-extent = #'(-4.5 . 4.5)
                            \override Rest.staff-position = #0
                            \override Staff.Accidental.stencil = ##f
                            \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { Violoncello }
                              %! +SCORE
                        %%% \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { VC }
                            \tweak style #'harmonic
                            c'4
                            _ #(make-dynamic-script
                                (markup
                                    #:whiteout
                                    #:line (
                                        #:general-align Y -2 #:normal-text #:larger "“"
                                        #:hspace -0.1
                                        #:dynamic "pp"
                                        #:hspace -0.25
                                        #:general-align Y -2 #:normal-text #:larger "”"
                                        )
                                    )
                                )
                              %! +SCORE
                        %%% ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-10 \raise #1 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 16 } #1.5 } \fontsize #4 { "= 120" } } }
                            (
                              %! abjad.glissando(7)
                            - \tweak bound-details.right.arrow ##t
                              %! abjad.glissando(7)
                            - \tweak thickness #1.5
                              %! abjad.glissando(7)
                            - \abjad-zero-padding-glissando
                              %! abjad.glissando(7)
                            \glissando
                            - \tweak font-name "Bodoni72 Book" 
                            - \tweak font-size 1
                            - \tweak padding #6
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "IV" } \hspace #0.5 }
                            - \tweak bound-details.right.padding -0.75
                            \startTextSpanOne
                            - \tweak font-name "Bodoni72 Book" 
                            - \tweak font-size 1
                            - \tweak padding #8
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "Vib. on jawharp, jawharp on string" } \hspace #0.5 }
                            - \tweak bound-details.right.padding -0.75
                            \startTextSpan
                            - \tweak stencil #constante-hairpin
                            \<
                            ~
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.transparent = ##t
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
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \once \override NoteHead.no-ledgers = ##t
                              %! abjad.glissando(6)
                            \revert Accidental.stencil
                              %! abjad.glissando(6)
                            \revert NoteColumn.glissando-skip
                              %! abjad.glissando(6)
                            \revert NoteHead.no-ledgers
                              %! abjad.glissando(6)
                            \undo \hide NoteHead
                            c''8.
                            - \tweak bound-details.right.arrow ##t
                            - \tweak thickness #1.5
                            - \abjad-zero-padding-glissando
                            \glissando
                            - \tweak circled-tip ##t
                            \>
                            \once \override RepeatTie.transparent = ##t
                            \once \override Stem.stencil = ##f
                            \once \override Beam.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Tie.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \once \override NoteHead.no-ledgers = ##t
                            \afterGrace
                            \tweak style #'harmonic
                            a'8
                            - \tweak bound-details.right.arrow ##t
                            - \tweak thickness #1.5
                            - \abjad-zero-padding-glissando
                            \glissando
                            {
                                \big-half-harmonic
                                \once \override RepeatTie.transparent = ##t
                                \once \override Stem.stencil = ##f
                                \once \override Beam.stencil = ##f
                                \once \override Flag.stencil = ##f
                                \once \override Dots.stencil = ##f
                                \once \override Tie.stencil = ##f
                                \once \override NoteHead.duration-log = 2
                                \once \override NoteHead.no-ledgers = ##t
                                \revert Dots.staff-position
                                g''16
                                \!
                                )
                                \stopTextSpan
                                \stopTextSpanOne
                            }
                            \staff-line-count 5
                            \revert Staff.StaffSymbol.line-positions
                            \revert Rest.staff-position
                            \revert Staff.Accidental.stencil
                            \revert Staff.Clef.stencil
                            r2
                            - \tweak padding #13.5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " accel. ( to " } \fontsize #-0.5 { \note { 8 } #1.5 } \fontsize #3 { "= 160 )" } } } \hspace #0.5 }
                            - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #1.5 } \fontsize #4 { "= 160" } } }
                            \startTextSpanThree
                            \override Staff.BarLine.bar-extent = #'(-2 . 2)
                            \clef "bass"
                            <
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup { \abjad-natural  }
                                a,!
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-twenty-three-limit-comma-up \hspace #0.125 \abjad-sharp  }
                                as,!
                            >4
                            ^ \markup \center-align { \center-column { \line { \concat { +30 }  }\line { \concat { +0 }  } } }
                            - \tweak circled-tip ##t
                            \<
                            - \tweak font-name "Bodoni72 Book" 
                            - \tweak font-size 1
                            - \tweak padding #11
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "diagonal bow, touching bridge for added air sound" } \hspace #0.5 }
                            - \tweak bound-details.right.padding -10
                            \startTextSpanOne
                            ~
                            <
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup { \abjad-natural  }
                                a,
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-twenty-three-limit-comma-up \hspace #0.125 \abjad-sharp  }
                                as,
                            >4
                            r16
                            [
                            <
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup { \abjad-natural  }
                                a,!
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-twenty-three-limit-comma-up \hspace #0.125 \abjad-sharp  }
                                as,!
                            >8.
                            \pp
                            ^ \markup \center-align { \center-column { \line { \concat { +30 }  }\line { \concat { +0 }  } } }
                            ]
                            ~
                            <
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup { \abjad-natural  }
                                a,
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-twenty-three-limit-comma-up \hspace #0.125 \abjad-sharp  }
                                as,
                            >4
                            \stopTextSpanOne
                            \times 4/5
                            {
                                \override Dots.staff-position = #2
                                \big-half-harmonic
                                \fancy-gliss
                                   #'(
                                      (0 0 0.5 0.5 1 0)
                                      (1 0 1.5 -0.5 2 0)
                                      (2 0 2.5 0.5 3 0)
                                      (3 0 3.5 -0.5 4 0)
                                      (4 0 4.5 0.5 5 0)
                                      (5 0 5.5 -0.5 6 0)
                                 )
                                 #0.5
                                a,8
                                - \tweak padding #1
                                ^ \punta-to-talon
                                \stopTextSpanThree
                                - \abjad-zero-padding-glissando
                                \glissando
                                - \tweak circled-tip ##t
                                _ \>
                                - \tweak font-name "Bodoni72 Book" 
                                - \tweak font-size 2
                                - \tweak padding #11.5
                                - \abjad-dashed-line-with-hook
                                - \tweak bound-details.left.text \markup \concat { \upright { "MSP" } \hspace #0.5 }
                                \startTextSpan
                                \big-half-harmonic
                                \fancy-gliss
                                   #'(
                                      (0 0 0.5 0.5 1 0)
                                      (1 0 1.5 -0.5 2 0)
                                      (2 0 2.5 0.5 3 0)
                                      (3 0 3.5 -0.5 4 0)
                                      (4 0 4.5 0.5 5 0)
                                      (5 0 5.5 -0.5 6 0)
                                      (6 0 6.5 0.5 7 0)
                                      (7 0 7.5 -0.5 8 0)
                                      (8 0 8.5 0.5 9 0)
                                      (9 0 9.5 -0.5 10 0)
                                 )
                                 #0.5
                                a,4.
                                - \tweak padding #1
                                ^ \talon-to-punta
                                - \abjad-zero-padding-glissando
                                \glissando
                                \big-half-harmonic
                                \fancy-gliss
                                   #'(
                                      (0 0 0.5 0.5 1 0)
                                      (1 0 1.5 -0.5 2 0)
                                      (2 0 2.5 0.5 3 0)
                                      (3 0 3.5 -0.5 4 0)
                                      (4 0 4.5 0.5 5 0)
                                      (5 0 5.5 -0.5 6 0)
                                 )
                                 #0.5
                                a,8
                                - \tweak padding #1
                                ^ \punta-to-talon
                                  %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                  %! abjad.glissando(7)
                                \glissando
                                ~
                            }
                              %! abjad.glissando(1)
                            \hide NoteHead
                              %! abjad.glissando(1)
                            \override Accidental.stencil = ##f
                              %! abjad.glissando(1)
                            \override NoteColumn.glissando-skip = ##t
                              %! abjad.glissando(1)
                            \override NoteHead.no-ledgers = ##t
                            a,8
                            [
                            ~
                            a,16
                            ]
                            ~
                            \times 2/3
                            {
                                a,8
                                \big-half-harmonic
                                \fancy-gliss
                                   #'(
                                      (0 0 0.5 0.5 1 0)
                                      (1 0 1.5 -0.5 2 0)
                                      (2 0 2.5 0.5 3 0)
                                      (3 0 3.5 -0.5 4 0)
                                      (4 0 4.5 0.5 5 0)
                                      (5 0 5.5 -0.5 6 0)
                                      (6 0 6.5 0.5 7 0)
                                      (7 0 7.5 -0.5 8 0)
                                      (8 0 8.5 0.5 9 0)
                                      (9 0 9.5 -0.5 10 0)
                                 )
                                 #0.5
                                  %! abjad.glissando(6)
                                \revert Accidental.stencil
                                  %! abjad.glissando(6)
                                \revert NoteColumn.glissando-skip
                                  %! abjad.glissando(6)
                                \revert NoteHead.no-ledgers
                                  %! abjad.glissando(6)
                                \undo \hide NoteHead
                                a,4
                                - \tweak padding #1
                                ^ \talon-to-punta
                                  %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                  %! abjad.glissando(7)
                                \glissando
                                ~
                            }
                              %! abjad.glissando(1)
                            \hide NoteHead
                              %! abjad.glissando(1)
                            \override Accidental.stencil = ##f
                              %! abjad.glissando(1)
                            \override NoteColumn.glissando-skip = ##t
                              %! abjad.glissando(1)
                            \override NoteHead.no-ledgers = ##t
                            a,16
                            [
                            ~
                            a,8
                            ]
                            ~
                            a,16
                            ~
                            \times 4/5
                            {
                                a,16
                                [
                                \big-half-harmonic
                                \fancy-gliss
                                   #'(
                                      (0 0 0.5 0.5 1 0)
                                      (1 0 1.5 -0.5 2 0)
                                      (2 0 2.5 0.5 3 0)
                                      (3 0 3.5 -0.5 4 0)
                                      (4 0 4.5 0.5 5 0)
                                      (5 0 5.5 -0.5 6 0)
                                 )
                                 #0.5
                                  %! abjad.glissando(6)
                                \revert Accidental.stencil
                                  %! abjad.glissando(6)
                                \revert NoteColumn.glissando-skip
                                  %! abjad.glissando(6)
                                \revert NoteHead.no-ledgers
                                  %! abjad.glissando(6)
                                \undo \hide NoteHead
                                a,8.
                                - \tweak padding #1
                                ^ \punta-to-talon
                                - \abjad-zero-padding-glissando
                                \glissando
                                \big-half-harmonic
                                \fancy-gliss
                                   #'(
                                      (0 0 0.5 0.5 1 0)
                                      (1 0 1.5 -0.5 2 0)
                                      (2 0 2.5 0.5 3 0)
                                      (3 0 3.5 -0.5 4 0)
                                      (4 0 4.5 0.5 5 0)
                                      (5 0 5.5 -0.5 6 0)
                                      (6 0 6.5 0.5 7 0)
                                      (7 0 7.5 -0.5 8 0)
                                      (8 0 8.5 0.5 9 0)
                                      (9 0 9.5 -0.5 10 0)
                                 )
                                 #0.5
                                a,16
                                - \tweak padding #1
                                ^ \talon-to-punta
                                ]
                                  %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                  %! abjad.glissando(7)
                                \glissando
                                ~
                            }
                              %! abjad.glissando(1)
                            \hide NoteHead
                              %! abjad.glissando(1)
                            \override Accidental.stencil = ##f
                              %! abjad.glissando(1)
                            \override NoteColumn.glissando-skip = ##t
                              %! abjad.glissando(1)
                            \override NoteHead.no-ledgers = ##t
                            \afterGrace
                            a,16
                            {
                                \once \override Stem.stencil = ##f
                                \once \override Flag.stencil = ##f
                                \once \override NoteHead.no-ledgers = ##t
                                \once \override Accidental.stencil = ##f
                                \revert Dots.staff-position
                                \once \override NoteHead.transparent = ##t
                                  %! abjad.glissando(6)
                                \revert Accidental.stencil
                                  %! abjad.glissando(6)
                                \revert NoteColumn.glissando-skip
                                  %! abjad.glissando(6)
                                \revert NoteHead.no-ledgers
                                  %! abjad.glissando(6)
                                \undo \hide NoteHead
                                a,16
                                \!
                                \stopTextSpan
                            }
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
