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
            \override Score.TimeSignature.stencil = ##f
            \time 12/8
            s1 * 3/2
        }
        \context StaffGroup = "Staff Group"
        <<
            \context Staff = "violin staff"
            {
                \context Voice = "violin voice"
                {
                    \once \override RepeatTie.transparent = ##t
                    \once \override Beam.stencil = ##f
                    \once \override Flag.stencil = ##f
                    \once \override Dots.stencil = ##f
                    \once \override Tie.stencil = ##f
                    \once \override NoteHead.duration-log = 2
                    \once \override Stem.stencil = ##f
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup { \abjad-natural  }
                    a!8
                    ^ \markup \center-align { \concat { +0 } }
                    \once \override RepeatTie.transparent = ##t
                    \once \override Beam.stencil = ##f
                    \once \override Flag.stencil = ##f
                    \once \override Dots.stencil = ##f
                    \once \override Tie.stencil = ##f
                    \once \override NoteHead.duration-log = 2
                    \once \override Stem.stencil = ##f
                    bf!8
                    ^ \markup \center-align +50
                    \once \override RepeatTie.transparent = ##t
                    \once \override Beam.stencil = ##f
                    \once \override Flag.stencil = ##f
                    \once \override Dots.stencil = ##f
                    \once \override Tie.stencil = ##f
                    \once \override NoteHead.duration-log = 2
                    \once \override Stem.stencil = ##f
                    b!8
                    ^ \markup \center-align +16
                    \once \override RepeatTie.transparent = ##t
                    \once \override Beam.stencil = ##f
                    \once \override Flag.stencil = ##f
                    \once \override Dots.stencil = ##f
                    \once \override Tie.stencil = ##f
                    \once \override NoteHead.duration-log = 2
                    \once \override Stem.stencil = ##f
                    c'!8
                    ^ \markup \center-align -34
                    \once \override RepeatTie.transparent = ##t
                    \once \override Beam.stencil = ##f
                    \once \override Flag.stencil = ##f
                    \once \override Dots.stencil = ##f
                    \once \override Tie.stencil = ##f
                    \once \override NoteHead.duration-log = 2
                    \once \override Stem.stencil = ##f
                    cs'!8
                    ^ \markup \center-align +37
                    \once \override RepeatTie.transparent = ##t
                    \once \override Beam.stencil = ##f
                    \once \override Flag.stencil = ##f
                    \once \override Dots.stencil = ##f
                    \once \override Tie.stencil = ##f
                    \once \override NoteHead.duration-log = 2
                    \once \override Stem.stencil = ##f
                    ef'!8
                    ^ \markup \center-align -41
                    \once \override RepeatTie.transparent = ##t
                    \once \override Beam.stencil = ##f
                    \once \override Flag.stencil = ##f
                    \once \override Dots.stencil = ##f
                    \once \override Tie.stencil = ##f
                    \once \override NoteHead.duration-log = 2
                    \once \override Stem.stencil = ##f
                    ef'!8
                    ^ \markup \center-align +32
                    \once \override RepeatTie.transparent = ##t
                    \once \override Beam.stencil = ##f
                    \once \override Flag.stencil = ##f
                    \once \override Dots.stencil = ##f
                    \once \override Tie.stencil = ##f
                    \once \override NoteHead.duration-log = 2
                    \once \override Stem.stencil = ##f
                    e'!8
                    ^ \markup \center-align +39
                    \once \override RepeatTie.transparent = ##t
                    \once \override Beam.stencil = ##f
                    \once \override Flag.stencil = ##f
                    \once \override Dots.stencil = ##f
                    \once \override Tie.stencil = ##f
                    \once \override NoteHead.duration-log = 2
                    \once \override Stem.stencil = ##f
                    f'!8
                    ^ \markup \center-align +8
                    \once \override RepeatTie.transparent = ##t
                    \once \override Beam.stencil = ##f
                    \once \override Flag.stencil = ##f
                    \once \override Dots.stencil = ##f
                    \once \override Tie.stencil = ##f
                    \once \override NoteHead.duration-log = 2
                    \once \override Stem.stencil = ##f
                    fs'!8
                    ^ \markup \center-align +33
                    \once \override RepeatTie.transparent = ##t
                    \once \override Beam.stencil = ##f
                    \once \override Flag.stencil = ##f
                    \once \override Dots.stencil = ##f
                    \once \override Tie.stencil = ##f
                    \once \override NoteHead.duration-log = 2
                    \once \override Stem.stencil = ##f
                    g'!8
                    ^ \markup \center-align +8
                    \once \override RepeatTie.transparent = ##t
                    \once \override Beam.stencil = ##f
                    \once \override Flag.stencil = ##f
                    \once \override Dots.stencil = ##f
                    \once \override Tie.stencil = ##f
                    \once \override NoteHead.duration-log = 2
                    \once \override Stem.stencil = ##f
                    af'!8
                    ^ \markup \center-align -49
                }
            }
        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()
}
