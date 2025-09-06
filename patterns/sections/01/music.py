import abjad
from abjadext import rmakers
import baca
import evans
import trinton
import itertools
from patterns import library
from patterns import rhythm
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
# score = library.patterns_score(ts.return_b_material_ts(measure_amount=16, index=0))

# first violin music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.RhythmHandler(rhythm.rhythm_d(instrument="violin 1", stage=3, index=4)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    trinton.respell_tuplets_by_hand(tuplets=[-1], multipliers=[(12, 15)]),
    trinton.pitch_with_selector_command(
        selector=trinton.select_logical_ties_by_index([0, 1, 2, 3]),
        pitch_list=[
            "af",
            "cqs'",
            "b",
            "dqf'",
        ],
    ),
    trinton.pitch_with_selector_command(
        selector=trinton.select_logical_ties_by_index([4, 5, 6, 7, 8]),
        pitch_list=[
            "f'",
            "e'",
            "g'",
            "f'",
            "aqf'",
        ],
    ),
    trinton.pitch_with_selector_command(
        selector=trinton.select_logical_ties_by_index([9, 10, 11, 12]),
        pitch_list=[
            "cs''",
            "dqs''",
            "c''",
            "eqf''",
        ],
    ),
    trinton.pitch_with_selector_command(
        selector=trinton.select_logical_ties_by_index([13, 14, 15, 16, 17, 18, 19]),
        pitch_list=[
            "eqs''",
            "c'''",
            "b''",
            "gs'''",
            "gqs'''",
            "bqf'''",
            "a'''",
        ],
    ),
    # trinton.annotate_leaves_locally(selector=abjad.select.leaves),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.StartBeam(),
                abjad.StopBeam(),
            ]
        ),
        selector=trinton.select_leaves_by_index(
            [0, 3, 4, 7, 8, 13, 15, 16, 18, 19, 20, 22, 23, 26, 28, 30, 32, 37],
            pitched=True,
            grace=False,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BeamCount(left=3, right=1),
            abjad.BeamCount(left=2, right=0),
            abjad.BeamCount(left=3, right=1),
            abjad.BeamCount(left=1, right=2),
            abjad.BeamCount(left=2, right=1),
            abjad.BeamCount(left=1, right=3),
        ],
        selector=trinton.select_leaves_by_index([12, 13, 33, 34, 35, 36]),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.bundle(
                    abjad.Articulation("punta-to-talon"), r"- \tweak padding #1"
                ),
                abjad.bundle(
                    abjad.Articulation("talon-to-punta"), r"- \tweak padding #1"
                ),
            ]
        ),
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
        direction=abjad.UP,
    ),
    trinton.detach_command(
        detachments=[
            abjad.Articulation,
        ],
        selector=trinton.select_logical_ties_by_index(
            [6], first=True, pitched=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(abjad.Articulation("punta-to-talon"), r"- \tweak padding #2"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [6], first=True, pitched=True, grace=False
        ),
        direction=abjad.UP,
    ),
    trinton.continuous_glissando(zero_padding=True),
    trinton.linear_attachment_command(
        attachments=[
            evans.make_fancy_gliss(0.5, 1, 2, 3, 2, 1, 0.5),
            evans.make_fancy_gliss(
                0.1,
                0.2,
                0.3,
                0.4,
                0.5,
                0.7,
                0.8,
                0.9,
                1,
                1.2,
                1.3,
                7,
                1.4,
                1.5,
                1.6,
                1.7,
                1.8,
                1.9,
                2,
                2.3,
                2.6,
                2.9,
                3,
                3,
                3,
                3,
                3,
                2,
                1,
                0.5,
            ),
            evans.make_fancy_gliss(2, 0.5, 3, 0.5, 2, 1, 3, 0.5),
        ],
        selector=trinton.select_logical_ties_by_index(
            [3, 8, 12], first=True, pitched=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\big-half-harmonic", site="before"),
        ],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.hooked_spanner_command(
        string="""MSP""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=0,
        direction=None,
        right_padding=4,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 2""",
            r"""- \tweak bound-details.left.Y #7""",
            r"""- \tweak bound-details.right.Y #13""",
        ],
    ),
    # trinton.attachment_command(
    #     attachments=[
    #         abjad.LilyPondLiteral(
    #             r"\once \override TupletBracket.padding = #1",
    #             site="before"
    #         )
    #     ],
    #     selector=abjad.select.tuplets
    # ),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(
            evans.talea(
                [
                    -1,
                    11,
                    -2,
                    1,
                    1,
                    -3,
                    1,
                    -6,
                    2,
                    -8,
                    2,
                    2,
                    -6,
                    2,
                    -2,
                    8,
                    2,
                    2,
                    2,
                    2,
                    2,
                    25,
                    2,
                    1,
                    -4,
                    4,
                    4,
                    4,
                    4,
                    -1000,
                ],
                32,
            )
        ),
        direction=abjad.DOWN,
        voice_name="violin 1 legno voice",
    ),
    voice=score["violin 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    trinton.aftergrace_command(
        slash=True,
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["cqf''''"],
        selector=trinton.select_leaves_by_index([-1], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\grace-half-harmonic", site="before"),
        ],
        selector=trinton.select_leaves_by_index([-1], pitched=True),
    ),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index([-2, -1]), zero_padding=True
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartSlur(), abjad.StopSlur()],
        selector=trinton.select_leaves_by_index([-2, -1], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin(">o"), abjad.StopHairpin()],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        direction=abjad.DOWN,
    ),
    voice=score["violin 1 voice temp"],
)


trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    trinton.pitch_with_selector_command(
        pitch_list=["e"],
        selector=trinton.select_logical_ties_by_index([0, 1, 2, 3, 7], pitched=True),
    ),
    # trinton.annotate_leaves_locally(
    #     selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    #     # selector=abjad.select.leaves,
    # ),
    trinton.pitch_with_selector_command(
        pitch_list=["b"],
        selector=trinton.select_logical_ties_by_index(
            [4, 5, 6, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20], pitched=True
        ),
    ),
    trinton.change_notehead_command(
        notehead="cross",
        selector=trinton.select_logical_ties_by_index(
            [
                1,
                2,
                3,
                4,
                5,
                6,
                7,
                9,
                10,
                11,
                12,
                13,
                15,
                16,
                17,
                18,
                19,
                20,
            ],
            first=True,
            pitched=True,
            grace=False,
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
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.StartBeam(),
                abjad.StopBeam(),
            ]
        ),
        selector=trinton.select_leaves_by_index(
            [0, 3, 4, 10, 11, 12, 14, 16, 17, 20, 21, 22, 23, 26, 28, 32, 33, 35],
            grace=False,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("staccato")],
        selector=trinton.select_logical_ties_by_index(
            [1, 2, 3, 4, 5, 6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 19, 20],
            pitched=True,
            first=True,
        ),
        direction=abjad.UP,
    ),
    # trinton.attachment_command(
    #     attachments=[abjad.Articulation("staccato")],
    #     selector=trinton.select_leaves_by_index([4], pitched=True),
    # ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BeamCount(left=3, right=1),
            abjad.BeamCount(left=1, right=2),
        ],
        selector=trinton.select_leaves_by_index([7, 8]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = #-7", site="before"
            ),
        ],
        selector=trinton.select_leaves_by_index([16, 17, 19, 31]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = #-8", site="before"
            ),
        ],
        selector=trinton.select_leaves_by_index(
            [
                13,
            ]
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = #-11", site="before"
            ),
        ],
        selector=trinton.select_leaves_by_index([5, 8, 9]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = #-13.5", site="before"
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.manual_beam_positions(
        positions=(-12, -10.5), selector=trinton.select_leaves_by_index([0, 3])
    ),
    trinton.hooked_spanner_command(
        string="""CLDP""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True, grace=False),
        padding=0,
        direction="down",
        right_padding=2,
        full_string=False,
        style="dashed-line-with-up-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 2""",
            # r"- \tweak Y-extent ##f",
            # r"- \tweak Y-offset -12",
            r"""- \tweak bound-details.left.Y #-10.5""",
            r"""- \tweak bound-details.right.Y #-6.5""",
        ],
    ),
    trinton.attachment_command(
        attachments=[
            # abjad.LilyPondLiteral(
            #     r"\once \override DynamicLineSpanner.staff-padding = "
            # ),
            abjad.Dynamic("pp"),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["violin 1 legno voice"],
)

# second violin music

# trinton.make_music(
#     lambda _: trinton.select_target(_, (1,)),
#     trinton.rewrite_meter_command(boundary_depth=-2),
#     voice=score["violin 2 voice"]
# )

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
    voice_names=library.voice_names,
    font_size=10,
    clef_whitespace=True,
    blank=True,
    last_measure=False,
    # padding=-5,
    # extra_offset=2.5,
    tag=abjad.Tag("+SCORE"),
)

# tempi

for voice_name, padding in zip(library.voice_names, [10, 2, 2, 2]):
    trinton.make_music(
        lambda _: trinton.select_target(_, (1,)),
        trinton.attachment_command(
            attachments=[
                trinton.tempo_markup(
                    note_value=16,
                    tempo=120,
                    padding=padding,
                    note_head_fontsize=0.5,
                    stem_length=1.5,
                    text_fontsize=5.5,
                    dotted=False,
                    fraction=None,
                    tempo_change=None,
                    site="after",
                    hspace=0,
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
    ["violin 1 voice temp", "violin 2 voice", "viola voice", "cello voice"],
    [14, 5, 5, 5],
    [
        15,
        -1,
        -1,
        -1,
    ],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (2, 3)),
        trinton.spanner_command(
            strings=[
                trinton.tempo_markup(
                    note_value=8,
                    tempo=160,
                    padding=0,
                    note_head_fontsize=-0.5,
                    stem_length=1.5,
                    text_fontsize=3,
                    dotted=False,
                    fraction=None,
                    tempo_change="accel.",
                    site="after",
                    hspace=0,
                    string_only=True,
                ),
                trinton.tempo_markup(
                    note_value=8,
                    tempo=160,
                    padding=0,
                    note_head_fontsize=0.5,
                    stem_length=1.5,
                    text_fontsize=5.5,
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

for measure in [
    1,
    3,
]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\noBreak", site="absolute_after")],
            selector=trinton.select_leaves_by_index([0]),
            tag=abjad.Tag("+SCORE"),
        ),
        voice=score["Global Context"],
    )

for measure in [
    2,
]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\break", site="absolute_after")],
            selector=trinton.select_leaves_by_index([0]),
            tag=abjad.Tag("+SCORE"),
        ),
        voice=score["Global Context"],
    )

# spacing

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
