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


def attach_gamelan_scale_cent_markups(scale_degrees, selector):
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

            abjad.attach(markup, leaf, direction=abjad.UP)

    return attach_markups


def d_stage_3_noteheads(selector=abjad.select.chords):
    def change_noteheads(argument):
        selections = selector(argument)

        for chord in abjad.select.chords(selections):
            for leaf in abjad.select.leaves(chord):
                leaf_duration = abjad.get.duration(leaf)
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


def column_trill(pressures, selector, bound_details=None, direction=abjad.DOWN):
    def make_column_trill(argument):
        selections = selector(argument)

        _pressure_to_notehead_string = {
            "harmonic": "##xe0d9",
            "half": "##xe0e3",
            "full": "##xe0a4",
            "unstick": "##xe0be",
        }

        markup_string = r"""\markup \override #'(font-name . "ekmelos") \concat { \general-align #Y #-0.5 \general-align #X #0.25 \override #'(baseline-skip . 0) { \center-column { """
        counter = 1
        for pressure in pressures:
            if pressure == "half":
                fontsize = 8
            else:
                fontsize = 6
            if counter == len(pressures):
                markup_string += rf"""\fontsize #{fontsize} \line {{ \char {_pressure_to_notehead_string[pressure]} }}"""
            else:
                markup_string += rf"""\line {{ \concat {{ \fontsize #6 {{ ( }} \fontsize #{fontsize} {{ \char {_pressure_to_notehead_string[pressure]} }} \fontsize #6 {{ ) }} }} }}"""
            counter += 1

        markup_string += r"} } }"

        start_trill = abjad.bundle(
            abjad.StartTrillSpan(),
            rf"""- \tweak bound-details.left.text {markup_string}""",
        )

        if bound_details is not None:
            start_trill = abjad.bundle(
                start_trill,
                r"- \tweak Y-extent ##f",
                rf"""- \tweak bound-details.left.Y #{bound_details[0]}""",
                rf"""- \tweak bound-details.right.Y #{bound_details[-1]}""",
            )

        stop_trill = abjad.StopTrillSpan()

        abjad.attach(start_trill, selections[0], direction=direction)
        abjad.attach(stop_trill, selections[-1], direction=direction)

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
