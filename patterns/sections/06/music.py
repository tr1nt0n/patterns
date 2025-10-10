import abjad
from abjadext import rmakers
import baca
import evans
import trinton
import itertools
from patterns import library
from patterns import pitch
from patterns import rhythm
from patterns import ts

# score

section_ts = abjad.sequence.flatten(
    [
        ts.return_c_material_ts(measure_amount=6, index=9),
        [(5, 4) for _ in range(0, 6)],
        [(1, 4)],
    ],
)

score = library.patterns_score(
    section_ts,
)

# first violin music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 12)),
    evans.RhythmHandler(evans.talea([-1000], 8)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    # trinton.linear_attachment_command(
    #     attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
    #     selector=trinton.select_leaves_by_index(
    #         [
    #             1,
    #             4,
    #             5,
    #             6,
    #         ]
    #     ),
    # ),
    library.tablature_staff(
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = #-7", site="before"
            )
        ],
        selector=abjad.select.rests,
    ),
    # trinton.attachment_command(
    #     attachments=[
    #         abjad.Markup(
    #             r"""\markup \fontsize #2 { \hspace #-10.5 { "Fng. Perc.:" } }"""
    #         )
    #     ],
    #     selector=trinton.select_leaves_by_index([1]),
    # ),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(
            evans.talea(
                [
                    26,
                    24,
                    24,
                    20,
                    40,
                    20,
                    1,
                    -1,
                    1,
                    -2,
                    1,
                    -4,
                    1,
                    -6,
                    1,
                    -8,
                    1,
                    -10,
                    1,
                    -100,
                ],
                16,
            )
        ),
        direction=abjad.UP,
        voice_name="violin 1 bow voice",
    ),
    voice=score["violin 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 12)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler(
        [
            ["a''"],
            ["e''"],
            ["g''"],
            ["c''"],
            ["e''"],
            ["a'"],
            ["e'"],
            ["c'"],
            ["a"],
            ["a"],
            ["a"],
            ["a"],
            ["a"],
            ["a"],
        ]
    ),
    # trinton.annotate_leaves_locally(
    #     selector=abjad.select.leaves,
    #     direction=abjad.UP
    # ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [15, 18, 19, 21, 22, 24, 26, 28, 30, 32, 35, 37]
        ),
    ),
    trinton.manual_beam_positions(
        positions=(7, 7),
        selector=trinton.select_leaves_by_index(
            [15, 18, 19, 21, 22, 24, 26, 28, 30, 32, 35, 37]
        ),
    ),
    # trinton.attachment_command(
    #     attachments=[
    #         abjad.Markup(
    #             r"""\markup {
    #                 \hspace #-2 {
    #                     ( \note {2} #2 )
    #                 }
    #             }"""
    #         )
    #     ],
    #     selector=trinton.select_leaves_by_index([1], pitched=True),
    #     direction=abjad.UP,
    # ),
    trinton.change_notehead_command(
        notehead="cluster",
        selector=abjad.select.chords,
    ),
    trinton.continuous_glissando(
        zero_padding=True,
        selector=trinton.pleaves(exclude=[-6, -5, -4, -3, -2, -1]),
        tweaks=[abjad.Tweak(r"- \tweak color #(css-color 'darkred)")],
    ),
    trinton.noteheads_only(selector=trinton.pleaves(grace=True)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Voice.Tie.stencil = ##f", site="before"
            )
        ],
        selector=trinton.pleaves(),
    ),
    # trinton.attachment_command(
    #     attachments=[
    #         abjad.bundle(
    #             abjad.Articulation("staccato"),
    #             r"""- \tweak color #(css-color 'darkred)""",
    #         ),
    #     ],
    #     selector=trinton.select_leaves_by_index([0], pitched=True),
    # ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Articulation("punta-to-talon"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
            abjad.bundle(
                abjad.StartSlur(),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
            abjad.StopSlur(),
            abjad.bundle(
                abjad.Articulation(">"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -7, -7], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Articulation("staccato"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
        ],
        selector=trinton.durational_selector(
            durations=[abjad.Duration((1, 16))],
            preselector=trinton.logical_ties(pitched=True, grace=False, exclude=[0]),
            first=True,
        ),
        direction=abjad.DOWN,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = #7", site="before"
            )
        ],
        selector=abjad.select.rests,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(r"""\markup \fontsize #2 { \hspace #-5.5 { "Bow:" } }"""),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=r"""III + IV""",
        selector=trinton.select_leaves_by_index([0, -1]),
        padding=12.5,
        direction=None,
        right_padding=3,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="One",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 2""",
            r"""- \tweak color #(css-color 'darkred)""",
            # r"""- \tweak bound-details.left.Y #5.5""",
            # r"""- \tweak bound-details.right.Y #7""",
        ],
    ),
    library.color_voice(),
    voice=score["violin 1 bow voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (13,)),
    library.tablature_staff(
        selector=trinton.select_leaves_by_index([0]),
        reset=True,
        reset_staff_lines=5,
    ),
    voice=score["violin 2 voice"],
)

