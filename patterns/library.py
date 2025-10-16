import abjad
import baca
import evans
import trinton
import itertools
import patterns

# score


def patterns_score(time_signatures):
    score = trinton.make_empty_score(
        instruments=[
            abjad.Violin(),
            abjad.Violin(),
            abjad.Violin(),
            abjad.Violin(),
            abjad.Viola(),
            abjad.Viola(),
            abjad.Cello(),
            abjad.Cello(),
        ],
        groups=[
            2,
            2,
            2,
            2,
        ],
        staff_types=[
            ["bowContactStaff", "Staff"],
            ["bowContactStaff", "Staff"],
            [
                "bowContactStaff",
                "Staff",
            ],
            [
                "bowContactStaff",
                "Staff",
            ],
        ],
        time_signatures=time_signatures,
        filler=abjad.Rest,
    )

    return score


# immutables

first_violin_root = eval("""[0, 9, 4, 3, 6, 1]""")
second_violin_root = eval("""[10, 8, 5, 7, 2, 5]""")
viola_root = eval("""[11, 7, 2, 5, 8]""")
cello_root = eval("""[1, 6, 3, 0, 4, 9, 10]""")

voice_names = eval(
    """[
        "violin 1 voice",
        "violin 2 voice",
        "viola voice",
        "cello voice",
    ]"""
)

# dictionaries

_scale_degree_to_ratio = {
    0: "1/1",
    1: "4431/4064",
    2: "1151/1016",
    3: "1185/1016",
    4: "327/254",
    5: "1403/1016",
    6: "366/254",
    7: "6227/4064",
    8: "405/254",
    9: "3483/2032",
    10: "1819/1016",
    11: "233/127",
}

_scale_degree_to_cents = {
    0: "+0",
    1: "+0",
    2: "+16",
    3: "-34",
    4: "+37",
    5: "-41",
    6: "+32",
    7: "+39",
    8: "+8",
    9: "+33",
    10: "+8",
    11: "-49",
}

# notation tools


def color_voice(selector=trinton.select_leaves_by_index([0, -1])):
    def color(argument):
        selections = selector(argument)

        start_literal = abjad.LilyPondLiteral(
            [
                r"\override Voice.NoteHead.color = #(css-color 'darkred)",
                r"\override Voice.Dots.color = #(css-color 'darkred)",
                r"\override Voice.Stem.color = #(css-color 'darkred)",
                r"\override Voice.Beam.color = #(css-color 'darkred)",
                r"\override Voice.Rest.color = #(css-color 'darkred)",
                r"\override Voice.Tie.color = #(css-color 'darkred)",
                r"\override Voice.TupletBracket.color = #(css-color 'darkred)",
                r"\override Voice.TupletNumber.color = #(css-color 'darkred)",
            ],
            site="before",
        )

        stop_literal = abjad.LilyPondLiteral(
            [
                r"\revert Voice.NoteHead.color",
                r"\revert Voice.Dots.color",
                r"\revert Voice.Stem.color",
                r"\revert Voice.Beam.color",
                r"\revert Voice.Rest.color",
                r"\revert Voice.Tie.color",
                r"\revert Voice.TupletBracket.color",
                r"\revert Voice.TupletNumber.color",
            ],
            site="absolute_after",
        )

        abjad.attach(start_literal, selections[0])
        abjad.attach(stop_literal, selections[-1])

    return color


def bow_speed_glissandi(selection_groupings, length_fractions):
    def make_glissandi(argument):
        selections = abjad.select.logical_ties(argument)

        for selection_grouping, length_fraction in zip(
            selection_groupings, itertools.cycle(length_fractions)
        ):
            begin_group = selection_grouping[0]
            end_group = selection_grouping[-1] + 1
            relevant_group = selections[begin_group:end_group]
            if len(relevant_group) > 1:
                for leaf in abjad.select.exclude(
                    abjad.select.leaves(relevant_group, pitched=True, grace=False),
                    [-1],
                ):
                    abjad.attach(abjad.Tie(), leaf)

            aftergrace_command = trinton.aftergrace_command(
                selector=trinton.select_logical_ties_by_index(
                    [-1], pitched=True, grace=False
                ),
                invisible=True,
                fraction=length_fraction,
            )

            aftergrace_command(relevant_group)
            with_grace = abjad.select.with_next_leaf(relevant_group)

            glissando_command = trinton.continuous_glissando(zero_padding=True)
            glissando_command(with_grace)

    return make_glissandi


