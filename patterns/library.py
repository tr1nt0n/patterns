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
            abjad.Viola(),
            abjad.Cello(),
        ],
        groups=[
            2,
            1,
            1,
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


# markups

all_instrument_names = [
    abjad.InstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #2 \override #\'(font-name . "Bodoni72 Book") { Violin 1 }'
        ),
    ),
    abjad.InstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #2 \override #\'(font-name . "Bodoni72 Book") { Violin 2 }'
        ),
    ),
    abjad.InstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #2 \override #\'(font-name . "Bodoni72 Book") { Viola }'
        ),
    ),
    abjad.InstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #2 \override #\'(font-name . "Bodoni72 Book") { Violoncello }'
        ),
    ),
]

all_short_instrument_names = [
    abjad.ShortInstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #2 \override #\'(font-name . "Bodoni72 Book") { V1 }'
        ),
    ),
    abjad.ShortInstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #2 \override #\'(font-name . "Bodoni72 Book") { V2 }'
        ),
    ),
    abjad.ShortInstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #2 \override #\'(font-name . "Bodoni72 Book") { VA }'
        ),
    ),
    abjad.ShortInstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #2 \override #\'(font-name . "Bodoni72 Book") { VC }'
        ),
    ),
]


def write_instrument_names(score):
    for voice_name, markup in zip(voice_names, all_instrument_names):
        trinton.attach(
            voice=score[voice_name],
            leaves=[0],
            attachment=markup,
        )


def write_short_instrument_names(score):
    for voice_name, markup in zip(voice_names, all_short_instrument_names):
        trinton.attach(
            voice=score[voice_name],
            leaves=[0],
            attachment=markup,
            tag=abjad.Tag("+SCORE"),
        )