# globals

# final barline

trinton.make_music(
    lambda _: trinton.select_target(_, (13,)),
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
    measures=[13],
    fermata="very-long-fermata",
    voice_names=["violin 2 voice", "violin 4 voice", "viola 2 voice", "cello 2 voice"],
    font_size=10,
    clef_whitespace=True,
    blank=True,
    last_measure=False,
    # padding=-5,
    # extra_offset=2.5,
    tag=abjad.Tag("+SCORE"),
)

# tempi

for voice_name, padding, hspace in zip(
    ["violin 2 voice temp", "violin 4 voice", "viola 2 voice", "cello 2 voice"],
    [9.5, 3, 3, 1],
    [0, -7, -7, -7],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (1,)),
        trinton.attachment_command(
            attachments=[
                trinton.tempo_markup(
                    note_value=4,
                    tempo=99,
                    padding=padding,
                    note_head_fontsize=0.5,
                    stem_length=1.5,
                    text_fontsize=4,
                    dotted=False,
                    fraction=None,
                    tempo_change=None,
                    site="after",
                    hspace=hspace,
                    string_only=False,
                ),
            ],
            selector=trinton.select_leaves_by_index([0]),
            direction=abjad.UP,
            tag=abjad.Tag("+SCORE"),
        ),
        voice=score[voice_name],
    )

for voice_name, padding, end_anchor in zip(
    [
        "violin 2 voice temp",
        "violin 4 voice",
        "viola 2 voice",
        "cello 2 voice",
    ],
    [
        10,
        5,
        5,
        1,
    ],
    [-2, -1, -1, -2],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (5, 7)),
        trinton.spanner_command(
            strings=[
                trinton.tempo_markup(
                    note_value=4,
                    tempo=83,
                    padding=0,
                    note_head_fontsize=-0.5,
                    stem_length=1.5,
                    text_fontsize=3,
                    dotted=False,
                    fraction=None,
                    tempo_change="rit.",
                    site="after",
                    hspace=0,
                    string_only=True,
                ),
                trinton.tempo_markup(
                    note_value=4,
                    tempo=83,
                    padding=0,
                    note_head_fontsize=0.5,
                    stem_length=1.5,
                    text_fontsize=4,
                    dotted=False,
                    fraction=None,
                    tempo_change=None,
                    site="after",
                    hspace=0,
                    string_only=True,
                ),
            ],
            selector=trinton.select_leaves_by_index([0, end_anchor]),
            style="solid-line-with-arrow",
            padding=padding,
            tweaks=None,
            right_padding=0,
            direction=None,
            full_string=True,
            command="Three",
        ),
        voice=score[voice_name],
    )