def attach_gamelan_scale_cent_markups(scale_degrees, selector, padding=None):
    def attach_markups(argument):
        selections = selector(argument)
        tie_selector = trinton.logical_ties(first=True, pitched=True)
        selections = tie_selector(selections)

        for scale_degree, leaf in zip(itertools.cycle(scale_degrees), selections):
            markup_string = r"\markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { "
            if isinstance(scale_degree, list):
                for degree in scale_degree:
                    markup_string += rf"\line {{ {_scale_degree_to_cents[degree]} }}"
                markup_string += r"} } }"
            else:
                markup_string += (
                    rf"\line {{ {_scale_degree_to_cents[scale_degree]} }} }} }} }}"
                )

            markup = abjad.Markup(markup_string)
            if padding is not None:
                markup = abjad.bundle(markup, rf"- \tweak padding #{padding}")

            abjad.attach(markup, leaf, direction=abjad.UP)

    return attach_markups


def d_stage_3_noteheads(selector=abjad.select.chords):
    def change_noteheads(argument):
        selections = selector(argument)

        for chord in abjad.select.chords(selections):
            for leaf in abjad.select.leaves(chord):
                leaf_duration = abjad.get.duration(leaf, preprolated=True)
                if leaf_duration < abjad.Duration(
                    (7, 16)
                ) and leaf_duration > abjad.Duration((7, 32)):
                    head_shape = "harmonic-mixed"
                else:
                    head_shape = "harmonic"

                if len(chord.note_heads) == 2:
                    for head in leaf.note_heads:
                        abjad.tweak(head, rf"\tweak style #'{head_shape}")
                if len(chord.note_heads) == 3:
                    noteheads = leaf.note_heads
                    relevant_noteheads = noteheads[1:]
                    for head in relevant_noteheads:
                        abjad.tweak(head, rf"\tweak style #'{head_shape}")

    return change_noteheads


def tablature_staff(selector, reset_staff_lines=5, reset=False):
    def tablature(argument):
        selections = selector(argument)

        if reset is False:
            literal_strings = [
                r"\override Staff.Clef.stencil = #ly:text-interface::print",
                r"\override Staff.Clef.text = \string-clef",
                r"\staff-line-count 4",
                r"\override Staff.StaffSymbol.line-positions = #'(9 7 0 -9)",
                r"\override Staff.BarLine.bar-extent = #'(-4.5 . 4.5)",
                # r"\override Rest.staff-position = #0",
                r"\override Staff.Accidental.stencil = ##f",
                r"\override Staff.NoteHead.no-ledgers = ##t",
            ]

        if reset is True:
            literal_strings = [
                rf"\staff-line-count {reset_staff_lines}",
                r"\revert Staff.StaffSymbol.line-positions",
                # r"\revert Rest.staff-position",
                r"\revert Staff.Accidental.stencil",
                r"\revert Staff.NoteHead.no-ledgers",
            ]

            if reset_staff_lines != 1:
                literal_strings.append(r"\revert Staff.Clef.stencil")

        start_literal = abjad.LilyPondLiteral(literal_strings, site="before")

        abjad.attach(start_literal, selections[0])

        if reset is True:
            abjad.attach(
                abjad.LilyPondLiteral(
                    r"\override Staff.BarLine.bar-extent = #'(-2 . 2)",
                    site="absolute_after",
                ),
                selections[0],
            )

    return tablature


# markups

all_instrument_names = [
    abjad.InstrumentName(
        context="GrandStaff",
        markup=abjad.Markup(
            '\markup \\fontsize #2 \override #\'(font-name . "Bodoni72 Book") { Violin 1 }'
        ),
    ),
    abjad.InstrumentName(
        context="GrandStaff",
        markup=abjad.Markup(
            '\markup \\fontsize #2 \override #\'(font-name . "Bodoni72 Book") { Violin 2 }'
        ),
    ),
    abjad.InstrumentName(
        context="GrandStaff",
        markup=abjad.Markup(
            '\markup \\fontsize #2 \override #\'(font-name . "Bodoni72 Book") { Viola }'
        ),
    ),
    abjad.InstrumentName(
        context="GrandStaff",
        markup=abjad.Markup(
            '\markup \\fontsize #2 \override #\'(font-name . "Bodoni72 Book") { Violoncello }'
        ),
    ),
]

all_short_instrument_names = [
    abjad.ShortInstrumentName(
        context="GrandStaff",
        markup=abjad.Markup(
            '\markup \\fontsize #2 \override #\'(font-name . "Bodoni72 Book") { V1 }'
        ),
    ),
    abjad.ShortInstrumentName(
        context="GrandStaff",
        markup=abjad.Markup(
            '\markup \\fontsize #2 \override #\'(font-name . "Bodoni72 Book") { V2 }'
        ),
    ),
    abjad.ShortInstrumentName(
        context="GrandStaff",
        markup=abjad.Markup(
            '\markup \\fontsize #2 \override #\'(font-name . "Bodoni72 Book") { VA }'
        ),
    ),
    abjad.ShortInstrumentName(
        context="GrandStaff",
        markup=abjad.Markup(
            '\markup \\fontsize #2 \override #\'(font-name . "Bodoni72 Book") { VC }'
        ),
    ),
]


