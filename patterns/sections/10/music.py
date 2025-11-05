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
        ts.return_b_material_ts(measure_amount=3, index=9),
        ts.return_e_material_ts(measure_amount=3, index=19),
        [(5, 2), (1, 4)],
    ],
)

score = library.patterns_score(
    section_ts,
)

# first violin music

# second violin music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(rhythm.rhythm_b(stage=3, instrument="violin 2", index=5)),
    # trinton.annotate_leaves_locally(
    #     selector=abjad.select.leaves
    # ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([3, 7]),
    ),
    voice=score["violin 4 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(
        rhythm.rhythm_b(
            stage=3,
            instrument="violin 2",
            index=2,
        )
    ),
    # trinton.annotate_leaves_locally(
    #     selector=abjad.select.leaves
    # ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BeamCount(left=2, right=1),
            abjad.BeamCount(left=1, right=3),
        ],
        selector=trinton.select_leaves_by_index([1, 2]),
    ),
    voice=score["violin 4 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.PitchHandler(
        [
            "cs''''",
            "c'''",
            "fs'''",
            "f''",
            "g''",
            "e''",
            "f''",
            "d''",
            "e''",
            "ef'",
            "f'",
            "df'",
            "e'",
            "d'",
            "ef'",
            "c'",
        ]
    ),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\big-half-harmonic", site="before")],
        selector=trinton.pleaves(),
    ),
    abjad.slur,
    trinton.attachment_command(
        attachments=[
            abjad.bundle(abjad.Articulation("talon-to-punta"), r"- \tweak padding 0.5"),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    # trinton.annotate_leaves_locally(
    #     selector=trinton.logical_ties(first=True, pitched=True)
    # ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("fff"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin(">"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 2, 2, 8, 8], first=True, pitched=True, grace=False
        ),
    ),
    trinton.hooked_spanner_command(
        string="SP, 1/2 Scratch",
        selector=trinton.select_leaves_by_index(
            [0, -1],
            pitched=True,
            grace=False,
        ),
        padding=13,
        right_padding=1.5,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 2""",
            # r"- \tweak Y-extent ##f",
            # r"- \tweak Y-offset -12",
            # r"""- \tweak bound-details.left.Y #-10.5""",
            # r"""- \tweak bound-details.right.Y #-6.5""",
        ],
    ),
    voice=score["violin 4 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 6)),
    evans.RhythmHandler(evans.talea([1, 100], 8)),
    trinton.rewrite_meter_command(boundary_depth=-2),
    trinton.pitch_with_selector_command(
        pitch_list=["15/16"],
        selector=trinton.select_logical_ties_by_index([0]),
        as_ratios=True,
    ),
    trinton.pitch_with_selector_command(
        pitch_list=[["b", "e'"]],
        selector=trinton.select_logical_ties_by_index([1]),
    ),
    trinton.force_accidentals_command(selector=trinton.select_leaves_by_index([0])),
    trinton.attachment_command(
        attachments=[
            abjad.Tie(),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.artificial_harmonics(selector=trinton.pleaves(exclude=[0])),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ppp"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
    ),
    voice=score["violin 4 voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    trinton.continuous_glissando(selector=abjad.select.leaves, zero_padding=True),
    voice=score["violin 4 voice"],
)

# viola music

# cello music

# globals

# final barline

trinton.make_music(
    lambda _: trinton.select_target(_, (8,)),
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
    measures=[8],
    fermata="middle-fermata",
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
        # "violin 2 voice upper",
        "violin 4 voice",
        # "viola 2 voice upper",
        # "cello 2 voice strings",
    ],
    [
        # 1,
        1.5,
        # 1,
        # 1,
    ],
    [
        # -7,
        -9,
        # -7,
        # -7,
    ],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (1,)),
        trinton.attachment_command(
            attachments=[
                trinton.tempo_markup(
                    note_value=4,
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
    8,
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

# for measure in [1, 3, 8, 9]:
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
#
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

trinton.make_music(
    lambda _: trinton.select_target(_, (7,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Score.TimeSignature.stencil = ##f", site="before"
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

for voice_name in [
    "violin 2 voice",
    "violin 4 voice",
    "viola 2 voice",
    "cello 2 voice",
]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (7,)),
        trinton.attachment_command(
            attachments=[
                abjad.Markup(
                    r"""\markup \override #'(baseline-skip . 3.5) { \center-column { \line { \override #'(font-size . 5) " 37\" " } \line { \override #'(font-size . 10) \override #'(font-name . "ekmelos") \char ##xf6A0 } } }"""
                )
            ],
            selector=trinton.select_leaves_by_index([0]),
            direction=abjad.UP,
        ),
        voice=score[voice_name],
    )

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
    segment_path="/Users/trintonprater/scores/patterns/patterns/sections/10",
    build_path="/Users/trintonprater/scores/patterns/patterns/build",
    segment_name="10",
    includes=[
        "/Users/trintonprater/scores/patterns/patterns/build/patterns-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
