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

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.RhythmHandler(
        evans.talea([-5, 2, -1, 1, 1, -5, 1, -3, 4, -15, 1, -1, -1000], 8)
    ),
    trinton.rewrite_meter_command(boundary_depth=-1),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [
                1,
                4,
                5,
                6,
            ]
        ),
    ),
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
    #         abjad.Markup(r"""\markup \fontsize #2 { \hspace #-11 { "Fng. Perc.:" } }""")
    #     ],
    #     selector=trinton.select_leaves_by_index([0]),
    # ),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(
            evans.talea(
                [-12, 2, -2, 10, 2, -10, 2, -6, 2, -9, 3, -4, 6, -2, 8, -100],
                16,
            )
        ),
        direction=abjad.UP,
        voice_name="violin 1 bow voice",
    ),
    voice=score["violin 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    trinton.aftergrace_command(
        slash=True,
        selector=trinton.select_logical_ties_by_index([4], pitched=True, grace=False),
    ),
    evans.PitchHandler(
        [
            "b",
            ["b", "d'"],
            ["e'", "a'"],
            ["a", "b"],
            "a",
            "e'",
            "b",
        ]
    ),
    # trinton.annotate_leaves_locally(
    #     # selector=abjad.select.leaves,
    #     selector=trinton.pleaves(),
    #     direction=abjad.DOWN
    # ),
    trinton.change_notehead_command(
        notehead="cross",
        selector=trinton.notehead_selector(
            chord_indices=list(range(0, 3)),
            head_indices_lists=[[0] for _ in range(0, 3)],
        ),
    ),
    trinton.change_notehead_command(
        notehead="harmonic",
        selector=trinton.notehead_selector(
            chord_indices=list(range(0, 3)),
            head_indices_lists=[[1] for _ in range(0, 3)],
        ),
    ),
    trinton.change_notehead_command(
        notehead="cross", selector=trinton.select_leaves_by_index([-1], pitched=True)
    ),
    trinton.continuous_glissando(
        zero_padding=True,
        selector=trinton.select_logical_ties_by_index([4, 5], pitched=True),
    ),
    library.column_trill(
        pressures=["cross"],
        selector=trinton.select_leaves_by_index([0, 1], pitched=True),
        bound_details=(-4, -4),
        direction=abjad.DOWN,
    ),
    library.column_trill(
        pressures=["half", "cross"],
        selector=trinton.select_leaves_by_index([5, 7], pitched=True),
        bound_details=(-6, -2),
        direction=abjad.DOWN,
    ),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\big-half-harmonic", site="before")],
        selector=trinton.select_leaves_by_index([0, 1], pitched=True),
    ),
    trinton.change_notehead_command(
        notehead="harmonic",
        selector=trinton.select_leaves_by_index([5, 7], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override DynamicLineSpanner.staff-padding = #7.5",
                site="before",
            ),
            abjad.Dynamic("pppp"),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    voice=score["violin 2 voice temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler(
        [
            ["f'"],
            ["d''"],
            ["b'"],
            ["a''"],
            ["c''"],
            ["a''"],
            ["c''"],
            ["a'"],
            ["a''"],
            ["a''"],
            ["a''"],
            ["a''"],
            ["a''"],
            ["a''"],
            ["a''"],
            ["a''"],
            ["a''"],
            ["a''"],
            ["a''"],
            ["a''"],
            ["a''"],
            ["a''"],
            ["a''"],
            ["a''"],
            ["a''"],
            ["a''"],
            ["a''"],
            ["a''"],
            ["a''"],
            ["a''"],
            ["a''"],
            ["a''"],
            ["a''"],
            ["a''"],
            ["a''"],
            ["a''"],
            ["a''"],
            ["a''"],
        ]
    ),
    # trinton.annotate_leaves_locally(
    #     selector=abjad.select.leaves,
    #     direction=abjad.UP
    # ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([2, 3, 5, 6, 13, 14]),
    ),
    trinton.manual_beam_positions(
        positions=(6, 6),
        selector=trinton.select_leaves_by_index([2, 3]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup {
                    \hspace #-2 {
                        ( \note {2} #2 )
                    }
                }"""
            )
        ],
        selector=trinton.select_leaves_by_index([1], pitched=True),
        direction=abjad.UP,
    ),
    trinton.change_notehead_command(
        notehead="cluster",
        selector=abjad.select.chords,
    ),
    trinton.duration_line(
        selector=trinton.select_logical_ties_by_index(
            [1, 5, 6, 7], pitched=True, grace=False
        ),
        color=r"(css-color 'darkred)",
    ),
    trinton.noteheads_only(selector=trinton.pleaves(grace=True)),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Articulation("staccato"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Articulation("staccato"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
        ],
        selector=trinton.durational_selector(
            durations=[abjad.Duration((1, 8))],
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
    # trinton.attachment_command(
    #     attachments=[
    #         abjad.bundle(
    #             abjad.Markup(r"""\markup \fontsize #2 { \hspace #-7.5 { "Bow:" } }"""),
    #             r"""- \tweak color #(css-color 'darkred)""",
    #         ),
    #     ],
    #     selector=trinton.select_leaves_by_index([1]),
    # ),
    library.color_voice(),
    voice=score["violin 1 bow voice"],
)

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

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(rhythm.rhythm_d(instrument="cello", stage=2, index=2)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    pitch.pitch_d(
        instrument="cello",
        string_range_pairs=[("III", (0, 26))],
        stage=2,
        index=0,
        initial_seed=5,
        selector=trinton.logical_ties(pitched=True, grace=False),
    ),
    # trinton.annotate_leaves_locally(
    #     # selector=trinton.logical_ties(first=True, pitched=True)
    #     selector=abjad.select.leaves
    # ),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")], selector=trinton.select_leaves_by_index([0])
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
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\big-half-harmonic", site="before")],
        selector=trinton.pleaves(),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [
                4,
                8,
                10,
                16,
                17,
                23,
                25,
                28,
                30,
                34,
            ]
        ),
    ),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(
            evans.talea(
                [
                    -1,
                    1,
                    3,
                    1,
                    1,
                    1,
                    5,
                    1,
                    1,
                    4,
                    1,
                    1,
                    -1,
                    1,
                    1,
                    1,
                    3,
                    -100,
                ],
                8,
            )
        ),
        direction=abjad.DOWN,
        voice_name="cello legno voice",
    ),
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    trinton.hooked_spanner_command(
        string="MSP",
        selector=trinton.select_leaves_by_index(
            [0, -1],
            pitched=True,
            grace=False,
        ),
        padding=12.5,
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
    voice=score["cello 2 voice temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.PitchHandler(["b,,"]),
    trinton.rewrite_meter_command(boundary_depth=-1),
    # trinton.annotate_leaves_locally(
    #     selector=abjad.select.leaves,
    #     direction=abjad.DOWN
    # ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([0, 1, 3, 6, 8, 11, 14, 17]),
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
    trinton.aftergrace_command(
        invisible=True,
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override DynamicLineSpanner.staff-padding = #12",
                site="before",
            ),
            abjad.Dynamic("pppp"),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.hooked_spanner_command(
        string="CLB OB",
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                4,
                6,
                9,
                10,
                13,
                18,
            ],
            grace=False,
        ),
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
            [2, 3, 7, 8, 11, 12, 19, 20],
        ),
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
            r"""- \tweak font-size 2""",
            r"""- \tweak color #(css-color 'darkred)""",
            # r"- \tweak Y-extent ##f",
            # r"- \tweak Y-offset -12",
            # r"""- \tweak bound-details.left.Y #-10.5""",
            # r"""- \tweak bound-details.right.Y #-6.5""",
        ],
    ),
    library.color_voice(),
    voice=score["cello legno voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 4)),
    evans.RhythmHandler(
        rhythm.rhythm_c(stage=3, instrument="cello", index=10),
    ),
    trinton.rewrite_meter_command(boundary_depth=-2),
    evans.PitchHandler(["d"]),
    trinton.pitch_with_selector_command(
        pitch_list=[["cqs,", "bf,"]],
        selector=trinton.durational_selector(
            durations=[abjad.Duration((1, 16))],
            preselector=trinton.logical_ties(pitched=True),
        ),
    ),
    # trinton.annotate_leaves_locally(
    #     selector=abjad.select.leaves,
    # ),
    library.attach_gamelan_scale_cent_markups(
        scale_degrees=[[10, 1]],
        selector=trinton.select_leaves_by_index([1, 10, 12], pitched=True),
        padding=4.5,
    ),
    library.attach_gamelan_scale_cent_markups(
        scale_degrees=[[10, 1]],
        selector=trinton.select_leaves_by_index([6, 14], pitched=True),
        padding=6,
    ),
    trinton.change_lines(
        lines=1,
        clef="bass",
        selector=trinton.select_leaves_by_index([1, 3, 8, 12, 15, 17]),
        invisible_barlines=False,
    ),
    trinton.change_lines(
        lines=5,
        clef="bass",
        selector=trinton.select_leaves_by_index([2, 7, 11, 14, 16]),
        invisible_barlines=False,
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([0, 3, 7, 9, 10, 14, 15, 17]),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.patterned_tie_index_selector(
            [0, 3, 5, 6, 9, 12], 15, first=True, pitched=True
        ),
    ),
    trinton.spanner_command(
        strings=[r"bridge", r"MSP", r"bridge"],
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 1, 3, 3, 5], first=True, pitched=True
        ),
        style="solid-line-with-arrow",
        padding=13,
        right_padding=0,
        direction=None,
        full_string=False,
        end_hook=True,
        end_hook_right_padding=-0.5,
        command="One",
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 1""",
        ],
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup { "" }""",
            r"""\markup { "MSP" }""",
            r"""\markup { \hspace #1 { "bridge" } }""",
        ],
        selector=trinton.select_logical_ties_by_index(
            [5, 6, 6, 7, 7, 8], first=True, pitched=True
        ),
        style="solid-line-with-arrow",
        padding=13,
        right_padding=0,
        direction=None,
        full_string=True,
        end_hook=True,
        end_hook_right_padding=-0.5,
        command="One",
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 1""",
        ],
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup { "" }""",
            r"""\markup { "MSP" }""",
            r"""\markup { \hspace #1.5 { "bridge" } }""",
        ],
        selector=trinton.select_logical_ties_by_index(
            [8, 9, 9, 10], first=True, pitched=True
        ),
        style="solid-line-with-arrow",
        padding=13,
        right_padding=0,
        direction=None,
        full_string=True,
        end_hook=False,
        end_hook_right_padding=-0.5,
        command="One",
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 1""",
        ],
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup { "MSP" }""",
            r"""\markup { \hspace #1.5 { "bridge" } }""",
            r"""\markup { "MSP" }""",
            r"""\markup { \hspace #2 { "bridge" } }""",
        ],
        selector=trinton.select_logical_ties_by_index(
            [11, 12, 12, 13, 13, 14], first=True, pitched=True
        ),
        style="solid-line-with-arrow",
        padding=13,
        right_padding=0,
        direction=None,
        full_string=True,
        end_hook=False,
        end_hook_right_padding=-0.5,
        command="One",
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 1""",
        ],
    ),
    trinton.tremolo_command(
        selector=trinton.select_leaves_by_index([7, 15, 16], pitched=True)
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\once \override StemTremolo.stencil = #ly:text-interface::print",
                    r"""\once \override StemTremolo.text = \markup { \fontsize #3.5 \override #'(font-name . "ekmelos") \lower #1 { \char ##xe222 } }""",
                ],
                site="before",
            )
        ],
        selector=trinton.select_leaves_by_index([7, 15], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\once \override StemTremolo.stencil = #ly:text-interface::print",
                    r"""\once \override StemTremolo.text = \markup { \fontsize #3.5 \override #'(font-name . "ekmelos") \raise #1 { \char ##xe222 } }""",
                ],
                site="before",
            )
        ],
        selector=trinton.select_leaves_by_index([16], pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup { "CLB" }""",
        selector=trinton.select_leaves_by_index([7, 8], pitched=True),
        padding=9.5,
        direction=None,
        right_padding=-1,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="Two",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 1""",
            # r"""- \tweak bound-details.left.Y #5.5""",
            # r"""- \tweak bound-details.right.Y #7""",
        ],
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup { "CLB" }""",
        selector=trinton.select_leaves_by_index([15, 16], pitched=True),
        padding=9.5,
        direction=None,
        right_padding=3,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="Two",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 1""",
            # r"""- \tweak bound-details.left.Y #5.5""",
            # r"""- \tweak bound-details.right.Y #7""",
        ],
    ),
    voice=score["cello 2 voice"],
)

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
    ["violin 2 voice", "violin 4 voice", "viola 2 voice temp", "cello 2 voice temp"],
    [1, 1.5, 3, 3],
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
for measure in [1, 2]:
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
    lambda _: trinton.select_target(_, (1, 2)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (15 16.5 16.5 36)))",
                site="absolute_before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0, 1]),
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
