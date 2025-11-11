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
        ts.return_b_material_ts(measure_amount=2, index=0),
        ts.return_d_material_ts(measure_amount=1, index=0),
        [(1, 4)],
    ],
)

score = library.patterns_score(
    section_ts,
)

# first violin music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.RhythmHandler(rhythm.rhythm_d(instrument="violin 1", stage=3, index=4)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    trinton.respell_tuplets_by_hand(tuplets=[-1], multipliers=[(12, 15)]),
    pitch.pitch_d(
        instrument="violin",
        string_range_pairs=[
            ("IV", (0, 3)),
            ("III", (4, 8)),
            ("II", (9, 12)),
            ("I", (13, 19)),
        ],
        stage=3,
        index=0,
        initial_seed=5,
        selector=trinton.logical_ties(pitched=True, grace=False),
    ),
    library.d_stage_3_noteheads(),
    # trinton.attachment_command(
    #     attachments=[abjad.Arpeggio()],
    #     selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    # ),
    trinton.force_accidentals_command(
        selector=trinton.logical_ties(first=True, pitched=True, grace=False)
    ),
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
    voice=score["violin 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    trinton.aftergrace_command(
        invisible=True,
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
    ),
    # trinton.linear_attachment_command(
    #     attachments=[
    #         abjad.LilyPondLiteral(
    #             r"\once \override DynamicLineSpanner.staff-padding = #11",
    #             site="before",
    #         ),
    #         abjad.StartHairpin(">o"),
    #         abjad.StopHairpin(),
    #     ],
    #     selector=trinton.select_leaves_by_index([-16, -16, -1], pitched=True),
    #     direction=abjad.DOWN,
    # ),
    trinton.hooked_spanner_command(
        string="""MSP""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=0,
        direction=None,
        right_padding=0,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 2""",
            r"""- \tweak bound-details.left.Y #7.5""",
            r"""- \tweak bound-details.right.Y #11""",
        ],
    ),
    voice=score["violin 2 voice temp"],
)


trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    trinton.pitch_with_selector_command(
        pitch_list=["c"],
        selector=trinton.select_logical_ties_by_index([3], pitched=True),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["e"],
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 2, 4, 5, 6, 7], pitched=True
        ),
    ),
    # trinton.annotate_leaves_locally(
    #     selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    #     # selector=abjad.select.leaves,
    # ),
    trinton.pitch_with_selector_command(
        pitch_list=["b"],
        selector=trinton.select_logical_ties_by_index(
            [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20], pitched=True
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
        attachments=[
            abjad.bundle(
                abjad.Articulation("staccato"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
        ],
        selector=trinton.select_logical_ties_by_index(
            [1, 2, 3, 4, 5, 6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 19, 20],
            pitched=True,
            first=True,
        ),
        direction=abjad.UP,
    ),
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
        selector=trinton.select_leaves_by_index(
            [
                5,
                8,
            ]
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = #-13", site="before"
            ),
        ],
        selector=trinton.select_leaves_by_index([9]),
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
        string="""CLT DP""",
        selector=trinton.select_leaves_by_index([1, 4], grace=False),
        padding=13.5,
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
            r"""- \tweak color #(css-color 'darkred)""",
            # r"- \tweak Y-extent ##f",
            # r"- \tweak Y-offset -12",
            # r"""- \tweak bound-details.left.Y #-10.5""",
            # r"""- \tweak bound-details.right.Y #-6.5""",
        ],
    ),
    trinton.hooked_spanner_command(
        string="""CLT DP""",
        selector=trinton.select_leaves_by_index([20, 22], grace=False),
        padding=11,
        direction="down",
        right_padding=-1,
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
        string="""CLT DP""",
        selector=trinton.select_leaves_by_index([27, 28], grace=False),
        padding=10.5,
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
            r"""- \tweak color #(css-color 'darkred)""",
            # r"- \tweak Y-extent ##f",
            # r"- \tweak Y-offset -12",
            # r"""- \tweak bound-details.left.Y #-10.5""",
            # r"""- \tweak bound-details.right.Y #-6.5""",
        ],
    ),
    trinton.hooked_spanner_command(
        string="""CLB OB""",
        selector=trinton.select_leaves_by_index(
            [
                6,
                18,
            ],
            grace=False,
        ),
        padding=13.5,
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
            r"""- \tweak color #(css-color 'darkred)""",
            # r"- \tweak Y-extent ##f",
            # r"- \tweak Y-offset -12",
            # r"""- \tweak bound-details.left.Y #-10.5""",
            # r"""- \tweak bound-details.right.Y #-6.5""",
        ],
    ),
    trinton.hooked_spanner_command(
        string="""CLB OB""",
        selector=trinton.select_leaves_by_index([22, 26, 29, -1], grace=False),
        padding=11,
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
            r"""- \tweak color #(css-color 'darkred)""",
            # r"- \tweak Y-extent ##f",
            # r"- \tweak Y-offset -12",
            # r"""- \tweak bound-details.left.Y #-10.5""",
            # r"""- \tweak bound-details.right.Y #-6.5""",
        ],
    ),
    # trinton.attachment_command(
    #     attachments=[
    #         abjad.Dynamic("pp"),
    #     ],
    #     selector=trinton.select_leaves_by_index([0]),
    # ),
    library.color_voice(),
    voice=score["violin 1 legno voice"],
)

