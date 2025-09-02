import abjad
import baca
import evans
import trinton
import itertools
from patterns import library
from patterns import ts

# score

section_ts = abjad.sequence.flatten(
    [
        ts.return_b_material_ts(measure_amount=2, index=0),
        ts.return_d_material_ts(measure_amount=1, index=0),
        [(1, 4)],
    ],
)

score = library.patterns_score(
    section_ts,
)

# first violin music

# second violin music

# viola music

# cello music

# globals

# final barline

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    trinton.attachment_command(
        attachments=[
            abjad.BarLine("||", site="after"),
        ],
        selector=trinton.select_leaves_by_index([-1]),
    ),
    voice=score["Global Context"],
)

# fermate

trinton.fermata_measures(
    score=score,
    measures=[4],
    fermata="middle-fermata",
    # voice_names=library.all_voice_names,
    font_size=10,
    clef_whitespace=True,
    blank=True,
    last_measure=False,
    # padding=-5,
    # extra_offset=2.5,
    tag=abjad.Tag("+SCORE"),
)

# tempi

for voice_name, padding in zip(library.voice_names, [2, 2, 2, 2]):
    trinton.make_music(
        lambda _: trinton.select_target(_, (1,)),
        trinton.attachment_command(
            attachments=[
                trinton.return_metronome_markup(
                    note_value="eighth",
                    tempo=60,
                    padding=padding,
                    site="after",
                    hspace=0,
                    string_only=False,
                )
            ],
            selector=trinton.select_leaves_by_index([0]),
            direction=abjad.UP,
            tag=abjad.Tag("+SCORE"),
        ),
        voice=score[voice_name],
    )

for voice_name, padding in zip(library.voice_names, [5, 5, 5, 5]):
    trinton.make_music(
        lambda _: trinton.select_target(_, (2, 3)),
        trinton.spanner_command(
            strings=[
                r"""\markup \override #'(font-name . "Bodoni72 Book Italic") { \fontsize #3 { "accel. ( to " } \fontsize #-0.5 { \note {8} #1.5 } \fontsize #3 { "= 160 )" } }""",
                trinton.return_metronome_markup(
                    note_value="eighth",
                    tempo=160,
                    padding=0,
                    site="after",
                    hspace=None,
                    string_only=True,
                ),
            ],
            selector=trinton.select_leaves_by_index([0, -1]),
            style="solid-line-with-arrow",
            padding=padding,
            tweaks=None,
            right_padding=0,
            direction=None,
            full_string=True,
            command="",
        ),
        voice=score[voice_name],
    )


# trinton.make_music(
#     lambda _: trinton.select_target(_, (1,)),
#     trinton.attachment_command(
#         attachments=[
#             trinton.return_metronome_markup(
#                 note_value="dotted quarter",
#                 tempo=48,
#                 padding=15,
#                 site="after",
#                 hspace=0.5,
#                 string_only=False,
#             )
#         ],
#         selector=trinton.select_leaves_by_index([0]),
#         direction=abjad.UP,
#         tag=abjad.Tag("+SCORE"),
#     ),
#     trinton.attachment_command(
#         attachments=[
#             trinton.return_metronome_markup(
#                 note_value="dotted quarter",
#                 tempo=48,
#                 padding=5.5,
#                 site="after",
#                 hspace=0,
#                 string_only=False,
#             )
#         ],
#         selector=trinton.select_leaves_by_index([0]),
#         direction=abjad.UP,
#         tag=abjad.Tag("+PARTS"),
#     ),
#     voice=score["Global Context"],
# )

# breaking

# for measure in [6, 12]:
#     trinton.make_music(
#         lambda _: trinton.select_target(_, (measure,)),
#         trinton.attachment_command(
#             attachments=[abjad.LilyPondLiteral(r"\pageBreak", site="absolute_after")],
#             selector=trinton.select_leaves_by_index([0]),
#             tag=abjad.Tag("+SCORE"),
#         ),
#         voice=score["Global Context"],
#     )
#
# for measure in [
#     1,
#     2,
#     4,
#     5,
#     7,
#     8,
#     10,
#     11,
# ]:
#     trinton.make_music(
#         lambda _: trinton.select_target(_, (measure,)),
#         trinton.attachment_command(
#             attachments=[abjad.LilyPondLiteral(r"\noBreak", site="absolute_after")],
#             selector=trinton.select_leaves_by_index([0]),
#             tag=abjad.Tag("+SCORE"),
#         ),
#         voice=score["Global Context"],
#     )
#
# for measure in [
#     3,
#     9,
# ]:
#     trinton.make_music(
#         lambda _: trinton.select_target(_, (measure,)),
#         trinton.attachment_command(
#             attachments=[abjad.LilyPondLiteral(r"\break", site="absolute_after")],
#             selector=trinton.select_leaves_by_index([0]),
#             tag=abjad.Tag("+SCORE"),
#         ),
#         voice=score["Global Context"],
#     )

# spacing

# trinton.make_music(
#     lambda _: trinton.select_target(_, (4,)),
#     trinton.attachment_command(
#         attachments=[
#             abjad.LilyPondLiteral(
#                 r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (-7 14 19 14.5 2 15 18)))",
#                 site="absolute_before",
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0]),
#         tag=abjad.Tag("+SCORE"),
#     ),
#     voice=score["Global Context"],
# )

# instrument names

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

# beautification

trinton.remove_redundant_time_signatures(score=score)
# library.clean_time_signatures(score=score)

# extract parts

trinton.extract_parts(score=score)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/patterns/patterns/sections/01",
    build_path="/Users/trintonprater/scores/patterns/patterns/build",
    segment_name="01",
    includes=[
        "/Users/trintonprater/scores/patterns/patterns/build/patterns-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
