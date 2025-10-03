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
        ts.return_e_material_ts(measure_amount=3, index=13),
        ts.return_d_material_ts(measure_amount=3, index=9),
        [(1, 4)],
    ],
)

score = library.patterns_score(
    section_ts,
)

# first violin music

# second violin music

# viola music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 4)),
    evans.RhythmHandler(rhythm.rhythm_d(instrument="viola", stage=2, index=3)),
    trinton.force_rest(
        selector=trinton.select_logical_ties_by_index(
            [10, 15, 18, 20, 22, 23, 25, 27], pitched=True, grace=False
        )
    ),
    trinton.rewrite_meter_command(boundary_depth=-1),
    pitch.pitch_d(
        instrument="viola",
        string_range_pairs=[("IV", (0, 20))],
        stage=2,
        index=-2,
        initial_seed=13,
        selector=trinton.logical_ties(pitched=True, grace=False),
    ),
    # trinton.annotate_leaves_locally(
    #     # selector=trinton.logical_ties(first=True, pitched=True)
    #     selector=abjad.select.leaves
    # ),
    trinton.attachment_command(
        attachments=[abjad.Clef("alto")], selector=trinton.select_leaves_by_index([0])
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.bundle(
                    abjad.Articulation("punta-to-talon"), r"- \tweak padding 1"
                ),
                abjad.bundle(
                    abjad.Articulation("talon-to-punta"), r"- \tweak padding 1"
                ),
            ]
        ),
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\big-half-harmonic", site="before")],
        selector=trinton.pleaves(),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [2, 4, 6, 9, 10, 15, 17, 20, 21, 22, 25, 31, 32, 35, 36, 37, 38, 41]
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BeamCount(left=2, right=1),
            abjad.BeamCount(left=1, right=3),
            abjad.BeamCount(left=3, right=1),
            abjad.BeamCount(left=1, right=2),
        ],
        selector=trinton.select_leaves_by_index([13, 14, 27, 28]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = #-5", site="before"
            ),
        ],
        selector=trinton.select_leaves_by_index([-14]),
    ),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(
            evans.talea(
                [
                    3,
                    1,
                    1,
                    2,
                    1,
                    1,
                    1,
                    -1,
                    1,
                    2,
                    -1,
                    1,
                    2,
                    1,
                    4,
                    1,
                    -2,
                    1,
                    -4,
                    1,
                    5,
                    1,
                    1,
                    1,
                    -1,
                    1,
                    1,
                    1,
                    1,
                    2,
                    1,
                    1,
                    -1,
                    1,
                    1,
                    1,
                    -100,
                ],
                8,
            )
        ),
        direction=abjad.DOWN,
        voice_name="viola legno voice",
    ),
    voice=score["viola 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 4)),
    trinton.hooked_spanner_command(
        string="MSP",
        selector=trinton.select_leaves_by_index(
            [0, -1],
            pitched=True,
            grace=False,
        ),
        padding=10,
        right_padding=3,
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
    voice=score["viola 2 voice temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 4)),
    evans.PitchHandler(["d,"]),
    trinton.rewrite_meter_command(boundary_depth=-1),
    # trinton.annotate_leaves_locally(
    #     selector=abjad.select.leaves,
    #     direction=abjad.DOWN
    # ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [2, 5, 6, 9, 11, 12, 14, 15, 19, 20, 24, 27, 28, 30, 31, 33, 34, 36, 37, 39]
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\override Voice.NoteHead.no-ledgers = ##t",
                    r"\override Voice.Accidental.stencil = ##f",
                ],
                site="before",
            ),
            abjad.LilyPondLiteral(
                [
                    r"\revert Voice.NoteHead.no-ledgers",
                    r"\revert Voice.Accidental.stencil",
                ],
                site="absolute_after",
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True, grace=False),
    ),
    trinton.change_notehead_command(
        notehead="cross",
        selector=trinton.durational_selector(
            durations=[abjad.Duration((1, 8))],
            preselector=trinton.logical_ties(pitched=True, grace=False),
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Articulation("staccato"),
                r"""- \tweak color #(css-color 'darkred)""",
            )
        ],
        selector=trinton.durational_selector(
            durations=[abjad.Duration((1, 8))],
            preselector=trinton.logical_ties(pitched=True, grace=False),
            first=True,
        ),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = #-12", site="before"
            ),
        ],
        selector=abjad.select.rests,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Articulation(">"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
        ],
        selector=trinton.patterned_tie_index_selector(
            [3, 5, 6, 9, 12], 15, first=True, pitched=True
        ),
        direction=abjad.DOWN,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override DynamicLineSpanner.staff-padding = #15",
                site="before",
            ),
            abjad.Dynamic("pppp"),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.hooked_spanner_command(
        string="CLB OB",
        selector=trinton.select_leaves_by_index(
            [1, 2, 5, 9, 11, 12, 17, 22, 25, 32, 35, 39],
            grace=False,
        ),
        padding=14.5,
        direction="down",
        right_padding=3,
        full_string=False,
        style="dashed-line-with-up-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 2""",
            r"""- \tweak color #(css-color 'darkred)""",
            # r"- \tweak Y-extent ##f",
            # r"- \tweak Y-offset -12",
            # r"""- \tweak bound-details.left.Y #-10.5""",
            # r"""- \tweak bound-details.right.Y #-6.5""",
        ],
    ),
    trinton.hooked_spanner_command(
        string="""\markup \hspace #-4 { "CLB OB" }""",
        selector=trinton.select_leaves_by_index(
            [14, 15],
            grace=False,
        ),
        padding=14.5,
        direction="down",
        right_padding=0,
        full_string=True,
        style="dashed-line-with-up-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 2""",
            r"""- \tweak color #(css-color 'darkred)""",
            # r"- \tweak Y-extent ##f",
            # r"- \tweak Y-offset -12",
            # r"""- \tweak bound-details.left.Y #-10.5""",
            # r"""- \tweak bound-details.right.Y #-6.5""",
        ],
    ),
    trinton.hooked_spanner_command(
        string="""\markup \hspace #-3 { "CLT DP" }""",
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                10,
                11,
            ],
            grace=False,
        ),
        padding=14.5,
        direction="down",
        right_padding=-0.5,
        full_string=True,
        style="dashed-line-with-up-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 2""",
            r"""- \tweak color #(css-color 'darkred)""",
            # r"- \tweak Y-extent ##f",
            # r"- \tweak Y-offset -12",
            # r"""- \tweak bound-details.left.Y #-10.5""",
            # r"""- \tweak bound-details.right.Y #-6.5""",
        ],
    ),
    trinton.hooked_spanner_command(
        string="CLT DP",
        selector=trinton.select_leaves_by_index(
            [
                3,
                4,
                15,
                16,
                23,
                24,
                33,
                34,
            ],
            grace=False,
        ),
        padding=14.5,
        direction="down",
        right_padding=3,
        full_string=False,
        style="dashed-line-with-up-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 2""",
            r"""- \tweak color #(css-color 'darkred)""",
            # r"- \tweak Y-extent ##f",
            # r"- \tweak Y-offset -12",
            # r"""- \tweak bound-details.left.Y #-10.5""",
            # r"""- \tweak bound-details.right.Y #-6.5""",
        ],
    ),
    trinton.hooked_spanner_command(
        string="""\markup \hspace #-3 { "CLT DP" }""",
        selector=trinton.select_leaves_by_index(
            [
                13,
                14,
            ],
            grace=False,
        ),
        padding=14.5,
        direction="down",
        right_padding=-4,
        full_string=True,
        style="dashed-line-with-up-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 2""",
            r"""- \tweak color #(css-color 'darkred)""",
            # r"- \tweak Y-extent ##f",
            # r"- \tweak Y-offset -12",
            # r"""- \tweak bound-details.left.Y #-10.5""",
            # r"""- \tweak bound-details.right.Y #-6.5""",
        ],
    ),
    library.color_voice(),
    voice=score["viola legno voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 6)),
    evans.RhythmHandler(
        evans.tuplet(
            [
                (1, 1, -4),
                (1, 1, 1),
                (-1, 1, 1, 1),
                (-1, 1, 1, 1),
                (-2, 1, -1, 1, -1),
                (-1, 1, -4),
            ]
        ),
    ),
    trinton.treat_tuplets(),
    trinton.respell_tuplets_command(rewrite_brackets=False),
    trinton.rewrite_meter_command(boundary_depth=-1),
    # trinton.annotate_leaves_locally(
    #     selector=abjad.select.leaves,
    # ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\override Staff.Clef.stencil = ##f", site="before"),
            abjad.LilyPondLiteral(r"\revert Staff.Clef.stencil", site="absolute_after"),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    trinton.change_lines(
        lines=1,
        selector=trinton.select_leaves_by_index([0]),
        invisible_barlines=False,
        clef="percussion",
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [
                0,
                2,
                4,
                6,
                7,
                10,
                11,
                12,
                13,
                14,
                16,
                19,
                20,
                21,
            ]
        ),
    ),
    trinton.change_notehead_command(notehead="cross", selector=trinton.pleaves()),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Articulation(">"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
        ],
        selector=trinton.patterned_tie_index_selector(
            [0, 3, 5, 6, 9, 12], 15, first=True, pitched=True
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Articulation("staccato"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
        ],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.hooked_spanner_command(
        string="CLB OB",
        selector=trinton.select_leaves_by_index(
            [0, -1],
            pitched=True,
            grace=False,
        ),
        padding=3.5,
        right_padding=3,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 2""",
            r"""- \tweak color #(css-color 'darkred)""",
            # r"- \tweak Y-extent ##f",
            # r"- \tweak Y-offset -12",
            # r"""- \tweak bound-details.left.Y #-10.5""",
            # r"""- \tweak bound-details.right.Y #-6.5""",
        ],
    ),
    library.color_voice(),
    voice=score["viola 2 voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor((6, 5, 5, 8, 8, 100)),
)

