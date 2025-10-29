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
        ts.return_c_material_ts(measure_amount=4, index=23),
        ts.return_d_material_ts(measure_amount=5, index=12),
        [(1, 4)],
    ],
)

score = library.patterns_score(
    section_ts,
)

# first violin music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 5)),
    evans.RhythmHandler(
        rhythm.rhythm_c(stage=4, instrument="violin 1", index=1),
    ),
    trinton.rewrite_meter_command(boundary_depth=-1),
    # trinton.annotate_leaves_locally(
    #     selector=abjad.select.leaves
    # ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [1, 3, 5, 6, 7, 8, 12, 13, 15, 16, 17, 18, 22, 23, 25, 26, 27, 28, 30, 32]
        ),
    ),
    voice=score["violin 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.PitchHandler([["3/2", "15/16"]], as_ratios=True),
    trinton.force_accidentals_command(
        selector=trinton.logical_ties(pitched=True, first=True)
    ),
    voice=score["violin 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 3)),
    trinton.aftergrace_command(
        slash=True,
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
    ),
    evans.PitchHandler([["1/1", "27/16"]], as_ratios=True),
    trinton.force_accidentals_command(
        selector=trinton.logical_ties(pitched=True, first=True)
    ),
    voice=score["violin 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    trinton.aftergrace_command(
        slash=True,
        selector=trinton.select_logical_ties_by_index([0], pitched=True, grace=False),
    ),
    evans.PitchHandler([["27/16", "5/2"]], as_ratios=True),
    trinton.force_accidentals_command(
        selector=trinton.logical_ties(pitched=True, first=True)
    ),
    voice=score["violin 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    trinton.aftergrace_command(
        slash=True,
        selector=trinton.select_logical_ties_by_index([1], pitched=True, grace=False),
    ),
    evans.PitchHandler([["5/2", "1215/256"]], as_ratios=True),
    trinton.force_accidentals_command(
        selector=trinton.logical_ties(pitched=True, first=True)
    ),
    voice=score["violin 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 5)),
    # trinton.annotate_leaves_locally(
    #     # selector=abjad.select.leaves
    #     selector=trinton.pleaves()
    # ),
    trinton.continuous_glissando(
        zero_padding=True,
        selector=trinton.select_leaves_by_index(
            [6, 7, 8, 9, 10, 11, 16, 17], pitched=True
        ),
        tweaks=[
            abjad.Tweak(r"- \tweak thickness #1.5"),
            abjad.Tweak(r"- \tweak bound-details.right.arrow ##t"),
        ],
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index([6, 8, 9, 11, 16, 17], pitched=True),
    ),
    trinton.change_notehead_command(
        notehead="harmonic",
        selector=trinton.select_leaves_by_index([0, 1, 3, 8, 9, 16], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\grace-half-harmonic", site="before")],
        selector=trinton.select_leaves_by_index([17], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\big-half-harmonic", site="before")],
        selector=trinton.select_leaves_by_index([18, 19, 20, 21], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin("o<"), abjad.Dynamic("f")],
        selector=trinton.select_leaves_by_index([0, 17], pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=r"""CLT, SP""",
        selector=trinton.select_logical_ties_by_index(
            [0, 3],
            first=True,
            pitched=True,
        ),
        padding=12,
        right_padding=-0.5,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="Two",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 0""",
            r"""- \tweak bound-details.left.Y #-1""",
            r"""- \tweak bound-details.right.Y #3.25""",
        ],
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup { "" }""",
            r"""\markup { \override #'(baseline-skip . 2) \column { \line { "1/2 CLT, MSP" } \line { "(hair on bridge, wood on string)" } } }""",
        ],
        selector=trinton.select_logical_ties_by_index(
            [3, 5, 5, 10], pitched=True, first=True
        ),
        style="solid-line-with-arrow",
        padding=15,
        right_padding=0,
        direction=None,
        full_string=True,
        end_hook=True,
        end_hook_right_padding=-0.5,
        command="Two",
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 0""",
        ],
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup { "" }""",
            r"""\markup { \override #'(baseline-skip . 2) \column { \line { "1/2 CLT, Ord., 1/2 Scratch" } \line { "(hair and wood on string)" } } }""",
        ],
        selector=trinton.select_logical_ties_by_index(
            [10, 12], pitched=True, first=True
        ),
        style="solid-line-with-arrow",
        padding=15,
        right_padding=0,
        direction=None,
        full_string=True,
        end_hook=False,
        end_hook_right_padding=-0.5,
        command="Two",
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 0""",
            r"""- \tweak bound-details.left.Y #-0.5""",
            r"""- \tweak bound-details.right.Y #1""",
        ],
    ),
    trinton.hooked_spanner_command(
        string=r"""""",
        selector=trinton.select_logical_ties_by_index(
            [14, -1],
            first=True,
            pitched=True,
        ),
        padding=15,
        right_padding=3,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="Two",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 0""",
        ],
    ),
    voice=score["violin 2 voice"],
)

# second violin  music

# viola music

# cello music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 4)),
    evans.RhythmHandler(rhythm.rhythm_b(stage=2, instrument="cello", index=0)),
    trinton.force_rest(
        selector=trinton.select_logical_ties_by_index(
            [5, 8, 10, 13, 14, 22, 26, 28, 30], pitched=True, grace=False
        )
    ),
    trinton.rewrite_meter_command(boundary_depth=-1),
    # trinton.annotate_leaves_locally(
    #     selector=trinton.logical_ties(first=True, pitched=True, grace=False)
    #     # selector=abjad.select.leaves
    # ),
    trinton.aftergrace_command(
        slash=True,
        selector=trinton.select_logical_ties_by_index(
            [7, 20, 21], pitched=True, grace=False
        ),
    ),
    # evans.PitchHandler(
    #     []
    # ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [0, 4, 5, 7, 11, 12, 14, 18, 19, 21, 22, 23, 24, 25], grace=False
        ),
    ),
    trinton.continuous_glissando(zero_padding=True, selector=trinton.pleaves()),
    voice=score["cello 2 voice"],
)

# globals

# final barline

trinton.make_music(
    lambda _: trinton.select_target(_, (10,)),
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
    measures=[10],
    fermata="very-short-fermata",
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
        "violin 2 voice",
        "violin 4 voice",
        # "viola 2 voice strings",
        "cello 2 voice",
    ],
    [
        1,
        3,
        # 3,
        3,
    ],
    [
        0,
        -7,
        # -7,
        -7,
    ],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (1,)),
        trinton.attachment_command(
            attachments=[
                trinton.tempo_markup(
                    note_value=4,
                    tempo=50,
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

for voice_name, padding, hspace in zip(
    [
        # "violin 1 bow voice",
        # "violin 4 voice upper",
        # "viola 2 voice strings",
        "cello 2 voice"
    ],
    [
        # 3,
        # 3,
        # 3,
        3,
    ],
    [
        # -7,
        # -7,
        # -7,
        -7,
    ],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (7,)),
        trinton.attachment_command(
            attachments=[
                trinton.tempo_markup(
                    note_value=4,
                    tempo=125,
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
    10,
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

# for measure in [
#     1,
#     2,
#     4,
#     6,
#     8,
#     9,
#     11,
#     12,
#     14,
#     15,
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
# for measure in [3, 5, 7, 10, 13]:
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
#                 r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (9 32 22.5 19 26.5)))",
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
    segment_path="/Users/trintonprater/scores/patterns/patterns/sections/09",
    build_path="/Users/trintonprater/scores/patterns/patterns/build",
    segment_name="09",
    includes=[
        "/Users/trintonprater/scores/patterns/patterns/build/patterns-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
