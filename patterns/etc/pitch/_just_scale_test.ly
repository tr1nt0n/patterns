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
                    c'!8
                    ^ \markup \center-align { \concat { +0 } }
                    \once \override RepeatTie.transparent = ##t
                    \once \override Beam.stencil = ##f
                    \once \override Flag.stencil = ##f
                    \once \override Dots.stencil = ##f
                    \once \override Tie.stencil = ##f
                    \once \override NoteHead.duration-log = 2
                    \once \override Stem.stencil = ##f
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                    cs'!8
                    ^ \markup \center-align { \concat { -8 } }
                    \once \override RepeatTie.transparent = ##t
                    \once \override Beam.stencil = ##f
                    \once \override Flag.stencil = ##f
                    \once \override Dots.stencil = ##f
                    \once \override Tie.stencil = ##f
                    \once \override NoteHead.duration-log = 2
                    \once \override Stem.stencil = ##f
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup { \abjad-natural  }
                    d'!8
                    ^ \markup \center-align { \concat { +4 } }
                    \once \override RepeatTie.transparent = ##t
                    \once \override Beam.stencil = ##f
                    \once \override Flag.stencil = ##f
                    \once \override Dots.stencil = ##f
                    \once \override Tie.stencil = ##f
                    \once \override NoteHead.duration-log = 2
                    \once \override Stem.stencil = ##f
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                    ds'!8
                    ^ \markup \center-align { \concat { -4 } }
                    \once \override RepeatTie.transparent = ##t
                    \once \override Beam.stencil = ##f
                    \once \override Flag.stencil = ##f
                    \once \override Dots.stencil = ##f
                    \once \override Tie.stencil = ##f
                    \once \override NoteHead.duration-log = 2
                    \once \override Stem.stencil = ##f
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                    e'!8
                    ^ \markup \center-align { \concat { -14 } }
                    \once \override RepeatTie.transparent = ##t
                    \once \override Beam.stencil = ##f
                    \once \override Flag.stencil = ##f
                    \once \override Dots.stencil = ##f
                    \once \override Tie.stencil = ##f
                    \once \override NoteHead.duration-log = 2
                    \once \override Stem.stencil = ##f
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                    es'!8
                    ^ \markup \center-align { \concat { +0 } }
                    \once \override RepeatTie.transparent = ##t
                    \once \override Beam.stencil = ##f
                    \once \override Flag.stencil = ##f
                    \once \override Dots.stencil = ##f
                    \once \override Tie.stencil = ##f
                    \once \override NoteHead.duration-log = 2
                    \once \override Stem.stencil = ##f
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                    fs'!8
                    ^ \markup \center-align { \concat { -10 } }
                    \once \override RepeatTie.transparent = ##t
                    \once \override Beam.stencil = ##f
                    \once \override Flag.stencil = ##f
                    \once \override Dots.stencil = ##f
                    \once \override Tie.stencil = ##f
                    \once \override NoteHead.duration-log = 2
                    \once \override Stem.stencil = ##f
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup { \abjad-natural  }
                    g'!8
                    ^ \markup \center-align { \concat { +2 } }
                    \once \override RepeatTie.transparent = ##t
                    \once \override Beam.stencil = ##f
                    \once \override Flag.stencil = ##f
                    \once \override Dots.stencil = ##f
                    \once \override Tie.stencil = ##f
                    \once \override NoteHead.duration-log = 2
                    \once \override Stem.stencil = ##f
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                    gs'!8
                    ^ \markup \center-align { \concat { -6 } }
                    \once \override RepeatTie.transparent = ##t
                    \once \override Beam.stencil = ##f
                    \once \override Flag.stencil = ##f
                    \once \override Dots.stencil = ##f
                    \once \override Tie.stencil = ##f
                    \once \override NoteHead.duration-log = 2
                    \once \override Stem.stencil = ##f
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup { \abjad-natural  }
                    a'!8
                    ^ \markup \center-align { \concat { +6 } }
                    \once \override RepeatTie.transparent = ##t
                    \once \override Beam.stencil = ##f
                    \once \override Flag.stencil = ##f
                    \once \override Dots.stencil = ##f
                    \once \override Tie.stencil = ##f
                    \once \override NoteHead.duration-log = 2
                    \once \override Stem.stencil = ##f
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                    as'!8
                    ^ \markup \center-align { \concat { -2 } }
                    \once \override RepeatTie.transparent = ##t
                    \once \override Beam.stencil = ##f
                    \once \override Flag.stencil = ##f
                    \once \override Dots.stencil = ##f
                    \once \override Tie.stencil = ##f
                    \once \override NoteHead.duration-log = 2
                    \once \override Stem.stencil = ##f
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                    b'!8
                    ^ \markup \center-align { \concat { -12 } }
                }
            }
        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()
