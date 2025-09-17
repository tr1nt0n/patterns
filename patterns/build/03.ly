    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
              %! +SCORE
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (13 34 30 28)))
            \time 5/4
            s1 * 5/4
              %! +SCORE
            \noBreak
            \time 6/4
            s1 * 3/2
              %! +SCORE
            \break
              %! +SCORE
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (12 35 34 26)))
            \time 9/8
            s1 * 9/8
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
                                    r2.
                                    r2
                                    r1.
                                    r4.
                                    r4.
                                    r4.
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
                                            \times 4/6
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
                                                e''8
                                                - \accent
                                                \mf
                                                - \markup \fontsize #2 { \hspace #-8.5 { "F. Perc.:" } }
                                                - \tweak Beam.positions #'(-5 . -6)
                                                [
                                                \once \override Rest.staff-position = #-7
                                                r8
                                                \tweak style #'cross
                                                a'8
                                                ]
                                                \once \override Rest.staff-position = #-7
                                                r4
                                                \tweak style #'harmonic
                                                a'8
                                            }
                                            <
                                                \tweak style #'cross
                                                e'
                                                \tweak style #'harmonic
                                                a'
                                            >8
                                            - \accent
                                            [
                                            \tweak style #'harmonic
                                            a'8
                                            <
                                                \tweak style #'cross
                                                d'
                                                \tweak style #'harmonic
                                                a'
                                            >8
                                            - \accent
                                            \once \override Rest.staff-position = #-7
                                            r8
                                            \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                            \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                            <d' a'>8
                                            - \accent
                                            \>
                                            \tweak style #'cross
                                            d'8
                                            ]
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 6/7
                                            {
                                                \tweak style #'cross
                                                b'8
                                                - \tweak Beam.positions #'(-6.5 . -5.5)
                                                [
                                                - \tweak padding #15
                                                - \abjad-solid-line-with-arrow
                                                - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " rit. ( to " } \fontsize #-0.5 { \note { 8 } #1.5 } \fontsize #3 { "= 60 )" } } } \hspace #0.5 }
                                                - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #1.5 } \fontsize #4 { "= 60" } } }
                                                \startTextSpanThree
                                                \tweak style #'cross
                                                c''8
                                                - \accent
                                                <
                                                    \tweak style #'cross
                                                    c''
                                                    \tweak style #'harmonic
                                                    e''
                                                >8
                                                \tweak style #'cross
                                                d''8
                                                \p
                                                \once \override Rest.staff-position = #-7
                                                r8
                                                <
                                                    \tweak style #'cross
                                                    e''
                                                    \tweak style #'harmonic
                                                    f''
                                                >8
                                                - \accent
                                                \mp
                                                \>
                                                \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                                \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                                e''8
                                                ]
                                            }
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 6/7
                                            {
                                                \tweak style #'cross
                                                b'8
                                                \pp
                                                \once \override Rest.staff-position = #-7
                                                r4
                                                \tweak style #'cross
                                                c''8
                                                - \accent
                                                \once \override Rest.staff-position = #-7
                                                r4
                                                <
                                                    \tweak style #'cross
                                                    d''
                                                    g''
                                                >8
                                            }
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 6/5
                                            {
                                                \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                                \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                                <d'' g''>32
                                                \stopTextSpanThree
                                                - \tweak Beam.positions #'(-8.5 . -8.5)
                                                [
                                                \once \override Rest.staff-position = #-7
                                                r16.
                                                <
                                                    \tweak style #'cross
                                                    e''
                                                    \tweak style #'harmonic
                                                    g''
                                                >32
                                                - \accent
                                                \once \override Rest.staff-position = #-7
                                                r8
                                                \tweak style #'cross
                                                e'32
                                                ]
                                                \>
                                            }
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 6/5
                                            {
                                                \tweak style #'cross
                                                g'32
                                                - \accent
                                                - \tweak Beam.positions #'(-9 . -9)
                                                [
                                                \tweak style #'cross
                                                f'32
                                                - \accent
                                                <
                                                    \tweak style #'cross
                                                    a'
                                                    d''
                                                >32
                                                \tweak style #'cross
                                                g'32
                                                \set stemLeftBeamCount = 3
                                                \set stemRightBeamCount = 1
                                                <
                                                    \tweak style #'cross
                                                    a'
                                                    \tweak style #'harmonic
                                                    b'
                                                >32
                                                - \accent
                                                \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                                                \set stemLeftBeamCount = 1
                                                \set stemRightBeamCount = 3
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                                \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                                a'32
                                                \ppp
                                                \tweak style #'harmonic
                                                c''32
                                                ^ (
                                                \once \override Rest.staff-position = #-7
                                                r32
                                                \tweak style #'cross
                                                c''32
                                                - \accent
                                                )
                                                \tweak style #'harmonic
                                                d''32
                                                ]
                                                ^ (
                                            }
                                            \tweak style #'cross
                                            d''16
                                            )
                                            - \tweak Beam.positions #'(-8 . -8)
                                            [
                                            \tweak style #'cross
                                            b'16
                                            - \accent
                                            \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                            \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                            b'16
                                            \once \override Rest.staff-position = #-7
                                            r16
                                            \tweak style #'harmonic
                                            e''16
                                            ^ (
                                            <
                                                \tweak style #'cross
                                                e''
                                                g''
                                            >16
                                            - \accent
                                            )
                                            ]
                                        }
                                        \context Voice = "violin 1 bow voice"
                                        {
                                            \once \override Rest.staff-position = #10
                                            \voiceOne
                                            r16
                                            - \markup \fontsize #2 { \hspace #-4.5 \raise #2 { "Bow:" } }
                                            - \tweak Beam.positions #'(8 . 8)
                                            [
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Staff.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                f''
                                            >16
                                            - \accent
                                            _ \staccato
                                            - \tweak bound-details.left.Y #5.5
                                            - \tweak bound-details.right.Y #7
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #0
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "IV" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -1.5
                                            \startTextSpanOne
                                            \once \override Rest.staff-position = #10
                                            r8
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Staff.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                a''
                                            >16
                                            _ \staccato
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Staff.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                a''
                                            >16
                                            _ \staccato
                                            \once \override Rest.staff-position = #10
                                            r8
                                            ]
                                            \once \override Rest.staff-position = #10
                                            r4
                                            \once \override Rest.staff-position = #10
                                            r16
                                            - \tweak Beam.positions #'(8 . 8)
                                            [
                                            \once \override Dots.staff-position = #2
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Staff.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                g''
                                            >8.
                                            - \accent
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            ~
                                            \once \override Dots.staff-position = #2
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Staff.Glissando.thickness = #8.25
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
                                                g''
                                            >8
                                            {
                                                \once \override Accidental.stencil = ##f
                                                \once \override Dots.staff-position = #2
                                                \once \override NoteHead.X-offset = 0
                                                \once \override Staff.Accidental.stencil = ##f
                                                \once \override Staff.Glissando.thickness = #8.25
                                                \once \override NoteHead.duration-log = 2
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
                                                <
                                                    \tweak style #'la
                                                    g''
                                                >16
                                            }
                                            \once \override Rest.staff-position = #10
                                            r8
                                            ]
                                            \once \override Rest.staff-position = #10
                                            r4
                                            \once \override Rest.staff-position = #10
                                            r8
                                            - \tweak Beam.positions #'(10.5 . 10.5)
                                            [
                                            \once \override Rest.staff-position = #10
                                            r32
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Staff.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                f''
                                            >16
                                            _ \staccato
                                            \stopTextSpanOne
                                            \once \override Dots.staff-position = #2
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Staff.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                a''
                                            >32
                                            - \accent
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #13.5
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "III" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -1
                                            \startTextSpanOne
                                            ~
                                            \once \override Dots.staff-position = #2
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Staff.Glissando.thickness = #8.25
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
                                                a''
                                            >8..
                                            {
                                                \once \override Accidental.stencil = ##f
                                                \once \override Dots.staff-position = #2
                                                \once \override NoteHead.X-offset = 0
                                                \once \override Staff.Accidental.stencil = ##f
                                                \once \override Staff.Glissando.thickness = #8.25
                                                \once \override NoteHead.duration-log = 2
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
                                                <
                                                    \tweak style #'la
                                                    a''
                                                >16
                                            }
                                            \once \override Rest.staff-position = #10
                                            r32
                                            ]
                                            \once \override Rest.staff-position = #10
                                            r8
                                            - \tweak Beam.positions #'(10.5 . 10.5)
                                            [
                                            \once \override Rest.staff-position = #10
                                            r32
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Staff.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                a'
                                            >16
                                            - \accent
                                            _ \staccato
                                            \once \override Rest.staff-position = #10
                                            r32
                                            \once \override Rest.staff-position = #10
                                            r8..
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Staff.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                a'
                                            >32
                                            _ \staccato
                                            ~
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Staff.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                a'
                                            >32
                                            \stopTextSpanOne
                                            \once \override Rest.staff-position = #10
                                            r8..
                                            ]
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #10.5
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { \hspace #4 { "II" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -4
                                            \startTextSpanOne
                                            \once \override Rest.staff-position = #10
                                            r16
                                            - \tweak Beam.positions #'(9 . 11.5)
                                            [
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Staff.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                b'
                                            >16
                                            _ \staccato
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Staff.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                b'
                                            >32
                                            - \accent
                                            _ \staccato
                                            \once \override Rest.staff-position = #10
                                            r32
                                            \once \override Dots.staff-position = #2
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Staff.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                g'
                                            >16
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            ~
                                            \once \override Dots.staff-position = #2
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Staff.Glissando.thickness = #8.25
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
                                                g'
                                            >8
                                            ]
                                            {
                                                \once \override Accidental.stencil = ##f
                                                \once \override Dots.staff-position = #2
                                                \once \override NoteHead.X-offset = 0
                                                \once \override Staff.Accidental.stencil = ##f
                                                \once \override Staff.Glissando.thickness = #8.25
                                                \once \override NoteHead.duration-log = 2
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
                                                <
                                                    \tweak style #'la
                                                    g'
                                                >16
                                            }
                                            \once \override Rest.staff-position = #10
                                            r4
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Staff.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                e'
                                            >32
                                            _ \staccato
                                            - \tweak Beam.positions #'(8 . 8)
                                            [
                                            \once \override Rest.staff-position = #10
                                            r16.
                                            ]
                                            \once \override Rest.staff-position = #10
                                            r8
                                            - \tweak Beam.positions #'(8 . 8)
                                            [
                                            \once \override Rest.staff-position = #10
                                            r16
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Staff.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                d''
                                            >16
                                            - \accent
                                            _ \staccato
                                            \once \override Rest.staff-position = #10
                                            r8
                                            \stopTextSpanOne
                                            ]
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
                                    r2.
                                    r2
                                    r1.
                                    r4.
                                    r4.
                                    r4.
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
                                        \context Voice = "violin 4 voice temp 1"
                                        {
                                            \times 4/5
                                            {
                                                \override Staff.Clef.stencil = #ly:text-interface::print
                                                \override Staff.Clef.text = \string-clef
                                                \staff-line-count 4
                                                \override Staff.StaffSymbol.line-positions = #'(9 7 0 -9)
                                                \override Staff.BarLine.bar-extent = #'(-4.5 . 4.5)
                                                \override Staff.Accidental.stencil = ##f
                                                \override Staff.NoteHead.no-ledgers = ##t
                                                \voiceTwo
                                                <
                                                    \tweak style #'cross
                                                    b'
                                                    \tweak style #'harmonic
                                                    d''
                                                >8
                                                - \accent
                                                \mf
                                                - \markup \fontsize #2 { \hspace #-8.5 { "F. Perc.:" } }
                                                \once \override Rest.staff-position = #-7
                                                r4.
                                                <
                                                    \tweak style #'cross
                                                    c'
                                                    \tweak style #'harmonic
                                                    d'
                                                >8
                                                \>
                                            }
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 6/5
                                            {
                                                \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                                \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                                c'8
                                                [
                                                <
                                                    \tweak style #'cross
                                                    d'
                                                    \tweak style #'harmonic
                                                    g'
                                                >8
                                                - \accent
                                                \mp
                                                ]
                                                \once \override Rest.staff-position = #-7
                                                r4
                                                \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                                \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                                d'8
                                            }
                                        }
                                        \context Voice = "violin 2 bow voice 1"
                                        {
                                            \once \override Rest.staff-position = #7
                                            \voiceOne
                                            r8
                                            - \markup \fontsize #2 { \hspace #-4.5 \raise #2 { "Bow:" } }
                                            [
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #10.5
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "III" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -6
                                            \startTextSpanOne
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Staff.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                a''
                                            >16
                                            - \accent
                                            _ \staccato
                                            \once \override Rest.staff-position = #7
                                            r16
                                            ]
                                            \once \override Rest.staff-position = #7
                                            r16
                                            [
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Staff.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                g''
                                            >16
                                            _ \staccato
                                            \once \override Rest.staff-position = #7
                                            r8
                                            ]
                                            \once \override Rest.staff-position = #7
                                            r4
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Staff.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                g''
                                            >16
                                            _ \staccato
                                            [
                                            \once \override Rest.staff-position = #7
                                            r16
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Staff.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                a''
                                            >16
                                            - \accent
                                            _ \staccato
                                            \once \override Rest.staff-position = #7
                                            r16
                                            ]
                                            \once \override Rest.staff-position = #7
                                            r4
                                            \stopTextSpanOne
                                        }
                                    >>
                                    \oneVoice
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/5
                                    {
                                        \staff-line-count 5
                                        \revert Staff.StaffSymbol.line-positions
                                        \revert Staff.Accidental.stencil
                                        \revert Staff.NoteHead.no-ledgers
                                        \revert Staff.Clef.stencil
                                        r8
                                        [
                                        - \tweak padding #16.5
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " rit. ( to " } \fontsize #-0.5 { \note { 8 } #1.5 } \fontsize #3 { "= 60 )" } } } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #1.5 } \fontsize #4 { "= 60" } } }
                                        \startTextSpanThree
                                        \override Staff.BarLine.bar-extent = #'(-2 . 2)
                                        r8
                                        r8
                                        \times 2/3
                                        {
                                            r16
                                            \override Dots.staff-position = #2
                                            \once \override DynamicLineSpanner.staff-padding = #5.5
                                            \once \override Staff.Clef.X-extent = #'(-1 . 2)
                                            \clef "treble"
                                            cs'16
                                            - \accent
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
                                            (
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 1
                                            - \tweak padding #15
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \upright { "1/4 Spz." } \hspace #0.5 }
                                            - \tweak bound-details.right.text \markup \upright { "Spz." }
                                            \startTextSpanTwo
                                            - \tweak padding #12.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \normale-bow-rotation \hspace #0.5 }
                                            \startTextSpanOne
                                            - \tweak stencil #abjad-flared-hairpin
                                            \>
                                            d'16
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                        }
                                        c'8
                                        ]
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                    }
                                    \times 2/3
                                    {
                                        df'8
                                        [
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \revert Dots.staff-position
                                        b8
                                        )
                                        \override Dots.staff-position = #2
                                        \tweak style #'harmonic
                                        d'8
                                        - \tenuto
                                        _ #(make-dynamic-script
                                            (markup
                                                #:whiteout
                                                #:line (
                                                    #:general-align Y -2 #:normal-text #:larger "“"
                                                    #:hspace -0.1
                                                    #:dynamic "p"
                                                    #:hspace -0.25
                                                    #:general-align Y -2 #:normal-text #:larger "”"
                                                    )
                                                )
                                            )
                                        \stopTextSpanOne
                                        (
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak padding #12.5
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \bow-tip-half-down \hspace #0.5 }
                                        - \tweak bound-details.right.text \normale-bow-rotation
                                        \startTextSpanOne
                                        \>
                                    }
                                    \times 2/3
                                    {
                                        \tweak style #'harmonic
                                        c'8
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \tweak style #'harmonic
                                        df'8
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \tweak style #'harmonic
                                        bf8
                                        )
                                        ]
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                    }
                                    \big-half-harmonic
                                    \revert Dots.staff-position
                                    c'4
                                    - \tenuto
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
                                    \stopTextSpanOne
                                    \stopTextSpanTwo
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/7
                                    {
                                        \override Staff.Clef.stencil = #ly:text-interface::print
                                        \override Staff.Clef.text = \string-clef
                                        \staff-line-count 4
                                        \override Staff.StaffSymbol.line-positions = #'(9 7 0 -9)
                                        \override Staff.BarLine.bar-extent = #'(-4.5 . 4.5)
                                        \override Staff.Accidental.stencil = ##f
                                        \override Staff.NoteHead.no-ledgers = ##t
                                        <
                                            \tweak style #'cross
                                            c''
                                            f''
                                        >16
                                        \ppp
                                        - \markup \fontsize #2 { \hspace #-11 { "Fng. Perc.:" } }
                                        \stopTextSpanThree
                                        - \tweak bound-details.left.Y #0.5
                                        - \tweak bound-details.right.Y #2.75
                                        - \tweak font-name "Bodoni72 Book" 
                                        - \tweak font-size 2
                                        - \tweak padding #0
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "IV" } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -38
                                        \startTextSpanOne
                                        \once \override Rest.staff-position = #-7
                                        r4
                                        \once \override Rest.staff-position = #-7
                                        r16
                                        - \tweak Beam.positions #'(-8 . -8)
                                        [
                                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                        c''16
                                        \stopTextSpanOne
                                        ]
                                    }
                                    <<
                                        \context Voice = "violin 4 voice temp 2"
                                        {
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 6/7
                                            {
                                                \voiceTwo
                                                <
                                                    \tweak style #'cross
                                                    c''
                                                    \tweak style #'harmonic
                                                    d''
                                                >16
                                                - \tweak Beam.positions #'(-8 . -8)
                                                [
                                                \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                                \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                                c''16
                                                - \accent
                                                <
                                                    \tweak style #'cross
                                                    e''
                                                    \tweak style #'harmonic
                                                    g''
                                                >16
                                                \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                                \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                                e''16
                                                - \accent
                                                \once \override Rest.staff-position = #-7
                                                r8
                                                <
                                                    \tweak style #'cross
                                                    e''
                                                    f''
                                                >16
                                                - \accent
                                                ]
                                            }
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 6/7
                                            {
                                                \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                                \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                                e''16
                                                - \tweak Beam.positions #'(-8 . -8)
                                                [
                                                <
                                                    \tweak style #'cross
                                                    a'
                                                    \tweak style #'harmonic
                                                    e''
                                                >16
                                                \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                                \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                                a'16
                                                - \accent
                                                <
                                                    \tweak style #'cross
                                                    c''
                                                    \tweak style #'harmonic
                                                    f''
                                                >16
                                                \once \override Rest.staff-position = #-7
                                                r8
                                                \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                                \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                                c''16
                                                ]
                                            }
                                        }
                                        \context Voice = "violin 2 bow voice 2"
                                        {
                                            \once \override Rest.staff-position = #7
                                            \voiceOne
                                            r8
                                            - \markup \fontsize #2 { \hspace #-4.5 { "Bow:" } }
                                            - \tweak Beam.positions #'(6.5 . 11)
                                            [
                                            \once \override Rest.staff-position = #7
                                            r16.
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Staff.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            \set stemLeftBeamCount = 3
                                            \set stemRightBeamCount = 1
                                            <
                                                \tweak style #'la
                                                g'
                                            >32
                                            _ \staccato
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Staff.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            \set stemLeftBeamCount = 1
                                            \set stemRightBeamCount = 3
                                            <
                                                \tweak style #'la
                                                b'
                                            >32
                                            _ \staccato
                                            \once \override Rest.staff-position = #7
                                            r32
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Staff.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                f'
                                            >32
                                            _ \staccato
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Staff.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                c'
                                            >32
                                            - \accent
                                            _ \staccato
                                            ]
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Staff.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                a'
                                            >16
                                            _ \staccato
                                            - \tweak Beam.positions #'(7 . 7)
                                            [
                                            \once \override Rest.staff-position = #7
                                            r16
                                            \once \override Rest.staff-position = #7
                                            r8
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Staff.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            <
                                                \tweak style #'la
                                                e''
                                            >16
                                            - \accent
                                            _ \staccato
                                            \once \override Rest.staff-position = #7
                                            r16
                                            ]
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
                                    r2.
                                    r2
                                    r1.
                                    r4.
                                    r4.
                                    r4.
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
                                    \override Dots.staff-position = #2
                                    \clef "alto"
                                    b2
                                    - \accent
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
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #12.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "Spz." } \hspace #0.5 }
                                    \startTextSpanTwo
                                    - \tweak padding #10
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \normale-bow-rotation \hspace #0.5 }
                                    \startTextSpanOne
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    _ (
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
                                    b8
                                    [
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    \revert Staff.Stem.stemlet-length
                                    c'8
                                    ]
                                    ~
                                    \revert Dots.staff-position
                                    c'2
                                    )
                                    \override Dots.staff-position = #2
                                    \big-half-harmonic
                                    a'2.
                                    - \accent
                                    \stopTextSpanOne
                                    \stopTextSpanTwo
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #12.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "1/2 Spz." } \hspace #0.5 }
                                    \startTextSpanTwo
                                    - \tweak padding #10
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \bow-tip-half-up \hspace #0.5 }
                                    \startTextSpanOne
                                    - \tweak padding #14.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " rit. ( to " } \fontsize #-0.5 { \note { 8 } #1.5 } \fontsize #3 { "= 60 )" } } } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #1.5 } \fontsize #4 { "= 60" } } }
                                    \startTextSpanThree
                                    \>
                                    \big-half-harmonic
                                    \revert Dots.staff-position
                                    b'2.
                                    - \accent
                                    \override Dots.staff-position = #2
                                    \tweak style #'harmonic-mixed
                                    bf'4.
                                    - \tenuto
                                    _ #(make-dynamic-script
                                        (markup
                                            #:whiteout
                                            #:line (
                                                #:general-align Y -2 #:normal-text #:larger "“"
                                                #:hspace -0.1
                                                #:dynamic "pppp"
                                                #:hspace -0.25
                                                #:general-align Y -2 #:normal-text #:larger "”"
                                                )
                                            )
                                        )
                                    \stopTextSpanOne
                                    \stopTextSpanThree
                                    \stopTextSpanTwo
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #12.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "3/4 Spz." } \hspace #0.5 }
                                    \startTextSpanTwo
                                    - \tweak padding #10
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \bow-tip-half-down \hspace #0.5 }
                                    - \tweak bound-details.right.text \bow-tip-up
                                    \startTextSpanOne
                                    - \tweak stencil #constante-hairpin
                                    \<
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
                                    bf'8
                                    [
                                    ~
                                    bf'16
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    \tweak style #'harmonic
                                    g''16
                                    - \tenuto
                                    - \tweak circled-tip ##t
                                    \>
                                    ~
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'harmonic
                                    g''8
                                    ]
                                    ~
                                    \revert Dots.staff-position
                                    \afterGrace
                                    \tweak style #'harmonic-mixed
                                    g''4.
                                    {
                                        \once \override Stem.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.transparent = ##t
                                        c'16
                                        \!
                                        \stopTextSpanOne
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
                                    r2.
                                    r2
                                    r1.
                                    r4.
                                    r4.
                                    r4.
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
                                    \big-half-harmonic
                                    \clef "bass"
                                    <c! fs!>16
                                    - \tweak padding #1
                                    ^ \talon-to-punta
                                    \mf
                                    ^ \accent
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +33 }\line { -34 }} } }
                                    [
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #15
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { { \column { \line { "diagonal bow," } \line { "touching bridge" } } } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -4
                                    \startTextSpanOne
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    r8.
                                    ]
                                    \override Dots.staff-position = #2
                                    \afterGrace
                                    <c! fs!>4..
                                    - \tweak padding #1
                                    ^ \talon-to-punta
                                    ^ \accent
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +33 }\line { -34 }} } }
                                    (
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    {
                                        \grace-half-harmonic
                                        \revert Dots.staff-position
                                        \once \override Flag.stroke-style = #"grace"
                                        <c! fs!>16
                                        )
                                    }
                                    r16
                                    \override Dots.staff-position = #2
                                    \afterGrace
                                    <c! fs!>4.
                                    - \tweak padding #1
                                    ^ \talon-to-punta
                                    ^ \accent
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +33 }\line { -34 }} } }
                                    (
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    - \tweak padding #12.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " rit. ( to " } \fontsize #-0.5 { \note { 8 } #1.5 } \fontsize #3 { "= 60 )" } } } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #1.5 } \fontsize #4 { "= 60" } } }
                                    \startTextSpanThree
                                    {
                                        \grace-half-harmonic
                                        \revert Dots.staff-position
                                        \once \override Flag.stroke-style = #"grace"
                                        <c! fs!>16
                                        )
                                    }
                                    r8
                                    <c! fs!>16
                                    - \tweak padding #1
                                    ^ \talon-to-punta
                                    ^ \accent
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +33 }\line { -34 }} } }
                                    [
                                    r16
                                    \big-half-harmonic
                                    <c! fs!>8
                                    - \tweak padding #1
                                    ^ \talon-to-punta
                                    \!
                                    ^ \accent
                                    ^ \markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +33 }\line { -34 }} } }
                                    \stopTextSpanOne
                                    ]
                                    r2.
                                    r4.
                                    \stopTextSpanThree
                                    r4.
                                    r4.
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
