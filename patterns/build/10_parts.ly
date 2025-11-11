    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
              %! +SCORE
        %%% \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (8 24 29 31)))
            \time 10/8
            s1 * 5/4
              %! +SCORE
        %%% \break
              %! +SCORE
        %%% \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (8 32 32 30)))
            \time 2/8
            s1 * 1/4
              %! +SCORE
        %%% \noBreak
            \time 6/4
            s1 * 3/2
              %! +SCORE
        %%% \break
              %! +SCORE
        %%% \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (8 30 30 30)))
            \time 3/2
            s1 * 3/2
              %! +SCORE
        %%% \break
              %! +SCORE
        %%% \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (8 30 30 30)))
            \time 2/2
            s1 * 1
              %! +SCORE
        %%% \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 2/2
            s1 * 1
            \bar "||"
              %! +SCORE
        %%% \break
              %! +SCORE
        %%% \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (8 11 15 10 15 10 15 10)))
            \tweak text " 37\" " \startMeasureSpanner
            \once \override Score.TimeSignature.stencil = ##f
            \time 11/4
            s1 * 11/4
            - \tweak padding 9
            ^ \markup \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #4 \box \line { Dreams About Ghosts }
            \bar "||"
              %! +SCORE
        %%% \pageBreak
            \stopMeasureSpanner
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
                                %%% \set GrandStaff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { V1 }
                                    r4.
                                    r4
                                    r4.
                                    r4
                                    r4
                                    r1.
                                    r1.
                                    r1
                                    r1
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 11/17
                                    {
                                        \override Dots.staff-position = #2
                                        c'''2.
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        e''1
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
                                        e''4
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        b'4
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        a'2.
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        c'1
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
                                        c'4
                                        {
                                            #(define afterGraceFraction (cons 15 16))
                                            \revert Dots.staff-position
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
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 5/6
                                            {
                                                \voiceOne
                                                cs''4
                                                - \talon-to-punta
                                                  %! +SCORE
                                            %%% ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-9 \raise #1 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 83" } } }
                                                - \tweak font-name "Bodoni72 Book" 
                                                - \tweak font-size 1
                                                - \tweak padding #12.25
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { \upright { "CLT" } \hspace #0.5 }
                                                - \tweak bound-details.right.padding -2
                                                \startTextSpanTwo
                                                a''4
                                                as''4
                                                e''4
                                                a'4
                                                d'4
                                                \stopTextSpanTwo
                                            }
                                        }
                                        \context Voice = "violin 1 lower voice"
                                        {
                                            \voiceTwo
                                            c''4
                                            fs'''4
                                            c''4
                                            d'4
                                            e''4
                                        }
                                    >>
                                    \oneVoice
                                    <<
                                        \context Voice = "violin 2 voice hair"
                                        {
                                            \big-half-harmonic
                                            \voiceOne
                                            cqs''8
                                            - \tweak padding 1
                                            ^ \punta-to-talon
                                            ^ \mf
                                            [
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 1
                                            - \tweak padding #14
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "MSP" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -1.5
                                            \startTextSpanTwo
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 5/6
                                            {
                                                \big-half-harmonic
                                                c''8
                                                - \tweak padding 1
                                                ^ \talon-to-punta
                                                \big-half-harmonic
                                                d''8
                                                - \tweak padding 1
                                                ^ \punta-to-talon
                                                ]
                                                \big-half-harmonic
                                                bf''8
                                                - \tweak padding 1
                                                ^ \talon-to-punta
                                                ~
                                            }
                                            \big-half-harmonic
                                            bf''16
                                            ~
                                            \big-half-harmonic
                                            bf''2
                                            ~
                                            \big-half-harmonic
                                            bf''16
                                            [
                                            \big-half-harmonic
                                            gqs''8.
                                            - \tweak padding 1
                                            ^ \punta-to-talon
                                            ]
                                            ~
                                            \big-half-harmonic
                                            gqs''8.
                                            [
                                            \big-half-harmonic
                                            af''16
                                            - \tweak padding 1
                                            ^ \talon-to-punta
                                            ]
                                            \big-half-harmonic
                                            gqs''16
                                            - \tweak padding 1
                                            ^ \punta-to-talon
                                            [
                                            \big-half-harmonic
                                            bqf''16
                                            - \tweak padding 1
                                            ^ \talon-to-punta
                                            \big-half-harmonic
                                            gqf''16
                                            - \tweak padding 1
                                            ^ \punta-to-talon
                                            \big-half-harmonic
                                            fs''16
                                            - \tweak padding 1
                                            ^ \talon-to-punta
                                            \stopTextSpanTwo
                                            ]
                                        }
                                        \context Voice = "violin 1 legno voice"
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
                                            b16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            [
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #11.5
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLB OB" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -1.5
                                            \startTextSpan
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
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            ]
                                            \tweak style #'cross
                                            b4
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            ~
                                            \tweak style #'cross
                                            b8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            [
                                            \tweak style #'cross
                                            b8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            ]
                                            ~
                                            \tweak style #'cross
                                            b4
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            \tweak style #'cross
                                            b4
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            ~
                                            \tweak style #'cross
                                            b8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            [
                                            \tweak style #'cross
                                            b8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            ]
                                            ~
                                            \tweak style #'cross
                                            b4
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
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
                                    g'''2
                                    - \accent
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 2
                                    - \tweak padding #9
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "SP moltiss. + scratch" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -5
                                    \startTextSpan
                                    g'''2
                                    - \accent
                                    g'''2
                                    - \accent
                                    g'''2
                                    - \accent
                                    g'''2
                                    - \accent
                                    \stopTextSpan
                                    \big-half-harmonic
                                    g'''2
                                    (
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 2
                                    - \tweak padding #9
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "SP + vib. moltiss. + 1/2 scratch" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -18
                                    \startTextSpan
                                    \>
                                    \big-half-harmonic
                                    e''2
                                    )
                                    \stopTextSpan
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Dots.stencil = ##f
                                    \once \override NoteHead.duration-log = 2
                                    \once \override Stem.stencil = ##f
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                    fs''16
                                    \!
                                    ^ \markup \center-align { \concat { -10 } }
                                    _ \markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #1 { "Changes in bow speed may result in slight distortions of the tone. This is desired. The left hand position need not be adjusted to accomodate this." }
                                    ~
                                    \once \override Dots.staff-position = #2
                                    \once \override RepeatTie.transparent = ##t
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Dots.stencil = ##f
                                    \once \override Tie.stencil = ##f
                                    \once \override NoteHead.duration-log = 2
                                    \once \override Stem.stencil = ##f
                                    <
                                        fs''
                                        \tweak style #'harmonic
                                        b''
                                    >\breve
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    ~
                                    \once \override Dots.staff-position = #2
                                    \once \override RepeatTie.transparent = ##t
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Dots.stencil = ##f
                                    \once \override Tie.stencil = ##f
                                    \once \override NoteHead.duration-log = 2
                                    \once \override Stem.stencil = ##f
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    <fs'' b''>2
                                    ~
                                    \once \override Dots.staff-position = #2
                                    \once \override RepeatTie.transparent = ##t
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Dots.stencil = ##f
                                    \once \override Tie.stencil = ##f
                                    \once \override NoteHead.duration-log = 2
                                    \once \override Stem.stencil = ##f
                                    \afterGrace
                                    <fs'' b''>8.
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
                                        <fs'' b''>16
                                    }
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
                                %%% \set GrandStaff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { V2 }
                                    r4.
                                    r4
                                    r4.
                                    r4
                                    r4
                                    r1.
                                    r1.
                                    r1
                                    r1
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 11/15
                                    {
                                        \override Dots.staff-position = #2
                                        c'''2
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        a''2.
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        e''2
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        g'1
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
                                        g'4
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        \afterGrace
                                        d'2.
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        {
                                            #(define afterGraceFraction (cons 15 16))
                                            \revert Dots.staff-position
                                            b16
                                        }
                                    }
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
                                    \times 5/4
                                    {
                                        \override Dots.staff-position = #2
                                        \big-half-harmonic
                                        cs''''4
                                        - \tweak padding 0.5
                                        ^ \talon-to-punta
                                          %! +SCORE
                                    %%% ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-9 \raise #1 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 83" } } }
                                        (
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak font-name "Bodoni72 Book" 
                                        - \tweak font-size 2
                                        - \tweak padding #13
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "SP" } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -1
                                        \startTextSpan
                                        \big-half-harmonic
                                        c'''4
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 5/6
                                    {
                                        \big-half-harmonic
                                        fs'''4
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \times 4/5
                                        {
                                            \big-half-harmonic
                                            f''16
                                            [
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            \big-half-harmonic
                                            g''16
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            \big-half-harmonic
                                            e''16
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            \big-half-harmonic
                                            f''16
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            \big-half-harmonic
                                            d''16
                                            ]
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                        }
                                        \big-half-harmonic
                                        e''4
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                    }
                                    \big-half-harmonic
                                    ef'16
                                    [
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \big-half-harmonic
                                    \set stemLeftBeamCount = 2
                                    \set stemRightBeamCount = 1
                                    f'16
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \times 4/5
                                    {
                                        \big-half-harmonic
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 3
                                        df'32
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \big-half-harmonic
                                        e'32
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \big-half-harmonic
                                        d'32
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \big-half-harmonic
                                        ef'32
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \big-half-harmonic
                                        c'32
                                        )
                                        \stopTextSpan
                                        ]
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                    }
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                    b!8
                                    ^ \markup \center-align { \concat { -12 } }
                                    [
                                    ~
                                    \revert Staff.Stem.stemlet-length
                                    <
                                        b
                                        \tweak style #'harmonic
                                        e'
                                    >8
                                    ]
                                    ~
                                    <
                                        b
                                        \tweak style #'harmonic
                                        e'
                                    >2
                                    ~
                                    <
                                        b
                                        \tweak style #'harmonic
                                        e'
                                    >2.
                                    ~
                                    <
                                        b
                                        \tweak style #'harmonic
                                        e'
                                    >1.
                                    ~
                                    <
                                        b
                                        \tweak style #'harmonic
                                        e'
                                    >1
                                    ~
                                    \revert Dots.staff-position
                                    <
                                        b
                                        \tweak style #'harmonic
                                        e'
                                    >1
                                    ~
                                    \once \override Dots.staff-position = #2
                                    \once \override RepeatTie.transparent = ##t
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Dots.stencil = ##f
                                    \once \override Tie.stencil = ##f
                                    \once \override NoteHead.duration-log = 2
                                    \once \override Stem.stencil = ##f
                                    <
                                        b
                                        \tweak style #'harmonic
                                        e'
                                    >\breve
                                    _ \markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #1 { "Changes in bow speed may result in slight distortions of the tone. This is desired. The left hand position need not be adjusted to accomodate this." }
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    ~
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
                                    \afterGrace
                                    <b e'>2.
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
                                        <b e'>16
                                    }
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
                                %%% \set GrandStaff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { VA }
                                    r4.
                                    r4
                                    r4.
                                    r4
                                    r4
                                    r1.
                                    r1.
                                    r1
                                    r1
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 11/15
                                    {
                                        \override Dots.staff-position = #2
                                        c'''1
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        f''1
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
                                        f''4
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        a'2.
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \afterGrace
                                        f'2.
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        {
                                            #(define afterGraceFraction (cons 15 16))
                                            \revert Dots.staff-position
                                            c'16
                                        }
                                    }
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
                                        \context Voice = "viola 2 voice upper"
                                        {
                                            \staff-line-count 4
                                            \once \override Accidental.stencil = ##f
                                            \override Staff.Clef.stencil = #ly:text-interface::print
                                            \override Staff.Clef.text = \stringing-clef
                                            \clef "percussion"
                                            \voiceOne
                                            <
                                                \tweak style #'cross
                                                g
                                                \tweak style #'cross
                                                b
                                                \tweak style #'cross
                                                d'
                                                \tweak style #'cross
                                                f'
                                            >16
                                            _ \coda
                                            _ \marcato
                                              %! +SCORE
                                        %%% ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-9 \raise #1 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 83" } } }
                                            - \tweak Beam.positions #'(10 . 10)
                                            [
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 1
                                            - \tweak padding #12
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "1/2 CLB + ST poss." } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -0.5
                                            \startTextSpanOne
                                            \once \override Rest.staff-position = #15
                                            r8.
                                            \once \override Accidental.stencil = ##f
                                            <
                                                \tweak style #'cross
                                                g
                                                \tweak style #'cross
                                                b
                                                \tweak style #'cross
                                                d'
                                                \tweak style #'cross
                                                f'
                                            >16
                                            _ \coda
                                            _ \marcato
                                            \once \override Rest.staff-position = #15
                                            r8.
                                            \once \override Accidental.stencil = ##f
                                            <
                                                \tweak style #'cross
                                                g
                                                \tweak style #'cross
                                                b
                                                \tweak style #'cross
                                                d'
                                                \tweak style #'cross
                                                f'
                                            >16
                                            _ \coda
                                            _ \marcato
                                            \once \override Rest.staff-position = #15
                                            r8.
                                            \once \override Accidental.stencil = ##f
                                            <
                                                \tweak style #'cross
                                                g
                                                \tweak style #'cross
                                                b
                                                \tweak style #'cross
                                                d'
                                                \tweak style #'cross
                                                f'
                                            >16
                                            _ \coda
                                            _ \marcato
                                            \once \override Rest.staff-position = #15
                                            r8.
                                            \once \override Accidental.stencil = ##f
                                            <
                                                \tweak style #'cross
                                                g
                                                \tweak style #'cross
                                                b
                                                \tweak style #'cross
                                                d'
                                                \tweak style #'cross
                                                f'
                                            >16
                                            _ \coda
                                            _ \marcato
                                            \once \override Rest.staff-position = #15
                                            r8.
                                            ]
                                            \once \override Accidental.stencil = ##f
                                            <
                                                \tweak style #'cross
                                                g
                                                \tweak style #'cross
                                                b
                                                \tweak style #'cross
                                                d'
                                                \tweak style #'cross
                                                f'
                                            >64
                                            _ \coda
                                            _ \marcato
                                            - \tweak Beam.positions #'(11 . 11)
                                            [
                                            \once \override Rest.staff-position = #7.5
                                            r32.
                                            \once \override Accidental.stencil = ##f
                                            <
                                                \tweak style #'cross
                                                g
                                                \tweak style #'cross
                                                b
                                                \tweak style #'cross
                                                d'
                                                \tweak style #'cross
                                                f'
                                            >64
                                            _ \coda
                                            _ \marcato
                                            \once \override Rest.staff-position = #7.5
                                            r32.
                                            \once \override Accidental.stencil = ##f
                                            <
                                                \tweak style #'cross
                                                g
                                                \tweak style #'cross
                                                b
                                                \tweak style #'cross
                                                d'
                                                \tweak style #'cross
                                                f'
                                            >64
                                            _ \coda
                                            _ \marcato
                                            \once \override Rest.staff-position = #7.5
                                            r32.
                                            \once \override Accidental.stencil = ##f
                                            <
                                                \tweak style #'cross
                                                g
                                                \tweak style #'cross
                                                b
                                                \tweak style #'cross
                                                d'
                                                \tweak style #'cross
                                                f'
                                            >64
                                            _ \coda
                                            _ \marcato
                                            \once \override Rest.staff-position = #7.5
                                            r32.
                                            \stopTextSpanOne
                                            ]
                                        }
                                        \context Voice = "viola lower voice"
                                        {
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 10/8
                                            {
                                                \once \override Accidental.stencil = ##f
                                                \voiceTwo
                                                <
                                                    \tweak style #'cross
                                                    g
                                                    \tweak style #'cross
                                                    b
                                                    \tweak style #'cross
                                                    d'
                                                    \tweak style #'cross
                                                    f'
                                                >16
                                                ^ \coda
                                                ^ \marcato
                                                - \tweak Beam.positions #'(-9 . -9)
                                                [
                                                \once \override Rest.staff-position = #-11
                                                r8.
                                                \once \override Accidental.stencil = ##f
                                                <
                                                    \tweak style #'cross
                                                    g
                                                    \tweak style #'cross
                                                    b
                                                    \tweak style #'cross
                                                    d'
                                                    \tweak style #'cross
                                                    f'
                                                >16
                                                ^ \coda
                                                ^ \marcato
                                                \once \override Rest.staff-position = #-11
                                                r8.
                                                \once \override Accidental.stencil = ##f
                                                <
                                                    \tweak style #'cross
                                                    g
                                                    \tweak style #'cross
                                                    b
                                                    \tweak style #'cross
                                                    d'
                                                    \tweak style #'cross
                                                    f'
                                                >16
                                                ^ \coda
                                                ^ \marcato
                                                \once \override Rest.staff-position = #-11
                                                r8.
                                                \once \override Accidental.stencil = ##f
                                                <
                                                    \tweak style #'cross
                                                    g
                                                    \tweak style #'cross
                                                    b
                                                    \tweak style #'cross
                                                    d'
                                                    \tweak style #'cross
                                                    f'
                                                >16
                                                ^ \coda
                                                ^ \marcato
                                                \once \override Rest.staff-position = #-11
                                                r8.
                                                ]
                                            }
                                            \times 2/3
                                            {
                                                \once \override Accidental.stencil = ##f
                                                <
                                                    \tweak style #'cross
                                                    g
                                                    \tweak style #'cross
                                                    b
                                                    \tweak style #'cross
                                                    d'
                                                    \tweak style #'cross
                                                    f'
                                                >32
                                                ^ \coda
                                                ^ \marcato
                                                - \tweak Beam.positions #'(-12 . -12)
                                                [
                                                \once \override Rest.staff-position = #-14
                                                r16.
                                                \once \override Accidental.stencil = ##f
                                                <
                                                    \tweak style #'cross
                                                    g
                                                    \tweak style #'cross
                                                    b
                                                    \tweak style #'cross
                                                    d'
                                                    \tweak style #'cross
                                                    f'
                                                >32
                                                ^ \coda
                                                ^ \marcato
                                                \once \override Rest.staff-position = #-14
                                                r16.
                                                \once \override Accidental.stencil = ##f
                                                <
                                                    \tweak style #'cross
                                                    g
                                                    \tweak style #'cross
                                                    b
                                                    \tweak style #'cross
                                                    d'
                                                    \tweak style #'cross
                                                    f'
                                                >32
                                                ^ \coda
                                                ^ \marcato
                                                \once \override Rest.staff-position = #-14
                                                r16.
                                                ]
                                            }
                                        }
                                    >>
                                    \oneVoice
                                    <<
                                        \context Voice = "viola 2 voice hair"
                                        {
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 6/5
                                            {
                                                \staff-line-count 5
                                                \big-half-harmonic
                                                \revert Staff.Clef.stencil
                                                \once \override Staff.Clef.X-extent = ##f
                                                \once \override Staff.Clef.X-offset = #-2.5
                                                \clef "alto"
                                                \voiceOne
                                                af'4
                                                - \tweak padding 1
                                                ^ \talon-to-punta
                                                - \tweak font-name "Bodoni72 Book" 
                                                - \tweak font-size 1
                                                - \tweak padding #15
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { \upright { "MSP" } \hspace #0.5 }
                                                - \tweak bound-details.right.padding -2
                                                \startTextSpanTwo
                                                \big-half-harmonic
                                                eqf'4
                                                - \tweak padding 1
                                                ^ \punta-to-talon
                                                \big-half-harmonic
                                                gqs'4
                                                - \tweak padding 1
                                                ^ \talon-to-punta
                                                \big-half-harmonic
                                                af'4
                                                - \tweak padding 1
                                                ^ \punta-to-talon
                                                \big-half-harmonic
                                                eqf'4
                                                - \tweak padding 1
                                                ^ \talon-to-punta
                                            }
                                            \big-half-harmonic
                                            bqs'4.
                                            - \tweak padding 1
                                            ^ \punta-to-talon
                                            \big-half-harmonic
                                            c''4.
                                            - \tweak padding 1
                                            ^ \talon-to-punta
                                            \big-half-harmonic
                                            d''4.
                                            - \tweak padding 1
                                            ^ \punta-to-talon
                                            \big-half-harmonic
                                            ef''4.
                                            - \tweak padding 1
                                            ^ \talon-to-punta
                                            \stopTextSpanTwo
                                        }
                                        \context Voice = "viola legno voice"
                                        {
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 3/4
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
                                                b,8
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                - \tweak color #(css-color 'darkred)
                                                _ \accent
                                                - \tweak color #(css-color 'darkred)
                                                - \tweak font-name "Bodoni72 Book" 
                                                - \tweak font-size 2
                                                - \tweak padding #14
                                                - \abjad-dashed-line-with-up-hook
                                                - \tweak bound-details.left.text \markup \concat { \upright { "CLB OB" } \hspace #0.5 }
                                                - \tweak bound-details.right.padding -1.5
                                                \startTextSpan
                                                r4.
                                                \tweak style #'cross
                                                b,8
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                r4.
                                                \tweak style #'cross
                                                b,8
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                r4.
                                                \tweak style #'cross
                                                b,8
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                - \tweak color #(css-color 'darkred)
                                                _ \accent
                                                r4.
                                            }
                                            \tweak style #'cross
                                            b,8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            r4.
                                            \tweak style #'cross
                                            b,8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            r4.
                                            \tweak style #'cross
                                            b,8
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            \stopTextSpan
                                            \textSpannerUp
                                            \revert Voice.NoteHead.no-ledgers
                                            \revert Voice.Accidental.stencil
                                            r4.
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
                                    <<
                                        \context Voice = "viola 2 voice upper 1"
                                        {
                                            \times 2/3
                                            {
                                                \voiceOne
                                                a'2
                                                - \tweak padding 1
                                                ^ \punta-to-talon
                                                af'2
                                                - \tweak padding 1
                                                ^ \talon-to-punta
                                                b2
                                                - \tweak padding 1
                                                ^ \punta-to-talon
                                            }
                                        }
                                        \context Voice = "viola lower voice 1"
                                        {
                                            \times 4/6
                                            {
                                                \voiceTwo
                                                g'4
                                                (
                                                - \tweak font-name "Bodoni72 Book" 
                                                - \tweak font-size 1
                                                - \tweak padding #14.25
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { \upright { "CLT" } \hspace #0.5 }
                                                - \tweak bound-details.right.padding -2
                                                \startTextSpanTwo
                                                ef'4
                                                )
                                                a'!4
                                                (
                                                gf'4
                                                )
                                                g4
                                                (
                                                gs4
                                                )
                                                \stopTextSpanTwo
                                            }
                                        }
                                    >>
                                    \oneVoice
                                    f8
                                    ~
                                    <
                                        f
                                        \tweak style #'harmonic
                                        bf
                                    >4.
                                    ~
                                    <
                                        f
                                        \tweak style #'harmonic
                                        bf
                                    >2
                                    ~
                                    \once \override Dots.staff-position = #2
                                    \once \override RepeatTie.transparent = ##t
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Dots.stencil = ##f
                                    \once \override Tie.stencil = ##f
                                    \once \override NoteHead.duration-log = 2
                                    \once \override Stem.stencil = ##f
                                    <
                                        f
                                        \tweak style #'harmonic
                                        bf
                                    >\breve
                                    _ \markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #1 { "Changes in bow speed may result in slight distortions of the tone. This is desired. The left hand position need not be adjusted to accomodate this." }
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    ~
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
                                    \afterGrace
                                    <f bf>2.
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
                                        <f bf>16
                                    }
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
                                %%% \set GrandStaff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book") { VC }
                                    r4.
                                    r4
                                    r4.
                                    r4
                                    r4
                                    r1.
                                    r1.
                                    r1
                                    r1
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 11/21
                                    {
                                        \override Dots.staff-position = #2
                                        c'''1
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
                                        c'''4
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        b''2.
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        e''2.
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        b'1
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        g'1
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
                                        g'4
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        \afterGrace
                                        e'4
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        {
                                            #(define afterGraceFraction (cons 15 16))
                                            \revert Dots.staff-position
                                            a16
                                        }
                                    }
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
                                        \context Voice = "cello 2 voice hair"
                                        {
                                            \clef "bass"
                                            \voiceOne
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                c!
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                cs!
                                                \tweak style #'harmonic
                                                dqs!
                                            >16
                                            - \tweak padding 1
                                            ^ \talon-to-punta
                                              %! +SCORE
                                        %%% ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-9 \raise #1 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 83" } } }
                                            [
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 1
                                            - \tweak padding #13
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "MSP" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -1.5
                                            \startTextSpanTwo
                                            ~
                                            \times 4/5
                                            {
                                                \set stemLeftBeamCount = 1
                                                \set stemRightBeamCount = 2
                                                <
                                                    \tweak Accidental.font-size #-3.5
                                                    \tweak Accidental.parenthesized ##t
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-3.5
                                                    c
                                                    \tweak Accidental.font-size #-3.5
                                                    \tweak Accidental.parenthesized ##t
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-3.5
                                                    \tweak style #'harmonic
                                                    cs
                                                    \tweak style #'harmonic
                                                    dqs
                                                >16
                                                <
                                                    \tweak Accidental.font-size #-3.5
                                                    \tweak Accidental.parenthesized ##t
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-3.5
                                                    \tweak style #'harmonic
                                                    aqs,!
                                                    \tweak style #'harmonic
                                                    dqs!
                                                >16
                                                - \tweak padding 1
                                                ^ \punta-to-talon
                                                <
                                                    \tweak Accidental.font-size #-3.5
                                                    \tweak Accidental.parenthesized ##t
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-3.5
                                                    \tweak style #'harmonic
                                                    c!
                                                    \tweak style #'harmonic
                                                    cs!
                                                >16
                                                - \tweak padding 1
                                                ^ \talon-to-punta
                                                <
                                                    \tweak Accidental.font-size #-3.5
                                                    \tweak Accidental.parenthesized ##t
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-3.5
                                                    a,!
                                                    \tweak Accidental.font-size #-3.5
                                                    \tweak Accidental.parenthesized ##t
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-3.5
                                                    \tweak style #'harmonic
                                                    bqs,!
                                                    \tweak style #'harmonic
                                                    dqs!
                                                >16
                                                - \tweak padding 1
                                                ^ \punta-to-talon
                                                \set stemLeftBeamCount = 2
                                                \set stemRightBeamCount = 1
                                                <
                                                    \tweak Accidental.font-size #-3.5
                                                    \tweak Accidental.parenthesized ##t
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-3.5
                                                    \tweak style #'harmonic
                                                    bqf,!
                                                    \tweak style #'harmonic
                                                    bqs,!
                                                >16
                                                - \tweak padding 1
                                                ^ \talon-to-punta
                                                ~
                                            }
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                bqf,
                                                \tweak style #'harmonic
                                                bqs,
                                            >16
                                            ]
                                            ~
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                bqf,
                                                \tweak style #'harmonic
                                                bqs,
                                            >8.
                                            [
                                            ~
                                            \times 4/5
                                            {
                                                <
                                                    \tweak Accidental.font-size #-3.5
                                                    \tweak Accidental.parenthesized ##t
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-3.5
                                                    \tweak style #'harmonic
                                                    bqf,
                                                    \tweak style #'harmonic
                                                    bqs,
                                                >16
                                                <
                                                    \tweak Accidental.font-size #-3.5
                                                    \tweak Accidental.parenthesized ##t
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-3.5
                                                    \tweak style #'harmonic
                                                    bqs,!
                                                    \tweak style #'harmonic
                                                    cqs!
                                                >16
                                                - \tweak padding 1
                                                ^ \punta-to-talon
                                                <
                                                    \tweak Accidental.font-size #-3.5
                                                    \tweak Accidental.parenthesized ##t
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-3.5
                                                    bf,!
                                                    \tweak Accidental.font-size #-3.5
                                                    \tweak Accidental.parenthesized ##t
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-3.5
                                                    \tweak style #'harmonic
                                                    b,!
                                                    \tweak style #'harmonic
                                                    cqs!
                                                >16
                                                - \tweak padding 1
                                                ^ \talon-to-punta
                                                <
                                                    \tweak Accidental.font-size #-3.5
                                                    \tweak Accidental.parenthesized ##t
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-3.5
                                                    \tweak style #'harmonic
                                                    aqs,!
                                                    \tweak style #'harmonic
                                                    dqs!
                                                >16
                                                - \tweak padding 1
                                                ^ \punta-to-talon
                                                <
                                                    \tweak Accidental.font-size #-3.5
                                                    \tweak Accidental.parenthesized ##t
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-3.5
                                                    \tweak style #'harmonic
                                                    a,!
                                                    \tweak style #'harmonic
                                                    cs!
                                                >16
                                                - \tweak padding 1
                                                ^ \talon-to-punta
                                                ~
                                            }
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                a,
                                                \tweak style #'harmonic
                                                cs
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
                                                    \tweak style #'harmonic
                                                    a,
                                                    \tweak style #'harmonic
                                                    cs
                                                >8
                                                [
                                                <
                                                    \tweak Accidental.font-size #-3.5
                                                    \tweak Accidental.parenthesized ##t
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-3.5
                                                    aqf,!
                                                    \tweak Accidental.font-size #-3.5
                                                    \tweak Accidental.parenthesized ##t
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-3.5
                                                    \tweak style #'harmonic
                                                    a,!
                                                    \tweak style #'harmonic
                                                    cs!
                                                >8
                                                - \tweak padding 1
                                                ^ \punta-to-talon
                                                <
                                                    \tweak Accidental.font-size #-3.5
                                                    \tweak Accidental.parenthesized ##t
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-3.5
                                                    \tweak style #'harmonic
                                                    c!
                                                    \tweak style #'harmonic
                                                    dqs!
                                                >8
                                                - \tweak padding 1
                                                ^ \talon-to-punta
                                                \stopTextSpanTwo
                                                ]
                                            }
                                        }
                                        \context Voice = "cello legno voice"
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
                                            b,,16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #14.5
                                            - \abjad-dashed-line-with-up-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLB OB" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -1.5
                                            \startTextSpan
                                            \times 4/5
                                            {
                                                \once \override Rest.staff-position = #-10
                                                r16
                                                [
                                                \once \override Rest.staff-position = #-10
                                                r16
                                                \tweak style #'cross
                                                b,,16
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                - \tweak color #(css-color 'darkred)
                                                _ \accent
                                                \once \override Rest.staff-position = #-10
                                                r16
                                                \tweak style #'cross
                                                b,,16
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                - \tweak color #(css-color 'darkred)
                                                _ \accent
                                                ]
                                            }
                                            \times 2/3
                                            {
                                                \tweak style #'cross
                                                b,,8
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                - \tweak color #(css-color 'darkred)
                                                _ \accent
                                                [
                                                \tweak style #'cross
                                                b,,8
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                \tweak style #'cross
                                                b,,8
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                ]
                                            }
                                            \times 4/5
                                            {
                                                \tweak style #'cross
                                                b,,16
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                - \tweak color #(css-color 'darkred)
                                                _ \accent
                                                [
                                                \once \override Rest.staff-position = #-10
                                                r16
                                                \once \override Rest.staff-position = #-10
                                                r16
                                                \tweak style #'cross
                                                b,,16
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                - \tweak color #(css-color 'darkred)
                                                _ \accent
                                                \once \override Rest.staff-position = #-10
                                                r16
                                                ]
                                            }
                                            \once \override Rest.staff-position = #-10
                                            r16
                                            [
                                            \tweak style #'cross
                                            b,,16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            - \tweak color #(css-color 'darkred)
                                            _ \accent
                                            \tweak style #'cross
                                            b,,16
                                            - \tweak color #(css-color 'darkred)
                                            ^ \staccato
                                            ]
                                            \times 2/3
                                            {
                                                \once \override Rest.staff-position = #-10
                                                r8
                                                [
                                                \tweak style #'cross
                                                b,,8
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                - \tweak color #(css-color 'darkred)
                                                _ \accent
                                                \stopTextSpan
                                                \textSpannerUp
                                                \revert Voice.NoteHead.no-ledgers
                                                \revert Voice.Accidental.stencil
                                                \once \override Rest.staff-position = #-10
                                                r8
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
                                        }
                                    >>
                                    \oneVoice
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        c,!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                        e!
                                    >8
                                    ^ \markup \center-align { \center-column { \line { \concat { -14 }  }\line { \concat { +0 }  } } }
                                    [
                                    ~
                                    \revert Staff.Stem.stemlet-length
                                    <
                                        c,
                                        e
                                        \tweak style #'harmonic
                                        a
                                    >8
                                    ]
                                    ~
                                    <
                                        c,
                                        e
                                        \tweak style #'harmonic
                                        a
                                    >1.
                                    ~
                                    <
                                        c,
                                        e
                                        \tweak style #'harmonic
                                        a
                                    >1.
                                    ~
                                    <
                                        c,
                                        e
                                        \tweak style #'harmonic
                                        a
                                    >1
                                    ~
                                    <
                                        c,
                                        e
                                        \tweak style #'harmonic
                                        a
                                    >1
                                    ~
                                    \once \override Dots.staff-position = #2
                                    \once \override RepeatTie.transparent = ##t
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Dots.stencil = ##f
                                    \once \override Tie.stencil = ##f
                                    \once \override NoteHead.duration-log = 2
                                    \once \override Stem.stencil = ##f
                                    <
                                        c,
                                        e
                                        \tweak style #'harmonic
                                        a
                                    >\breve
                                    _ \markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #1 { "Changes in bow speed may result in slight distortions of the tone. This is desired. The left hand position need not be adjusted to accomodate this." }
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    ~
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
                                    \afterGrace
                                    <c, e a>2.
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
                                        <c, e a>16
                                    }
                                }
                            }
                        }
                    >>
                }
            >>
        }
    >>
  %! abjad.LilyPondFile._get_format_pieces()