def write_instrument_names(score):
    for voice_name, markup in zip(
        ["violin 1 voice", "violin 3 voice", "viola 1 voice", "cello 1 voice"],
        all_instrument_names,
    ):
        trinton.attach(
            voice=score[voice_name],
            leaves=[0],
            attachment=markup,
        )


def write_short_instrument_names(score):
    for voice_name, markup in zip(
        ["violin 1 voice", "violin 3 voice", "viola 1 voice", "cello 1 voice"],
        all_short_instrument_names,
    ):
        trinton.attach(
            voice=score[voice_name],
            leaves=[0],
            attachment=markup,
            tag=abjad.Tag("+SCORE"),
        )


def tablature_trill(
    trill_pitch, selector, notehead="cross", bound_details=None, direction=abjad.DOWN
):
    def make_column_trill(argument):
        selections = selector(argument)

        trill_pitch_string = "#(lambda (grob) (grob-interpret-markup grob"
        if notehead == "cross":
            trill_pitch_string += (
                r""" #{ \markup \musicglyph #"noteheads.s2cross" #}))"""
            )
        if notehead == "harmonic":
            trill_pitch_string += (
                r""" #{ \markup \musicglyph #"noteheads.s0harmonic" #}))"""
            )

        start_trill = abjad.bundle(
            abjad.StartTrillSpan(
                pitch=abjad.NamedPitch(trill_pitch),
            ),
            r"- \tweak Y-extent ##f",
            rf"- \tweak TrillPitchHead.stencil {trill_pitch_string}",
            r"- \tweak TrillPitchHead.whiteout-style #'outline",
            r"- \tweak TrillPitchHead.whiteout 1",
            r"- \tweak TrillPitchHead.layer 5",
            r"- \tweak TrillPitchHead.no-ledgers ##t",
            r"- \tweak TrillPitchAccidental.stencil ##f",
        )

        if bound_details is not None:
            start_trill = abjad.bundle(
                start_trill,
                rf"""- \tweak bound-details.left.Y #{bound_details[0]}""",
                rf"""- \tweak bound-details.right.Y #{bound_details[-1]}""",
            )

        stop_trill = abjad.StopTrillSpan()

        abjad.attach(start_trill, selections[0], direction=direction)
        abjad.attach(stop_trill, selections[-1], direction=direction)

        leaf_duration = abjad.get.duration(selections[0], preprolated=True)
        leaf_denominator = leaf_duration.denominator

        if leaf_duration < abjad.Duration((1, 2)):
            tremolo_duration = leaf_denominator * 2
        else:
            tremolo_duration = leaf_denominator * 8

        stem_tremolo = abjad.StemTremolo(tremolo_duration)
        tremolo_literal = abjad.LilyPondLiteral(
            [
                r"\once \override StemTremolo.stencil = #ly:text-interface::print",
                r"""\once \override StemTremolo.text = \markup {
                    \fontsize #5
                    \override #'(font-name . "ekmelos")
                    \override #'(whiteout-style . "outline")
                    \override #'(whiteout . 1)
                    \raise #0.5
                    {
                        \hspace #-0.57
                        \char ##xe0f4
                    }
                }""",
            ],
            site="before",
        )

        abjad.attach(stem_tremolo, selections[0])
        abjad.attach(tremolo_literal, selections[0])

    return make_column_trill


# selectors


def bow_speed_selector(preselector=trinton.logical_ties(first=True, pitched=True)):
    def selector(argument):
        out = []
        selections = preselector(argument)

        for selection in selections:
            if abjad.get.has_indicator(selection, abjad.Glissando):
                out.append(selection)
            if isinstance(
                abjad.get.parentage(selection).parent, abjad.AfterGraceContainer
            ):
                out.append(selection)

        return out

    return selector


# beautification


def whiteout_empty_staves(score, voice_names=["violin 1 voice", "violin 3 voice"]):
    voices = [score[_] for _ in voice_names]

    reset = abjad.LilyPondLiteral(
        [
            r"\stopStaff",
            r"\once \revert Staff.StaffSymbol.line-positions",
            r"\once \override Staff.StaffSymbol.line-count = #0",
            r"\once \override Staff.BarLine.transparent = ##f",
        ],
        site="before",
    )

    reset_2 = abjad.LilyPondLiteral(
        [
            r"\once \override Staff.BarLine.transparent = ##f",
            r"\startStaff",
        ],
        site="absolute_after",
    )

    for voice in voices:
        shards = abjad.select.group_by_measure(voice)
        relevant_shards = []
        for shard in shards:
            if (
                all(isinstance(leaf, abjad.Rest) for leaf in shard)
                or all(isinstance(leaf, abjad.MultimeasureRest) for leaf in shard)
                or all(isinstance(leaf, abjad.Skip) for leaf in shard)
            ):
                relevant_shards.append(shard)

        for shard in relevant_shards:
            abjad.attach(reset, shard[0])
            abjad.attach(reset_2, shard[0])
