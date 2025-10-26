    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
              %! +SCORE
        %%% \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (12 30 30 28)))
            \time 2/2
            s1 * 1
              %! +SCORE
        %%% \noBreak
            \time 1/2
            s1 * 1/2
              %! +SCORE
        %%% \break
              %! +SCORE
        %%% \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (12.5 30.5 41 28)))
            \time 2/2
            s1 * 1
              %! +SCORE
        %%% \noBreak
            \time 5/4
            s1 * 5/4
              %! +SCORE
        %%% \break
              %! +SCORE
        %%% \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (10 31 42 27)))
            \once \override Score.TimeSignature.stencil = ##f
            \time 5/4
            s1 * 5/4
              %! +SCORE
        %%% \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 5/4
            s1 * 5/4
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
              %! +SCORE
        %%% \pageBreak
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
                                    r2
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
                                    r2
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
                                        \context Voice = "violin 2 voice temp 1"
                                        {
                                            \once \override TupletBracket.padding = #0.5
                                            \times 2/3
                                            {
                                                \once \override Accidental.stencil = ##f
                                                \override Staff.Clef.stencil = #ly:text-interface::print
                                                \override Staff.Clef.text = \stringing-clef
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
                                                >2
                                                    _ #(make-dynamic-script (markup #:whiteout #:italic "ffffff"))
                                                _ \coda
                                                _ \marcato
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
                                                >2
                                                _ \coda
                                                _ \marcato
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
                                                >2
                                                _ \coda
                                                _ \marcato
                                            }
                                            \once \override TupletBracket.padding = #0.5
                                            \times 4/6
                                            {
                                                e''8
                                                \pp
                                                [
                                                - \tweak font-name "Bodoni72 Book" 
                                                - \tweak font-size 1
                                                - \tweak padding #15
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { \upright { "CLB + SP" } \hspace #0.5 }
                                                - \tweak bound-details.right.padding -1.5
                                                \startTextSpanOne
                                                a''8
                                                e'''8
                                                f'''8
                                                bf'''8
                                                d''''8
                                                \stopTextSpanOne
                                                ]
                                            }
                                        }
                                        \context Voice = "violin 1 polyrhythm voice 1"
                                        {
                                            \staff-line-count 4
                                            \once \override Accidental.stencil = ##f
                                            \override Staff.Clef.stencil = #ly:text-interface::print
                                            \override Staff.Clef.text = \stringing-clef
                                            \clef "percussion"
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
                                            >4
                                            ^ \coda
                                            ^ \marcato
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 1
                                            - \tweak padding #9
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "1/2 CLB" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -3
                                            \startTextSpanOne
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
                                            >4
                                            ^ \coda
                                            ^ \marcato
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
                                            >4
                                            ^ \coda
                                            ^ \marcato
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
                                            >4
                                            ^ \coda
                                            ^ \marcato
                                            \stopTextSpanOne
                                            \once \override TupletBracket.padding = #0.5
                                            \times 2/3
                                            {
                                                \staff-line-count 5
                                                \revert Staff.Clef.stencil
                                                \clef "treble"
                                                bf'4
                                                g''4
                                                e'''4
                                            }
                                        }
                                    >>
                                    \oneVoice
                                    \override Dots.staff-position = #2
                                    \ottava 1
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                        e'''!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        a'''!
                                    >2
                                    \mp
                                    ^ \markup \center-align { \center-column { \line { \concat { +6 }  }\line { \concat { -14 }  } } }
                                    (
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #13
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "ST" } \hspace #0.5 }
                                    \startTextSpanOne
                                    - \tweak padding #14.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " rit. ( to " } \fontsize #-0.5 { \note { 8 } #1.5 } \fontsize #3 { "= 60 )" } } } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #1.5 } \fontsize #4 { "= 60" } } }
                                    \startTextSpanThree
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    \override Dots.staff-position = #2
                                    \fancy-gliss
                                       #'(
                                          (0 0 0.5 1 1 0)
                                          (1 0 1.5 -1 2 0)
                                          (2 0 2.5 1 3 0)
                                          (3 0 3.5 -1 4 0)
                                          (4 0 4.5 1 5 0)
                                          (5 0 5.5 -1 6 0)
                                          (6 0 6.5 1 7 0)
                                          (7 0 7.5 -1 8 0)
                                          (8 0 8.5 1 9 0)
                                          (9 0 9.5 -1 10 0)
                                     )
                                     #0.5
                                    \revert Dots.staff-position
                                    \afterGrace
                                    <
                                        \tweak style #'harmonic
                                        e'''
                                        \tweak style #'harmonic
                                        a'''
                                    >2
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    {
                                        \once \override Accidental.stencil = ##f
                                        \once \override Stem.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Accidental.stencil = ##f
                                        \revert Dots.staff-position
                                        \once \override NoteHead.transparent = ##t
                                        <e''' a'''>16
                                        )
                                    }
                                    \override Dots.staff-position = #2
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        ds'''!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        fs'''!
                                    >2
                                    ^ \markup \center-align { \center-column { \line { \concat { -10 }  }\line { \concat { -4 }  } } }
                                    \stopTextSpanThree
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
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        ds'''
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        fs'''
                                    >8
                                    [
                                    \override Dots.staff-position = #2
                                    \fancy-gliss
                                       #'(
                                          (0 0 0.5 1 1 0)
                                          (1 0 1.5 -1 2 0)
                                          (2 0 2.5 1 3 0)
                                          (3 0 3.5 -1 4 0)
                                          (4 0 4.5 1 5 0)
                                          (5 0 5.5 -1 6 0)
                                          (6 0 6.5 1 7 0)
                                          (7 0 7.5 -1 8 0)
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
                                    \revert Staff.Stem.stemlet-length
                                    <
                                        \tweak style #'harmonic
                                        ds'''
                                        \tweak style #'harmonic
                                        fs'''
                                    >8
                                    ]
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
                                    <
                                        \tweak style #'harmonic
                                        ds'''
                                        \tweak style #'harmonic
                                        fs'''
                                    >2
                                    {
                                        \once \override Accidental.stencil = ##f
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
                                        <ds''' fs'''>16
                                        \!
                                        )
                                        \stopTextSpanOne
                                        \ottava 0
                                    }
                                    <<
                                        \context Voice = "violin 2 voice temp 2"
                                        {
                                            \once \override TupletBracket.padding = #0.5
                                            \once \override TupletBracket.padding = #0.5
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 5/6
                                            {
                                                \once \override Accidental.stencil = ##f
                                                \override Staff.Clef.stencil = #ly:text-interface::print
                                                \override Staff.Clef.text = \stringing-clef
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
                                                >2
                                                    _ #(make-dynamic-script (markup #:whiteout #:italic "ffffff"))
                                                _ \coda
                                                _ \marcato
                                                - \tweak padding #11.5
                                                - \abjad-solid-line-with-arrow
                                                - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " accel. ( to " } \fontsize #-0.5 { \note { 4 } #1.5 } \fontsize #3 { "= 80 )" } } } \hspace #0.5 }
                                                - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 80" } } }
                                                \startTextSpanThree
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
                                                >2
                                                _ \coda
                                                _ \marcato
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
                                                >2
                                                _ \coda
                                                _ \marcato
                                            }
                                            e''4
                                            \pp
                                            \stopTextSpanThree
                                            a''4
                                            e'''4
                                            f'''4
                                            bf'''4
                                        }
                                        \context Voice = "violin 1 polyrhythm voice 2"
                                        {
                                            \staff-line-count 4
                                            \once \override Accidental.stencil = ##f
                                            \override Staff.Clef.stencil = #ly:text-interface::print
                                            \override Staff.Clef.text = \stringing-clef
                                            \clef "percussion"
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
                                            >4
                                            ^ \coda
                                            ^ \marcato
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 1
                                            - \tweak padding #9
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "1/2 CLB" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -2
                                            \startTextSpanOne
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
                                            >4
                                            ^ \coda
                                            ^ \marcato
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
                                            >4
                                            ^ \coda
                                            ^ \marcato
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
                                            >4
                                            ^ \coda
                                            ^ \marcato
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
                                            >4
                                            ^ \coda
                                            ^ \marcato
                                            \stopTextSpanOne
                                            \once \override TupletBracket.padding = #0.5
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 5/6
                                            {
                                                \staff-line-count 5
                                                \revert Staff.Clef.stencil
                                                \clef "treble"
                                                bf'4
                                                - \tweak font-name "Bodoni72 Book" 
                                                - \tweak font-size 1
                                                - \tweak padding #9
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { \upright { "CLB + SP" } \hspace #0.5 }
                                                - \tweak bound-details.right.padding -1.5
                                                \startTextSpanOne
                                                g''4
                                                e'''4
                                                af''4
                                                e'''4
                                                ef'''4
                                                \stopTextSpanOne
                                            }
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
                                    r2
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
                                    r2
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
                                            \once \override TupletBracket.padding = #0.5
                                            \times 4/6
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
                                                >4
                                                    _ #(make-dynamic-script (markup #:whiteout #:italic "ffffff"))
                                                _ \coda
                                                _ \marcato
                                                - \tweak font-name "Bodoni72 Book" 
                                                - \tweak font-size 1
                                                - \tweak padding #9
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { \upright { "1/2 CLB" } \hspace #0.5 }
                                                - \tweak bound-details.right.padding -2
                                                \startTextSpanOne
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
                                                >4
                                                _ \coda
                                                _ \marcato
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
                                                >4
                                                _ \coda
                                                _ \marcato
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
                                                >4
                                                _ \coda
                                                _ \marcato
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
                                                >4
                                                _ \coda
                                                _ \marcato
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
                                                >4
                                                _ \coda
                                                _ \marcato
                                                \stopTextSpanOne
                                            }
                                            \times 4/5
                                            {
                                                fs''8
                                                \pp
                                                [
                                                - \tweak font-name "Bodoni72 Book" 
                                                - \tweak font-size 1
                                                - \tweak padding #15
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { \upright { "CLB + SP" } \hspace #0.5 }
                                                - \tweak bound-details.right.padding -1.5
                                                \startTextSpanOne
                                                d'''8
                                                g'''8
                                                fs'''8
                                                b''8
                                                \stopTextSpanOne
                                                ]
                                            }
                                            \staff-line-count 4
                                            \once \override Accidental.stencil = ##f
                                            \override Staff.Clef.stencil = #ly:text-interface::print
                                            \override Staff.Clef.text = \stringing-clef
                                            \clef "percussion"
                                            <
                                                \tweak style #'cross
                                                g
                                                \tweak style #'cross
                                                b
                                                \tweak style #'cross
                                                d'
                                                \tweak style #'cross
                                                f'
                                            >4
                                                _ #(make-dynamic-script (markup #:whiteout #:italic "ffffff"))
                                            _ \coda
                                            _ \marcato
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 1
                                            - \tweak padding #8.5
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "1/2 CLB" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -2
                                            \startTextSpanOne
                                            - \tweak padding #17
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " rit. ( to " } \fontsize #-0.5 { \note { 8 } #1.5 } \fontsize #3 { "= 60 )" } } } \hspace #0.5 }
                                            - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #1.5 } \fontsize #4 { "= 60" } } }
                                            - \tweak bound-details.right.padding -27.5
                                            \startTextSpanThree
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
                                            >4
                                            _ \coda
                                            _ \marcato
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
                                            >4
                                            _ \coda
                                            _ \marcato
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
                                            >4
                                            _ \coda
                                            _ \marcato
                                            \stopTextSpanOne
                                            \stopTextSpanThree
                                        }
                                        \context Voice = "violin 2 polyrhythm voice"
                                        {
                                            \once \override TupletBracket.padding = #0.5
                                            \times 4/5
                                            {
                                                \staff-line-count 4
                                                \once \override Accidental.stencil = ##f
                                                \override Staff.Clef.stencil = #ly:text-interface::print
                                                \override Staff.Clef.text = \stringing-clef
                                                \clef "percussion"
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
                                                >4
                                                ^ \coda
                                                ^ \marcato
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
                                                >4
                                                ^ \coda
                                                ^ \marcato
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
                                                >4
                                                ^ \coda
                                                ^ \marcato
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
                                                >4
                                                ^ \coda
                                                ^ \marcato
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
                                                >4
                                                ^ \coda
                                                ^ \marcato
                                            }
                                            \staff-line-count 5
                                            \revert Staff.Clef.stencil
                                            \clef "treble"
                                            a''8
                                            [
                                            fs'''8
                                            af'''8
                                            ef'''8
                                            ]
                                            \once \override TupletBracket.padding = #0.5
                                            \times 2/3
                                            {
                                                \staff-line-count 4
                                                \once \override Accidental.stencil = ##f
                                                \override Staff.Clef.stencil = #ly:text-interface::print
                                                \override Staff.Clef.text = \stringing-clef
                                                \clef "percussion"
                                                <
                                                    \tweak style #'cross
                                                    g
                                                    \tweak style #'cross
                                                    b
                                                    \tweak style #'cross
                                                    d'
                                                    \tweak style #'cross
                                                    f'
                                                >2
                                                ^ \coda
                                                ^ \marcato
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
                                                >2
                                                ^ \coda
                                                ^ \marcato
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
                                                >2
                                                ^ \coda
                                                ^ \marcato
                                            }
                                        }
                                    >>
                                    \oneVoice
                                    <<
                                        \context Voice = "violin 4 voice temp 1"
                                        {
                                            \once \override TupletBracket.padding = #0.5
                                            \times 2/3
                                            {
                                                \staff-line-count 5
                                                \ottava 1
                                                \override DynamicLineSpanner.padding = #11.5
                                                \revert Staff.Clef.stencil
                                                \clef "treble"
                                                \voiceOne
                                                <
                                                    \tweak Accidental.font-size #-3.5
                                                    \tweak Accidental.parenthesized ##t
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-3.5
                                                    fs'''!
                                                    \tweak Accidental.font-size #-3.5
                                                    \tweak Accidental.parenthesized ##t
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-3.5
                                                    \tweak style #'harmonic
                                                    gqs'''!
                                                    \tweak style #'harmonic
                                                    a'''!
                                                >8
                                                - \tweak padding 0.5
                                                ^ \punta-to-talon
                                                \f
                                                - \tweak font-name "Bodoni72 Book" 
                                                - \tweak font-size 1
                                                - \tweak padding #15
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { \upright { "MSP" } \hspace #0.5 }
                                                - \tweak bound-details.right.padding -2
                                                \startTextSpanOne
                                                - \tweak stencil #constante-hairpin
                                                \<
                                                <
                                                    \tweak Accidental.font-size #-3.5
                                                    \tweak Accidental.parenthesized ##t
                                                    \tweak color #(x11-color 'LightSlateBlue)
                                                    \tweak font-size #-3.5
                                                    \tweak style #'harmonic
                                                    fs'''!
                                                    \tweak style #'harmonic
                                                    bqf'''!
                                                >4
                                                - \tweak padding 0.5
                                                ^ \talon-to-punta
                                                ~
                                            }
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic-mixed
                                                fs'''
                                                \tweak style #'harmonic-mixed
                                                bqf'''
                                            >2
                                            ~
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                fs'''
                                                \tweak style #'harmonic
                                                bqf'''
                                            >8
                                            [
                                            \>
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                af'''!
                                                \tweak style #'harmonic
                                                bqf'''!
                                            >8
                                            - \tweak padding 0.5
                                            ^ \punta-to-talon
                                            ]
                                            ~
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                af'''
                                                \tweak style #'harmonic
                                                bqf'''
                                            >4
                                            ~
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic-mixed
                                                af'''
                                                \tweak style #'harmonic-mixed
                                                bqf'''
                                            >2
                                            \pp
                                            - \tweak padding #11
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " accel. ( to " } \fontsize #-0.5 { \note { 4 } #1.5 } \fontsize #3 { "= 80 )" } } } \hspace #0.5 }
                                            - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 80" } } }
                                            \startTextSpanThree
                                            - \tweak stencil #constante-hairpin
                                            \<
                                            ~
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                af'''
                                                \tweak style #'harmonic
                                                bqf'''
                                            >8
                                            [
                                            \ottava 0
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                fqs''!
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                aqf''!
                                                \tweak style #'harmonic
                                                bf''!
                                            >8
                                            - \tweak padding 0.5
                                            ^ \talon-to-punta
                                            ]
                                            \<
                                            ~
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                fqs''
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic-mixed
                                                aqf''
                                                \tweak style #'harmonic-mixed
                                                bf''
                                            >2
                                            ~
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                fqs''
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic-mixed
                                                aqf''
                                                \tweak style #'harmonic-mixed
                                                bf''
                                            >2.
                                            \f
                                            \stopTextSpanThree
                                            ~
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                fqs''
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                aqf''
                                                \tweak style #'harmonic
                                                bf''
                                            >8
                                            [
                                            <
                                                \tweak Accidental.font-size #-3.5
                                                \tweak Accidental.parenthesized ##t
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-3.5
                                                \tweak style #'harmonic
                                                fqs''!
                                                \tweak style #'harmonic
                                                aqs''!
                                            >8
                                            - \tweak padding 0.5
                                            ^ \punta-to-talon
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
                                                aqs''
                                            >4
                                            \stopTextSpanOne
                                            \revert DynamicLineSpanner.padding
                                        }
                                        \context Voice = "violin 2 legno voice"
                                        {
                                            \once \override TupletBracket.padding = #0.5
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 5/4
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
                                                a'4
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                - \tweak color #(css-color 'darkred)
                                                - \tweak font-name "Bodoni72 Book" 
                                                - \tweak font-size 2
                                                - \tweak padding #12
                                                - \abjad-dashed-line-with-up-hook
                                                - \tweak bound-details.left.text \markup \concat { \upright { "CLB OB" } \hspace #0.5 }
                                                - \tweak bound-details.right.padding -1
                                                \startTextSpan
                                                \tweak style #'cross
                                                a'4
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                \tweak style #'cross
                                                a'4
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                \tweak style #'cross
                                                a'4
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                - \tweak color #(css-color 'darkred)
                                                _ \accent
                                            }
                                            \once \override TupletBracket.padding = #0.5
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 5/6
                                            {
                                                \tweak style #'cross
                                                a'4
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                \tweak style #'cross
                                                a'4
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                - \tweak color #(css-color 'darkred)
                                                _ \accent
                                                \tweak style #'cross
                                                a'4
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                - \tweak color #(css-color 'darkred)
                                                _ \accent
                                                \tweak style #'cross
                                                a4
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                \tweak style #'cross
                                                a4
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                \tweak style #'cross
                                                a4
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                - \tweak color #(css-color 'darkred)
                                                _ \accent
                                            }
                                            \once \override TupletBracket.padding = #0.5
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 5/4
                                            {
                                                \tweak style #'cross
                                                a4
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                \tweak style #'cross
                                                a4
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                \tweak style #'cross
                                                a4
                                                - \tweak color #(css-color 'darkred)
                                                ^ \staccato
                                                - \tweak color #(css-color 'darkred)
                                                _ \accent
                                                \tweak style #'cross
                                                a4
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
                                    r1
                                    r2
                                    r1
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
                                    <<
                                        \context Voice = "viola 2 voice temp"
                                        {
                                            \once \override TupletBracket.padding = #0.5
                                            \times 2/3
                                            {
                                                \big-half-harmonic
                                                \override Staff.Clef.stencil = #ly:text-interface::print
                                                \override Staff.Clef.text = \string-clef
                                                \staff-line-count 4
                                                \override Staff.StaffSymbol.line-positions = #'(9 7 0 -9)
                                                \override Staff.BarLine.bar-extent = #'(-4.5 . 4.5)
                                                \override Staff.Accidental.stencil = ##f
                                                \override Staff.NoteHead.no-ledgers = ##t
                                                \override TrillSpanner.bound-details.right.padding = #1.5
                                                \clef "treble"
                                                \voiceTwo
                                                a2
                                                - \tweak font-name "Bodoni72 Book Italic" 
                                                - \tweak font-size 1 
                                                - \markup { "( LH silent )" }
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
                                                b2
                                                :16
                                                - \tweak TrillPitchAccidental.stencil ##f
                                                - \tweak TrillPitchHead.layer 5
                                                - \tweak TrillPitchHead.no-ledgers ##t
                                                - \tweak TrillPitchHead.stencil #(lambda (grob) (grob-interpret-markup grob #{ \markup \musicglyph #"noteheads.s0harmonic" #}))
                                                - \tweak TrillPitchHead.whiteout 1
                                                - \tweak TrillPitchHead.whiteout-style #'outline
                                                - \tweak Y-extent ##f
                                                - \tweak bound-details.left.Y #-5
                                                - \tweak bound-details.right.Y #-5
                                                \startTrillSpan c'
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
                                                <
                                                    b
                                                    \tweak style #'harmonic
                                                    d'
                                                >2
                                                :16
                                                \stopTrillSpan
                                                - \tweak TrillPitchAccidental.stencil ##f
                                                - \tweak TrillPitchHead.layer 5
                                                - \tweak TrillPitchHead.no-ledgers ##t
                                                - \tweak TrillPitchHead.stencil #(lambda (grob) (grob-interpret-markup grob #{ \markup \musicglyph #"noteheads.s0harmonic" #}))
                                                - \tweak TrillPitchHead.whiteout 1
                                                - \tweak TrillPitchHead.whiteout-style #'outline
                                                - \tweak Y-extent ##f
                                                - \tweak bound-details.left.Y #-4.5
                                                - \tweak bound-details.right.Y #-4.5
                                                \startTrillSpan c'
                                            }
                                            f'8
                                            \stopTrillSpan
                                            [
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
                                            <
                                                \tweak style #'harmonic
                                                d'
                                                \tweak style #'harmonic
                                                g'
                                            >8
                                            :16
                                            - \tweak TrillPitchAccidental.stencil ##f
                                            - \tweak TrillPitchHead.layer 5
                                            - \tweak TrillPitchHead.no-ledgers ##t
                                            - \tweak TrillPitchHead.stencil #(lambda (grob) (grob-interpret-markup grob #{ \markup \musicglyph #"noteheads.s0harmonic" #}))
                                            - \tweak TrillPitchHead.whiteout 1
                                            - \tweak TrillPitchHead.whiteout-style #'outline
                                            - \tweak Y-extent ##f
                                            - \tweak bound-details.left.Y #-3
                                            - \tweak bound-details.right.Y #-3
                                            \startTrillSpan f'
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
                                            <d' a'>8
                                            :16
                                            \stopTrillSpan
                                            - \tweak TrillPitchAccidental.stencil ##f
                                            - \tweak TrillPitchHead.layer 5
                                            - \tweak TrillPitchHead.no-ledgers ##t
                                            - \tweak TrillPitchHead.stencil #(lambda (grob) (grob-interpret-markup grob #{ \markup \musicglyph #"noteheads.s0harmonic" #}))
                                            - \tweak TrillPitchHead.whiteout 1
                                            - \tweak TrillPitchHead.whiteout-style #'outline
                                            - \tweak Y-extent ##f
                                            - \tweak bound-details.left.Y #-3
                                            - \tweak bound-details.right.Y #-3
                                            \startTrillSpan f'
                                            b'8
                                            \stopTrillSpan
                                            ]
                                            \once \override TupletBracket.padding = #0.5
                                            \times 4/6
                                            {
                                                <
                                                    \tweak style #'harmonic-mixed
                                                    a'
                                                    \tweak style #'harmonic-mixed
                                                    b'
                                                >4
                                                - \tweak padding #18
                                                - \abjad-solid-line-with-arrow
                                                - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " rit. ( to " } \fontsize #-0.5 { \note { 8 } #1.5 } \fontsize #3 { "= 60 )" } } } \hspace #0.5 }
                                                - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #1.5 } \fontsize #4 { "= 60" } } }
                                                \startTextSpanThree
                                                \tweak style #'harmonic-mixed
                                                c''4
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
                                                d''4
                                                :8
                                                - \tweak TrillPitchAccidental.stencil ##f
                                                - \tweak TrillPitchHead.layer 5
                                                - \tweak TrillPitchHead.no-ledgers ##t
                                                - \tweak TrillPitchHead.stencil #(lambda (grob) (grob-interpret-markup grob #{ \markup \musicglyph #"noteheads.s0harmonic" #}))
                                                - \tweak TrillPitchHead.whiteout 1
                                                - \tweak TrillPitchHead.whiteout-style #'outline
                                                - \tweak Y-extent ##f
                                                - \tweak bound-details.left.Y #-2.5
                                                - \tweak bound-details.right.Y #-2.5
                                                \startTrillSpan e''
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
                                                <
                                                    a'
                                                    \tweak style #'harmonic
                                                    d''
                                                >4
                                                :8
                                                \stopTrillSpan
                                                - \tweak TrillPitchAccidental.stencil ##f
                                                - \tweak TrillPitchHead.layer 5
                                                - \tweak TrillPitchHead.no-ledgers ##t
                                                - \tweak TrillPitchHead.stencil #(lambda (grob) (grob-interpret-markup grob #{ \markup \musicglyph #"noteheads.s0harmonic" #}))
                                                - \tweak TrillPitchHead.whiteout 1
                                                - \tweak TrillPitchHead.whiteout-style #'outline
                                                - \tweak Y-extent ##f
                                                - \tweak bound-details.left.Y #-3
                                                - \tweak bound-details.right.Y #-3
                                                \startTrillSpan c''
                                                \big-half-harmonic
                                                <a' e''>4
                                                \stopTrillSpan
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
                                                e''4
                                                :8
                                                - \tweak TrillPitchAccidental.stencil ##f
                                                - \tweak TrillPitchHead.layer 5
                                                - \tweak TrillPitchHead.no-ledgers ##t
                                                - \tweak TrillPitchHead.stencil #(lambda (grob) (grob-interpret-markup grob #{ \markup \musicglyph #"noteheads.s0harmonic" #}))
                                                - \tweak TrillPitchHead.whiteout 1
                                                - \tweak TrillPitchHead.whiteout-style #'outline
                                                - \tweak Y-extent ##f
                                                - \tweak bound-details.left.Y #-1.5
                                                - \tweak bound-details.right.Y #-1.5
                                                \startTrillSpan e''
                                            }
                                            \once \override TupletBracket.padding = #0.5
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 5/4
                                            {
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
                                                \once \override Voice.NoteHead.layer = 2
                                                \once \override Voice.NoteHead.whiteout-style = #'outline
                                                \once \override Voice.NoteHead.whiteout = 1
                                                \pitchedTrill
                                                c'''4
                                                :8
                                                \stopTextSpanThree
                                                \stopTrillSpan
                                                - \tweak TrillPitchAccidental.stencil ##f
                                                - \tweak TrillPitchHead.layer 5
                                                - \tweak TrillPitchHead.no-ledgers ##t
                                                - \tweak TrillPitchHead.stencil #(lambda (grob) (grob-interpret-markup grob #{ \markup \musicglyph #"noteheads.s0harmonic" #}))
                                                - \tweak TrillPitchHead.whiteout 1
                                                - \tweak TrillPitchHead.whiteout-style #'outline
                                                - \tweak Y-extent ##f
                                                - \tweak bound-details.left.Y #-0.75
                                                - \tweak bound-details.right.Y #-0.75
                                                \startTrillSpan c'''
                                                \once \override Voice.NoteHead.layer = 2
                                                \once \override Voice.NoteHead.whiteout-style = #'outline
                                                \once \override Voice.NoteHead.whiteout = 1
                                                \tweak style #'harmonic-mixed
                                                c'''4
                                                \stopTrillSpan
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
                                                \once \override Voice.NoteHead.layer = 2
                                                \once \override Voice.NoteHead.whiteout-style = #'outline
                                                \once \override Voice.NoteHead.whiteout = 1
                                                \pitchedTrill
                                                c'''4
                                                :8
                                                - \tweak TrillPitchAccidental.stencil ##f
                                                - \tweak TrillPitchHead.layer 5
                                                - \tweak TrillPitchHead.no-ledgers ##t
                                                - \tweak TrillPitchHead.stencil #(lambda (grob) (grob-interpret-markup grob #{ \markup \musicglyph #"noteheads.s0harmonic" #}))
                                                - \tweak TrillPitchHead.whiteout 1
                                                - \tweak TrillPitchHead.whiteout-style #'outline
                                                - \tweak Y-extent ##f
                                                - \tweak bound-details.left.Y #-1.25
                                                - \tweak bound-details.right.Y #-1.25
                                                \startTrillSpan c'''
                                                \once \override Voice.NoteHead.layer = 2
                                                \once \override Voice.NoteHead.whiteout-style = #'outline
                                                \once \override Voice.NoteHead.whiteout = 1
                                                c'''4
                                                \stopTrillSpan
                                            }
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
                                            \once \override Voice.NoteHead.layer = 2
                                            \once \override Voice.NoteHead.whiteout-style = #'outline
                                            \once \override Voice.NoteHead.whiteout = 1
                                            \pitchedTrill
                                            c'''4
                                            :8
                                            - \tweak padding #18
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " accel. ( to " } \fontsize #-0.5 { \note { 4 } #1.5 } \fontsize #3 { "= 80 )" } } } \hspace #0.5 }
                                            - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 80" } } }
                                            \startTextSpanThree
                                            - \tweak TrillPitchAccidental.stencil ##f
                                            - \tweak TrillPitchHead.layer 5
                                            - \tweak TrillPitchHead.no-ledgers ##t
                                            - \tweak TrillPitchHead.stencil #(lambda (grob) (grob-interpret-markup grob #{ \markup \musicglyph #"noteheads.s0harmonic" #}))
                                            - \tweak TrillPitchHead.whiteout 1
                                            - \tweak TrillPitchHead.whiteout-style #'outline
                                            - \tweak Y-extent ##f
                                            - \tweak bound-details.left.Y #-0.25
                                            - \tweak bound-details.right.Y #-0.25
                                            \startTrillSpan c'''
                                            \once \override Voice.NoteHead.layer = 2
                                            \once \override Voice.NoteHead.whiteout-style = #'outline
                                            \once \override Voice.NoteHead.whiteout = 1
                                            c'''4
                                            \stopTrillSpan
                                            \once \override Voice.NoteHead.layer = 2
                                            \once \override Voice.NoteHead.whiteout-style = #'outline
                                            \once \override Voice.NoteHead.whiteout = 1
                                            \tweak style #'harmonic-mixed
                                            c'''4
                                            \once \override Voice.NoteHead.layer = 2
                                            \once \override Voice.NoteHead.whiteout-style = #'outline
                                            \once \override Voice.NoteHead.whiteout = 1
                                            c'''4
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
                                            \once \override Voice.NoteHead.layer = 2
                                            \once \override Voice.NoteHead.whiteout-style = #'outline
                                            \once \override Voice.NoteHead.whiteout = 1
                                            \pitchedTrill
                                            c'''4
                                            :8
                                            - \tweak TrillPitchAccidental.stencil ##f
                                            - \tweak TrillPitchHead.layer 5
                                            - \tweak TrillPitchHead.no-ledgers ##t
                                            - \tweak TrillPitchHead.stencil #(lambda (grob) (grob-interpret-markup grob #{ \markup \musicglyph #"noteheads.s0harmonic" #}))
                                            - \tweak TrillPitchHead.whiteout 1
                                            - \tweak TrillPitchHead.whiteout-style #'outline
                                            - \tweak Y-extent ##f
                                            - \tweak bound-details.left.Y #-0.25
                                            - \tweak bound-details.right.Y #-0.25
                                            \startTrillSpan c'''
                                            \once \override TupletBracket.padding = #0.5
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 5/6
                                            {
                                                \once \override Voice.NoteHead.layer = 2
                                                \once \override Voice.NoteHead.whiteout-style = #'outline
                                                \once \override Voice.NoteHead.whiteout = 1
                                                \tweak style #'harmonic
                                                c'''2
                                                \stopTextSpanThree
                                                \stopTrillSpan
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
                                                \once \override Voice.NoteHead.layer = 2
                                                \once \override Voice.NoteHead.whiteout-style = #'outline
                                                \once \override Voice.NoteHead.whiteout = 1
                                                \pitchedTrill
                                                c'''2
                                                :16
                                                - \tweak TrillPitchAccidental.stencil ##f
                                                - \tweak TrillPitchHead.layer 5
                                                - \tweak TrillPitchHead.no-ledgers ##t
                                                - \tweak TrillPitchHead.stencil #(lambda (grob) (grob-interpret-markup grob #{ \markup \musicglyph #"noteheads.s0harmonic" #}))
                                                - \tweak TrillPitchHead.whiteout 1
                                                - \tweak TrillPitchHead.whiteout-style #'outline
                                                - \tweak Y-extent ##f
                                                - \tweak bound-details.left.Y #-1.25
                                                - \tweak bound-details.right.Y #-1.25
                                                \startTrillSpan c'''
                                                \once \override Voice.NoteHead.layer = 2
                                                \once \override Voice.NoteHead.whiteout-style = #'outline
                                                \once \override Voice.NoteHead.whiteout = 1
                                                c'''2
                                                \stopTrillSpan
                                                \revert TrillSpanner.bound-details.right.padding
                                            }
                                        }
                                        \context Voice = "viola bow voice"
                                        {
                                            \once \override TupletBracket.padding = #0.5
                                            \times 4/5
                                            {
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
                                                \voiceOne
                                                \afterGrace
                                                <
                                                    \tweak style #'la
                                                    c'
                                                >4
                                                - \tweak color #(css-color 'darkred)
                                                - \accent
                                                - \tweak color #(css-color 'darkred)
                                                ^ \fp
                                                - \tweak color #(css-color 'darkred)
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                                - \tweak color #(css-color 'darkred)
                                                - \tweak circled-tip ##t
                                                ^ \>
                                                - \tweak font-name "Bodoni72 Book" 
                                                - \tweak font-size 2
                                                - \tweak padding #12.5
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { \upright { "IV" } \hspace #0.5 }
                                                \startTextSpanOne
                                                {
                                                    \once \override NoteHead.X-offset = 0
                                                    \once \override Staff.Accidental.stencil = ##f
                                                    \once \override Voice.Glissando.thickness = #8.25
                                                    \once \override NoteHead.duration-log = 2
                                                    \once \override RepeatTie.transparent = ##t
                                                    \once \override Beam.stencil = ##f
                                                    \once \override Flag.stencil = ##f
                                                    \once \override Dots.stencil = ##f
                                                    \once \override Tie.stencil = ##f
                                                    \once \override NoteHead.duration-log = 2
                                                    \once \override Stem.stencil = ##f
                                                    \once \override Stem.stencil = ##f
                                                    \once \override Flag.stencil = ##f
                                                    \once \override NoteHead.no-ledgers = ##t
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override NoteHead.transparent = ##t
                                                    <
                                                        \tweak style #'la
                                                        e'
                                                    >16
                                                }
                                                \once \override NoteHead.X-offset = 0
                                                \once \override Staff.Accidental.stencil = ##f
                                                \once \override Voice.Glissando.thickness = #8.25
                                                \once \override NoteHead.duration-log = 2
                                                \afterGrace
                                                <
                                                    \tweak style #'la
                                                    d'
                                                >4
                                                - \tweak color #(css-color 'darkred)
                                                - \accent
                                                - \tweak color #(css-color 'darkred)
                                                ^ \fp
                                                - \tweak color #(css-color 'darkred)
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                                - \tweak color #(css-color 'darkred)
                                                - \tweak circled-tip ##t
                                                ^ \>
                                                {
                                                    \once \override NoteHead.X-offset = 0
                                                    \once \override Staff.Accidental.stencil = ##f
                                                    \once \override Voice.Glissando.thickness = #8.25
                                                    \once \override NoteHead.duration-log = 2
                                                    \once \override RepeatTie.transparent = ##t
                                                    \once \override Beam.stencil = ##f
                                                    \once \override Flag.stencil = ##f
                                                    \once \override Dots.stencil = ##f
                                                    \once \override Tie.stencil = ##f
                                                    \once \override NoteHead.duration-log = 2
                                                    \once \override Stem.stencil = ##f
                                                    \once \override Stem.stencil = ##f
                                                    \once \override Flag.stencil = ##f
                                                    \once \override NoteHead.no-ledgers = ##t
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override NoteHead.transparent = ##t
                                                    <
                                                        \tweak style #'la
                                                        f'
                                                    >16
                                                }
                                                \once \override NoteHead.X-offset = 0
                                                \once \override Staff.Accidental.stencil = ##f
                                                \once \override Voice.Glissando.thickness = #8.25
                                                \once \override NoteHead.duration-log = 2
                                                \afterGrace
                                                <
                                                    \tweak style #'la
                                                    e'
                                                >4
                                                - \tweak color #(css-color 'darkred)
                                                - \accent
                                                - \tweak color #(css-color 'darkred)
                                                ^ \fp
                                                - \tweak color #(css-color 'darkred)
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                                - \tweak color #(css-color 'darkred)
                                                - \tweak circled-tip ##t
                                                ^ \>
                                                {
                                                    \once \override NoteHead.X-offset = 0
                                                    \once \override Staff.Accidental.stencil = ##f
                                                    \once \override Voice.Glissando.thickness = #8.25
                                                    \once \override NoteHead.duration-log = 2
                                                    \once \override RepeatTie.transparent = ##t
                                                    \once \override Beam.stencil = ##f
                                                    \once \override Flag.stencil = ##f
                                                    \once \override Dots.stencil = ##f
                                                    \once \override Tie.stencil = ##f
                                                    \once \override NoteHead.duration-log = 2
                                                    \once \override Stem.stencil = ##f
                                                    \once \override Stem.stencil = ##f
                                                    \once \override Flag.stencil = ##f
                                                    \once \override NoteHead.no-ledgers = ##t
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override NoteHead.transparent = ##t
                                                    <
                                                        \tweak style #'la
                                                        g'
                                                    >16
                                                }
                                                \once \override NoteHead.X-offset = 0
                                                \once \override Staff.Accidental.stencil = ##f
                                                \once \override Voice.Glissando.thickness = #8.25
                                                \once \override NoteHead.duration-log = 2
                                                \afterGrace
                                                <
                                                    \tweak style #'la
                                                    f'
                                                >4
                                                - \tweak color #(css-color 'darkred)
                                                - \accent
                                                - \tweak color #(css-color 'darkred)
                                                ^ \fp
                                                - \tweak color #(css-color 'darkred)
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                                - \tweak color #(css-color 'darkred)
                                                - \tweak circled-tip ##t
                                                ^ \>
                                                {
                                                    \once \override NoteHead.X-offset = 0
                                                    \once \override Staff.Accidental.stencil = ##f
                                                    \once \override Voice.Glissando.thickness = #8.25
                                                    \once \override NoteHead.duration-log = 2
                                                    \once \override RepeatTie.transparent = ##t
                                                    \once \override Beam.stencil = ##f
                                                    \once \override Flag.stencil = ##f
                                                    \once \override Dots.stencil = ##f
                                                    \once \override Tie.stencil = ##f
                                                    \once \override NoteHead.duration-log = 2
                                                    \once \override Stem.stencil = ##f
                                                    \once \override Stem.stencil = ##f
                                                    \once \override Flag.stencil = ##f
                                                    \once \override NoteHead.no-ledgers = ##t
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override NoteHead.transparent = ##t
                                                    <
                                                        \tweak style #'la
                                                        a'
                                                    >16
                                                    \stopTextSpanOne
                                                }
                                                \once \override NoteHead.X-offset = 0
                                                \once \override Staff.Accidental.stencil = ##f
                                                \once \override Voice.Glissando.thickness = #8.25
                                                \once \override NoteHead.duration-log = 2
                                                \afterGrace
                                                <
                                                    \tweak style #'la
                                                    g'
                                                >4
                                                - \tweak color #(css-color 'darkred)
                                                - \accent
                                                - \tweak color #(css-color 'darkred)
                                                ^ \fp
                                                - \tweak color #(css-color 'darkred)
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                                - \tweak color #(css-color 'darkred)
                                                - \tweak circled-tip ##t
                                                ^ \>
                                                - \tweak font-name "Bodoni72 Book" 
                                                - \tweak font-size 2
                                                - \tweak padding #12.5
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { \upright { "III" } \hspace #0.5 }
                                                \startTextSpanOne
                                                {
                                                    \once \override NoteHead.X-offset = 0
                                                    \once \override Staff.Accidental.stencil = ##f
                                                    \once \override Voice.Glissando.thickness = #8.25
                                                    \once \override NoteHead.duration-log = 2
                                                    \once \override RepeatTie.transparent = ##t
                                                    \once \override Beam.stencil = ##f
                                                    \once \override Flag.stencil = ##f
                                                    \once \override Dots.stencil = ##f
                                                    \once \override Tie.stencil = ##f
                                                    \once \override NoteHead.duration-log = 2
                                                    \once \override Stem.stencil = ##f
                                                    \once \override Stem.stencil = ##f
                                                    \once \override Flag.stencil = ##f
                                                    \once \override NoteHead.no-ledgers = ##t
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override NoteHead.transparent = ##t
                                                    <
                                                        \tweak style #'la
                                                        b'
                                                    >16
                                                }
                                            }
                                            \once \override TupletBracket.padding = #0.5
                                            \times 2/3
                                            {
                                                \once \override NoteHead.X-offset = 0
                                                \once \override Staff.Accidental.stencil = ##f
                                                \once \override Voice.Glissando.thickness = #8.25
                                                \once \override NoteHead.duration-log = 2
                                                \afterGrace
                                                <
                                                    \tweak style #'la
                                                    a'
                                                >4
                                                - \tweak color #(css-color 'darkred)
                                                - \accent
                                                - \tweak color #(css-color 'darkred)
                                                ^ \fp
                                                - \tweak color #(css-color 'darkred)
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                                - \tweak color #(css-color 'darkred)
                                                - \tweak circled-tip ##t
                                                ^ \>
                                                {
                                                    \once \override NoteHead.X-offset = 0
                                                    \once \override Staff.Accidental.stencil = ##f
                                                    \once \override Voice.Glissando.thickness = #8.25
                                                    \once \override NoteHead.duration-log = 2
                                                    \once \override RepeatTie.transparent = ##t
                                                    \once \override Beam.stencil = ##f
                                                    \once \override Flag.stencil = ##f
                                                    \once \override Dots.stencil = ##f
                                                    \once \override Tie.stencil = ##f
                                                    \once \override NoteHead.duration-log = 2
                                                    \once \override Stem.stencil = ##f
                                                    \once \override Stem.stencil = ##f
                                                    \once \override Flag.stencil = ##f
                                                    \once \override NoteHead.no-ledgers = ##t
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override NoteHead.transparent = ##t
                                                    <
                                                        \tweak style #'la
                                                        c''
                                                    >16
                                                }
                                                \once \override NoteHead.X-offset = 0
                                                \once \override Staff.Accidental.stencil = ##f
                                                \once \override Voice.Glissando.thickness = #8.25
                                                \once \override NoteHead.duration-log = 2
                                                \afterGrace
                                                <
                                                    \tweak style #'la
                                                    b'
                                                >4
                                                - \tweak color #(css-color 'darkred)
                                                - \accent
                                                - \tweak color #(css-color 'darkred)
                                                ^ \fp
                                                - \tweak color #(css-color 'darkred)
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                                - \tweak color #(css-color 'darkred)
                                                - \tweak circled-tip ##t
                                                ^ \>
                                                {
                                                    \once \override NoteHead.X-offset = 0
                                                    \once \override Staff.Accidental.stencil = ##f
                                                    \once \override Voice.Glissando.thickness = #8.25
                                                    \once \override NoteHead.duration-log = 2
                                                    \once \override RepeatTie.transparent = ##t
                                                    \once \override Beam.stencil = ##f
                                                    \once \override Flag.stencil = ##f
                                                    \once \override Dots.stencil = ##f
                                                    \once \override Tie.stencil = ##f
                                                    \once \override NoteHead.duration-log = 2
                                                    \once \override Stem.stencil = ##f
                                                    \once \override Stem.stencil = ##f
                                                    \once \override Flag.stencil = ##f
                                                    \once \override NoteHead.no-ledgers = ##t
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override NoteHead.transparent = ##t
                                                    <
                                                        \tweak style #'la
                                                        d''
                                                    >16
                                                    \stopTextSpanOne
                                                }
                                                \once \override NoteHead.X-offset = 0
                                                \once \override Staff.Accidental.stencil = ##f
                                                \once \override Voice.Glissando.thickness = #8.25
                                                \once \override NoteHead.duration-log = 2
                                                \afterGrace
                                                <
                                                    \tweak style #'la
                                                    c''
                                                >4
                                                - \tweak color #(css-color 'darkred)
                                                - \accent
                                                - \tweak color #(css-color 'darkred)
                                                ^ \fp
                                                - \tweak color #(css-color 'darkred)
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                                - \tweak color #(css-color 'darkred)
                                                - \tweak circled-tip ##t
                                                ^ \>
                                                - \tweak font-name "Bodoni72 Book" 
                                                - \tweak font-size 2
                                                - \tweak padding #16
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { \upright { "II" } \hspace #0.5 }
                                                \startTextSpanOne
                                                {
                                                    \once \override NoteHead.X-offset = 0
                                                    \once \override Staff.Accidental.stencil = ##f
                                                    \once \override Voice.Glissando.thickness = #8.25
                                                    \once \override NoteHead.duration-log = 2
                                                    \once \override RepeatTie.transparent = ##t
                                                    \once \override Beam.stencil = ##f
                                                    \once \override Flag.stencil = ##f
                                                    \once \override Dots.stencil = ##f
                                                    \once \override Tie.stencil = ##f
                                                    \once \override NoteHead.duration-log = 2
                                                    \once \override Stem.stencil = ##f
                                                    \once \override Stem.stencil = ##f
                                                    \once \override Flag.stencil = ##f
                                                    \once \override NoteHead.no-ledgers = ##t
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override NoteHead.transparent = ##t
                                                    <
                                                        \tweak style #'la
                                                        e''
                                                    >16
                                                }
                                            }
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            \afterGrace
                                            <
                                                \tweak style #'la
                                                d''
                                            >4
                                            - \tweak color #(css-color 'darkred)
                                            - \accent
                                            - \tweak color #(css-color 'darkred)
                                            ^ \fp
                                            - \tweak color #(css-color 'darkred)
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak circled-tip ##t
                                            ^ \>
                                            {
                                                \once \override NoteHead.X-offset = 0
                                                \once \override Staff.Accidental.stencil = ##f
                                                \once \override Voice.Glissando.thickness = #8.25
                                                \once \override NoteHead.duration-log = 2
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                \once \override Stem.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override Accidental.stencil = ##f
                                                \once \override NoteHead.transparent = ##t
                                                <
                                                    \tweak style #'la
                                                    f''
                                                >16
                                                \stopTextSpanOne
                                            }
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            \afterGrace
                                            <
                                                \tweak style #'la
                                                e''
                                            >4
                                            - \tweak color #(css-color 'darkred)
                                            - \accent
                                            - \tweak color #(css-color 'darkred)
                                            ^ \fp
                                            - \tweak color #(css-color 'darkred)
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak circled-tip ##t
                                            ^ \>
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #16
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "I" } \hspace #0.5 }
                                            \startTextSpanOne
                                            {
                                                \once \override NoteHead.X-offset = 0
                                                \once \override Staff.Accidental.stencil = ##f
                                                \once \override Voice.Glissando.thickness = #8.25
                                                \once \override NoteHead.duration-log = 2
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                \once \override Stem.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override Accidental.stencil = ##f
                                                \once \override NoteHead.transparent = ##t
                                                <
                                                    \tweak style #'la
                                                    g''
                                                >16
                                            }
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            \afterGrace
                                            <
                                                \tweak style #'la
                                                f''
                                            >4
                                            - \tweak color #(css-color 'darkred)
                                            - \accent
                                            - \tweak color #(css-color 'darkred)
                                            ^ \fp
                                            - \tweak color #(css-color 'darkred)
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak circled-tip ##t
                                            ^ \>
                                            {
                                                \once \override NoteHead.X-offset = 0
                                                \once \override Staff.Accidental.stencil = ##f
                                                \once \override Voice.Glissando.thickness = #8.25
                                                \once \override NoteHead.duration-log = 2
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                \once \override Stem.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override Accidental.stencil = ##f
                                                \once \override NoteHead.transparent = ##t
                                                <
                                                    \tweak style #'la
                                                    a''
                                                >16
                                            }
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            \afterGrace
                                            <
                                                \tweak style #'la
                                                g''
                                            >4
                                            - \tweak color #(css-color 'darkred)
                                            - \accent
                                            - \tweak color #(css-color 'darkred)
                                            ^ \fp
                                            - \tweak color #(css-color 'darkred)
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak circled-tip ##t
                                            ^ \>
                                            {
                                                \once \override NoteHead.X-offset = 0
                                                \once \override Staff.Accidental.stencil = ##f
                                                \once \override Voice.Glissando.thickness = #8.25
                                                \once \override NoteHead.duration-log = 2
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                \once \override Stem.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override Accidental.stencil = ##f
                                                \once \override NoteHead.transparent = ##t
                                                <
                                                    \tweak style #'la
                                                    b''
                                                >16
                                                \stopTextSpanOne
                                            }
                                            \once \override TupletBracket.padding = #0.5
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 5/6
                                            {
                                                \once \override NoteHead.X-offset = 0
                                                \once \override Staff.Accidental.stencil = ##f
                                                \once \override Voice.Glissando.thickness = #8.25
                                                \once \override NoteHead.duration-log = 2
                                                \afterGrace
                                                <
                                                    \tweak style #'la
                                                    c'''
                                                >4
                                                - \tweak color #(css-color 'darkred)
                                                - \accent
                                                - \tweak color #(css-color 'darkred)
                                                ^ \fp
                                                - \tweak color #(css-color 'darkred)
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                                - \tweak color #(css-color 'darkred)
                                                - \tweak circled-tip ##t
                                                ^ \>
                                                - \tweak font-name "Bodoni72 Book" 
                                                - \tweak font-size 2
                                                - \tweak padding #16
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { \upright { "I, DP" } \hspace #0.5 }
                                                \startTextSpanOne
                                                {
                                                    \once \override NoteHead.X-offset = 0
                                                    \once \override Staff.Accidental.stencil = ##f
                                                    \once \override Voice.Glissando.thickness = #8.25
                                                    \once \override NoteHead.duration-log = 2
                                                    \once \override RepeatTie.transparent = ##t
                                                    \once \override Beam.stencil = ##f
                                                    \once \override Flag.stencil = ##f
                                                    \once \override Dots.stencil = ##f
                                                    \once \override Tie.stencil = ##f
                                                    \once \override NoteHead.duration-log = 2
                                                    \once \override Stem.stencil = ##f
                                                    \once \override Stem.stencil = ##f
                                                    \once \override Flag.stencil = ##f
                                                    \once \override NoteHead.no-ledgers = ##t
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override NoteHead.transparent = ##t
                                                    <
                                                        \tweak style #'la
                                                        c'''
                                                    >16
                                                }
                                                \once \override NoteHead.X-offset = 0
                                                \once \override Staff.Accidental.stencil = ##f
                                                \once \override Voice.Glissando.thickness = #8.25
                                                \once \override NoteHead.duration-log = 2
                                                \afterGrace
                                                <
                                                    \tweak style #'la
                                                    c'''
                                                >4
                                                - \tweak color #(css-color 'darkred)
                                                - \accent
                                                - \tweak color #(css-color 'darkred)
                                                ^ \fp
                                                - \tweak color #(css-color 'darkred)
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                                - \tweak color #(css-color 'darkred)
                                                - \tweak circled-tip ##t
                                                ^ \>
                                                {
                                                    \once \override NoteHead.X-offset = 0
                                                    \once \override Staff.Accidental.stencil = ##f
                                                    \once \override Voice.Glissando.thickness = #8.25
                                                    \once \override NoteHead.duration-log = 2
                                                    \once \override RepeatTie.transparent = ##t
                                                    \once \override Beam.stencil = ##f
                                                    \once \override Flag.stencil = ##f
                                                    \once \override Dots.stencil = ##f
                                                    \once \override Tie.stencil = ##f
                                                    \once \override NoteHead.duration-log = 2
                                                    \once \override Stem.stencil = ##f
                                                    \once \override Stem.stencil = ##f
                                                    \once \override Flag.stencil = ##f
                                                    \once \override NoteHead.no-ledgers = ##t
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override NoteHead.transparent = ##t
                                                    <
                                                        \tweak style #'la
                                                        c'''
                                                    >16
                                                }
                                                \once \override NoteHead.X-offset = 0
                                                \once \override Staff.Accidental.stencil = ##f
                                                \once \override Voice.Glissando.thickness = #8.25
                                                \once \override NoteHead.duration-log = 2
                                                \afterGrace
                                                <
                                                    \tweak style #'la
                                                    c'''
                                                >4
                                                - \tweak color #(css-color 'darkred)
                                                - \accent
                                                - \tweak color #(css-color 'darkred)
                                                ^ \fp
                                                - \tweak color #(css-color 'darkred)
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                                - \tweak color #(css-color 'darkred)
                                                - \tweak circled-tip ##t
                                                ^ \>
                                                {
                                                    \once \override NoteHead.X-offset = 0
                                                    \once \override Staff.Accidental.stencil = ##f
                                                    \once \override Voice.Glissando.thickness = #8.25
                                                    \once \override NoteHead.duration-log = 2
                                                    \once \override RepeatTie.transparent = ##t
                                                    \once \override Beam.stencil = ##f
                                                    \once \override Flag.stencil = ##f
                                                    \once \override Dots.stencil = ##f
                                                    \once \override Tie.stencil = ##f
                                                    \once \override NoteHead.duration-log = 2
                                                    \once \override Stem.stencil = ##f
                                                    \once \override Stem.stencil = ##f
                                                    \once \override Flag.stencil = ##f
                                                    \once \override NoteHead.no-ledgers = ##t
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override NoteHead.transparent = ##t
                                                    <
                                                        \tweak style #'la
                                                        c'''
                                                    >16
                                                    \stopTextSpanOne
                                                }
                                                \once \override NoteHead.X-offset = 0
                                                \once \override Staff.Accidental.stencil = ##f
                                                \once \override Voice.Glissando.thickness = #8.25
                                                \once \override NoteHead.duration-log = 2
                                                \afterGrace
                                                <
                                                    \tweak style #'la
                                                    c'''
                                                >4
                                                - \tweak color #(css-color 'darkred)
                                                - \accent
                                                - \tweak color #(css-color 'darkred)
                                                ^ \fp
                                                - \tweak color #(css-color 'darkred)
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                                - \tweak color #(css-color 'darkred)
                                                - \tweak circled-tip ##t
                                                ^ \>
                                                - \tweak font-name "Bodoni72 Book" 
                                                - \tweak font-size 2
                                                - \tweak padding #16
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { \upright { "III, DP" } \hspace #0.5 }
                                                \startTextSpanOne
                                                {
                                                    \once \override NoteHead.X-offset = 0
                                                    \once \override Staff.Accidental.stencil = ##f
                                                    \once \override Voice.Glissando.thickness = #8.25
                                                    \once \override NoteHead.duration-log = 2
                                                    \once \override RepeatTie.transparent = ##t
                                                    \once \override Beam.stencil = ##f
                                                    \once \override Flag.stencil = ##f
                                                    \once \override Dots.stencil = ##f
                                                    \once \override Tie.stencil = ##f
                                                    \once \override NoteHead.duration-log = 2
                                                    \once \override Stem.stencil = ##f
                                                    \once \override Stem.stencil = ##f
                                                    \once \override Flag.stencil = ##f
                                                    \once \override NoteHead.no-ledgers = ##t
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override NoteHead.transparent = ##t
                                                    <
                                                        \tweak style #'la
                                                        c'''
                                                    >16
                                                    \stopTextSpanOne
                                                }
                                                \once \override NoteHead.X-offset = 0
                                                \once \override Staff.Accidental.stencil = ##f
                                                \once \override Voice.Glissando.thickness = #8.25
                                                \once \override NoteHead.duration-log = 2
                                                \afterGrace
                                                <
                                                    \tweak style #'la
                                                    c'''
                                                >4
                                                - \tweak color #(css-color 'darkred)
                                                - \accent
                                                - \tweak color #(css-color 'darkred)
                                                ^ \fp
                                                - \tweak color #(css-color 'darkred)
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                                - \tweak color #(css-color 'darkred)
                                                - \tweak circled-tip ##t
                                                ^ \>
                                                - \tweak font-name "Bodoni72 Book" 
                                                - \tweak font-size 2
                                                - \tweak padding #16
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { \upright { "II, DP" } \hspace #0.5 }
                                                \startTextSpanOne
                                                {
                                                    \once \override NoteHead.X-offset = 0
                                                    \once \override Staff.Accidental.stencil = ##f
                                                    \once \override Voice.Glissando.thickness = #8.25
                                                    \once \override NoteHead.duration-log = 2
                                                    \once \override RepeatTie.transparent = ##t
                                                    \once \override Beam.stencil = ##f
                                                    \once \override Flag.stencil = ##f
                                                    \once \override Dots.stencil = ##f
                                                    \once \override Tie.stencil = ##f
                                                    \once \override NoteHead.duration-log = 2
                                                    \once \override Stem.stencil = ##f
                                                    \once \override Stem.stencil = ##f
                                                    \once \override Flag.stencil = ##f
                                                    \once \override NoteHead.no-ledgers = ##t
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override NoteHead.transparent = ##t
                                                    <
                                                        \tweak style #'la
                                                        c'''
                                                    >16
                                                    \stopTextSpanOne
                                                }
                                                \once \override NoteHead.X-offset = 0
                                                \once \override Staff.Accidental.stencil = ##f
                                                \once \override Voice.Glissando.thickness = #8.25
                                                \once \override NoteHead.duration-log = 2
                                                \afterGrace
                                                <
                                                    \tweak style #'la
                                                    c'''
                                                >4
                                                - \tweak color #(css-color 'darkred)
                                                - \accent
                                                - \tweak color #(css-color 'darkred)
                                                ^ \fp
                                                - \tweak color #(css-color 'darkred)
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                                - \tweak color #(css-color 'darkred)
                                                - \tweak circled-tip ##t
                                                ^ \>
                                                - \tweak font-name "Bodoni72 Book" 
                                                - \tweak font-size 2
                                                - \tweak padding #16
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { \upright { "IV, DP" } \hspace #0.5 }
                                                \startTextSpanOne
                                                {
                                                    \once \override NoteHead.X-offset = 0
                                                    \once \override Staff.Accidental.stencil = ##f
                                                    \once \override Voice.Glissando.thickness = #8.25
                                                    \once \override NoteHead.duration-log = 2
                                                    \once \override RepeatTie.transparent = ##t
                                                    \once \override Beam.stencil = ##f
                                                    \once \override Flag.stencil = ##f
                                                    \once \override Dots.stencil = ##f
                                                    \once \override Tie.stencil = ##f
                                                    \once \override NoteHead.duration-log = 2
                                                    \once \override Stem.stencil = ##f
                                                    \once \override Stem.stencil = ##f
                                                    \once \override Flag.stencil = ##f
                                                    \once \override NoteHead.no-ledgers = ##t
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override NoteHead.transparent = ##t
                                                    <
                                                        \tweak style #'la
                                                        c'''
                                                    >16
                                                }
                                            }
                                            \once \override TupletBracket.padding = #0.5
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 5/4
                                            {
                                                \once \override NoteHead.X-offset = 0
                                                \once \override Staff.Accidental.stencil = ##f
                                                \once \override Voice.Glissando.thickness = #8.25
                                                \once \override NoteHead.duration-log = 2
                                                \afterGrace
                                                <
                                                    \tweak style #'la
                                                    c'''
                                                >4
                                                - \tweak color #(css-color 'darkred)
                                                - \accent
                                                - \tweak color #(css-color 'darkred)
                                                ^ \fp
                                                - \tweak color #(css-color 'darkred)
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                                - \tweak color #(css-color 'darkred)
                                                - \tweak circled-tip ##t
                                                ^ \>
                                                {
                                                    \once \override NoteHead.X-offset = 0
                                                    \once \override Staff.Accidental.stencil = ##f
                                                    \once \override Voice.Glissando.thickness = #8.25
                                                    \once \override NoteHead.duration-log = 2
                                                    \once \override RepeatTie.transparent = ##t
                                                    \once \override Beam.stencil = ##f
                                                    \once \override Flag.stencil = ##f
                                                    \once \override Dots.stencil = ##f
                                                    \once \override Tie.stencil = ##f
                                                    \once \override NoteHead.duration-log = 2
                                                    \once \override Stem.stencil = ##f
                                                    \once \override Stem.stencil = ##f
                                                    \once \override Flag.stencil = ##f
                                                    \once \override NoteHead.no-ledgers = ##t
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override NoteHead.transparent = ##t
                                                    <
                                                        \tweak style #'la
                                                        c'''
                                                    >16
                                                }
                                                \once \override NoteHead.X-offset = 0
                                                \once \override Staff.Accidental.stencil = ##f
                                                \once \override Voice.Glissando.thickness = #8.25
                                                \once \override NoteHead.duration-log = 2
                                                \afterGrace
                                                <
                                                    \tweak style #'la
                                                    c'''
                                                >4
                                                - \tweak color #(css-color 'darkred)
                                                - \accent
                                                - \tweak color #(css-color 'darkred)
                                                ^ \fp
                                                - \tweak color #(css-color 'darkred)
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                                - \tweak color #(css-color 'darkred)
                                                - \tweak circled-tip ##t
                                                ^ \>
                                                {
                                                    \once \override NoteHead.X-offset = 0
                                                    \once \override Staff.Accidental.stencil = ##f
                                                    \once \override Voice.Glissando.thickness = #8.25
                                                    \once \override NoteHead.duration-log = 2
                                                    \once \override RepeatTie.transparent = ##t
                                                    \once \override Beam.stencil = ##f
                                                    \once \override Flag.stencil = ##f
                                                    \once \override Dots.stencil = ##f
                                                    \once \override Tie.stencil = ##f
                                                    \once \override NoteHead.duration-log = 2
                                                    \once \override Stem.stencil = ##f
                                                    \once \override Stem.stencil = ##f
                                                    \once \override Flag.stencil = ##f
                                                    \once \override NoteHead.no-ledgers = ##t
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override NoteHead.transparent = ##t
                                                    <
                                                        \tweak style #'la
                                                        c'''
                                                    >16
                                                }
                                                \once \override NoteHead.X-offset = 0
                                                \once \override Staff.Accidental.stencil = ##f
                                                \once \override Voice.Glissando.thickness = #8.25
                                                \once \override NoteHead.duration-log = 2
                                                \afterGrace
                                                <
                                                    \tweak style #'la
                                                    c'''
                                                >4
                                                - \tweak color #(css-color 'darkred)
                                                - \accent
                                                - \tweak color #(css-color 'darkred)
                                                ^ \fp
                                                - \tweak color #(css-color 'darkred)
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                                - \tweak color #(css-color 'darkred)
                                                - \tweak circled-tip ##t
                                                ^ \>
                                                {
                                                    \once \override NoteHead.X-offset = 0
                                                    \once \override Staff.Accidental.stencil = ##f
                                                    \once \override Voice.Glissando.thickness = #8.25
                                                    \once \override NoteHead.duration-log = 2
                                                    \once \override RepeatTie.transparent = ##t
                                                    \once \override Beam.stencil = ##f
                                                    \once \override Flag.stencil = ##f
                                                    \once \override Dots.stencil = ##f
                                                    \once \override Tie.stencil = ##f
                                                    \once \override NoteHead.duration-log = 2
                                                    \once \override Stem.stencil = ##f
                                                    \once \override Stem.stencil = ##f
                                                    \once \override Flag.stencil = ##f
                                                    \once \override NoteHead.no-ledgers = ##t
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override NoteHead.transparent = ##t
                                                    <
                                                        \tweak style #'la
                                                        c'''
                                                    >16
                                                    \stopTextSpanOne
                                                }
                                                \once \override NoteHead.X-offset = 0
                                                \once \override Staff.Accidental.stencil = ##f
                                                \once \override Voice.Glissando.thickness = #8.25
                                                \once \override NoteHead.duration-log = 2
                                                \afterGrace
                                                <
                                                    \tweak style #'la
                                                    c'''
                                                >4
                                                - \tweak color #(css-color 'darkred)
                                                - \accent
                                                - \tweak color #(css-color 'darkred)
                                                ^ \fp
                                                - \tweak color #(css-color 'darkred)
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                                - \tweak color #(css-color 'darkred)
                                                - \tweak circled-tip ##t
                                                ^ \>
                                                - \tweak font-name "Bodoni72 Book" 
                                                - \tweak font-size 2
                                                - \tweak padding #16
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { \upright { "I, DP" } \hspace #0.5 }
                                                \startTextSpanOne
                                                {
                                                    \once \override NoteHead.X-offset = 0
                                                    \once \override Staff.Accidental.stencil = ##f
                                                    \once \override Voice.Glissando.thickness = #8.25
                                                    \once \override NoteHead.duration-log = 2
                                                    \once \override RepeatTie.transparent = ##t
                                                    \once \override Beam.stencil = ##f
                                                    \once \override Flag.stencil = ##f
                                                    \once \override Dots.stencil = ##f
                                                    \once \override Tie.stencil = ##f
                                                    \once \override NoteHead.duration-log = 2
                                                    \once \override Stem.stencil = ##f
                                                    \once \override Stem.stencil = ##f
                                                    \once \override Flag.stencil = ##f
                                                    \once \override NoteHead.no-ledgers = ##t
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override NoteHead.transparent = ##t
                                                    <
                                                        \tweak style #'la
                                                        c'''
                                                    >16
                                                    \stopTextSpanOne
                                                }
                                            }
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            \afterGrace
                                            <
                                                \tweak style #'la
                                                c'''
                                            >4
                                            - \tweak color #(css-color 'darkred)
                                            - \accent
                                            - \tweak color #(css-color 'darkred)
                                            ^ \fp
                                            - \tweak color #(css-color 'darkred)
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak circled-tip ##t
                                            ^ \>
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #16
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "IV, DP" } \hspace #0.5 }
                                            \startTextSpanOne
                                            {
                                                \once \override NoteHead.X-offset = 0
                                                \once \override Staff.Accidental.stencil = ##f
                                                \once \override Voice.Glissando.thickness = #8.25
                                                \once \override NoteHead.duration-log = 2
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                \once \override Stem.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override Accidental.stencil = ##f
                                                \once \override NoteHead.transparent = ##t
                                                <
                                                    \tweak style #'la
                                                    c'''
                                                >16
                                                \stopTextSpanOne
                                            }
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            \afterGrace
                                            <
                                                \tweak style #'la
                                                c'''
                                            >4
                                            - \tweak color #(css-color 'darkred)
                                            - \accent
                                            - \tweak color #(css-color 'darkred)
                                            ^ \fp
                                            - \tweak color #(css-color 'darkred)
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak circled-tip ##t
                                            ^ \>
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #16
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "III, DP" } \hspace #0.5 }
                                            \startTextSpanOne
                                            {
                                                \once \override NoteHead.X-offset = 0
                                                \once \override Staff.Accidental.stencil = ##f
                                                \once \override Voice.Glissando.thickness = #8.25
                                                \once \override NoteHead.duration-log = 2
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                \once \override Stem.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override Accidental.stencil = ##f
                                                \once \override NoteHead.transparent = ##t
                                                <
                                                    \tweak style #'la
                                                    c'''
                                                >16
                                                \stopTextSpanOne
                                            }
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            \afterGrace
                                            <
                                                \tweak style #'la
                                                c'''
                                            >4
                                            - \tweak color #(css-color 'darkred)
                                            - \accent
                                            - \tweak color #(css-color 'darkred)
                                            ^ \fp
                                            - \tweak color #(css-color 'darkred)
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak circled-tip ##t
                                            ^ \>
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #16
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "I, DP" } \hspace #0.5 }
                                            \startTextSpanOne
                                            {
                                                \once \override NoteHead.X-offset = 0
                                                \once \override Staff.Accidental.stencil = ##f
                                                \once \override Voice.Glissando.thickness = #8.25
                                                \once \override NoteHead.duration-log = 2
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                \once \override Stem.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override Accidental.stencil = ##f
                                                \once \override NoteHead.transparent = ##t
                                                <
                                                    \tweak style #'la
                                                    c'''
                                                >16
                                                \stopTextSpanOne
                                            }
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            \afterGrace
                                            <
                                                \tweak style #'la
                                                c'''
                                            >4
                                            - \tweak color #(css-color 'darkred)
                                            - \accent
                                            - \tweak color #(css-color 'darkred)
                                            ^ \fp
                                            - \tweak color #(css-color 'darkred)
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak circled-tip ##t
                                            ^ \>
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #16
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "II, DP" } \hspace #0.5 }
                                            \startTextSpanOne
                                            {
                                                \once \override NoteHead.X-offset = 0
                                                \once \override Staff.Accidental.stencil = ##f
                                                \once \override Voice.Glissando.thickness = #8.25
                                                \once \override NoteHead.duration-log = 2
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                \once \override Stem.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override Accidental.stencil = ##f
                                                \once \override NoteHead.transparent = ##t
                                                <
                                                    \tweak style #'la
                                                    c'''
                                                >16
                                                \stopTextSpanOne
                                            }
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            \afterGrace
                                            <
                                                \tweak style #'la
                                                c'''
                                            >4
                                            - \tweak color #(css-color 'darkred)
                                            - \accent
                                            - \tweak color #(css-color 'darkred)
                                            ^ \fp
                                            - \tweak color #(css-color 'darkred)
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            - \tweak color #(css-color 'darkred)
                                            - \tweak circled-tip ##t
                                            ^ \>
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 2
                                            - \tweak padding #16
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "I, DP" } \hspace #0.5 }
                                            \startTextSpanOne
                                            {
                                                \once \override NoteHead.X-offset = 0
                                                \once \override Staff.Accidental.stencil = ##f
                                                \once \override Voice.Glissando.thickness = #8.25
                                                \once \override NoteHead.duration-log = 2
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                \once \override Stem.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override Accidental.stencil = ##f
                                                \once \override NoteHead.transparent = ##t
                                                <
                                                    \tweak style #'la
                                                    c'''
                                                >16
                                                \!
                                                \stopTextSpanOne
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
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \once \override Rest.transparent = ##t
                                    \staff-line-count 5
                                    \revert Staff.StaffSymbol.line-positions
                                    \revert Staff.Accidental.stencil
                                    \revert Staff.NoteHead.no-ledgers
                                    \revert Staff.Clef.stencil
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                    \override Staff.BarLine.bar-extent = #'(-2 . 2)
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
                                    r1
                                    r2
                                    r1
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
                                    \override Dots.staff-position = #2
                                    \big-half-harmonic
                                    \clef "bass"
                                    fs,2
                                    - \accent
                                    \mp
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #7.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "Spz." } \hspace #0.5 }
                                    \startTextSpanTwo
                                    - \tweak padding #5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \normale-bow-rotation \hspace #0.5 }
                                    \startTextSpanOne
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    \once \override Staff.Clef.X-extent = #'(-1 . 4)
                                    \clef "tenor"
                                    \tweak style #'harmonic
                                    bf2
                                    - \accent
                                    \stopTextSpanOne
                                    \stopTextSpanTwo
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #7.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "1/2 Spz." } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \upright { "Norm." }
                                    \startTextSpanTwo
                                    - \tweak padding #5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \bow-tip-half-up \hspace #0.5 }
                                    - \tweak bound-details.right.text \normale-bow-rotation
                                    \startTextSpanOne
                                    \big-half-harmonic
                                    c'4
                                    - \accent
                                    \stopTextSpanOne
                                    \stopTextSpanTwo
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    \once \override Staff.Clef.X-extent = #'(-1 . 4)
                                    \clef "treble"
                                    \tweak style #'harmonic-mixed
                                    e''4
                                    - \accent
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        fs''
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                                        cs'''
                                    >2
                                    ^ \markup \center-align { \center-column { \line { \concat { -8 }  }\line { \concat { -10 }  } } }
                                    (
                                    - \tweak bound-details.right.arrow ##t
                                    - \tweak thickness #1.5
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    - \tweak font-name "Bodoni72 Book" 
                                    - \tweak font-size 1
                                    - \tweak padding #12
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "ST" } \hspace #0.5 }
                                    \startTextSpanOne
                                    - \tweak padding #13.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " rit. ( to " } \fontsize #-0.5 { \note { 8 } #1.5 } \fontsize #3 { "= 60 )" } } } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #1.5 } \fontsize #4 { "= 60" } } }
                                    - \tweak bound-details.right.padding -17.5
                                    \startTextSpanThree
                                    \override Dots.staff-position = #2
                                    \fancy-gliss
                                       #'(
                                          (0 0 0.5 1 1 0)
                                          (1 0 1.5 -1 2 0)
                                          (2 0 2.5 1 3 0)
                                          (3 0 3.5 -1 4 0)
                                          (4 0 4.5 1 5 0)
                                          (5 0 5.5 -1 6 0)
                                          (6 0 6.5 1 7 0)
                                          (7 0 7.5 -1 8 0)
                                          (8 0 8.5 1 9 0)
                                          (9 0 9.5 -1 10 0)
                                     )
                                     #0.5
                                    \once \override Accidental.stencil = ##f
                                    \revert Dots.staff-position
                                    \afterGrace
                                    <
                                        \tweak style #'harmonic
                                        fs''
                                        \tweak style #'harmonic
                                        cs'''
                                    >2
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    {
                                        \once \override Accidental.stencil = ##f
                                        \once \override Stem.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Accidental.stencil = ##f
                                        \revert Dots.staff-position
                                        \once \override NoteHead.transparent = ##t
                                        <fs'' cs'''>16
                                        \!
                                        )
                                        \stopTextSpanOne
                                        \stopTextSpanThree
                                    }
                                    <<
                                        \context Voice = "cello 2 voice temp"
                                        {
                                            \once \override TupletBracket.padding = #0.5
                                            \once \override TupletBracket.padding = #0.5
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 5/6
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
                                                >4
                                                    _ #(make-dynamic-script (markup #:whiteout #:italic "ffffff"))
                                                _ \coda
                                                _ \marcato
                                                - \tweak font-name "Bodoni72 Book Italic" 
                                                _ \markup \center-column { \line { "extremely strong battuto," } \line { "striking so hard as to hit all strings at once" } }
                                                - \tweak font-name "Bodoni72 Book" 
                                                - \tweak font-size 1
                                                - \tweak padding #9
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { \upright { "1/2 CLB" } \hspace #0.5 }
                                                - \tweak bound-details.right.padding -2
                                                \startTextSpanOne
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
                                                >4
                                                _ \coda
                                                _ \marcato
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
                                                >4
                                                _ \coda
                                                _ \marcato
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
                                                >4
                                                _ \coda
                                                _ \marcato
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
                                                >4
                                                _ \coda
                                                _ \marcato
                                                \once \override Accidental.stencil = ##f
                                                \revert Staff.Clef.stencil
                                                <
                                                    \tweak style #'cross
                                                    g
                                                    \tweak style #'cross
                                                    b
                                                    \tweak style #'cross
                                                    d'
                                                    \tweak style #'cross
                                                    f'
                                                >4
                                                _ \coda
                                                _ \marcato
                                                \stopTextSpanOne
                                            }
                                            d''4
                                            \pp
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 1
                                            - \tweak padding #9.5
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLB + SP" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -2
                                            \startTextSpanOne
                                            - \tweak padding #11
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " accel. ( to " } \fontsize #-0.5 { \note { 4 } #1.5 } \fontsize #3 { "= 80 )" } } } \hspace #0.5 }
                                            - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 80" } } }
                                            \startTextSpanThree
                                            e''4
                                            g''4
                                            cs'''4
                                            b''4
                                            \stopTextSpanOne
                                            \once \override TupletBracket.padding = #0.5
                                            \once \override TupletBracket.padding = #0.5
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 5/4
                                            {
                                                \staff-line-count 4
                                                \once \override Accidental.stencil = ##f
                                                \override Staff.Clef.stencil = #ly:text-interface::print
                                                \override Staff.Clef.text = \stringing-clef
                                                \clef "percussion"
                                                <
                                                    \tweak style #'cross
                                                    g
                                                    \tweak style #'cross
                                                    b
                                                    \tweak style #'cross
                                                    d'
                                                    \tweak style #'cross
                                                    f'
                                                >4
                                                    _ #(make-dynamic-script (markup #:whiteout #:italic "ffffff"))
                                                _ \coda
                                                _ \marcato
                                                \stopTextSpanThree
                                                - \tweak font-name "Bodoni72 Book" 
                                                - \tweak font-size 1
                                                - \tweak padding #9
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { \upright { "1/2 CLB" } \hspace #0.5 }
                                                - \tweak bound-details.right.padding -2
                                                \startTextSpanOne
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
                                                >4
                                                _ \coda
                                                _ \marcato
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
                                                >4
                                                _ \coda
                                                _ \marcato
                                                \once \override Accidental.stencil = ##f
                                                \revert Staff.Clef.stencil
                                                <
                                                    \tweak style #'cross
                                                    g
                                                    \tweak style #'cross
                                                    b
                                                    \tweak style #'cross
                                                    d'
                                                    \tweak style #'cross
                                                    f'
                                                >4
                                                _ \coda
                                                _ \marcato
                                                \stopTextSpanOne
                                            }
                                        }
                                        \context Voice = "cello polyrhythm voice"
                                        {
                                            \staff-line-count 4
                                            \once \override Accidental.stencil = ##f
                                            \override Staff.Clef.stencil = #ly:text-interface::print
                                            \override Staff.Clef.text = \stringing-clef
                                            \clef "percussion"
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
                                            >4
                                            ^ \coda
                                            ^ \marcato
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
                                            >4
                                            ^ \coda
                                            ^ \marcato
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
                                            >4
                                            ^ \coda
                                            ^ \marcato
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
                                            >4
                                            ^ \coda
                                            ^ \marcato
                                            \once \override Accidental.stencil = ##f
                                            \revert Staff.Clef.stencil
                                            <
                                                \tweak style #'cross
                                                g
                                                \tweak style #'cross
                                                b
                                                \tweak style #'cross
                                                d'
                                                \tweak style #'cross
                                                f'
                                            >4
                                            ^ \coda
                                            ^ \marcato
                                            \once \override TupletBracket.padding = #0.5
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 5/4
                                            {
                                                \staff-line-count 5
                                                \revert Staff.Clef.stencil
                                                \clef "treble"
                                                f''4
                                                bf'4
                                                b'4
                                                d''4
                                            }
                                            \once \override TupletBracket.padding = #0.5
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 5/6
                                            {
                                                \staff-line-count 4
                                                \once \override Accidental.stencil = ##f
                                                \override Staff.Clef.stencil = #ly:text-interface::print
                                                \override Staff.Clef.text = \stringing-clef
                                                \clef "percussion"
                                                <
                                                    \tweak style #'cross
                                                    g
                                                    \tweak style #'cross
                                                    b
                                                    \tweak style #'cross
                                                    d'
                                                    \tweak style #'cross
                                                    f'
                                                >2
                                                ^ \coda
                                                ^ \marcato
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
                                                >2
                                                ^ \coda
                                                ^ \marcato
                                                \once \override Accidental.stencil = ##f
                                                \revert Staff.Clef.stencil
                                                <
                                                    \tweak style #'cross
                                                    g
                                                    \tweak style #'cross
                                                    b
                                                    \tweak style #'cross
                                                    d'
                                                    \tweak style #'cross
                                                    f'
                                                >2
                                                ^ \coda
                                                ^ \marcato
                                            }
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
                    >>
                }
            >>
        }
    >>
  %! abjad.LilyPondFile._get_format_pieces()
