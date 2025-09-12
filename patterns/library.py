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

# notation tools


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