# second violin music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(rhythm.rhythm_b(stage=2, instrument="violin 2", index=1)),
    trinton.force_rest(selector=trinton.select_leaves_by_index([-3, -2, -1])),
    trinton.rewrite_meter_command(boundary_depth=-1),
    trinton.aftergrace_command(
        slash=True, selector=trinton.select_logical_ties_by_index([-1], pitched=True)
    ),
    evans.PitchHandler(
        ["cs'", "dqs'", "b", "cqs'", "d'", "e'", "g'", "fs'", "gs'", "bqf'", "dqs''"],
    ),
    trinton.change_notehead_command(
        notehead="harmonic",
        selector=trinton.patterned_leaf_index_selector([0], 2, pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\big-half-harmonic", site="before"),
        ],
        selector=trinton.patterned_leaf_index_selector([1], 2, pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index([0, 3, 4, 7, 8, -1], pitched=True),
    ),
    trinton.continuous_glissando(
        selector=trinton.pleaves(),
        zero_padding=True,
        tweaks=[
            r"- \tweak thickness #1.5",
            r"- \tweak bound-details.right.arrow ##t",
        ],
    ),
    # trinton.hooked_spanner_command(
    #     string=r"1/2 Spz.",
    #     selector=trinton.select_leaves_by_index([0, 6], pitched=True),
    #     padding=12,
    #     direction=None,
    #     right_padding=-0.5,
    #     full_string=False,
    #     style="dashed-line-with-hook",
    #     hspace=None,
    #     command="",
    #     tag=None,
    #     tweaks=[
    #         r"""- \tweak font-name "Bodoni72 Book" """,
    #         r"""- \tweak font-size 1""",
    #     ],
    # ),
    # trinton.spanner_command(
    #     strings=["", r"3/4 Spz."],
    #     selector=trinton.select_leaves_by_index([6, -1], pitched=True),
    #     style="solid-line-with-arrow",
    #     padding=12,
    #     right_padding=0,
    #     direction=None,
    #     full_string=False,
    #     command="",
    #     tweaks=[
    #         r"""- \tweak font-name "Bodoni72 Book" """,
    #         r"""- \tweak font-size 1""",
    #     ],
    # ),
    # trinton.hooked_spanner_command(
    #     string=r"\bow-tip-half-up",
    #     selector=trinton.select_leaves_by_index([0, 6], pitched=True),
    #     padding=9.5,
    #     direction=None,
    #     right_padding=-0.5,
    #     full_string=True,
    #     style="dashed-line-with-hook",
    #     hspace=None,
    #     command="One",
    #     tag=None,
    # ),
    # trinton.spanner_command(
    #     strings=[r"\markup {}", r"\bow-tip-up"],
    #     selector=trinton.select_leaves_by_index([6, -1], pitched=True),
    #     style="solid-line-with-arrow",
    #     padding=9.5,
    #     right_padding=0,
    #     direction=None,
    #     full_string=True,
    #     command="One",
    # ),
    # trinton.linear_attachment_command(
    #     attachments=[
    #         abjad.StartHairpin("o<"),
    #         abjad.Dynamic("pp"),
    #         abjad.StartHairpin(">o"),
    #         abjad.StopHairpin(),
    #     ],
    #     selector=trinton.select_leaves_by_index([0, 4, -3, -1], pitched=True),
    # ),
    voice=score["violin 4 voice"],
    beam_meter=True,
)

