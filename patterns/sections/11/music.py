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
        ts.return_d_material_ts(measure_amount=4, index=17),
        ts.return_c_material_ts(measure_amount=5, index=27),
        [(1, 4)],
    ],
)

score = library.patterns_score(
    section_ts,
)

# first violin music

# second violin music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.talea([1, 2], 8)),
    trinton.pitch_with_selector_command(
        pitch_list=["d'"], selector=trinton.patterned_leaf_index_selector([0], 2)
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["15/16"],
        selector=trinton.patterned_leaf_index_selector([-1], 2),
        as_ratios=True,
    ),
    trinton.force_accidentals_command(
        selector=trinton.patterned_leaf_index_selector([-1], 2)
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.patterned_leaf_index_selector([-1], 2),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.pleaves(),
    ),
    abjad.beam,
    trinton.spanner_command(
        strings=["norm.", "3/4 scratch"],
        selector=trinton.select_logical_ties_by_index(
            [0, -1], pitched=True, first=True
        ),
        style="solid-line-with-arrow",
        padding=6,
        right_padding=0,
        direction=None,
        full_string=False,
        end_hook=False,
        end_hook_right_padding=3,
        command="Two",
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 1""",
        ],
    ),
    voice=score["violin 4 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 5)),
    evans.RhythmHandler(
        evans.tuplet(
            [
                (-1, 3, -1, 3, -1, 3, -1, 3, -1, 3),
                (-1, 3, -1),
                (1, -1, 1),
                (1, -1),
                (-8, 7, 1),
                (-1,),
            ]
        ),
    ),
    rmakers.rewrite_dots,
    trinton.respell_tuplets_command(rewrite_brackets=False),
    trinton.rewrite_meter_command(boundary_depth=-2),
    evans.PitchHandler(
        [
            "d'",
            "a",
            "g'",
            "c'",
            "b'",
            "e''",
            "e''",
            "e''",
            "b'",
            "e'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
        ]
    ),
    library.tablature_staff(
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\set Staff.forceClef = ##t",
                site="before",
            ),
            abjad.LilyPondLiteral(
                r"\set Staff.forceClef = ##f",
                site="absolute_after",
            ),
        ],
        selector=trinton.select_leaves_by_index([0, 1]),
    ),
    trinton.change_notehead_command(
        notehead="harmonic",
        selector=trinton.select_logical_ties_by_index(
            [0, 2, 5, 6, 7, -2], pitched=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\big-half-harmonic", site="before")],
        selector=trinton.select_logical_ties_by_index(
            [1, 3, 4, 8], first=True, pitched=True, grace=False
        ),
    ),
    # trinton.annotate_leaves_locally(
    #     selector=abjad.select.leaves,
    #     direction=abjad.DOWN
    # ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([0, 9, 12, 13], grace=False),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = #-8", site="before"
            )
        ],
        selector=abjad.select.rests,
    ),
    trinton.manual_beam_positions(
        positions=(-9, -9),
        selector=abjad.select.leaves,
    ),
    library.tablature_trill(
        trill_pitch="g",
        selector=trinton.select_leaves_by_index([1, 2]),
        bound_details=(-5, -5),
        direction=abjad.DOWN,
    ),
    library.tablature_trill(
        trill_pitch="e'",
        selector=trinton.select_leaves_by_index([3, 4]),
        bound_details=(-5, -5),
        direction=abjad.DOWN,
    ),
    library.tablature_trill(
        trill_pitch="b",
        selector=trinton.select_leaves_by_index([5, 6]),
        bound_details=(-5, -5),
        direction=abjad.DOWN,
    ),
    library.tablature_trill(
        trill_pitch="g'",
        selector=trinton.select_leaves_by_index([7, 8]),
        bound_details=(-5, -5),
        direction=abjad.DOWN,
    ),
    library.tablature_trill(
        trill_pitch="e'",
        selector=trinton.select_leaves_by_index([9, 10]),
        bound_details=(-5, -5),
        direction=abjad.DOWN,
    ),
    library.tablature_trill(
        trill_pitch="f'",
        selector=trinton.select_leaves_by_index([11, 13]),
        bound_details=(0, 0),
        direction=abjad.DOWN,
    ),
    library.tablature_trill(
        trill_pitch="a'",
        selector=trinton.select_leaves_by_index([14, 15]),
        bound_details=(-2.5, -2.5),
        direction=abjad.DOWN,
    ),
    library.tablature_trill(
        trill_pitch="a'",
        selector=trinton.select_leaves_by_index([16, 17]),
        bound_details=(-2.5, -2.5),
        direction=abjad.DOWN,
    ),
    library.tablature_trill(
        trill_pitch="e''",
        selector=trinton.select_leaves_by_index([17, 18]),
        bound_details=(-1, -1),
        direction=abjad.DOWN,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\override TrillSpanner.bound-details.right.padding = #1.5",
                site="before",
            ),
            abjad.LilyPondLiteral(
                r"\revert TrillSpanner.bound-details.right.padding",
                site="absolute_after",
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(
            evans.tuplet(
                [
                    (-1, 3, -1, 3, -1, 3, -1, 3, -1, 3, -1, 3),
                    (1, -1, 1),
                    (-1, 3, -1),
                    (-2, 5),
                    (-1, 1),
                    (-1,),
                ]
            )
        ),
        direction=abjad.UP,
        voice_name="violin 2 bow voice",
        temp_name="fingers",
        preprocessor=trinton.fuse_eighths_preprocessor((10, 5, 5, 4, 8)),
    ),
    voice=score["violin 4 voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((10, 5, 5, 4, 8)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\once \override NoteHead.duration-log = #1",
                    r"\once \override Dots.stencil = ##f",
                ],
                site="before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.noteheads_only(selector=trinton.select_leaves_by_index([-1], pitched=True)),
    trinton.transparent_noteheads(
        selector=trinton.select_leaves_by_index([-1], pitched=True)
    ),
    library.tablature_trill(
        trill_pitch="a",
        notehead="harmonic",
        selector=trinton.select_leaves_by_index([-2, -1]),
        bound_details=(-2.5, -2.5),
        direction=abjad.DOWN,
    ),
    voice=score["violin 4 voice fingers"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 5)),
    rmakers.rewrite_dots,
    trinton.respell_tuplets_command(rewrite_brackets=False),
    trinton.rewrite_meter_command(boundary_depth=-2),
    evans.PitchHandler(
        [
            ["b"],
            ["c'"],
            ["d'"],
            ["e'"],
            ["f'"],
            ["g'"],
            ["a'"],
            ["b'"],
            ["c''"],
            ["d''"],
            ["c'"],
            ["c'"],
            ["c'"],
            ["c'"],
            ["c'"],
            ["c'"],
            ["c'"],
            ["c'"],
            ["c'"],
            ["c'"],
            ["c'"],
            ["c'"],
            ["c'"],
            ["c'"],
            ["c'"],
            ["c'"],
            ["c'"],
            ["c'"],
            ["c'"],
            ["c'"],
            ["c'"],
            ["c'"],
            ["c'"],
            ["c'"],
            ["c'"],
        ]
    ),
    # trinton.annotate_leaves_locally(
    #     selector=abjad.select.leaves,
    #     direction=abjad.UP
    # ),
    trinton.duration_line(
        selector=trinton.logical_ties(pitched=True, grace=False),
        color=r"(css-color 'darkred)",
        fraction=(15, 16),
    ),
    trinton.noteheads_only(selector=trinton.pleaves(grace=True)),
    trinton.change_notehead_command(
        notehead="cluster", selector=trinton.pleaves(exclude=[-1], grace=False)
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Articulation("tenuto"), r"- \tweak color #(css-color 'darkred)"
            ),
        ],
        selector=trinton.select_logical_ties_by_index(
            [-1], pitched=True, first=True, grace=False
        ),
        direction=abjad.DOWN,
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([0, 11, 17, 18], grace=False),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = #8", site="before"
            )
        ],
        selector=abjad.select.rests,
    ),
    trinton.manual_beam_positions(
        positions=(8, 8),
        selector=abjad.select.leaves,
    ),
    library.color_voice(),
    trinton.hooked_spanner_command(
        string=r"""IV""",
        selector=trinton.select_leaves_by_index(
            [0, 11],
            pitched=True,
        ),
        padding=12,
        right_padding=0.5,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="Two",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 1""",
        ],
    ),
    trinton.hooked_spanner_command(
        string=r"""(IV)""",
        selector=trinton.select_leaves_by_index(
            [12, 21],
            pitched=True,
        ),
        padding=10,
        right_padding=0.5,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="Two",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 1""",
        ],
    ),
    trinton.hooked_spanner_command(
        string=r"""(IV)""",
        selector=trinton.select_leaves_by_index(
            [22, -1],
            pitched=True,
        ),
        padding=6,
        right_padding=0.5,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="Two",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 1""",
        ],
    ),
    voice=score["violin 2 bow voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 9)),
    evans.RhythmHandler(
        rhythm.rhythm_d(stage=1, instrument="violin 2", index=1),
    ),
    trinton.force_rest(
        selector=trinton.select_logical_ties_by_index(
            [0, 3, 5, 8, 10], first=True, pitched=True, grace=False
        )
    ),
    trinton.rewrite_meter_command(boundary_depth=-1),
    library.tablature_staff(
        selector=trinton.select_leaves_by_index([0]), reset=True, reset_staff_lines=5
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\set Staff.forceClef = ##t",
                site="before",
            ),
            abjad.LilyPondLiteral(
                r"\set Staff.forceClef = ##f",
                site="absolute_after",
            ),
        ],
        selector=trinton.select_leaves_by_index([0, 1]),
    ),
    pitch.pitch_d(
        instrument="violin",
        string_range_pairs=[
            ("IV", (0, 13)),
        ],
        stage=1,
        index=8,
        initial_seed=1,
        selector=trinton.logical_ties(pitched=True, grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.bundle(
                    abjad.Articulation("talon-to-punta"), r"- \tweak padding 1"
                ),
                abjad.bundle(
                    abjad.Articulation("punta-to-talon"), r"- \tweak padding 1"
                ),
            ]
        ),
        selector=trinton.select_logical_ties_by_index(
            [0, 2, 4, 6, 8], first=True, pitched=True, grace=False
        ),
        direction=abjad.UP,
    ),
    # trinton.annotate_leaves_locally(
    #     # selector=abjad.select.leaves
    #     selector=trinton.logical_ties(first=True, pitched=True, grace=False)
    #     # selector=trinton.pleaves()
    # ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [0, 2, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 15, 16, 17, 18, 19, 21]
        ),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index(
            [0, 1, 2, 3, 4, 5, 6, 7, 8, 15], pitched=True
        ),
        direction=abjad.DOWN,
    ),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\big-half-harmonic", site="before")],
        selector=trinton.pleaves(),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override TupletBracket.padding = #3.5", site="before"
            )
        ],
        selector=trinton.select_tuplets_by_index([0]),
    ),
    trinton.hooked_spanner_command(
        string=r"""MSP""",
        selector=trinton.select_leaves_by_index(
            [0, -1],
            pitched=True,
        ),
        padding=9.5,
        right_padding=3,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="Two",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 1""",
        ],
    ),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(
            evans.tuplet(
                [
                    (-1, 2),
                    (1, -2, 1, 1),
                    (1,),
                    (1, 1, 5),
                    (1, 1, 1, -2, 1),
                    (1,),
                    (2, 2, 1),
                    (1,),
                ]
            )
        ),
        direction=abjad.DOWN,
        voice_name="violin 2 legno voice",
        temp_name="hair",
        preprocessor=trinton.fuse_sixteenths_preprocessor((4, 4, 4, 7, 4, 3, 2, 1000)),
    ),
    voice=score["violin 4 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 9)),
    rmakers.rewrite_dots,
    trinton.respell_tuplets_command(rewrite_brackets=False),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler(["a,"]),
    trinton.change_notehead_command(
        notehead="cross",
        selector=trinton.durational_selector(
            durations=[abjad.Duration((1, 16)), abjad.Duration((1, 32))],
            preselector=trinton.logical_ties(pitched=True, grace=False),
            first=True,
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
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = #-16", site="before"
            )
        ],
        selector=abjad.select.rests,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Articulation("staccato"),
                r"""- \tweak color #(css-color 'darkred)""",
            )
        ],
        selector=trinton.durational_selector(
            durations=[abjad.Duration((1, 16)), abjad.Duration((1, 32))],
            preselector=trinton.logical_ties(pitched=True, grace=False),
            first=True,
        ),
        direction=abjad.UP,
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
    # trinton.annotate_leaves_locally(
    #     selector=abjad.select.leaves,
    #     # selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    #     direction=abjad.DOWN
    # ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [
                2,
                5,
                7,
                9,
                11,
                15,
                17,
                20,
            ]
        ),
    ),
    trinton.hooked_spanner_command(
        string="CLT DP",
        selector=trinton.select_leaves_by_index([0, 2], grace=False),
        padding=16.5,
        direction="down",
        right_padding=-2,
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
    trinton.hooked_spanner_command(
        string="CLT DP",
        selector=trinton.select_leaves_by_index([6, 7], grace=False),
        padding=13.5,
        direction="down",
        right_padding=-2,
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
    trinton.hooked_spanner_command(
        string="CLT DP",
        selector=trinton.select_leaves_by_index([9, 10], grace=False),
        padding=14,
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
    trinton.hooked_spanner_command(
        string="CLT DP",
        selector=trinton.select_leaves_by_index([16, 17], grace=False),
        padding=15.5,
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
    trinton.hooked_spanner_command(
        string="CLT DP",
        selector=trinton.select_leaves_by_index([21, 22], grace=False),
        padding=13.5,
        direction="down",
        right_padding=5,
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
    trinton.hooked_spanner_command(
        string="CLB OB",
        selector=trinton.select_leaves_by_index([2, 5, 11, 15], grace=False),
        padding=18.5,
        direction="down",
        right_padding=1,
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
    trinton.hooked_spanner_command(
        string=r"""\markup \column { \line { "CLB" } \line { "OB" } }""",
        selector=trinton.select_leaves_by_index([7, 9], grace=False),
        padding=17,
        direction="down",
        right_padding=-2,
        full_string=True,
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
    trinton.hooked_spanner_command(
        string=r"""\markup \column { \line { "CLB" } \line { "OB" } }""",
        selector=trinton.select_leaves_by_index([18, 20], grace=False),
        padding=18.5,
        direction="down",
        right_padding=2,
        full_string=True,
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
    library.color_voice(),
    voice=score["violin 2 legno voice"],
)

# viola music

# cello music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(rhythm.rhythm_e(lower_voice=False, index=5, shorten=True)),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(rhythm.rhythm_e(index=5, lower_voice=True, shorten=False)),
        direction=abjad.DOWN,
        voice_name="cello lower voice 1",
        temp_name="upper 1",
    ),
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(rhythm.rhythm_e(lower_voice=False, index=4, shorten=True)),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(rhythm.rhythm_e(index=4, lower_voice=True, shorten=True)),
        direction=abjad.DOWN,
        voice_name="cello lower voice 2",
        temp_name="upper 2",
    ),
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.talea([3], 8)),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False)
    ),
    evans.PitchHandler(["a", "c'", "a", "b"]),
    trinton.continuous_glissando(selector=trinton.pleaves(), zero_padding=True),
    trinton.hooked_spanner_command(
        string=r"""1/2 CLT""",
        selector=trinton.select_leaves_by_index(
            [0, -1],
            pitched=True,
        ),
        padding=6,
        right_padding=1,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="Two",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 1""",
        ],
    ),
    voice=score["cello 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.PitchHandler(["c,"]),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")], selector=trinton.select_leaves_by_index([0])
    ),
    voice=score["cello lower voice 1"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.PitchHandler(["c,"]),
    evans.PitchHandler(["5/2"], as_ratios=True),
    trinton.force_accidentals_command(
        selector=trinton.logical_ties(first=True, pitched=True, grace=False)
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    abjad.beam,
    voice=score["cello 2 voice upper 1"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    pitch.pitch_e(
        instrument="cello", selector=trinton.pleaves(), index=31, retrograde=False
    ),
    trinton.octavation(octave=-2, selector=trinton.pleaves(exclude=[-1])),
    trinton.octavation(
        octave=-1, selector=trinton.select_leaves_by_index([-1], pitched=True)
    ),
    trinton.respell_with_flats(
        selector=trinton.select_leaves_by_index([0], pitched=True)
    ),
    abjad.beam,
    voice=score["cello lower voice 2"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    pitch.pitch_e(
        instrument="cello", selector=trinton.pleaves(), index=31, retrograde=False
    ),
    trinton.octavation(octave=-2, selector=trinton.pleaves(exclude=[-2, -1])),
    trinton.octavation(
        octave=-1, selector=trinton.select_leaves_by_index([-2, -1], pitched=True)
    ),
    trinton.respell_with_flats(
        selector=trinton.select_leaves_by_index([0], pitched=True)
    ),
    abjad.beam,
    trinton.manual_beam_positions(positions=(5, 7), selector=trinton.pleaves()),
    trinton.hooked_spanner_command(
        string=r"""1/2 CLB""",
        selector=trinton.select_leaves_by_index(
            [0, 2],
            pitched=True,
        ),
        padding=10.5,
        right_padding=8,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="Two",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 1""",
        ],
    ),
    trinton.hooked_spanner_command(
        string=r"""CLB""",
        selector=trinton.select_leaves_by_index(
            [3, -1],
            pitched=True,
        ),
        padding=11,
        right_padding=2,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="Two",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 1""",
        ],
    ),
    voice=score["cello 2 voice upper 2"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 4)),
    evans.RhythmHandler(
        evans.tuplet(
            [
                (1, -3, 1),
                (-1, 1, -1),
                (-1, 1),
            ]
        ),
    ),
    rmakers.rewrite_dots,
    trinton.respell_tuplets_command(rewrite_brackets=False),
    trinton.rewrite_meter_command(boundary_depth=-2),
    evans.PitchHandler(
        [
            ["g''", "e''"],
            ["e''", "b'"],
            ["c''", "b'"],
            ["g'", "d'"],
        ]
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("treble")], selector=trinton.select_leaves_by_index([0])
    ),
    library.tablature_staff(
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation("staccato"),
        ],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation("marcato"),
        ],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
        direction=abjad.DOWN,
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([2, 3], grace=False),
    ),
    trinton.manual_beam_positions(
        positions=(-9, -9),
        selector=abjad.select.leaves,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = #-9", site="before"
            )
        ],
        selector=abjad.select.rests,
    ),
    trinton.change_notehead_command(
        notehead="harmonic",
        selector=trinton.notehead_selector(
            chord_indices=[0, 1, 2, 3],
            head_indices_lists=[
                [1],
                [1],
                [1],
                [1],
            ],
        ),
    ),
    trinton.change_notehead_command(
        notehead="cross",
        selector=trinton.notehead_selector(
            chord_indices=[0, 1, 2, 3],
            head_indices_lists=[
                [0],
                [0],
                [0],
                [0],
            ],
        ),
    ),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(
            evans.tuplet(
                [
                    (-1, 1, -1),
                    (1, -3, 1),
                    (2, -5),
                ]
            )
        ),
        direction=abjad.UP,
        voice_name="cello bow voice",
        temp_name="fingers",
        preprocessor=trinton.fuse_eighths_preprocessor((5, 5, 4)),
    ),
    voice=score["cello 2 voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((5, 5, 4)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 4)),
    rmakers.rewrite_dots,
    trinton.respell_tuplets_command(rewrite_brackets=False),
    trinton.rewrite_meter_command(boundary_depth=-2),
    evans.PitchHandler(
        [
            ["f''"],
            ["d''"],
            ["b'"],
            ["a'"],
        ]
    ),
    # # trinton.annotate_leaves_locally(
    # #     selector=abjad.select.leaves,
    # #     direction=abjad.UP
    # # ),
    trinton.change_notehead_command(
        notehead="cluster",
        selector=abjad.select.chords,
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
                abjad.Articulation("marcato"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
        ],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([5, 6], grace=False),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = #12", site="before"
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = #8", site="before"
            )
        ],
        selector=trinton.select_leaves_by_index([2, 4, 5, 8, 9]),
    ),
    trinton.manual_beam_positions(
        positions=(8, 8),
        selector=abjad.select.leaves,
    ),
    library.color_voice(),
    trinton.hooked_spanner_command(
        string=r"""I""",
        selector=trinton.select_leaves_by_index(
            [0, -1],
        ),
        padding=12.5,
        right_padding=0.5,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="Two",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 1""",
        ],
    ),
    voice=score["cello bow voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 6)),
    evans.RhythmHandler(rhythm.rhythm_c(stage=4, instrument="cello", index=2)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler(pitch_list=["c"]),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([2, 3, 5, 6]),
    ),
    library.tablature_staff(
        selector=trinton.select_leaves_by_index([0]), reset=True, reset_staff_lines=5
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Clef("bass"),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\big-half-harmonic", site="before")],
        selector=trinton.pleaves(),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.hooked_spanner_command(
        string=r"""IV, MST, bowing string + waist""",
        selector=trinton.select_leaves_by_index(
            [0, -1],
            pitched=True,
        ),
        padding=6.5,
        right_padding=1.5,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="Two",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 1""",
        ],
    ),
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 9)),
    evans.RhythmHandler(
        rhythm.rhythm_d(stage=4, instrument="cello", index=0),
    ),
    trinton.force_rest(
        selector=trinton.select_logical_ties_by_index(
            [2, 4, 5], pitched=True, grace=False
        )
    ),
    trinton.rewrite_meter_command(boundary_depth=-1),
    pitch.pitch_d(
        instrument="cello",
        string_range_pairs=[
            ("I", (0, 8)),
        ],
        stage=4,
        index=0,
        initial_seed=0,
        selector=trinton.logical_ties(pitched=True, grace=False),
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
        selector=trinton.select_logical_ties_by_index(
            [0, 2, 3], first=True, pitched=True, grace=False
        ),
        direction=abjad.UP,
    ),
    # trinton.annotate_leaves_locally(
    #     # selector=abjad.select.leaves
    #     selector=trinton.logical_ties(first=True, pitched=True, grace=False)
    #     # selector=trinton.pleaves()
    # ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [0, 2, 3, 4, 5, 6, 7, 11, 12, 13, 16, 18]
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BeamCount(left=1, right=2),
            abjad.BeamCount(left=2, right=1),
        ],
        selector=trinton.select_leaves_by_index([8, 10]),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index([0, 1, 4, 13], pitched=True),
        direction=abjad.DOWN,
    ),
    trinton.force_accidentals_command(
        selector=trinton.logical_ties(first=True, pitched=True, grace=False)
    ),
    library.d_stage_3_noteheads(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override TupletBracket.padding = #4.25", site="before"
            ),
            abjad.LilyPondLiteral(
                r"\once \override TupletBracket.padding = #5", site="before"
            ),
        ],
        selector=trinton.select_tuplets_by_index([0, 1]),
    ),
    trinton.hooked_spanner_command(
        string=r"""MSP""",
        selector=trinton.select_leaves_by_index(
            [0, -1],
            pitched=True,
        ),
        padding=15.5,
        right_padding=1,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="Two",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 1""",
        ],
    ),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(
            evans.tuplet(
                [
                    (4, 1),
                    (2, 2, -2, 8, 1, 1),
                    (1,),
                    (1, 1, 8),
                    (1,),
                    (-1,),
                ]
            )
        ),
        direction=abjad.DOWN,
        voice_name="cello legno voice",
        temp_name="hair",
        preprocessor=trinton.fuse_sixteenths_preprocessor(
            (
                4,
                8,
                1,
                4,
                15,
                1000,
            )
        ),
    ),
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 9)),
    rmakers.rewrite_dots,
    trinton.respell_tuplets_command(rewrite_brackets=False),
    trinton.rewrite_meter_command(boundary_depth=-1),
    trinton.attachment_command(
        attachments=[
            abjad.Tie(),
        ],
        selector=trinton.select_leaves_by_index([12]),
    ),
    evans.PitchHandler(["c,"]),
    trinton.change_notehead_command(
        notehead="cross",
        selector=trinton.durational_selector(
            durations=[abjad.Duration((1, 16)), abjad.Duration((1, 32))],
            preselector=trinton.logical_ties(pitched=True, grace=False),
            first=True,
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
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = #-8", site="before"
            )
        ],
        selector=abjad.select.rests,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Articulation("staccato"),
                r"""- \tweak color #(css-color 'darkred)""",
            )
        ],
        selector=trinton.durational_selector(
            durations=[abjad.Duration((1, 16)), abjad.Duration((1, 32))],
            preselector=trinton.logical_ties(pitched=True, grace=False),
            first=True,
        ),
        direction=abjad.UP,
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
    # trinton.annotate_leaves_locally(
    #     selector=abjad.select.leaves,
    #     # selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    #     direction=abjad.DOWN
    # ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [
                2,
                5,
                6,
                8,
                9,
                11,
            ]
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.BeamCount(left=1, right=3)],
        selector=trinton.select_leaves_by_index([10]),
    ),
    trinton.hooked_spanner_command(
        string="CLT DP",
        selector=trinton.select_leaves_by_index([0, 1], grace=False),
        padding=14,
        direction="down",
        right_padding=-2,
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
    trinton.hooked_spanner_command(
        string="CLT DP",
        selector=trinton.select_leaves_by_index([5, 7], grace=False),
        padding=11,
        direction="down",
        right_padding=-2,
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
    trinton.hooked_spanner_command(
        string="CLT DP",
        selector=trinton.select_leaves_by_index([12, 15], grace=False),
        padding=15,
        direction="down",
        right_padding=4,
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
    trinton.hooked_spanner_command(
        string="CLB OB",
        selector=trinton.select_leaves_by_index([1, 4], grace=False),
        padding=13,
        direction="down",
        right_padding=1,
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
    trinton.hooked_spanner_command(
        string="CLB OB",
        selector=trinton.select_leaves_by_index([7, 11], grace=False),
        padding=12,
        direction="down",
        right_padding=1,
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
    library.color_voice(),
    voice=score["cello legno voice"],
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
    ["violin 2 voice", "violin 4 voice", "viola 2 voice", "cello 1 voice"],
    [1.5, 1, 1.5, 2.5],
    [-6, -8.5, -6, -6],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (1,)),
        trinton.attachment_command(
            attachments=[
                trinton.tempo_markup(
                    note_value=4,
                    tempo=138,
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
        "violin 2 voice",
        # "violin 4 voice",
        "viola 2 voice",
        # "cello 1 voice",
    ],
    [
        3,
        # 18.5,
        3,
        # 9.5,
    ],
    [
        -1,
        # -2,
        -1,
        # 11,
    ],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (5, 7)),
        trinton.spanner_command(
            strings=[
                trinton.tempo_markup(
                    note_value=4,
                    tempo=59,
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
                    tempo=59,
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

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    trinton.spanner_command(
        strings=[
            trinton.tempo_markup(
                note_value=4,
                tempo=59,
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
                tempo=59,
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
        selector=trinton.select_leaves_by_index([0, -1]),
        style="solid-line-with-arrow",
        padding=11,
        tweaks=None,
        right_padding=58,
        direction=None,
        full_string=True,
        command="Three",
    ),
    voice=score["violin 2 bow voice"],
)


trinton.make_music(
    lambda _: trinton.select_target(_, (5, 6)),
    trinton.spanner_command(
        strings=[
            trinton.tempo_markup(
                note_value=4,
                tempo=59,
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
                tempo=59,
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
        selector=trinton.select_leaves_by_index([0, -1]),
        style="solid-line-with-arrow",
        padding=17.5,
        tweaks=None,
        right_padding=9,
        direction=None,
        full_string=True,
        command="Three",
    ),
    voice=score["cello 2 voice"],
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

for measure in [1, 3, 5, 6, 8, 9]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\noBreak", site="absolute_after")],
            selector=trinton.select_leaves_by_index([0]),
            tag=abjad.Tag("+SCORE"),
        ),
        voice=score["Global Context"],
    )

for measure in [2, 4, 7]:
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
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (14 17 17 17 17)))",
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
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (14 17 16 19)))",
                site="absolute_before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (11 20 30 30)))",
                site="absolute_before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (11 17 27 24)))",
                site="absolute_before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

# instrument names

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

# beautification

trinton.remove_redundant_time_signatures(score=score)
library.whiteout_empty_staves(
    score=score, voice_names=["viola 1 voice", "cello 1 voice"]
)

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
    segment_path="/Users/trintonprater/scores/patterns/patterns/sections/11",
    build_path="/Users/trintonprater/scores/patterns/patterns/build",
    segment_name="11",
    includes=[
        "/Users/trintonprater/scores/patterns/patterns/build/patterns-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
