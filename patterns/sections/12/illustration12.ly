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
            \time 3/4
            s1 * 3/4
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
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 14/12
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
                                                ^ \marcato
                                                _ \coda
                                                  %! +SCORE
                                                ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-7 \raise #2 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 83" } } }
                                                [
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
                                                ^ \marcato
                                                _ \coda
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
                                                ^ \marcato
                                                _ \coda
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
                                                ^ \marcato
                                                _ \coda
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
                                                ^ \marcato
                                                _ \coda
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
                                                ^ \marcato
                                                _ \coda
                                                r8.
                                                ]
                                            }
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 6/5
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
                                                ^ \marcato
                                                _ \coda
                                                - \tweak Beam.positions #'(11 . 11)
                                                [
                                                \once \override Rest.staff-position = 13
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
                                                ^ \marcato
                                                _ \coda
                                                \once \override Rest.staff-position = 13
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
                                                ^ \marcato
                                                _ \coda
                                                \once \override Rest.staff-position = 13
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
                                                ^ \marcato
                                                _ \coda
                                                \once \override Rest.staff-position = 13
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
                                                ^ \marcato
                                                _ \coda
                                                \once \override Rest.staff-position = 13
                                                r16.
                                                ]
                                            }
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
                                            ^ \marcato
                                            _ \coda
                                            [
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
                                            ^ \marcato
                                            _ \coda
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
                                            ^ \marcato
                                            _ \coda
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
                                            ^ \marcato
                                            _ \coda
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
                                            >16
                                            ^ \marcato
                                            _ \coda
                                            [
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
                                            ^ \marcato
                                            _ \coda
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
                                            ^ \marcato
                                            _ \coda
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
                                            >16
                                            ^ \marcato
                                            _ \coda
                                            [
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
                                            ^ \marcato
                                            _ \coda
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
                                            ^ \marcato
                                            _ \coda
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
                                            ^ \marcato
                                            _ \coda
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
                                            ^ \marcato
                                            _ \coda
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
                                            ^ \marcato
                                            _ \coda
                                            r8.
                                            ]
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 7/10
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
                                                >8
                                                ^ \marcato
                                                _ \coda
                                                r4.
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
                                                >8
                                                ^ \marcato
                                                _ \coda
                                                r4.
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
                                                >8
                                                ^ \marcato
                                                _ \coda
                                                r4.
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
                                                >8
                                                ^ \marcato
                                                _ \coda
                                                r4.
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
                                                >8
                                                ^ \marcato
                                                _ \coda
                                                r4.
                                            }
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 5/6
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
                                                >8
                                                ^ \marcato
                                                _ \coda
                                                r4.
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
                                                >8
                                                ^ \marcato
                                                _ \coda
                                                r4.
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
                                                >8
                                                ^ \marcato
                                                _ \coda
                                                r4.
                                            }
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 10/8
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
                                                >16
                                                ^ \marcato
                                                _ \coda
                                                [
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
                                                ^ \marcato
                                                _ \coda
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
                                                ^ \marcato
                                                _ \coda
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
                                                ^ \marcato
                                                _ \coda
                                                r8.
                                                ]
                                            }
                                            \times 4/6
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
                                                >16
                                                ^ \marcato
                                                _ \coda
                                                [
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
                                                ^ \marcato
                                                _ \coda
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
                                                ^ \marcato
                                                _ \coda
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
                                                ^ \marcato
                                                _ \coda
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
                                                ^ \marcato
                                                _ \coda
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
                                                ^ \marcato
                                                _ \coda
                                                r8.
                                                ]
                                            }
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
                                            ^ \marcato
                                            _ \coda
                                            [
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
                                            ^ \marcato
                                            _ \coda
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
                                            ^ \marcato
                                            _ \coda
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
                                            ^ \marcato
                                            _ \coda
                                            r8.
                                            ]
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 6/5
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
                                                >16
                                                    _ #(make-dynamic-script (markup #:whiteout #:italic "fffffff"))
                                                ^ \marcato
                                                _ \coda
                                                [
                                                - \tweak stencil #constante-hairpin
                                                \<
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
                                                ^ \marcato
                                                _ \coda
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
                                                ^ \marcato
                                                _ \coda
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
                                                ^ \marcato
                                                _ \coda
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
                                                ^ \marcato
                                                _ \coda
                                                r8.
                                                \!
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
                                                >8
                                                ^ \marcato
                                                _ \coda
                                                - \tweak font-size 2
                                                _ \markup \override #'(font-name . "Bodoni72 Book Italic") { "( back to quiet as possible )" }
                                                r4.
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
                                                >8
                                                ^ \marcato
                                                _ \coda
                                                r4.
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
                                                >8
                                                ^ \marcato
                                                _ \coda
                                                r4.
                                            }
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
                                            ^ \marcato
                                            _ \coda
                                            [
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
                                            ^ \marcato
                                            _ \coda
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
                                            ^ \marcato
                                            _ \coda
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
                                            ^ \marcato
                                            _ \coda
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
                                            ^ \marcato
                                            _ \coda
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
                                            ^ \marcato
                                            _ \coda
                                            r8.
                                            ]
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 3/4
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
                                                >8
                                                ^ \marcato
                                                _ \coda
                                                r4.
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
                                                >8
                                                ^ \marcato
                                                _ \coda
                                                r4.
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
                                                >8
                                                ^ \marcato
                                                _ \coda
                                                r4.
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
                                                >8
                                                ^ \marcato
                                                _ \coda
                                                r4.
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
                                                >8
                                                ^ \marcato
                                                _ \coda
                                                r4.
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
                                                >8
                                                ^ \marcato
                                                _ \coda
                                                r4.
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
                                                >8
                                                ^ \marcato
                                                _ \coda
                                                r4.
                                            }
                                        }
                                        \context Voice = "violin 1 lower voice"
                                        {
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 7/10
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
                                                >8
                                                ^ \coda
                                                - \tweak font-name "Bodoni72 Book" 
                                                - \tweak font-size 1
                                                - \tweak padding #13.5
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { \upright { "1/2 CLB + ST poss." } \hspace #0.5 }
                                                - \tweak bound-details.right.padding -3
                                                \startTextSpanOne
                                                r4.
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
                                                >8
                                                ^ \coda
                                                r4.
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
                                                >8
                                                ^ \coda
                                                r4.
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
                                                >8
                                                ^ \coda
                                                r4.
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
                                                >8
                                                ^ \coda
                                                r4.
                                            }
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 3/4
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
                                                >16
                                                ^ \coda
                                                [
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
                                                >8
                                                ^ \coda
                                                r4.
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
                                                >8
                                                ^ \coda
                                                r4.
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
                                                >8
                                                ^ \coda
                                                r4.
                                            }
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
                                            - \tweak Beam.positions #'(-8 . -8)
                                            [
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
                                            r16.
                                            ]
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 6/5
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
                                                >16
                                                ^ \coda
                                                [
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
                                                r8.
                                                ]
                                            }
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 14/12
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
                                                >8
                                                ^ \coda
                                                r4.
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
                                                >8
                                                ^ \coda
                                                r4.
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
                                                >8
                                                ^ \coda
                                                r4.
                                            }
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 10/8
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
                                                >16
                                                ^ \coda
                                                [
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
                                                r8.
                                                ]
                                            }
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 5/6
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
                                                >16
                                                ^ \coda
                                                [
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
                                                r8.
                                                ]
                                            }
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
                                            [
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
                                            r8.
                                            ]
                                            \times 4/5
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
                                                >16
                                                ^ \coda
                                                - \tweak Beam.positions #'(-9 . -9)
                                                [
                                                \once \override Rest.staff-position = -11
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
                                                \once \override Rest.staff-position = -11
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
                                                \once \override Rest.staff-position = -11
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
                                                \once \override Rest.staff-position = -11
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
                                                \once \override Rest.staff-position = -11
                                                r8.
                                                ]
                                            }
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
                                            >8
                                            ^ \coda
                                            r4.
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
                                            >8
                                            ^ \coda
                                            r4.
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
                                            >8
                                            ^ \coda
                                            r4.
                                            \times 4/6
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
                                                >16
                                                ^ \coda
                                                [
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
                                                r8.
                                                ]
                                            }
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 3/4
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
                                                >8
                                                ^ \coda
                                                r4.
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
                                                >8
                                                ^ \coda
                                                r4.
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
                                                >8
                                                ^ \coda
                                                r4.
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
                                                >8
                                                ^ \coda
                                                r4.
                                            }
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
                                            >8
                                            ^ \coda
                                            r4.
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
                                            >8
                                            ^ \coda
                                            r4.
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
                                            >8
                                            ^ \coda
                                            r4.
                                            \times 4/5
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
                                                >16
                                                ^ \coda
                                                [
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
                                                \stopTextSpanOne
                                                r8.
                                                ]
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
                                            \once \override TupletBracket.padding = #3
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 7/10
                                            {
                                                \voiceOne
                                                ef''2
                                                - \tweak padding 1
                                                ^ \talon-to-punta
                                                  %! +SCORE
                                                ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-7 \raise #2 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 83" } } }
                                                (
                                                af'2
                                                fs''2
                                                a''2
                                                e''2
                                                )
                                            }
                                            fs''4
                                            - \tweak padding 1
                                            ^ \punta-to-talon
                                            c'''4
                                            af''4
                                            \times 4/6
                                            {
                                                fs''4
                                                - \tweak padding 1
                                                ^ \talon-to-punta
                                                (
                                                fs''4
                                                b''4
                                                fs''4
                                                ef''4
                                                g'4
                                                )
                                            }
                                            \override Staff.Stem.stemlet-length = 0.75
                                            fs'8.
                                            - \tweak padding 1
                                            ^ \punta-to-talon
                                            [
                                            (
                                            \revert Staff.Stem.stemlet-length
                                            a'16
                                            ]
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            a'8
                                            [
                                            \revert Staff.Stem.stemlet-length
                                            ef''8
                                            ]
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            ef''16
                                            [
                                            \revert Staff.Stem.stemlet-length
                                            fs''8.
                                            )
                                            ]
                                            ef''2
                                            - \tweak padding 1
                                            ^ \talon-to-punta
                                            af'4
                                            ~
                                            af'4
                                            af''2
                                        }
                                        \context Voice = "violin 2 lower voice"
                                        {
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 7/6
                                            {
                                                \voiceTwo
                                                ef'2
                                                - \tweak font-size 1
                                                _ \markup \override #'(font-name . "Bodoni72 Book Italic") { "quasi dolce" }
                                                - \tweak font-name "Bodoni72 Book" 
                                                - \tweak font-size 1
                                                - \tweak padding #13
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { \upright { "CLT, ST poss." } \hspace #0.5 }
                                                - \tweak bound-details.right.padding -3
                                                \startTextSpanOne
                                                af''2
                                                fs''2
                                            }
                                            \override Staff.Stem.stemlet-length = 0.75
                                            a'8
                                            [
                                            (
                                            \revert Staff.Stem.stemlet-length
                                            e''8
                                            ]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            fs''8
                                            [
                                            \revert Staff.Stem.stemlet-length
                                            c''8
                                            ]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            af'8
                                            [
                                            \revert Staff.Stem.stemlet-length
                                            fs''8
                                            )
                                            ]
                                            fs'4
                                            b'4
                                            fs'4
                                            ef'4
                                            g'4
                                            fs'4
                                            a'4
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 6/5
                                            {
                                                ef'4
                                                (
                                                fs'4
                                                ef'4
                                                af'4
                                                af'4
                                                )
                                                \stopTextSpanOne
                                            }
                                        }
                                    >>
                                    \oneVoice
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
                                    r1..
                                      %! +SCORE
                                    ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-7 \raise #2 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 83" } } }
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
                                    r1..
                                      %! +SCORE
                                    ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-7 \raise #2 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #1.5 } \fontsize #4 { "= 83" } } }
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