# viola music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.RhythmHandler(rhythm.rhythm_d(instrument="viola", stage=1, index=1)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    pitch.pitch_d(
        instrument="viola",
        string_range_pairs=[
            ("IV", (0, 9)),
            ("III", (10, 15)),
            ("II", (16, 20)),
            ("I", (21, 26)),
        ],
        stage=1,
        index=1,
        initial_seed=11,
        selector=trinton.logical_ties(pitched=True, grace=False),
    ),
    # trinton.annotate_leaves_locally(
    #     selector=trinton.logical_ties(first=True, pitched=True)
    # ),
    trinton.attachment_command(
        attachments=[abjad.Clef("alto")], selector=trinton.select_leaves_by_index([0])
    ),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\big-half-harmonic", site="before")],
        selector=trinton.pleaves(),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\once \override TupletBracket.padding = #-2",
                    r"\once \override TupletBracket.stencil = #(lambda (grob) (let* ((pos (ly:grob-property grob 'positions)) (dir (ly:grob-property grob 'direction)) (new-pos (if (= dir 1) (max (car pos)(cdr pos)) (min (car pos)(cdr pos))))) (ly:grob-set-property! grob 'positions (cons new-pos new-pos)) (ly:tuplet-bracket::print grob)))",
                ],
                site="before",
            )
        ],
        selector=trinton.select_tuplets_by_index([-1]),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [
                0,
                4,
                5,
                13,
                14,
                17,
                18,
                20,
                21,
                22,
                23,
                24,
                27,
                28,
                29,
                32,
                33,
                34,
                35,
                38,
            ]
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BeamCount(left=2, right=2),
            abjad.BeamCount(left=1, right=3),
            abjad.BeamCount(left=3, right=1),
            abjad.BeamCount(left=1, right=4),
        ],
        selector=trinton.select_leaves_by_index([5, 6, 9, 10]),
    ),
    trinton.manual_beam_positions(
        positions=(5, 8),
        selector=trinton.select_logical_ties_by_index([4, 8], first=True),
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
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(
            evans.talea(
                [
                    1,
                    -5,
                    10,
                    1,
                    2,
                    1,
                    1,
                    1,
                    2,
                    2,
                    -4,
                    2,
                    -2,
                    2,
                    -4,
                    2,
                    2,
                    2,
                    -2,
                    2,
                    2,
                    2,
                    2,
                    22,
                    -2,
                    2,
                    2,
                    -2,
                    6,
                    2,
                    2,
                    2,
                    1000,
                ],
                32,
            )
        ),
        direction=abjad.DOWN,
        voice_name="viola legno voice",
    ),
    voice=score["viola 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    trinton.aftergrace_command(
        invisible=True,
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override DynamicLineSpanner.staff-padding = #12",
                site="before",
            ),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([-14, -14, -1], pitched=True),
        direction=abjad.DOWN,
    ),
    trinton.hooked_spanner_command(
        string="""MSP""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=13,
        direction=None,
        right_padding=0,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 2""",
            # r"""- \tweak bound-details.left.Y #13""",
            # r"""- \tweak bound-details.right.Y #15""",
        ],
    ),
    voice=score["viola 2 voice temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    trinton.pitch_with_selector_command(
        pitch_list=["e,"],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                1,
                2,
                3,
                4,
            ],
            pitched=True,
        ),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["g,"],
        selector=trinton.select_logical_ties_by_index(
            [
                5,
                6,
                7,
                8,
                9,
                10,
            ],
            pitched=True,
        ),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["b,"],
        selector=trinton.select_logical_ties_by_index(
            [11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25], pitched=True
        ),
    ),
    # trinton.annotate_leaves_locally(
    #     selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    #     # selector=abjad.select.leaves,
    #     # selector=trinton.pleaves()
    # ),
    trinton.change_notehead_command(
        notehead="cross",
        selector=trinton.select_leaves_by_index(
            [
                0,
                3,
                4,
                5,
                6,
                7,
                8,
                9,
                10,
                11,
                12,
                13,
                14,
                15,
                16,
                17,
                18,
                19,
                24,
                25,
                26,
                27,
                28,
                29,
                30,
            ],
            pitched=True,
            grace=False,
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Articulation("staccato"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                2,
                3,
                4,
                5,
                6,
                7,
                8,
                9,
                10,
                11,
                12,
                13,
                14,
                15,
                16,
                17,
                19,
                20,
                21,
                22,
                23,
                24,
            ],
            pitched=True,
            first=True,
        ),
        direction=abjad.UP,
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
            [0, 3, 4, 8, 9, 13, 14, 17, 18, 20, 21, 24, 25, 27, 30, 31, 32, 36, 37, 41],
            grace=False,
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = #-8", site="before"
            ),
        ],
        selector=trinton.select_leaves_by_index([14, 16, 18, 22, 31, 34]),
    ),
    trinton.manual_beam_positions(
        positions=(-12, -10.5), selector=trinton.select_leaves_by_index([0, 3])
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = #-12.5", site="before"
            ),
        ],
        selector=trinton.select_leaves_by_index([1, 2]),
    ),
    trinton.manual_beam_positions(
        positions=(-12, -10.5), selector=trinton.select_leaves_by_index([0, 3])
    ),
    trinton.hooked_spanner_command(
        string="""CLT DP""",
        selector=trinton.select_leaves_by_index([3, 5], grace=False),
        padding=13.5,
        direction="down",
        right_padding=-1,
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
        string="""CLT DP""",
        selector=trinton.select_leaves_by_index([27, 30], grace=False),
        padding=11.5,
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
            r"""- \tweak color #(css-color 'darkred)""",
            # r"- \tweak Y-extent ##f",
            # r"- \tweak Y-offset -12",
            # r"""- \tweak bound-details.left.Y #-10.5""",
            # r"""- \tweak bound-details.right.Y #-6.5""",
        ],
    ),
    trinton.hooked_spanner_command(
        string="""CLT DP""",
        selector=trinton.select_leaves_by_index([40, -1], grace=False),
        padding=11.5,
        direction="down",
        right_padding=25,
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
        string="""CLB OB""",
        selector=trinton.select_leaves_by_index([0, 3, 5, 27], grace=False),
        padding=13.5,
        direction="down",
        right_padding=-1,
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
        string="""CLB OB""",
        selector=trinton.select_leaves_by_index([32, 39], grace=False),
        padding=11.5,
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
            r"""- \tweak color #(css-color 'darkred)""",
            # r"- \tweak Y-extent ##f",
            # r"- \tweak Y-offset -12",
            # r"""- \tweak bound-details.left.Y #-10.5""",
            # r"""- \tweak bound-details.right.Y #-6.5""",
        ],
    ),
    # trinton.attachment_command(
    #     attachments=[
    #         abjad.LilyPondLiteral(
    #             r"\once \override DynamicLineSpanner.staff-padding = 14"
    #         ),
    #         abjad.Dynamic("pp"),
    #     ],
    #     selector=trinton.select_leaves_by_index([0]),
    # ),
    library.color_voice(),
    voice=score["viola legno voice"],
)

