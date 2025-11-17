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
        ts.return_d_material_ts(measure_amount=8, index=21),
        ts.return_e_material_ts(measure_amount=7, index=22),
        [(1, 4)],
    ],
)

score = library.patterns_score(
    section_ts,
)

# first violin music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 15)),
    evans.RhythmHandler(rhythm.rhythm_e(lower_voice=False, index=0, shorten=True)),
    trinton.change_lines(
        lines=0,
        selector=trinton.select_leaves_by_index([0], pitched=True),
        clef="percussion",
        invisible_barlines=False,
    ),
    trinton.invisible_accidentals_command(selector=trinton.pleaves()),
    # trinton.change_notehead_command(notehead="cross", selector=trinton.pleaves()),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\override Staff.Clef.stencil = ##f",
                ],
                site="before",
            )
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(rhythm.rhythm_e(index=0, lower_voice=True, shorten=False)),
        direction=abjad.DOWN,
        voice_name="violin 1 lower voice",
        preprocessor=trinton.fuse_eighths_preprocessor(
            (
                6,
                4,
                4,
                2,
                4,
                3,
                3,
                2,
                4,
                2,
                4,
                2,
                2,
                4,
                4,
                6,
                4,
                4,
                6,
                6,
                4,
                8,
                8,
                12,
                8,
                12,
                12,
                8,
            )
        ),
        temp_name="upper",
    ),
    voice=score["violin 2 voice"],
    preprocessor=trinton.fuse_eighths_preprocessor(
        (
            6,
            4,
            4,
            2,
            4,
            3,
            3,
            2,
            4,
            2,
            4,
            2,
            2,
            4,
            4,
            6,
            4,
            4,
            6,
            6,
            4,
            8,
            8,
            12,
            8,
            12,
            12,
            8,
        )
    ),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 15)),
    trinton.force_rest(
        selector=trinton.select_logical_ties_by_index(
            [
                57,
                72,
                74,
                76,
                90,
                92,
                94,
                116,
            ],
            pitched=True,
            grace=False,
        )
    ),
    trinton.fuse_tuplet_rests_command(),
    trinton.change_notehead_command(notehead="cross", selector=trinton.pleaves()),
    library.color_voice(),
    voice=score["violin 2 voice upper"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (13,)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    voice=score["violin 2 voice upper"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 15)),
    # trinton.annotate_leaves_locally(
    #     selector=abjad.select.leaves,
    # ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [
                0,
                11,
                12,
                21,
                22,
                29,
                30,
                35,
                36,
                47,
                48,
                57,
                58,
                63,
                64,
                71,
                72,
                83,
                84,
                91,
                92,
                101,
                102,
                107,
                108,
                117,
                118,
                125,
                126,
                131,
                132,
                141,
                142,
                148,
                149,
                154,
                155,
                164,
                165,
                172,
                173,
                179,
                186,
                193,
                194,
                203,
                204,
                213,
                214,
                217,
                220,
                223,
            ]
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Articulation("staccato"),
                r"""- \tweak color #(css-color 'darkred)""",
            )
        ],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
        direction=abjad.DOWN,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Articulation(">"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
        ],
        selector=trinton.patterned_tie_index_selector(
            [3, 5, 6, 9, 12], 15, first=True, pitched=True, grace=False
        ),
        direction=abjad.DOWN,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = 7", site="before"
            )
        ],
        selector=abjad.select.rests,
    ),
    trinton.manual_beam_positions(positions=(11, 11)),
    trinton.hooked_spanner_command(
        string="CLB OB",
        selector=trinton.select_leaves_by_index([0, -1], grace=False),
        padding=12.75,
        # direction="down",
        right_padding=3,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 1""",
            r"""- \tweak color #(css-color 'darkred)""",
            # r"- \tweak Y-extent ##f",
            # r"- \tweak Y-offset -12",
            # r"""- \tweak bound-details.left.Y #-10.5""",
            # r"""- \tweak bound-details.right.Y #-6.5""",
        ],
    ),
    voice=score["violin 2 voice upper"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 15)),
    trinton.force_rest(
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                5,
                9,
                12,
                14,
                16,
                18,
                23,
                26,
                30,
                33,
                36,
                38,
                40,
                45,
                48,
                50,
                52,
                54,
                58,
                61,
                66,
                75,
                80,
                84,
                87,
                93,
                97,
                102,
                103,
                104,
                105,
                106,
                107,
                113,
                117,
                120,
            ],
            pitched=True,
            grace=False,
        )
    ),
    rmakers.rewrite_rest_filled,
    rmakers.trivialize,
    rmakers.extract_trivial,
    # trinton.annotate_leaves_locally(
    #     # selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    #     selector=abjad.select.leaves,
    #     direction=abjad.DOWN
    # ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [
                0,
                4,
                5,
                8,
                12,
                17,
                18,
                22,
                23,
                25,
                26,
                29,
                30,
                35,
                36,
                39,
                40,
                44,
                48,
                53,
                54,
                57,
                61,
                65,
                66,
                71,
                75,
                79,
                80,
                83,
                84,
                89,
            ]
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = -7", site="before"
            )
        ],
        selector=abjad.select.rests,
    ),
    trinton.manual_beam_positions(positions=(-8, -8)),
    library.color_voice(),
    trinton.hooked_spanner_command(
        string="CLT DP",
        selector=trinton.select_leaves_by_index([0, -1], grace=False),
        padding=12,
        direction="down",
        right_padding=3,
        full_string=False,
        style="dashed-line-with-up-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 1""",
            r"""- \tweak color #(css-color 'darkred)""",
            # r"- \tweak Y-extent ##f",
            # r"- \tweak Y-offset -12",
            # r"""- \tweak bound-details.left.Y #-10.5""",
            # r"""- \tweak bound-details.right.Y #-6.5""",
        ],
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(
                    r"""\markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #1 { "Interruptive polyphony: Lower voice stops, and does not resume until next notated attack, when interrupted by upper voice." }"""
                ),
                r"- \tweak padding 13.5",
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.DOWN,
    ),
    voice=score["violin 1 lower voice"],
)