# for voice_name, padding, end_anchor in zip(
#     [
#         "violin 2 voice temp",
#         "violin 4 voice",
#         "viola 2 voice",
#         "cello 2 voice",
#     ],
#     [
#         10,
#         5,
#         5,
#         1,
#     ],
#     [-2, -1, -1, -2],
# ):
#     trinton.make_music(
#         lambda _: trinton.select_target(_, (8, 9)),
#         trinton.spanner_command(
#             strings=[
#                 trinton.tempo_markup(
#                     note_value=8,
#                     tempo=60,
#                     padding=0,
#                     note_head_fontsize=-0.5,
#                     stem_length=1.5,
#                     text_fontsize=3,
#                     dotted=False,
#                     fraction=None,
#                     tempo_change="rit.",
#                     site="after",
#                     hspace=0,
#                     string_only=True,
#                 ),
#                 trinton.tempo_markup(
#                     note_value=8,
#                     tempo=60,
#                     padding=0,
#                     note_head_fontsize=0.5,
#                     stem_length=1.5,
#                     text_fontsize=4,
#                     dotted=False,
#                     fraction=None,
#                     tempo_change=None,
#                     site="after",
#                     hspace=0,
#                     string_only=True,
#                 ),
#             ],
#             selector=trinton.select_leaves_by_index([0, end_anchor]),
#             style="solid-line-with-arrow",
#             padding=padding,
#             tweaks=None,
#             right_padding=0,
#             direction=None,
#             full_string=True,
#             command="Three",
#         ),
#         voice=score[voice_name],
#     )

# breaking

# for measure in [
#     7,
# ]:
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
# for measure in [4, 6]:
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
# for measure in [1, 2, 3, 5]:
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
#     lambda _: trinton.select_target(_, (1,)),
#     trinton.attachment_command(
#         attachments=[
#             abjad.LilyPondLiteral(
#                 r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (15 16.5 16.5 36)))",
#                 site="absolute_before",
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0]),
#         tag=abjad.Tag("+SCORE"),
#     ),
#     voice=score["Global Context"],
# )

# trinton.make_music(
#     lambda _: trinton.select_target(_, (2, 3)),
#     trinton.linear_attachment_command(
#         attachments=[
#             abjad.LilyPondLiteral(
#                 r"\set Score.proportionalNotationDuration = #(ly:make-moment 1/30)",
#                 site="before",
#             ),
#             abjad.LilyPondLiteral(
#                 r"\set Score.proportionalNotationDuration = #(ly:make-moment 1/20)",
#                 site="before",
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0, 1,]),
#         tag=abjad.Tag("+SCORE"),
#     ),
#     voice=score["Global Context"],
# )

# instrument names

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

# beautification

trinton.remove_redundant_time_signatures(score=score)
library.whiteout_empty_staves(score=score)

# for measure in [1, 3]:
#     trinton.make_music(
#         lambda _: trinton.select_target(_, (measure,)),
#         trinton.attachment_command(
#             attachments=[
#                 abjad.LilyPondLiteral(
#                     r"\once \override BarNumber.Y-offset = #-12", site="before"
#                 )
#             ],
#             selector=trinton.select_leaves_by_index([0]),
#         ),
#         voice=score["Global Context"],
#     )
#
# trinton.make_music(
#     lambda _: trinton.select_target(_, (11,)),
#     trinton.attachment_command(
#         attachments=[
#             abjad.LilyPondLiteral(
#                 r"\once \override BarNumber.Y-offset = #5", site="before"
#             )
#         ],
#         selector=trinton.select_leaves_by_index([0]),
#     ),
#     voice=score["Global Context"],
# )

# extract parts

trinton.extract_parts(score=score)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/patterns/patterns/sections/06",
    build_path="/Users/trintonprater/scores/patterns/patterns/build",
    segment_name="06",
    includes=[
        "/Users/trintonprater/scores/patterns/patterns/build/patterns-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