# cello music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(
        evans.talea(
            [
                2,
                -4,
                10,
                2,
                2,
            ],
            32,
        )
    ),
    trinton.rewrite_meter_command(boundary_depth=-2),
    evans.PitchHandler(
        [
            "b'",
            "c'",
            "b'",
            "d''",
        ]
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation("staccato"),
        ],
        selector=trinton.durational_selector(
            durations=[abjad.Duration((1, 16))],
            preselector=trinton.logical_ties(pitched=True),
            first=True,
        ),
        direction=abjad.UP,
    ),
    trinton.change_notehead_command(
        notehead="cross",
        selector=trinton.durational_selector(
            durations=[abjad.Duration((1, 16))],
            preselector=trinton.logical_ties(pitched=True),
            first=True,
        ),
    ),
    library.tablature_staff(selector=trinton.select_leaves_by_index([0])),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([0, 2, 3, -1]),
    ),
    # trinton.linear_attachment_command(
    #     attachments=[
    #         abjad.BeamCount(left=3, right=1),
    #         abjad.BeamCount(left=1, right=2),
    #     ],
    #     selector=trinton.select_leaves_by_index([3, 4]),
    # ),
    # trinton.manual_beam_positions(
    #     positions=(-9, -9),
    #     selector=trinton.select_leaves_by_index(
    #         [
    #             0,
    #             5,
    #         ]
    #     ),
    # ),
    # trinton.manual_beam_positions(
    #     positions=(-9, -10.5), selector=trinton.select_leaves_by_index([6, -1])
    # ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = #-7", site="before"
            )
        ],
        selector=abjad.select.rests,
    ),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(
            evans.talea(
                [-1, 1, 11, -1, 1, 1, -3, 1, -1000],
                32,
            )
        ),
        direction=abjad.UP,
        voice_name="cello bow voice",
    ),
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.aftergrace_command(
        slash=True,
        selector=trinton.select_logical_ties_by_index([1], pitched=True, grace=False),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["e'"],
        selector=trinton.pleaves(grace=True),
    ),
    trinton.continuous_glissando(
        zero_padding=True,
        selector=trinton.select_logical_ties_by_index([1, 2], pitched=True),
    ),
    library.tablature_trill(
        trill_pitch="a",
        selector=trinton.select_logical_ties_by_index([1, 2], first=True, pitched=True),
        bound_details=(-6, -4.5),
        direction=abjad.DOWN,
    ),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\big-half-harmonic", site="before")],
        selector=trinton.select_leaves_by_index([0, 1], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\grace-half-harmonic", site="before")],
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \fontsize #2 { \hspace #-12.5 \lower #2 { "Finger Perc.:" } }"""
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["cello 2 voice temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.rewrite_meter_command(boundary_depth=-2),
    evans.PitchHandler([["a''"], ["f'"], ["g''"], ["a''"], ["f''"]]),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([0, 3, 4, -1]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BeamCount(left=3, right=1),
            abjad.BeamCount(left=1, right=2),
        ],
        selector=trinton.select_leaves_by_index([7, 8]),
    ),
    trinton.manual_beam_positions(
        positions=(9, 6), selector=trinton.select_leaves_by_index([0, 3])
    ),
    trinton.manual_beam_positions(
        positions=(9, 9), selector=trinton.select_leaves_by_index([4, -1])
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = #7", site="before"
            )
        ],
        selector=abjad.select.rests,
    ),
    trinton.change_notehead_command(notehead="cluster", selector=trinton.pleaves()),
    trinton.duration_line(
        selector=trinton.select_logical_ties_by_index([1], pitched=True, grace=False),
        color=r"(css-color 'darkred)",
    ),
    trinton.noteheads_only(selector=trinton.pleaves(grace=True)),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(
                    r"""\markup \fontsize #2 { \hspace #-4.5 \raise #4 { "Bow:" } }"""
                ),
                r"""- \tweak color #(css-color 'darkred)""",
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Articulation("staccato"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
        ],
        selector=trinton.durational_selector(
            durations=[abjad.Duration((1, 32))],
            preselector=trinton.logical_ties(pitched=True, grace=False),
            first=True,
        ),
        direction=abjad.DOWN,
    ),
    # trinton.attachment_command(
    #     attachments=[
    #         abjad.Dynamic("pp"),
    #     ],
    #     selector=trinton.select_leaves_by_index(
    #         [
    #             0,
    #         ]
    #     ),
    #     direction=abjad.DOWN,
    # ),
    trinton.hooked_spanner_command(
        string="""II""",
        selector=trinton.select_leaves_by_index(
            [0, -1],
        ),
        padding=11,
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
        ],
    ),
    library.color_voice(),
    voice=score["cello bow voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(rhythm.rhythm_c(stage=4, instrument="cello", index=2)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
        slash=True,
    ),
    evans.PitchHandler([["a,", "bqf,"]]),
    trinton.linear_attachment_command(
        attachments=[abjad.StartBeam(), abjad.StopBeam()],
        selector=trinton.select_leaves_by_index([3, 4], grace=False),
    ),
    library.tablature_staff(
        selector=trinton.select_leaves_by_index([0]),
        reset=True,
        reset_staff_lines=5,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Clef("bass"),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\grace-half-harmonic", site="before"),
        ],
        selector=trinton.pleaves(grace=True),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_logical_ties_by_index(
            [-2, -1], first=True, pitched=True
        ),
    ),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index([-2, -1], pitched=True),
        zero_padding=True,
        tweaks=[
            abjad.Tweak(r"- \tweak thickness #1.5"),
            abjad.Tweak(r"- \tweak bound-details.right.arrow ##t"),
        ],
    ),
    trinton.hooked_spanner_command(
        string="""diagonal bow, touching bridge for added air sound""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=6.5,
        direction=None,
        right_padding=0,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="One",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 1""",
        ],
    ),
    # trinton.linear_attachment_command(
    #     attachments=[
    #         abjad.StartHairpin("o<"),
    #         abjad.Dynamic("pp"),
    #     ],
    #     selector=trinton.select_logical_ties_by_index(
    #         [0, -1], first=True, pitched=True, grace=False
    #     ),
    # ),
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(rhythm.rhythm_d(instrument="cello", stage=4, index=0)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    trinton.aftergrace_command(
        invisible=True,
        selector=trinton.select_logical_ties_by_index([-1], pitched=True),
    ),
    evans.PitchHandler([["a,", "bqf,"]]),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([3, 4, 7, 8, 10, 12]),
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
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\big-half-harmonic", site="before"),
        ],
        selector=trinton.pleaves(),
    ),
    # trinton.linear_attachment_command(
    #     attachments=[abjad.StartHairpin(">o"), abjad.StopHairpin()],
    #     selector=trinton.select_logical_ties_by_index(
    #         [0, -1], first=True, pitched=True
    #     ),
    #     direction=abjad.DOWN,
    # ),
    trinton.hooked_spanner_command(
        string="""MSP""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=12,
        direction=None,
        right_padding=0,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 2""",
        ],
    ),
    voice=score["cello 2 voice"],
)


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

for voice_name, padding in zip(
    [
        "violin 2 voice",
        "violin 4 voice",
        "viola 2 voice",
        "cello 2 voice",
    ],
    [3, 2, 1, 0.1],
):
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
                    text_fontsize=4,
                    dotted=False,
                    fraction=None,
                    tempo_change=None,
                    site="after",
                    hspace=-10,
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
        "viola 2 voice temp",
        "cello 2 voice",
    ],
    [
        14,
        9.5,
        14,
        14,
    ],
    [
        15,
        -1,
        12,
        7,
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

# breaking

for measure in [
    4,
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

for measure in [
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
    1,
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

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (11 33 27 35)))",
                site="absolute_before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (11 33 27 33)))",
                site="absolute_before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (11 30 25 35)))",
                site="absolute_before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

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