# second violin music

# trinton.make_music(
#     lambda _: trinton.select_target(_, (1, 5)),
#     evans.RhythmHandler(rhythm.rhythm_e(lower_voice=False, index=10)),
#     trinton.IntermittentVoiceHandler(
#         evans.RhythmHandler(rhythm.rhythm_e(index=10, lower_voice=True)),
#         direction=abjad.DOWN,
#         voice_name="violin 2 lower voice",
#         preprocessor=trinton.fuse_quarters_preprocessor((7, 3, 4, 3, 6)),
#         temp_name="upper",
#     ),
#     voice=score["violin 4 voice"],
# )
#
# trinton.make_music(
#     lambda _: trinton.select_target(_, (1, 5)),
#     pitch.pitch_e(instrument="violin 2", index=0, retrograde=True),
#     trinton.rewrite_meter_command(boundary_depth=-1),
#     trinton.octavation(octave=1, selector=trinton.pleaves()),
#     trinton.octavation(
#         octave=1,
#         selector=trinton.select_logical_ties_by_index(
#             [
#                 6,
#             ],
#             pitched=True,
#             grace=False,
#         ),
#     ),
#     trinton.octavation(
#         octave=-1,
#         selector=trinton.select_logical_ties_by_index(
#             [1, 13, 14, 15, 19], pitched=True, grace=False
#         ),
#     ),
#     # trinton.annotate_leaves_locally(
#     #     # selector=trinton.logical_ties(first=True, pitched=True, grace=False),
#     #     selector=abjad.select.leaves,
#     #     direction=abjad.UP
#     # ),
#     trinton.linear_attachment_command(
#         attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
#         selector=trinton.select_leaves_by_index(
#             [
#                 0,
#                 4,
#                 8,
#                 13,
#                 14,
#                 19,
#             ],
#             pitched=True,
#         ),
#     ),
#     trinton.linear_attachment_command(
#         attachments=itertools.cycle(
#             [
#                 abjad.bundle(
#                     abjad.Articulation("talon-to-punta"), r"- \tweak padding 1"
#                 ),
#                 abjad.bundle(
#                     abjad.Articulation("punta-to-talon"), r"- \tweak padding 1"
#                 ),
#             ]
#         ),
#         selector=trinton.select_leaves_by_index([0, 5, 8, 14, 20], pitched=True),
#         direction=abjad.UP,
#     ),
#     trinton.attachment_command(
#         attachments=[
#             abjad.LilyPondLiteral(
#                 r"\once \override TupletBracket.padding = #3", site="before"
#             )
#         ],
#         selector=trinton.select_tuplets_by_index([0]),
#     ),
#     voice=score["violin 4 voice upper"],
#     beam_meter=True,
# )
#
# trinton.make_music(
#     lambda _: trinton.select_target(_, (1, 5)),
#     pitch.pitch_e(instrument="violin 2", index=0, retrograde=True),
#     trinton.octavation(
#         octave=1,
#         selector=trinton.select_logical_ties_by_index(
#             [1, 2, 4, 5, 6, 8], pitched=True, grace=False
#         ),
#     ),
#     # trinton.annotate_leaves_locally(
#     #     # selector=trinton.logical_ties(first=True, pitched=True, grace=False),
#     #     selector=abjad.select.leaves,
#     #     direction=abjad.DOWN
#     # ),
#     trinton.linear_attachment_command(
#         attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
#         selector=trinton.select_leaves_by_index([3, 8, 16, 20], pitched=True),
#     ),
#     trinton.hooked_spanner_command(
#         string=r"CLT, ST poss.",
#         selector=trinton.select_leaves_by_index(
#             [0, -1],
#             pitched=True,
#         ),
#         padding=13,
#         right_padding=3,
#         full_string=False,
#         style="dashed-line-with-hook",
#         hspace=None,
#         command="One",
#         tag=None,
#         tweaks=[
#             r"""- \tweak font-name "Bodoni72 Book" """,
#             r"""- \tweak font-size 1""",
#         ],
#     ),
#     trinton.attachment_command(
#         attachments=[
#             abjad.bundle(
#                 abjad.Markup(
#                     r"""\markup \override #'(font-name . "Bodoni72 Book Italic") { "quasi dolce" }"""
#                 ),
#                 r"- \tweak font-size 1",
#             )
#         ],
#         selector=trinton.select_leaves_by_index([0]),
#         direction=abjad.DOWN,
#     ),
#     voice=score["violin 2 lower voice"],
#     beam_meter=True,
# )