# cello music

# globals

# final barline

trinton.make_music(
    lambda _: trinton.select_target(_, (7,)),
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
    measures=[7],
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
    ["violin 2 voice", "violin 4 voice", "viola 2 voice temp", "cello 2 voice"],
    [3, 3, 3, 3],
    [-7, -7, -7, -7],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (1,)),
        trinton.attachment_command(
            attachments=[
                trinton.tempo_markup(
                    note_value=2,
                    tempo=69,
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
#
# for voice_name, padding, end_anchor in zip(
#     [
#         "violin 2 voice",
#         "viola 2 voice",
#     ],
#     [
#         13.5,
#         12,
#     ],
#     [-1, -1, -1, -1],
# ):
#     trinton.make_music(
#         lambda _: trinton.select_target(_, (14, 16)),
#         trinton.spanner_command(
#             strings=[
#                 trinton.tempo_markup(
#                     note_value=4,
#                     tempo=50,
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
#                     note_value=4,
#                     tempo=50,
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
#     16,
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
# for measure in [1, 3, 5, 7, 11, 13, 15]:
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
# for measure in [2, 4, 6, 8, 9, 10, 12, 14]:
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
#                 r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (7 23 15.5 20 28)))",
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
    segment_path="/Users/trintonprater/scores/patterns/patterns/sections/05",
    build_path="/Users/trintonprater/scores/patterns/patterns/build",
    segment_name="05",
    includes=[
        "/Users/trintonprater/scores/patterns/patterns/build/patterns-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
