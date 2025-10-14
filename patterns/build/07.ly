    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \time 2/2
            s1 * 1
              %! +SCORE
            \noBreak
            \time 1/2
            s1 * 1/2
              %! +SCORE
            \break
            \time 2/2
            s1 * 1
              %! +SCORE
            \noBreak
            \time 5/4
            s1 * 5/4
              %! +SCORE
            \break
            \once \override Score.TimeSignature.stencil = ##f
            \time 5/4
            s1 * 5/4
              %! +SCORE
            \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 5/4
            s1 * 5/4
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
                                            \times 2/3
                                            {
                                                \big-half-harmonic
                                                \voiceOne
                                                <cqf' gqf' dqf'' aqf''>2
                                                    _ #(make-dynamic-script (markup #:whiteout #:italic "ffffff"))
                                                - \marcato
                                                - \tweak font-name "Bodoni72 Book" 
                                                - \tweak font-size 1
                                                - \tweak padding #13.5
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { \upright { "1/2 CLB" } \hspace #0.5 }
                                                - \tweak bound-details.right.padding -2
                                                \startTextSpanOne
                                                \big-half-harmonic
                                                <cqf' gqf' dqf'' aqf''>2
                                                - \marcato
                                                \big-half-harmonic
                                                <cqf' gqf' dqf'' aqf''>2
                                                - \marcato
                                                \stopTextSpanOne
                                            }
                                            \times 4/6
                                            {
                                                e''8
                                                \pp
                                                [
                                                - \tweak font-name "Bodoni72 Book" 
                                                - \tweak font-size 1
                                                - \tweak padding #16
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
                                            \big-half-harmonic
                                            \voiceTwo
                                            <cqf' gqf' dqf'' aqf''>4
                                            - \marcato
                                            \big-half-harmonic
                                            <cqf' gqf' dqf'' aqf''>4
                                            - \marcato
                                            \big-half-harmonic
                                            <cqf' gqf' dqf'' aqf''>4
                                            - \marcato
                                            \big-half-harmonic
                                            <cqf' gqf' dqf'' aqf''>4
                                            - \marcato
                                            \times 2/3
                                            {
                                                bf'4
                                                g''4
                                                e'''4
                                            }
                                        }
                                    >>
                                    \oneVoice
                                    \override Dots.staff-position = #2
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
                                    - \tweak padding #14
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "ST" } \hspace #0.5 }
                                    \startTextSpanOne
                                    - \tweak padding #15.5
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
                                    }
                                    <<
                                        \context Voice = "violin 2 voice temp 2"
                                        {
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 5/6
                                            {
                                                \big-half-harmonic
                                                \voiceOne
                                                <cqf' gqf' dqf'' aqf''>2
                                                    _ #(make-dynamic-script (markup #:whiteout #:italic "ffffff"))
                                                - \marcato
                                                - \tweak padding #15.5
                                                - \abjad-solid-line-with-arrow
                                                - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " accel. ( to " } \fontsize #-0.5 { \note { 4 } #1.5 } \fontsize #3 { "= 80 )" } } } \hspace #0.5 }
                                                - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 80" } } }
                                                \startTextSpanThree
                                                \big-half-harmonic
                                                <cqf' gqf' dqf'' aqf''>2
                                                - \marcato
                                                \big-half-harmonic
                                                <cqf' gqf' dqf'' aqf''>2
                                                - \marcato
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
                                            \big-half-harmonic
                                            \voiceTwo
                                            <cqf' gqf' dqf'' aqf''>4
                                            - \marcato
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 1
                                            - \tweak padding #13.5
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "1/2 CLB" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -2
                                            \startTextSpanOne
                                            \big-half-harmonic
                                            <cqf' gqf' dqf'' aqf''>4
                                            - \marcato
                                            \big-half-harmonic
                                            <cqf' gqf' dqf'' aqf''>4
                                            - \marcato
                                            \big-half-harmonic
                                            <cqf' gqf' dqf'' aqf''>4
                                            - \marcato
                                            \big-half-harmonic
                                            <cqf' gqf' dqf'' aqf''>4
                                            - \marcato
                                            \stopTextSpanOne
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 5/6
                                            {
                                                bf'4
                                                - \tweak font-name "Bodoni72 Book" 
                                                - \tweak font-size 1
                                                - \tweak padding #12.5
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
                                            \times 4/6
                                            {
                                                \big-half-harmonic
                                                \voiceOne
                                                <cqf' gqf' dqf'' aqf''>4
                                                    _ #(make-dynamic-script (markup #:whiteout #:italic "ffffff"))
                                                - \marcato
                                                - \tweak font-name "Bodoni72 Book" 
                                                - \tweak font-size 1
                                                - \tweak padding #13.5
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { \upright { "1/2 CLB" } \hspace #0.5 }
                                                - \tweak bound-details.right.padding -2
                                                \startTextSpanOne
                                                \big-half-harmonic
                                                <cqf' gqf' dqf'' aqf''>4
                                                - \marcato
                                                \big-half-harmonic
                                                <cqf' gqf' dqf'' aqf''>4
                                                - \marcato
                                                \big-half-harmonic
                                                <cqf' gqf' dqf'' aqf''>4
                                                - \marcato
                                                \big-half-harmonic
                                                <cqf' gqf' dqf'' aqf''>4
                                                - \marcato
                                                \big-half-harmonic
                                                <cqf' gqf' dqf'' aqf''>4
                                                - \marcato
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
                                            \big-half-harmonic
                                            <cqf' gqf' dqf'' aqf''>4
                                                _ #(make-dynamic-script (markup #:whiteout #:italic "ffffff"))
                                            - \marcato
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 1
                                            - \tweak padding #11.5
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "1/2 CLB" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -2
                                            \startTextSpanOne
                                            - \tweak padding #13.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " rit. ( to " } \fontsize #-0.5 { \note { 8 } #1.5 } \fontsize #3 { "= 60 )" } } } \hspace #0.5 }
                                            - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #1.5 } \fontsize #4 { "= 60" } } }
                                            - \tweak bound-details.right.padding -23.5
                                            \startTextSpanThree
                                            \big-half-harmonic
                                            <cqf' gqf' dqf'' aqf''>4
                                            - \marcato
                                            \big-half-harmonic
                                            <cqf' gqf' dqf'' aqf''>4
                                            - \marcato
                                            \big-half-harmonic
                                            <cqf' gqf' dqf'' aqf''>4
                                            - \marcato
                                            \stopTextSpanOne
                                            \stopTextSpanThree
                                        }
                                        \context Voice = "violin 2 polyrhythm voice"
                                        {
                                            \times 4/5
                                            {
                                                \big-half-harmonic
                                                \voiceTwo
                                                <cqf' gqf' dqf'' aqf''>4
                                                - \marcato
                                                \big-half-harmonic
                                                <cqf' gqf' dqf'' aqf''>4
                                                - \marcato
                                                \big-half-harmonic
                                                <cqf' gqf' dqf'' aqf''>4
                                                - \marcato
                                                \big-half-harmonic
                                                <cqf' gqf' dqf'' aqf''>4
                                                - \marcato
                                                \big-half-harmonic
                                                <cqf' gqf' dqf'' aqf''>4
                                                - \marcato
                                            }
                                            a''8
                                            [
                                            fs'''8
                                            af'''8
                                            ef'''8
                                            ]
                                            \times 2/3
                                            {
                                                \big-half-harmonic
                                                <cqf' gqf' dqf'' aqf''>2
                                                - \marcato
                                                \big-half-harmonic
                                                <cqf' gqf' dqf'' aqf''>2
                                                - \marcato
                                                \big-half-harmonic
                                                <cqf' gqf' dqf'' aqf''>2
                                                - \marcato
                                            }
                                        }
                                    >>
                                    \oneVoice
                                    r2.
                                    r2
                                    r2.
                                    - \tweak padding #5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " accel. ( to " } \fontsize #-0.5 { \note { 4 } #1.5 } \fontsize #3 { "= 80 )" } } } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 80" } } }
                                    \startTextSpanThree
                                    r2
                                    r2.
                                    r2
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
                                    r1
                                    r2
                                    r1
                                    - \tweak padding #5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " rit. ( to " } \fontsize #-0.5 { \note { 8 } #1.5 } \fontsize #3 { "= 60 )" } } } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #1.5 } \fontsize #4 { "= 60" } } }
                                    \startTextSpanThree
                                    r2.
                                    r2
                                    \stopTextSpanThree
                                    r2.
                                    - \tweak padding #5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " accel. ( to " } \fontsize #-0.5 { \note { 4 } #1.5 } \fontsize #3 { "= 80 )" } } } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 80" } } }
                                    \startTextSpanThree
                                    r2
                                    r2.
                                    r2
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
                                    - \tweak padding #15.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " rit. ( to " } \fontsize #-0.5 { \note { 8 } #1.5 } \fontsize #3 { "= 60 )" } } } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #1.5 } \fontsize #4 { "= 60" } } }
                                    - \tweak bound-details.right.padding -14.5
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
                                        \stopTextSpanOne
                                        \stopTextSpanThree
                                    }
                                    <<
                                        \context Voice = "cello 2 voice temp"
                                        {
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 5/6
                                            {
                                                \big-half-harmonic
                                                \clef "bass"
                                                \voiceOne
                                                <fqf, cqf gqf dqf'>4
                                                    _ #(make-dynamic-script (markup #:whiteout #:italic "ffffff"))
                                                - \marcato
                                                - \tweak font-name "Bodoni72 Book" 
                                                - \tweak font-size 1
                                                - \tweak padding #13.5
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { \upright { "1/2 CLB" } \hspace #0.5 }
                                                - \tweak bound-details.right.padding -2
                                                \startTextSpanOne
                                                \big-half-harmonic
                                                <fqf, cqf gqf dqf'>4
                                                - \marcato
                                                \big-half-harmonic
                                                <fqf, cqf gqf dqf'>4
                                                - \marcato
                                                \big-half-harmonic
                                                <fqf, cqf gqf dqf'>4
                                                - \marcato
                                                \big-half-harmonic
                                                <fqf, cqf gqf dqf'>4
                                                - \marcato
                                                \big-half-harmonic
                                                <fqf, cqf gqf dqf'>4
                                                - \marcato
                                                \stopTextSpanOne
                                            }
                                            \clef "treble"
                                            d''4
                                            \pp
                                            - \tweak font-name "Bodoni72 Book" 
                                            - \tweak font-size 1
                                            - \tweak padding #9.5
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright { "CLB + SP" } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -2
                                            \startTextSpanOne
                                            - \tweak padding #15.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #3 { " accel. ( to " } \fontsize #-0.5 { \note { 4 } #1.5 } \fontsize #3 { "= 80 )" } } } \hspace #0.5 }
                                            - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 80" } } }
                                            \startTextSpanThree
                                            e''4
                                            g''4
                                            cs'''4
                                            b''4
                                            \stopTextSpanOne
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 5/4
                                            {
                                                \big-half-harmonic
                                                \clef "bass"
                                                <fqf, cqf gqf dqf'>4
                                                    _ #(make-dynamic-script (markup #:whiteout #:italic "ffffff"))
                                                - \marcato
                                                \stopTextSpanThree
                                                - \tweak font-name "Bodoni72 Book" 
                                                - \tweak font-size 1
                                                - \tweak padding #13.5
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { \upright { "1/2 CLB" } \hspace #0.5 }
                                                - \tweak bound-details.right.padding -2
                                                \startTextSpanOne
                                                \big-half-harmonic
                                                <fqf, cqf gqf dqf'>4
                                                - \marcato
                                                \big-half-harmonic
                                                <fqf, cqf gqf dqf'>4
                                                - \marcato
                                                \big-half-harmonic
                                                <fqf, cqf gqf dqf'>4
                                                - \marcato
                                                \stopTextSpanOne
                                            }
                                        }
                                        \context Voice = "cello polyrhythm voice"
                                        {
                                            \big-half-harmonic
                                            \voiceTwo
                                            <fqf, cqf gqf dqf'>4
                                            - \marcato
                                            \big-half-harmonic
                                            <fqf, cqf gqf dqf'>4
                                            - \marcato
                                            \big-half-harmonic
                                            <fqf, cqf gqf dqf'>4
                                            - \marcato
                                            \big-half-harmonic
                                            <fqf, cqf gqf dqf'>4
                                            - \marcato
                                            \big-half-harmonic
                                            <fqf, cqf gqf dqf'>4
                                            - \marcato
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 5/4
                                            {
                                                f''4
                                                bf'4
                                                b'4
                                                d''4
                                            }
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 5/6
                                            {
                                                \big-half-harmonic
                                                <fqf, cqf gqf dqf'>2
                                                - \marcato
                                                \big-half-harmonic
                                                <fqf, cqf gqf dqf'>2
                                                - \marcato
                                                \big-half-harmonic
                                                <fqf, cqf gqf dqf'>2
                                                - \marcato
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