# viola music

# cello music

# globals

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            trinton.boxed_markup(
                string="Insect Language",
                tweaks=[
                    r"- \tweak padding 10",
                    r"""- \tweak color #(css-color 'darkred)""",
                ],
                column="\center-column",
                font_name="Bodoni72 Book Italic",
                fontsize=4,
                string_only=False,
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

# final barline

trinton.make_music(
    lambda _: trinton.select_target(_, (16,)),
    trinton.attachment_command(
        attachments=[
            abjad.BarLine("|.", site="after"),
        ],
        selector=trinton.select_leaves_by_index([-1]),
    ),
    voice=score["Global Context"],
)

# fermate

trinton.fermata_measures(
    score=score,
    measures=[16],
    fermata="extremely-long-fermata",
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
    [
        "violin 2 voice upper",
        # "violin 4 voice upper",
        "viola 2 voice",
        "cello 2 voice",
    ],
    [
        3,
        # 2,
        2,
        2,
    ],
    [
        -9,
        -7,
        -7,
        -7,
    ],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (1,)),
        trinton.attachment_command(
            attachments=[
                trinton.tempo_markup(
                    note_value=16,
                    tempo=83,
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

# breaking

for measure in [
    16,
]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\pageBreak", site="absolute_after")],
            selector=trinton.select_leaves_by_index([0]),
            tag=abjad.Tag("+SCORE"),
        ),
        voice=score["Global Context"],
    )

for measure in [15]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\noBreak", site="absolute_after")],
            selector=trinton.select_leaves_by_index([0]),
            tag=abjad.Tag("+SCORE"),
        ),
        voice=score["Global Context"],
    )

# for measure in [2, 4, 5, 6, 7]:
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
#                 r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (12 14 20 30)))",
#                 site="absolute_before",
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0]),
#         tag=abjad.Tag("+SCORE"),
#     ),
#     voice=score["Global Context"],
# )


# trinton.make_music(
#     lambda _: trinton.select_target(_, (8, 10)),
#     trinton.attachment_command(
#         attachments=[
#             abjad.LilyPondLiteral(
#                 [
#                     r"\magnifyStaff #7/8",
#                     r"\once \override Staff.Clef.Y-extent = ##f",
#                     rf"\once \override Staff.Clef.Y-offset = #-2",
#                     r"\once \override Staff.Clef.X-extent = ##f",
#                     r"\once \override Staff.Clef.extra-offset = #'(4 . 0)",
#                 ],
#                 site="absolute_after",
#             )
#         ],
#         selector=trinton.select_leaves_by_index([0]),
#     ),
#     trinton.attachment_command(
#         attachments=[
#             abjad.LilyPondLiteral([r"\magnifyStaff #1"], site="absolute_after")
#         ],
#         selector=trinton.select_leaves_by_index([-1]),
#     ),
#     voice=score["cello 1 voice"],
# )

# trinton.make_music(
#     lambda _: trinton.select_target(_, (8,)),
#     trinton.attachment_command(
#         attachments=[abjad.LilyPondLiteral([r"\magnifyStaff #7/8"], site="before")],
#         selector=trinton.select_leaves_by_index([0]),
#     ),
#     voice=score["cello 2 voice temp"],
# )

# trinton.make_music(
#     lambda _: trinton.select_target(_, (10,)),
#     trinton.attachment_command(
#         attachments=[
#             abjad.LilyPondLiteral([r"\magnifyStaff #1"], site="absolute_after")
#         ],
#         selector=trinton.select_leaves_by_index([-1], grace=False),
#     ),
#     voice=score["cello lower voice"],
# )
#
# for voice_name in ["violin 1 bow voice", "violin 4 voice", "viola 2 voice temp 2"]:
#     trinton.make_music(
#         lambda _: trinton.select_target(_, (8, 10)),
#         trinton.attachment_command(
#             attachments=[abjad.LilyPondLiteral([r"\magnifyStaff #7/8"], site="before")],
#             selector=trinton.select_leaves_by_index([0]),
#         ),
#         trinton.attachment_command(
#             attachments=[
#                 abjad.LilyPondLiteral([r"\magnifyStaff #1"], site="absolute_after")
#             ],
#             selector=trinton.select_leaves_by_index([-1]),
#         ),
#         voice=score[voice_name],
#     )

# instrument names

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

# beautification

trinton.remove_redundant_time_signatures(score=score)
# library.whiteout_empty_staves(
#     score=score, voice_names=["viola 1 voice", "cello 1 voice"]
# )

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
    segment_path="/Users/trintonprater/scores/patterns/patterns/sections/12",
    build_path="/Users/trintonprater/scores/patterns/patterns/build",
    segment_name="12",
    includes=[
        "/Users/trintonprater/scores/patterns/patterns/build/patterns-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
