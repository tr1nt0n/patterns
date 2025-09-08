    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
              %! +SCORE
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (-7 20 15 32)))
            \once \override BarNumber.Y-offset = #-12
            \time 8/8
            s1 * 1
              %! +SCORE
            \noBreak
            \time 10/8
            s1 * 5/4
              %! +SCORE
            \break
              %! +SCORE
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (-7 20 15 32)))
            \once \override BarNumber.Y-offset = #-12
            \time 4/4
            s1 * 1
              %! +SCORE
            \noBreak
            \time 11/8
            s1 * 11/8
              %! +SCORE
            \break
            \time 10/8
            s1 * 5/4
              %! +SCORE
            \noBreak
            \time 1/4
            s1 * 1/4
              %! +SCORE
            \break
            \time 2/2
            s1 * 1
              %! +SCORE
            \noBreak
            \time 3/2
            s1 * 3/2
              %! +SCORE
            \break
            \time 2/2
            s1 * 1
              %! +SCORE
            \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 2/2
            s1 * 1
              %! +SCORE
            \break
            \once \override Score.TimeSignature.stencil = ##f
            \time 2/2
            s1 * 1
              %! +SCORE
            \noBreak
            \once \override Score.TimeSignature.stencil = ##f
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
                            \context Staff = "violin 1 staff"
                            {
                                \context Voice = "violin 1 voice"
                                {
                                    <<
                                        \context Voice = "violin 1 voice temp"
                                        {
                                            \times 4/6
                                            {
                                                \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { Violin 1 }
                                                  %! +SCORE
                                                \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { V1 }
                                                \voiceOne
                                                cs'4
                                                  %! +SCORE
                                                ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-7 \raise #2 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 99" } } }
                                                - \tweak font-name "Bodoni72 Book" 
                                                - \tweak font-size 1
                                                - \tweak padding #10
                                                - \abjad-solid-line-with-arrow
                                                - \tweak bound-details.left.text \markup \concat { \upright { "Norm." } \hspace #0.5 }
                                                \startTextSpanOne
                                                a'4
                                                bf'4
                                                e'4
                                                a'4
                                                d'4
                                            }
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 5/4
                                            {
                                                d'4
                                                f'4
                                                _ \staccato
                                                _ \tenuto
                                                \stopTextSpanOne
                                                - \tweak font-name "Bodoni72 Book" 
                                                - \tweak font-size 1
                                                - \tweak padding #10
                                                - \abjad-solid-line-with-arrow
                                                - \tweak bound-details.left.text \markup \concat { \upright { "1/2 Batt." } \hspace #0.5 }
                                                \startTextSpanOne
                                                c''4
                                                _ \staccato
                                                _ \tenuto
                                                e'4
                                                _ \staccato
                                                _ \tenuto
                                            }
                                            \times 4/5
                                            {
                                                g'4
                                                - \staccato
                                                - \tenuto
                                                bf'4
                                                _ \staccato
                                                _ \tenuto
                                                \stopTextSpanOne
                                                - \tweak font-name "Bodoni72 Book" 
                                                - \tweak font-size 1
                                                - \tweak padding #10
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { \upright { "1/4 Batt." } \hspace #0.5 }
                                                - \tweak bound-details.right.padding 1
                                                \startTextSpanOne
                                                d'4
                                                _ \staccato
                                                _ \tenuto
                                                f'4
                                                _ \staccato
                                                _ \tenuto
                                                g'4
                                                \stopTextSpanOne
                                                - \tweak font-name "Bodoni72 Book" 
                                                - \tweak font-size 1
                                                - \tweak padding #10
                                                - \abjad-solid-line-with-arrow
                                                - \tweak bound-details.left.text \markup \concat { \upright { "Norm." } \hspace #0.5 }
                                                - \tweak bound-details.right.text \markup \upright { "3/4 Batt." }
                                                - \tweak bound-details.right.padding -10
                                                \startTextSpanOne
                                            }
                                            \once \override TupletBracket.padding = 0.5
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 11/12
                                            {
                                                e''2
                                                a''2
                                                - \staccato
                                                - \tenuto
                                                cs'2
                                                _ \staccato
                                                \stopTextSpanOne
                                            }
                                        }
                                        \context Voice = "violin 1 polyrhythm voice"
                                        {
                                            \voiceTwo
                                            e'4
                                            - \tweak circled-tip ##t
                                            \<
                                            - \tweak padding 9.5
                                            \startBowSpan #'((0 . 5) (0.09803921568627451 . 3) (0.1764705882352941 . 4) (0.2745098039215686 . 2) (0.3529411764705882 . 3) (0.47058823529411764 . 1) (0.5686274509803921 . 2) (0.7058823529411764 . 0.5) (0.8235294117647058 . 0.75) (1.0 . 0))
                                            g4
                                            bf4
                                            d'4
                                            f'4
                                            g4
                                            ^ \staccato
                                            ^ \tenuto
                                            e'4
                                            ^ \staccato
                                            ^ \tenuto
                                            a'4
                                            \ppp
                                            ^ \staccato
                                            ^ \tenuto
                                            cs'4
                                            ^ \staccato
                                            ^ \tenuto
                                            \stopBowSpan
                                            \times 2/3
                                            {
                                                cs'2
                                                - \staccato
                                                - \tenuto
                                                - \tweak padding 8
                                                \startBowSpan #'((0 . 2) (0.01694915254237288 . 3) (0.05084745762711865 . 1) (0.06779661016949153 . 2) (0.0847457627118644 . 0.5) (0.22033898305084745 . 4) (0.3728813559322034 . 2) (0.5084745762711864 . 3) (0.6271186440677966 . 1) (0.728813559322034 . 2) (0.8474576271186441 . 0.5) (0.9322033898305085 . 0.75) (1.0 . 0))
                                                bf2
                                                ^ \staccato
                                                ^ \tenuto
                                                cs'2
                                                ^ \staccato
                                                ^ \tenuto
                                            }
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 11/12
                                            {
                                                cs''4
                                                a'4
                                                ^ \staccato
                                                ^ \tenuto
                                                \<
                                                e''4
                                                - \staccato
                                                - \tenuto
                                                d''4
                                                ^ \staccato
                                                as'4
                                                ^ \staccato
                                                f'4
                                                \p
                                                ^ \staccato
                                                \stopBowSpan
                                            }
                                        }
                                    >>
                                    \oneVoice
                                    r4.
                                    - \tweak padding #5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " rit. ( to " } \fontsize #-0.5 { \note { 4 } #1.5 } \fontsize #3 { "= 83 )" } } } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 83" } } }
                                    \startTextSpanThree
                                    r4
                                    r4.
                                    r4
                                    r4
                                    r1
                                    \stopTextSpanThree
                                    r1.
                                    r1
                                    r1
                                    r1
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
                        \tag #'voice2
                        {
                            \context Staff = "violin 2 staff"
                            {
                                \context Voice = "violin 2 voice"
                                {
                                    \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { Violin 2 }
                                      %! +SCORE
                                    \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { V2 }
                                    r1
                                      %! +SCORE
                                    ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #1 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 99" } } }
                                    r4.
                                    r4
                                    r4.
                                    r4
                                    r1
                                    r4.
                                    r4
                                    r4
                                    r4
                                    r4
                                    <<
                                        \context Voice = "violin 2 voice temp"
                                        {
                                            \once \override Rest.staff-position = #0
                                            \voiceOne
                                            r4.
                                            - \tweak padding #5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " rit. ( to " } \fontsize #-0.5 { \note { 4 } #1.5 } \fontsize #3 { "= 83 )" } } } \hspace #0.5 }
                                            - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 83" } } }
                                            \startTextSpanThree
                                            \once \override Rest.staff-position = #0
                                            r4
                                            \once \override Rest.staff-position = #0
                                            r4.
                                            \once \override Rest.staff-position = #0
                                            r4
                                            \once \override Rest.staff-position = #0
                                            r4
                                            e'4
                                            \stopTextSpanThree
                                            a'4
                                            fs'4
                                            af'4
                                            ef'2
                                            a'2
                                            cs'2
                                            \times 4/6
                                            {
                                                a'4
                                                af'4
                                                g'4
                                                c'4
                                                fs'4
                                                b'4
                                            }
                                            \times 4/5
                                            {
                                                af'4
                                                fs'4
                                                af'4
                                                ef'4
                                                fs'4
                                            }
                                            \times 2/3
                                            {
                                                b'2
                                                a'2
                                                fs'2
                                            }
                                            g'4
                                            c'4
                                            a'4
                                            b'4
                                        }
                                        \context Voice = "violin 2 polyrhythm voice"
                                        {
                                            \once \override Rest.transparent = ##t
                                            \once \override Dots.stencil = ##f
                                            \voiceTwo
                                            r4.
                                            \once \override Rest.transparent = ##t
                                            \once \override Dots.stencil = ##f
                                            r4
                                            \once \override Rest.transparent = ##t
                                            \once \override Dots.stencil = ##f
                                            r4.
                                            \once \override Rest.transparent = ##t
                                            \once \override Dots.stencil = ##f
                                            r4
                                            \once \override Rest.transparent = ##t
                                            \once \override Dots.stencil = ##f
                                            r4
                                            \times 2/3
                                            {
                                                a'2
                                                a'2
                                                af'2
                                            }
                                            f'4
                                            fs'4
                                            e'4
                                            a'4
                                            a'4
                                            af'4
                                            \times 4/5
                                            {
                                                c'4
                                                fs'4
                                                fs'4
                                                a'4
                                                fs'4
                                            }
                                            \times 2/3
                                            {
                                                af'2
                                                c'2
                                                a'2
                                            }
                                            e'4
                                            a'4
                                            fs'4
                                            g'4
                                            \times 4/6
                                            {
                                                ef'4
                                                a'4
                                                b'4
                                                a'4
                                                a'4
                                                a'4
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
                \tag #'voice3
                {
                    \context Staff = "viola staff"
                    {
                        \context Voice = "viola voice"
                        {
                            \staff-line-count 1
                            \override Staff.Clef.stencil = ##f
                            \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { Viola }
                              %! +SCORE
                            \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { VA }
                            \clef "percussion"
                            c'1
                            _ #(make-dynamic-script
                                (markup
                                    #:whiteout
                                    #:line (
                                        #:general-align Y -2 #:normal-text #:larger "“"
                                        #:hspace -0.1
                                        #:dynamic "mf"
                                        #:hspace -0.2
                                        #:general-align Y -2 #:normal-text #:larger "”"
                                        )
                                    )
                                )
                              %! +SCORE
                            ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #5 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 99" } } }
                            - \tweak font-name "Bodoni72 Book" 
                            - \tweak font-size 1
                            - \tweak padding #3
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "Tailpiece" } \hspace #0.5 }
                            - \tweak bound-details.right.padding -8
                            \startTextSpan
                            \>
                            c'4.
                            _ #(make-dynamic-script
                                (markup
                                    #:whiteout
                                    #:line (
                                        #:general-align Y -2 #:normal-text #:larger "“"
                                        #:hspace -0.1
                                        #:dynamic "ppp"
                                        #:hspace -0.25
                                        #:general-align Y -2 #:normal-text #:larger "”"
                                        )
                                    )
                                )
                            \<
                            ~
                            c'4
                            ~
                            c'4.
                            ~
                            c'4
                            c'1
                            _ #(make-dynamic-script
                                (markup
                                    #:whiteout
                                    #:line (
                                        #:general-align Y -2 #:normal-text #:larger "“"
                                        #:hspace -0.4
                                        #:dynamic "ff"
                                        #:hspace -0.2
                                        #:general-align Y -2 #:normal-text #:larger "”"
                                        )
                                    )
                                )
                            \>
                            c'2..
                            _ #(make-dynamic-script
                                (markup
                                    #:whiteout
                                    #:line (
                                        #:general-align Y -2 #:normal-text #:larger "“"
                                        #:hspace -0.1
                                        #:dynamic "ppp"
                                        #:hspace -0.25
                                        #:general-align Y -2 #:normal-text #:larger "”"
                                        )
                                    )
                                )
                            \<
                            ~
                            c'4
                            ~
                            c'4
                            \stopTextSpan
                            \staff-line-count 5
                            \revert Staff.Clef.stencil
                            \clef "alto"
                            af4.
                            - \tweak padding #1
                            ^ \talon-to-punta
                            _ #(make-dynamic-script
                                (markup
                                    #:whiteout
                                    #:line (
                                        #:general-align Y -2 #:normal-text #:larger "“"
                                        #:hspace -0.4
                                        #:dynamic "f"
                                        #:hspace -0.2
                                        #:general-align Y -2 #:normal-text #:larger "”"
                                        )
                                    )
                                )
                            (
                              %! abjad.glissando(7)
                            - \tweak bound-details.right.arrow ##t
                              %! abjad.glissando(7)
                            - \tweak thickness #1.5
                              %! abjad.glissando(7)
                            \glissando
                            - \tweak font-name "Bodoni72 Book" 
                            - \tweak font-size 1
                            - \tweak padding #12
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright { "Spz." } \hspace #0.5 }
                            - \tweak bound-details.right.text \markup \upright { "1/2 Spz." }
                            - \tweak bound-details.right.padding 3
                            \startTextSpanTwo
                            - \tweak padding #15
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " rit. ( to " } \fontsize #-0.5 { \note { 4 } #1.5 } \fontsize #3 { "= 83 )" } } } \hspace #0.5 }
                            - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 83" } } }
                            \startTextSpanThree
                            - \tweak padding #9.5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \bow-tip-half-down \hspace #0.5 }
                            - \tweak bound-details.right.text \bow-tip-up
                            \startTextSpanOne
                            \>
                            ~
                              %! abjad.glissando(1)
                            \hide NoteHead
                              %! abjad.glissando(1)
                            \override Accidental.stencil = ##f
                              %! abjad.glissando(1)
                            \override NoteColumn.glissando-skip = ##t
                              %! abjad.glissando(1)
                            \override NoteHead.no-ledgers = ##t
                            af4
                            \big-half-harmonic
                              %! abjad.glissando(6)
                            \revert Accidental.stencil
                              %! abjad.glissando(6)
                            \revert NoteColumn.glissando-skip
                              %! abjad.glissando(6)
                            \revert NoteHead.no-ledgers
                              %! abjad.glissando(6)
                            \undo \hide NoteHead
                            b4.
                              %! abjad.glissando(7)
                            - \tweak bound-details.right.arrow ##t
                              %! abjad.glissando(7)
                            - \tweak thickness #1.5
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
                            b4
                            \override Staff.Stem.stemlet-length = 0.75
                              %! abjad.glissando(6)
                            \revert Accidental.stencil
                              %! abjad.glissando(6)
                            \revert NoteColumn.glissando-skip
                              %! abjad.glissando(6)
                            \revert NoteHead.no-ledgers
                              %! abjad.glissando(6)
                            \undo \hide NoteHead
                            \tweak style #'harmonic
                            bf8
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
                            )
                            \stopTextSpanOne
                            \stopTextSpanTwo
                            [
                            \revert Staff.Stem.stemlet-length
                            c8
                            - \tenuto
                            - \tweak padding #1
                            ^ \punta-to-talon
                            ]
                            - \tweak font-name "Bodoni72 Book" 
                            - \tweak font-size 1
                            - \tweak padding #12
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright { "Spz." } \hspace #0.5 }
                            \startTextSpanTwo
                            - \tweak padding #9.5
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \normale-bow-rotation \hspace #0.5 }
                            - \tweak bound-details.right.text \bow-tip-half-down
                            \startTextSpanOne
                            \tweak style #'harmonic
                            gs2
                            - \tweak padding #1
                            ^ \talon-to-punta
                            \stopTextSpanThree
                            (
                            - \tweak bound-details.right.arrow ##t
                            - \tweak thickness #1.5
                            \glissando
                            \<
                            \big-half-harmonic
                            a2
                            _ #(make-dynamic-script
                                (markup
                                    #:whiteout
                                    #:line (
                                        #:general-align Y -2 #:normal-text #:larger "“"
                                        #:hspace -0.1
                                        #:dynamic "mf"
                                        #:hspace -0.2
                                        #:general-align Y -2 #:normal-text #:larger "”"
                                        )
                                    )
                                )
                            \stopTextSpanTwo
                            - \tweak bound-details.right.arrow ##t
                            - \tweak thickness #1.5
                            \glissando
                            - \tweak font-name "Bodoni72 Book" 
                            - \tweak font-size 1
                            - \tweak padding #12
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright { "Norm." } \hspace #0.5 }
                            - \tweak bound-details.right.text \markup \upright { "1/2 Spz." }
                            \startTextSpanTwo
                            \>
                            \tweak style #'harmonic
                            c'2
                              %! abjad.glissando(7)
                            - \tweak bound-details.right.arrow ##t
                              %! abjad.glissando(7)
                            - \tweak thickness #1.5
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
                            c'4
                              %! abjad.glissando(6)
                            \revert Accidental.stencil
                              %! abjad.glissando(6)
                            \revert NoteColumn.glissando-skip
                              %! abjad.glissando(6)
                            \revert NoteHead.no-ledgers
                              %! abjad.glissando(6)
                            \undo \hide NoteHead
                            d'4
                            _ #(make-dynamic-script
                                (markup
                                    #:whiteout
                                    #:line (
                                        #:general-align Y -2 #:normal-text #:larger "“"
                                        #:hspace -0.1
                                        #:dynamic "ppp"
                                        #:hspace -0.25
                                        #:general-align Y -2 #:normal-text #:larger "”"
                                        )
                                    )
                                )
                            \stopTextSpanOne
                            \stopTextSpanTwo
                            ~
                            d'2
                            )
                            r1
                            r1
                            r1
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
                \tag #'voice4
                {
                    \context Staff = "cello staff"
                    {
                        \context Voice = "cello voice"
                        {
                            \set Staff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { Violoncello }
                              %! +SCORE
                            \set Staff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { VC }
                            \clef "bass"
                            r16
                              %! +SCORE
                            ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-3.5 \raise #3 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 99" } } }
                            [
                            <
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup { \abjad-natural  }
                                a,!
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-twenty-three-limit-comma-up \hspace #0.125 \abjad-sharp  }
                                as,!
                            >16
                            ^ \markup \center-align { \center-column { \line { \concat { +30 }  }\line { \concat { +0 }  } } }
                            ]
                            - \tweak circled-tip ##t
                            \<
                            - \tweak font-name "Bodoni72 Book" 
                            - \tweak font-size 1
                            - \tweak padding #15
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { { \column { \line { "diagonal bow," } \line { "touching bridge" } \line { "for added air sound" } } } \hspace #0.5 }
                            \startTextSpanOne
                            ~
                            <
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup { \abjad-natural  }
                                a,
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-twenty-three-limit-comma-up \hspace #0.125 \abjad-sharp  }
                                as,
                            >8
                            r8
                            \pp
                            r16
                            [
                            <
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup { \abjad-natural  }
                                a,!
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-twenty-three-limit-comma-up \hspace #0.125 \abjad-sharp  }
                                as,!
                            >16
                            \ppp
                            ^ \markup \center-align { \center-column { \line { \concat { +30 }  }\line { \concat { +0 }  } } }
                            ]
                            r4
                            <
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup { \abjad-natural  }
                                a,!
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-twenty-three-limit-comma-up \hspace #0.125 \abjad-sharp  }
                                as,!
                            >8
                            ^ \markup \center-align { \center-column { \line { \concat { +30 }  }\line { \concat { +0 }  } } }
                            ~
                            <
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup { \abjad-natural  }
                                a,
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-twenty-three-limit-comma-up \hspace #0.125 \abjad-sharp  }
                                as,
                            >16
                            [
                            r16
                            ]
                            <
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup { \abjad-natural  }
                                a,!
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-twenty-three-limit-comma-up \hspace #0.125 \abjad-sharp  }
                                as,!
                            >2
                            ^ \markup \center-align { \center-column { \line { \concat { +30 }  }\line { \concat { +0 }  } } }
                            r8
                            r8
                            <
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup { \abjad-natural  }
                                a,!
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-twenty-three-limit-comma-up \hspace #0.125 \abjad-sharp  }
                                as,!
                            >4
                            \pp
                            ^ \markup \center-align { \center-column { \line { \concat { +30 }  }\line { \concat { +0 }  } } }
                            \stopTextSpanOne
                            - \tweak font-name "Bodoni72 Book" 
                            - \tweak font-size 1
                            - \tweak padding #15
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { { \column { \line { "MSP, 1/2 hair on strings" } \line { "1/2 hair on bridge" } } } \hspace #0.5 }
                            \startTextSpanOne
                            \>
                            ~
                            <
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup { \abjad-natural  }
                                a,
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-twenty-three-limit-comma-up \hspace #0.125 \abjad-sharp  }
                                as,
                            >8
                            [
                            r16
                            \ppp
                            <
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup { \abjad-natural  }
                                a,!
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-twenty-three-limit-comma-up \hspace #0.125 \abjad-sharp  }
                                as,!
                            >16
                            ^ \markup \center-align { \center-column { \line { \concat { +30 }  }\line { \concat { +0 }  } } }
                            ]
                            r4
                            <
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup { \abjad-natural  }
                                a,!
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-twenty-three-limit-comma-up \hspace #0.125 \abjad-sharp  }
                                as,!
                            >16
                            ^ \markup \center-align { \center-column { \line { \concat { +30 }  }\line { \concat { +0 }  } } }
                            [
                            r8.
                            ]
                            r4
                            <
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup { \abjad-natural  }
                                a,!
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-twenty-three-limit-comma-up \hspace #0.125 \abjad-sharp  }
                                as,!
                            >16
                            ^ \markup \center-align { \center-column { \line { \concat { +30 }  }\line { \concat { +0 }  } } }
                            [
                            r8.
                            ]
                            <
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-twenty-three-limit-comma-up \hspace #0.125 \abjad-sharp  }
                                as,!
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup { \natural-one-syntonic-comma-up  }
                                c!
                            >4.
                            ^ \markup \center-align { \center-column { \line { \concat { +16 }  }\line { \concat { +30 }  } } }
                            \stopTextSpanOne
                            - \tweak font-name "Bodoni72 Book" 
                            - \tweak font-size 1
                            - \tweak padding #15
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { { \column { \line { "all hair on bridge," } \line { "but allowing strings to ring" } } } \hspace #0.5 }
                            \startTextSpanOne
                            \<
                            r2
                            \pp
                            <
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-twenty-three-limit-comma-up \hspace #0.125 \abjad-sharp  }
                                as,!
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup { \natural-one-syntonic-comma-up  }
                                c!
                            >8
                            ^ \markup \center-align { \center-column { \line { \concat { +16 }  }\line { \concat { +30 }  } } }
                            \stopTextSpanOne
                            [
                            - \tweak font-name "Bodoni72 Book" 
                            - \tweak font-size 1
                            - \tweak padding #15
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { {} \hspace #0.5 }
                            - \tweak bound-details.right.text \markup { \column { \line { "diagonal bow," } \line { "touching bridge" } \line { "for added air sound" } } }
                            \startTextSpanOne
                            r16
                            <
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-twenty-three-limit-comma-up \hspace #0.125 \abjad-sharp  }
                                as,!
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup { \natural-one-syntonic-comma-up  }
                                c!
                            >16
                            ^ \markup \center-align { \center-column { \line { \concat { +16 }  }\line { \concat { +30 }  } } }
                            ]
                            r4
                            <
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-twenty-three-limit-comma-up \hspace #0.125 \abjad-sharp  }
                                as,!
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup { \natural-one-syntonic-comma-up  }
                                c!
                            >16
                            ^ \markup \center-align { \center-column { \line { \concat { +16 }  }\line { \concat { +30 }  } } }
                            [
                            - \tweak padding #10.75
                            - \abjad-solid-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " rit. ( to " } \fontsize #-0.5 { \note { 4 } #1.5 } \fontsize #3 { "= 83 )" } } } \hspace #0.5 }
                            - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 83" } } }
                            \startTextSpanThree
                            r16
                            ]
                            r4
                            r8
                            [
                            <
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-twenty-three-limit-comma-up \hspace #0.125 \abjad-sharp  }
                                as,!
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup { \natural-one-syntonic-comma-up  }
                                c!
                            >16
                            ^ \markup \center-align { \center-column { \line { \concat { +16 }  }\line { \concat { +30 }  } } }
                            r16
                            ]
                            r8
                            <
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-twenty-three-limit-comma-up \hspace #0.125 \abjad-sharp  }
                                as,!
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup { \natural-one-syntonic-comma-up  }
                                c!
                            >4
                            ^ \markup \center-align { \center-column { \line { \concat { +16 }  }\line { \concat { +30 }  } } }
                            \<
                            ~
                            <
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-twenty-three-limit-comma-up \hspace #0.125 \abjad-sharp  }
                                as,
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup { \natural-one-syntonic-comma-up  }
                                c
                            >8
                            [
                            r8
                            \p
                            ]
                            <
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-twenty-three-limit-comma-up \hspace #0.125 \abjad-sharp  }
                                as,!
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup { \natural-one-syntonic-comma-up  }
                                c!
                            >4
                            \pp
                            ^ \markup \center-align { \center-column { \line { \concat { +16 }  }\line { \concat { +30 }  } } }
                            \stopTextSpanOne
                            \override Dots.staff-position = #2
                            \big-half-harmonic
                            \fancy-gliss
                               #'(
                                  (0 0 0.5 1 1 0)
                                  (1 0 1.5 -1 2 0)
                                  (2 0 2.5 2 3 0)
                                  (3 0 3.5 -2 4 0)
                                  (4 0 4.5 1 5 0)
                                  (5 0 5.5 -1 6 0)
                             )
                             #0.5
                            aqs,16
                            - \tweak padding #1
                            ^ \punta-to-talon
                            \stopTextSpanThree
                            [
                              %! abjad.glissando(7)
                            - \abjad-zero-padding-glissando
                              %! abjad.glissando(7)
                            \glissando
                            ~
                            \times 4/5
                            {
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
                                aqs,16
                                \big-half-harmonic
                                \fancy-gliss
                                   #'(
                                      (0 0 0.5 1 1 0)
                                      (1 0 1.5 -1 2 0)
                                      (2 0 2.5 1 3 0)
                                      (3 0 3.5 -1 4 0)
                                      (4 0 4.5 1 5 0)
                                      (5 0 5.5 -1 6 0)
                                      (6 0 6.5 2 7 0)
                                      (7 0 7.5 -2 8 0)
                                      (8 0 8.5 1 9 0)
                                      (9 0 9.5 -1 10 0)
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
                                aqs,8.
                                - \tweak padding #1
                                ^ \talon-to-punta
                                - \abjad-zero-padding-glissando
                                \glissando
                                \big-half-harmonic
                                \fancy-gliss
                                   #'(
                                      (0 0 0.5 1 1 0)
                                      (1 0 1.5 -1 2 0)
                                      (2 0 2.5 2 3 0)
                                      (3 0 3.5 -2 4 0)
                                      (4 0 4.5 1 5 0)
                                      (5 0 5.5 -1 6 0)
                                 )
                                 #0.5
                                \set stemLeftBeamCount = 2
                                \set stemRightBeamCount = 1
                                aqs,16
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
                            aqs,8.
                            ]
                            ~
                            aqs,16
                            [
                            ~
                            \times 4/5
                            {
                                \set stemLeftBeamCount = 1
                                \set stemRightBeamCount = 3
                                aqs,32
                                \big-half-harmonic
                                \fancy-gliss
                                   #'(
                                      (0 0 0.5 1 1 0)
                                      (1 0 1.5 -1 2 0)
                                      (2 0 2.5 1 3 0)
                                      (3 0 3.5 -1 4 0)
                                      (4 0 4.5 1 5 0)
                                      (5 0 5.5 -1 6 0)
                                      (6 0 6.5 2 7 0)
                                      (7 0 7.5 -2 8 0)
                                      (8 0 8.5 1 9 0)
                                      (9 0 9.5 -1 10 0)
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
                                gs,16.
                                - \tweak padding #1
                                ^ \talon-to-punta
                                - \abjad-zero-padding-glissando
                                \glissando
                                \big-half-harmonic
                                \fancy-gliss
                                   #'(
                                      (0 0 0.5 1 1 0)
                                      (1 0 1.5 -1 2 0)
                                      (2 0 2.5 2 3 0)
                                      (3 0 3.5 -2 4 0)
                                      (4 0 4.5 1 5 0)
                                      (5 0 5.5 -1 6 0)
                                 )
                                 #0.5
                                \set stemLeftBeamCount = 3
                                \set stemRightBeamCount = 1
                                aqs,32
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
                            aqs,16
                            ~
                            aqs,8
                            ~
                            \times 2/3
                            {
                                aqs,16
                                \big-half-harmonic
                                \fancy-gliss
                                   #'(
                                      (0 0 0.5 1 1 0)
                                      (1 0 1.5 -1 2 0)
                                      (2 0 2.5 1 3 0)
                                      (3 0 3.5 -1 4 0)
                                      (4 0 4.5 1 5 0)
                                      (5 0 5.5 -1 6 0)
                                      (6 0 6.5 2 7 0)
                                      (7 0 7.5 -2 8 0)
                                      (8 0 8.5 1 9 0)
                                      (9 0 9.5 -1 10 0)
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
                                gs,8
                                - \tweak padding #1
                                ^ \talon-to-punta
                                ]
                                  %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                  %! abjad.glissando(7)
                                \glissando
                                ~
                            }
                            \times 2/3
                            {
                                  %! abjad.glissando(1)
                                \hide NoteHead
                                  %! abjad.glissando(1)
                                \override Accidental.stencil = ##f
                                  %! abjad.glissando(1)
                                \override NoteColumn.glissando-skip = ##t
                                  %! abjad.glissando(1)
                                \override NoteHead.no-ledgers = ##t
                                gs,8
                                \big-half-harmonic
                                \fancy-gliss
                                   #'(
                                      (0 0 0.5 1 1 0)
                                      (1 0 1.5 -1 2 0)
                                      (2 0 2.5 2 3 0)
                                      (3 0 3.5 -2 4 0)
                                      (4 0 4.5 1 5 0)
                                      (5 0 5.5 -1 6 0)
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
                                gs,4
                                - \tweak padding #1
                                ^ \punta-to-talon
                                  %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                  %! abjad.glissando(7)
                                \glissando
                                - \tweak font-name "Bodoni72 Book" 
                                - \tweak font-size 2
                                - \tweak padding #12
                                - \abjad-solid-line-with-arrow
                                - \tweak bound-details.left.text \markup \concat { "(Ord.)" \hspace #0.5 }
                                - \tweak bound-details.right.text MSP
                                \startTextSpanOne
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
                            gs,4
                            ~
                            gs,4
                            ~
                            \times 4/5
                            {
                                gs,32
                                [
                                \big-half-harmonic
                                \fancy-gliss
                                   #'(
                                      (0 0 0.5 1 1 0)
                                      (1 0 1.5 -1 2 0)
                                      (2 0 2.5 1 3 0)
                                      (3 0 3.5 -1 4 0)
                                      (4 0 4.5 1 5 0)
                                      (5 0 5.5 -1 6 0)
                                      (6 0 6.5 2 7 0)
                                      (7 0 7.5 -2 8 0)
                                      (8 0 8.5 1 9 0)
                                      (9 0 9.5 -1 10 0)
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
                                aqs,16.
                                - \tweak padding #1
                                ^ \talon-to-punta
                                - \abjad-zero-padding-glissando
                                \glissando
                                \big-half-harmonic
                                \fancy-gliss
                                   #'(
                                      (0 0 0.5 1 1 0)
                                      (1 0 1.5 -1 2 0)
                                      (2 0 2.5 2 3 0)
                                      (3 0 3.5 -2 4 0)
                                      (4 0 4.5 1 5 0)
                                      (5 0 5.5 -1 6 0)
                                 )
                                 #0.5
                                aqs,32
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
                            aqs,8
                            ]
                            ~
                            aqs,4
                            ~
                            \times 4/5
                            {
                                aqs,32
                                [
                                \big-half-harmonic
                                \fancy-gliss
                                   #'(
                                      (0 0 0.5 1 1 0)
                                      (1 0 1.5 -1 2 0)
                                      (2 0 2.5 1 3 0)
                                      (3 0 3.5 -1 4 0)
                                      (4 0 4.5 1 5 0)
                                      (5 0 5.5 -1 6 0)
                                      (6 0 6.5 2 7 0)
                                      (7 0 7.5 -2 8 0)
                                      (8 0 8.5 1 9 0)
                                      (9 0 9.5 -1 10 0)
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
                                gs,16.
                                - \tweak padding #1
                                ^ \talon-to-punta
                                - \abjad-zero-padding-glissando
                                \glissando
                                \big-half-harmonic
                                \fancy-gliss
                                   #'(
                                      (0 0 0.5 1 1 0)
                                      (1 0 1.5 -1 2 0)
                                      (2 0 2.5 2 3 0)
                                      (3 0 3.5 -2 4 0)
                                      (4 0 4.5 1 5 0)
                                      (5 0 5.5 -1 6 0)
                                 )
                                 #0.5
                                aqs,32
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
                            \afterGrace
                            aqs,8
                            ]
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
                                c'16
                                \stopTextSpanOne
                            }
                            <<
                                \context Voice = "cello voice temp"
                                {
                                    \override Dots.staff-position = #2
                                    \big-half-harmonic
                                    \fancy-gliss
                                       #'(
                                          (0 0 0.5 1 1 0)
                                          (1 0 1.5 -1 2 0)
                                          (2 0 2.5 2 3 0)
                                          (3 0 3.5 -2 4 0)
                                          (4 0 4.5 1 5 0)
                                          (5 0 5.5 -1 6 0)
                                     )
                                     #0.5
                                    \voiceOne
                                    aqs,16
                                    - \tweak padding #1
                                    ^ \talon-to-punta
                                    [
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 2
                                    - \tweak padding #12
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { " "(MSP)" " } \hspace #0.5 }
                                    \startTextSpan
                                    ~
                                    \times 4/5
                                    {
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
                                        aqs,16
                                        \big-half-harmonic
                                        \fancy-gliss
                                           #'(
                                              (0 0 0.5 1 1 0)
                                              (1 0 1.5 -1 2 0)
                                              (2 0 2.5 1 3 0)
                                              (3 0 3.5 -1 4 0)
                                              (4 0 4.5 1 5 0)
                                              (5 0 5.5 -1 6 0)
                                              (6 0 6.5 2 7 0)
                                              (7 0 7.5 -2 8 0)
                                              (8 0 8.5 1 9 0)
                                              (9 0 9.5 -1 10 0)
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
                                        gs,8.
                                        - \tweak padding #1
                                        ^ \punta-to-talon
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \big-half-harmonic
                                        \fancy-gliss
                                           #'(
                                              (0 0 0.5 1 1 0)
                                              (1 0 1.5 -1 2 0)
                                              (2 0 2.5 2 3 0)
                                              (3 0 3.5 -2 4 0)
                                              (4 0 4.5 1 5 0)
                                              (5 0 5.5 -1 6 0)
                                         )
                                         #0.5
                                        \set stemLeftBeamCount = 2
                                        \set stemRightBeamCount = 1
                                        aqs,16
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
                                    aqs,8.
                                    ]
                                    ~
                                    \times 2/3
                                    {
                                        aqs,16
                                        [
                                        \big-half-harmonic
                                        \fancy-gliss
                                           #'(
                                              (0 0 0.5 1 1 0)
                                              (1 0 1.5 -1 2 0)
                                              (2 0 2.5 1 3 0)
                                              (3 0 3.5 -1 4 0)
                                              (4 0 4.5 1 5 0)
                                              (5 0 5.5 -1 6 0)
                                              (6 0 6.5 2 7 0)
                                              (7 0 7.5 -2 8 0)
                                              (8 0 8.5 1 9 0)
                                              (9 0 9.5 -1 10 0)
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
                                        aqs,8
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
                                    aqs,8
                                    ~
                                    aqs,8
                                    ~
                                    \times 4/5
                                    {
                                        aqs,32
                                        \big-half-harmonic
                                        \fancy-gliss
                                           #'(
                                              (0 0 0.5 1 1 0)
                                              (1 0 1.5 -1 2 0)
                                              (2 0 2.5 2 3 0)
                                              (3 0 3.5 -2 4 0)
                                              (4 0 4.5 1 5 0)
                                              (5 0 5.5 -1 6 0)
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
                                        aqs,16.
                                        - \tweak padding #1
                                        ^ \talon-to-punta
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \big-half-harmonic
                                        \fancy-gliss
                                           #'(
                                              (0 0 0.5 1 1 0)
                                              (1 0 1.5 -1 2 0)
                                              (2 0 2.5 1 3 0)
                                              (3 0 3.5 -1 4 0)
                                              (4 0 4.5 1 5 0)
                                              (5 0 5.5 -1 6 0)
                                              (6 0 6.5 2 7 0)
                                              (7 0 7.5 -2 8 0)
                                              (8 0 8.5 1 9 0)
                                              (9 0 9.5 -1 10 0)
                                         )
                                         #0.5
                                        aqs,32
                                        - \tweak padding #1
                                        ^ \punta-to-talon
                                        ]
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        ~
                                    }
                                    \times 4/5
                                    {
                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                        aqs,16
                                        [
                                        \big-half-harmonic
                                        \fancy-gliss
                                           #'(
                                              (0 0 0.5 1 1 0)
                                              (1 0 1.5 -1 2 0)
                                              (2 0 2.5 2 3 0)
                                              (3 0 3.5 -2 4 0)
                                              (4 0 4.5 1 5 0)
                                              (5 0 5.5 -1 6 0)
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
                                        aqs,8.
                                        - \tweak padding #1
                                        ^ \talon-to-punta
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \big-half-harmonic
                                        \fancy-gliss
                                           #'(
                                              (0 0 0.5 1 1 0)
                                              (1 0 1.5 -1 2 0)
                                              (2 0 2.5 1 3 0)
                                              (3 0 3.5 -1 4 0)
                                              (4 0 4.5 1 5 0)
                                              (5 0 5.5 -1 6 0)
                                              (6 0 6.5 2 7 0)
                                              (7 0 7.5 -2 8 0)
                                              (8 0 8.5 1 9 0)
                                              (9 0 9.5 -1 10 0)
                                         )
                                         #0.5
                                        gs,16
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
                                    gs,8.
                                    ~
                                    \times 2/3
                                    {
                                        gs,16
                                        [
                                        \big-half-harmonic
                                        \fancy-gliss
                                           #'(
                                              (0 0 0.5 1 1 0)
                                              (1 0 1.5 -1 2 0)
                                              (2 0 2.5 2 3 0)
                                              (3 0 3.5 -2 4 0)
                                              (4 0 4.5 1 5 0)
                                              (5 0 5.5 -1 6 0)
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
                                        aqs,8
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
                                    aqs,8.
                                    ~
                                    aqs,16
                                    [
                                    ~
                                    \times 4/5
                                    {
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 3
                                        aqs,32
                                        \big-half-harmonic
                                        \fancy-gliss
                                           #'(
                                              (0 0 0.5 1 1 0)
                                              (1 0 1.5 -1 2 0)
                                              (2 0 2.5 1 3 0)
                                              (3 0 3.5 -1 4 0)
                                              (4 0 4.5 1 5 0)
                                              (5 0 5.5 -1 6 0)
                                              (6 0 6.5 2 7 0)
                                              (7 0 7.5 -2 8 0)
                                              (8 0 8.5 1 9 0)
                                              (9 0 9.5 -1 10 0)
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
                                        gs,16.
                                        - \tweak padding #1
                                        ^ \punta-to-talon
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \big-half-harmonic
                                        \fancy-gliss
                                           #'(
                                              (0 0 0.5 1 1 0)
                                              (1 0 1.5 -1 2 0)
                                              (2 0 2.5 2 3 0)
                                              (3 0 3.5 -2 4 0)
                                              (4 0 4.5 1 5 0)
                                              (5 0 5.5 -1 6 0)
                                         )
                                         #0.5
                                        \set stemLeftBeamCount = 3
                                        \set stemRightBeamCount = 1
                                        gs,32
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
                                    gs,16
                                    ]
                                    \big-half-harmonic
                                    \fancy-gliss
                                       #'(
                                          (0 0 0.5 1 1 0)
                                          (1 0 1.5 -1 2 0)
                                          (2 0 2.5 1 3 0)
                                          (3 0 3.5 -1 4 0)
                                          (4 0 4.5 1 5 0)
                                          (5 0 5.5 -1 6 0)
                                          (6 0 6.5 2 7 0)
                                          (7 0 7.5 -2 8 0)
                                          (8 0 8.5 1 9 0)
                                          (9 0 9.5 -1 10 0)
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
                                    aqs,16
                                    - \tweak padding #1
                                    ^ \punta-to-talon
                                    [
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    ~
                                    \times 4/5
                                    {
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
                                        aqs,16
                                        \big-half-harmonic
                                        \fancy-gliss
                                           #'(
                                              (0 0 0.5 1 1 0)
                                              (1 0 1.5 -1 2 0)
                                              (2 0 2.5 2 3 0)
                                              (3 0 3.5 -2 4 0)
                                              (4 0 4.5 1 5 0)
                                              (5 0 5.5 -1 6 0)
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
                                        aqs,8.
                                        - \tweak padding #1
                                        ^ \talon-to-punta
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \big-half-harmonic
                                        \fancy-gliss
                                           #'(
                                              (0 0 0.5 1 1 0)
                                              (1 0 1.5 -1 2 0)
                                              (2 0 2.5 1 3 0)
                                              (3 0 3.5 -1 4 0)
                                              (4 0 4.5 1 5 0)
                                              (5 0 5.5 -1 6 0)
                                              (6 0 6.5 2 7 0)
                                              (7 0 7.5 -2 8 0)
                                              (8 0 8.5 1 9 0)
                                              (9 0 9.5 -1 10 0)
                                         )
                                         #0.5
                                        \set stemLeftBeamCount = 2
                                        \set stemRightBeamCount = 1
                                        gs,16
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
                                    gs,8.
                                    ]
                                    ~
                                    gs,16
                                    [
                                    ~
                                    \times 4/5
                                    {
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 3
                                        gs,32
                                        \big-half-harmonic
                                        \fancy-gliss
                                           #'(
                                              (0 0 0.5 1 1 0)
                                              (1 0 1.5 -1 2 0)
                                              (2 0 2.5 2 3 0)
                                              (3 0 3.5 -2 4 0)
                                              (4 0 4.5 1 5 0)
                                              (5 0 5.5 -1 6 0)
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
                                        aqs,16.
                                        - \tweak padding #1
                                        ^ \talon-to-punta
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \big-half-harmonic
                                        \fancy-gliss
                                           #'(
                                              (0 0 0.5 1 1 0)
                                              (1 0 1.5 -1 2 0)
                                              (2 0 2.5 1 3 0)
                                              (3 0 3.5 -1 4 0)
                                              (4 0 4.5 1 5 0)
                                              (5 0 5.5 -1 6 0)
                                              (6 0 6.5 2 7 0)
                                              (7 0 7.5 -2 8 0)
                                              (8 0 8.5 1 9 0)
                                              (9 0 9.5 -1 10 0)
                                         )
                                         #0.5
                                        \set stemLeftBeamCount = 3
                                        \set stemRightBeamCount = 1
                                        aqs,32
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
                                    aqs,16
                                    ~
                                    aqs,8
                                    ~
                                    \times 2/3
                                    {
                                        aqs,16
                                        \big-half-harmonic
                                        \fancy-gliss
                                           #'(
                                              (0 0 0.5 1 1 0)
                                              (1 0 1.5 -1 2 0)
                                              (2 0 2.5 2 3 0)
                                              (3 0 3.5 -2 4 0)
                                              (4 0 4.5 1 5 0)
                                              (5 0 5.5 -1 6 0)
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
                                        gs,8
                                        - \tweak padding #1
                                        ^ \talon-to-punta
                                        ]
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        ~
                                    }
                                    \times 2/3
                                    {
                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                        gs,8
                                        \big-half-harmonic
                                        \fancy-gliss
                                           #'(
                                              (0 0 0.5 1 1 0)
                                              (1 0 1.5 -1 2 0)
                                              (2 0 2.5 1 3 0)
                                              (3 0 3.5 -1 4 0)
                                              (4 0 4.5 1 5 0)
                                              (5 0 5.5 -1 6 0)
                                              (6 0 6.5 2 7 0)
                                              (7 0 7.5 -2 8 0)
                                              (8 0 8.5 1 9 0)
                                              (9 0 9.5 -1 10 0)
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
                                        aqs,4
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
                                    aqs,4
                                    ~
                                    \times 4/5
                                    {
                                        aqs,32
                                        [
                                        \big-half-harmonic
                                        \fancy-gliss
                                           #'(
                                              (0 0 0.5 1 1 0)
                                              (1 0 1.5 -1 2 0)
                                              (2 0 2.5 2 3 0)
                                              (3 0 3.5 -2 4 0)
                                              (4 0 4.5 1 5 0)
                                              (5 0 5.5 -1 6 0)
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
                                        aqs,16.
                                        - \tweak padding #1
                                        ^ \talon-to-punta
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \big-half-harmonic
                                        \fancy-gliss
                                           #'(
                                              (0 0 0.5 1 1 0)
                                              (1 0 1.5 -1 2 0)
                                              (2 0 2.5 1 3 0)
                                              (3 0 3.5 -1 4 0)
                                              (4 0 4.5 1 5 0)
                                              (5 0 5.5 -1 6 0)
                                              (6 0 6.5 2 7 0)
                                              (7 0 7.5 -2 8 0)
                                              (8 0 8.5 1 9 0)
                                              (9 0 9.5 -1 10 0)
                                         )
                                         #0.5
                                        aqs,32
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
                                    aqs,8
                                    ~
                                    aqs,16
                                    ~
                                    \times 4/5
                                    {
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 3
                                        aqs,32
                                        \big-half-harmonic
                                        \fancy-gliss
                                           #'(
                                              (0 0 0.5 1 1 0)
                                              (1 0 1.5 -1 2 0)
                                              (2 0 2.5 2 3 0)
                                              (3 0 3.5 -2 4 0)
                                              (4 0 4.5 1 5 0)
                                              (5 0 5.5 -1 6 0)
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
                                        aqs,16.
                                        - \tweak padding #1
                                        ^ \talon-to-punta
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \big-half-harmonic
                                        \fancy-gliss
                                           #'(
                                              (0 0 0.5 1 1 0)
                                              (1 0 1.5 -1 2 0)
                                              (2 0 2.5 1 3 0)
                                              (3 0 3.5 -1 4 0)
                                              (4 0 4.5 1 5 0)
                                              (5 0 5.5 -1 6 0)
                                              (6 0 6.5 2 7 0)
                                              (7 0 7.5 -2 8 0)
                                              (8 0 8.5 1 9 0)
                                              (9 0 9.5 -1 10 0)
                                         )
                                         #0.5
                                        \set stemLeftBeamCount = 3
                                        \set stemRightBeamCount = 1
                                        gs,32
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
                                    \afterGrace
                                    gs,16
                                    ]
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
                                        c'16
                                        \stopTextSpan
                                    }
                                }
                                \context Voice = "cello legno voice"
                                {
                                    \override Voice.NoteHead.no-ledgers = ##t
                                    \override Voice.Accidental.stencil = ##f
                                    \textSpannerDown
                                    \voiceTwo
                                    \tweak style #'cross
                                    b,,16
                                    ^ \staccato
                                    [
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 2
                                    - \tweak padding #12
                                    - \abjad-dashed-line-with-up-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "CLDP" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -21
                                    \startTextSpan
                                    \tweak style #'cross
                                    b,,16
                                    ^ \staccato
                                    \once \override Rest.staff-position = #-10
                                    r8
                                    \once \override Rest.staff-position = #-10
                                    r16
                                    \tweak style #'cross
                                    b,,16
                                    ^ \staccato
                                    \tweak style #'cross
                                    b,,16
                                    ^ \staccato
                                    \tweak style #'cross
                                    b,,16
                                    ^ \staccato
                                    ]
                                    \once \override Rest.staff-position = #-10
                                    r8
                                    [
                                    b,,8
                                    ~
                                    b,,8
                                    \tweak style #'cross
                                    b,,16
                                    ^ \staccato
                                    \once \override Rest.staff-position = #-10
                                    r16
                                    ]
                                    b,,4
                                    \tweak style #'cross
                                    b,,16
                                    ^ \staccato
                                    [
                                    \tweak style #'cross
                                    b,,16
                                    ^ \staccato
                                    \tweak style #'cross
                                    b,,16
                                    ^ \staccato
                                    b,,16
                                    ]
                                    ~
                                    b,,16
                                    [
                                    \tweak style #'cross
                                    b,,16
                                    ^ \staccato
                                    \tweak style #'cross
                                    b,,16
                                    ^ \staccato
                                    \tweak style #'cross
                                    b,,16
                                    ^ \staccato
                                    ]
                                    b,,4
                                    ~
                                    b,,16
                                    [
                                    \tweak style #'cross
                                    b,,16
                                    ^ \staccato
                                    \once \override Rest.staff-position = #-10
                                    r8
                                    \once \override Rest.staff-position = #-10
                                    r16
                                    \tweak style #'cross
                                    b,,16
                                    ^ \staccato
                                    \tweak style #'cross
                                    b,,16
                                    ^ \staccato
                                    \tweak style #'cross
                                    b,,16
                                    ^ \staccato
                                    ]
                                    \tweak style #'cross
                                    b,,16
                                    ^ \staccato
                                    [
                                    \once \override Rest.staff-position = #-10
                                    r16
                                    \once \override Rest.staff-position = #-10
                                    r16
                                    \set stemLeftBeamCount = 2
                                    \set stemRightBeamCount = 1
                                    \tweak style #'cross
                                    b,,16
                                    ^ \staccato
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 2
                                    \tweak style #'cross
                                    b,,16
                                    ^ \staccato
                                    \tweak style #'cross
                                    b,,16
                                    ^ \staccato
                                    \tweak style #'cross
                                    b,,16
                                    ^ \staccato
                                    \once \override Rest.staff-position = #-10
                                    r16
                                    ]
                                    \once \override Rest.staff-position = #-10
                                    r4
                                    \once \override Rest.staff-position = #-10
                                    r16
                                    [
                                    b,,8.
                                    ]
                                    ~
                                    b,,2
                                    \stopTextSpan
                                    \textSpannerUp
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
  %! abjad.LilyPondFile._get_format_pieces()
