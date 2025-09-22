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
        [(5, 4)],
        ts.return_d_material_ts(measure_amount=2, index=7),
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
        evans.tuplet(
            [
                (-1,),
                (-1, 1, 1, -1, 1, -2),
                (-1, 1, 1, 1, -1, 1),
                (1, 1, -1, 1),
                (-1,),
                (-1, 1, 1, 1, -1, 1),
                (1, 1, -1, 1),
                (-1,),
            ]
        )
    ),
    trinton.treat_tuplets(),
    trinton.respell_tuplets_command(rewrite_brackets=False),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler(
        [
            ["e''", "b'"],
            ["e''", "b'"],
            ["a", "b"],
            ["a", "b"],
            ["a", "c'"],
            ["a", "d'"],
            ["f''", "c''"],
        ],
    ),
    # trinton.annotate_leaves_locally(
    #     # selector=trinton.pleaves(),
    #     selector=abjad.select.leaves,
    #     direction=abjad.UP
    # ),
    # trinton.annotate_leaves_locally(
    #     selector=abjad.select.chords,
    #     direction=abjad.DOWN
    # ),
    library.tablature_staff(
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([1, 6, 7, 12, 13, 16, 18, 23, 24, 30]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BeamCount(left=3, right=1),
            abjad.BeamCount(left=1, right=4),
        ],
        selector=trinton.select_leaves_by_index([26, 27]),
    ),
    trinton.manual_beam_positions(
        positions=(-7.5, -7.5),
        selector=trinton.select_leaves_by_index(
            [1, 6, 13, 16, 18, 23],
        ),
    ),
    trinton.manual_beam_positions(
        positions=(-6.5, -6.5),
        selector=trinton.select_leaves_by_index(
            [7, 12],
        ),
    ),
    trinton.manual_beam_positions(
        positions=(-12.5, -12.5),
        selector=trinton.select_leaves_by_index(
            [24, 30],
        ),
    ),
    trinton.change_notehead_command(
        notehead="cross",
        selector=trinton.notehead_selector(
            chord_indices=[
                0,
                1,
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
            ],
            head_indices_lists=[
                [1],
                [1],
                [0],
                [0],
                [0],
                [0],
                [1],
                [1],
                [1],
                [0],
                [0],
                [0],
                [0],
                [1],
                [1],
                [1],
                [0],
            ],
        ),
    ),
    trinton.change_notehead_command(
        notehead="harmonic",
        selector=trinton.notehead_selector(
            chord_indices=[
                0,
                1,
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
            ],
            head_indices_lists=[
                [0],
                [0],
                [1],
                [1],
                [1],
                [1],
                [0],
                [0],
                [0],
                [1],
                [1],
                [1],
                [1],
                [0],
                [0],
                [0],
                [1],
            ],
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.select_logical_ties_by_index(
            [2, 5, 9, 12, -1], first=True, pitched=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = #-7", site="before"
            )
        ],
        selector=abjad.select.rests,
    ),
    trinton.detach_command(
        detachments=[abjad.LilyPondLiteral],
        selector=trinton.select_leaves_by_index([26, 27]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = #-9", site="before"
            )
        ],
        selector=trinton.select_leaves_by_index([26, 27]),
    ),
    # trinton.linear_attachment_command(
    #     attachments=[
    #         abjad.Dynamic("mp"),
    #
    #     ],
    #     selector=trinton.select_leaves_by_index(
    #         [
    #
    #         ],
    #         pitched=True,
    #     ),
    # ),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \fontsize #2 { \hspace #-10.5 { "Fng. Perc.:" } }"""
            )
        ],
        selector=trinton.select_leaves_by_index([1]),
    ),
    trinton.IntermittentVoiceHandler(
        rhythm_handler=evans.RhythmHandler(
            evans.talea(
                [
                    -13,
                    6,
                    -2,
                    5,
                    -2,
                    -16,
                    -1,
                    5,
                    -1000,
                ],
                16,
            )
        ),
        direction=abjad.UP,
        voice_name="violin 1 bow voice",
    ),
    voice=score["violin 2 voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor((12, 8, 8, 4, 12, 6, 3, 1000)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler(
        [
            ["f'"],
        ],
    ),
    # trinton.annotate_leaves_locally(
    #     selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    #     # selector=abjad.select.leaves,
    # ),
    trinton.duration_line(selector=trinton.logical_ties(pitched=True, grace=False)),
    trinton.noteheads_only(selector=trinton.pleaves(grace=True)),
    trinton.change_notehead_command(
        notehead="cluster",
        selector=abjad.select.chords,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = #10", site="before"
            )
        ],
        selector=abjad.select.rests,
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [1, 2, 3, 4, 5, 6, 7, 8, 11, 12], grace=False
        ),
    ),
    trinton.manual_beam_positions(positions=(8, 8), selector=abjad.select.leaves),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mp"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("ppp"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 2, 3], first=True, pitched=True
        ),
        direction=abjad.DOWN,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \fontsize #2 { \hspace #-4.5 \raise #2 { "Bow:" } }"""
            )
        ],
        selector=trinton.select_leaves_by_index([1]),
    ),
    trinton.hooked_spanner_command(
        string=r"""IV""",
        selector=trinton.select_leaves_by_index([2, 4]),
        padding=10,
        direction=None,
        right_padding=2,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="One",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 2""",
            # r"""- \tweak bound-details.left.Y #5.5""",
            # r"""- \tweak bound-details.right.Y #7""",
        ],
    ),
    trinton.hooked_spanner_command(
        string=r"""III""",
        selector=trinton.select_leaves_by_index([7, 12]),
        padding=10,
        direction=None,
        right_padding=-1,
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
    trinton.hooked_spanner_command(
        string=r"II",
        selector=trinton.select_leaves_by_index([14, -1]),
        padding=10,
        direction=None,
        right_padding=10,
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
    voice=score["violin 1 bow voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.RhythmHandler(evans.tuplet([(1, 1, 1, 1)])),
    evans.PitchHandler([["a", "b"]]),
    trinton.noteheads_only(),
    trinton.change_notehead_command(
        notehead="cross",
        selector=trinton.notehead_selector(
            chord_indices=[
                0,
                1,
                2,
                3,
            ],
            head_indices_lists=[[1], [1], [1], [1]],
        ),
    ),
    trinton.change_notehead_command(
        notehead="harmonic",
        selector=trinton.notehead_selector(
            chord_indices=[
                0,
                1,
                2,
                3,
            ],
            head_indices_lists=[[0], [0], [0], [0]],
        ),
    ),
    trinton.hooked_spanner_command(
        string=r"II",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=6,
        direction=None,
        right_padding=1,
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
    voice=score["violin 2 voice"],
)

# second violin music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.talea([-8, 1, -2, 1, -7, 1], 16)),
    evans.PitchHandler(
        [
            ["b'", "d''"],
            ["c'", "d'"],
            ["d'", "g'"],
        ],
    ),
    library.tablature_staff(
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([1, 3]),
    ),
    trinton.change_notehead_command(
        notehead="cross",
        selector=trinton.notehead_selector(
            chord_indices=[0, 1, 2], head_indices_lists=[[0], [0], [0]]
        ),
    ),
    trinton.change_notehead_command(
        notehead="harmonic",
        selector=trinton.notehead_selector(
            chord_indices=[0, 2], head_indices_lists=[[1], [1]]
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = #-7", site="before"
            )
        ],
        selector=abjad.select.rests,
    ),
    trinton.IntermittentVoiceHandler(
        rhythm_handler=evans.RhythmHandler(
            evans.talea(
                [
                    -7,
                    1,
                    -2,
                    1,
                    -7,
                    1,
                    -1 - 100,
                ],
                16,
            )
        ),
        direction=abjad.UP,
        voice_name="violin 2 bow voice 1",
        temp_name="temp 1",
    ),
    voice=score["violin 4 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    # trinton.linear_attachment_command(
    #     attachments=[abjad.Dynamic("mf"), abjad.StartHairpin(">"), abjad.Dynamic("mp")],
    #     selector=trinton.select_leaves_by_index([0, 1, 3], pitched=True),
    # ),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(r"""\markup \fontsize #2 { \hspace #-11 { "Fng. Perc.:" } }""")
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    voice=score["violin 4 voice temp 1"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler(
        [
            ["a''"],
            ["b'"],
            ["a"],
        ],
    ),
    trinton.change_notehead_command(
        notehead="cluster",
        selector=abjad.select.chords,
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("staccato")],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
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
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([1, 2, 3, 5, 7, 9]),
    ),
    trinton.manual_beam_positions(
        positions=(7, 7), selector=trinton.select_leaves_by_index([3, 4, 7, 9])
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \fontsize #2 { \hspace #-4.5 \raise #2 { "Bow:" } }"""
            )
        ],
        selector=trinton.select_leaves_by_index([1]),
    ),
    trinton.hooked_spanner_command(
        string=r"""III""",
        selector=trinton.select_leaves_by_index([2, -1]),
        padding=11,
        direction=None,
        right_padding=1,
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
    trinton.attachment_command(
        attachments=[abjad.Dynamic("mp")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
        direction=abjad.DOWN,
    ),
    voice=score["violin 2 bow voice 1"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(rhythm.rhythm_b(instrument="violin 2", stage=3, index=3)),
    trinton.force_rest(selector=trinton.select_leaves_by_index([0, 1, 2, 3])),
    evans.PitchHandler(
        [
            "cs'",
            "d'",
            "c'",
            "df'",
            "b",
            "c'",
            "a",
            "bf",
            "gqs",
            "af",
        ]
    ),
    library.tablature_staff(
        selector=trinton.select_leaves_by_index([0]), reset_staff_lines=5, reset=True
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([0, 6, 7, 12]),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index([0, 4, 5, 8], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Staff.Clef.X-extent = #'(-1 . 2)", site="before"
            ),
            abjad.Clef("treble"),
            abjad.Articulation(">"),
            abjad.Articulation("tenuto"),
            abjad.Articulation("tenuto"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, 5, 9], pitched=True),
    ),
    trinton.continuous_glissando(
        selector=trinton.select_leaves_by_index([0, 1, 2, 3, 4], pitched=True),
        zero_padding=True,
    ),
    trinton.continuous_glissando(
        selector=trinton.select_leaves_by_index([5, 6, 7, 8, 9], pitched=True),
        zero_padding=True,
    ),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\big-half-harmonic", site="before")],
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
            ],
            pitched=True,
        ),
    ),
    trinton.change_notehead_command(
        notehead="harmonic",
        selector=trinton.select_leaves_by_index([2, 3, 4], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override DynamicLineSpanner.staff-padding = #5.5",
                site="before",
            ),
            abjad.Dynamic('"mf"'),
            abjad.StartHairpin("|>"),
            abjad.Dynamic('"p"'),
            abjad.StartHairpin(">"),
            abjad.Dynamic('"pp"'),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, 5, 5, -1], pitched=True),
    ),
    trinton.spanner_command(
        strings=[
            r"\normale-bow-rotation",
            r"\bow-tip-half-down",
            r"\normale-bow-rotation",
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 5, 5, -1], first=True, pitched=True
        ),
        style="solid-line-with-arrow",
        padding=12.5,
        tweaks=None,
        right_padding=0,
        direction=None,
        full_string=True,
        command="One",
    ),
    trinton.spanner_command(
        strings=[r"1/4 Spz.", r"Spz."],
        selector=trinton.select_logical_ties_by_index(
            [0, -1], pitched=True, first=True
        ),
        style="solid-line-with-arrow",
        padding=15,
        right_padding=0,
        direction=None,
        full_string=False,
        end_hook=False,
        end_hook_right_padding=0,
        command="Two",
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 1""",
        ],
    ),
    voice=score["violin 4 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(
        evans.tuplet([(-8, 1, -2, 1, -7, 1)]),
    ),
    trinton.treat_tuplets(),
    trinton.respell_tuplets_command(rewrite_brackets=False),
    evans.PitchHandler(
        [
            ["b'", "d''"],
            ["c'", "d'"],
            ["d'", "g'"],
        ],
    ),
    library.tablature_staff(
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([1, 3]),
    ),
    trinton.change_notehead_command(
        notehead="cross",
        selector=trinton.notehead_selector(
            chord_indices=[0, 1, 2], head_indices_lists=[[0], [0], [0]]
        ),
    ),
    trinton.change_notehead_command(
        notehead="harmonic",
        selector=trinton.notehead_selector(
            chord_indices=[0, 2], head_indices_lists=[[1], [1]]
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = #-7", site="before"
            )
        ],
        selector=abjad.select.rests,
    ),
    trinton.IntermittentVoiceHandler(
        rhythm_handler=evans.RhythmHandler(
            evans.tuplet([(-4, -3, 1, -2, 1, -1, -4, -2, 1, -1)]),
        ),
        direction=abjad.UP,
        voice_name="violin 2 bow voice 2",
        temp_name="temp 2",
    ),
    voice=score["violin 4 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(r"""\markup \fontsize #2 { \hspace #-9.5 { "F. Perc.:" } }"""),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["violin 4 voice temp 2"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    trinton.treat_tuplets(),
    trinton.respell_tuplets_command(rewrite_brackets=False),
    evans.PitchHandler(
        [
            ["a''"],
            ["b'"],
            ["a"],
        ],
    ),
    trinton.change_notehead_command(
        notehead="cluster",
        selector=abjad.select.chords,
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("staccato")],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
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
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([1, 2, 3, 5, 7, 9]),
    ),
    trinton.manual_beam_positions(
        positions=(7, 7), selector=trinton.select_leaves_by_index([3, 4, 7, 9])
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \fontsize #2 { \hspace #-5.5 \raise #2 { "Bow:" } }"""
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.hooked_spanner_command(
        string=r"""IV""",
        selector=trinton.select_leaves_by_index([2, -1]),
        padding=13,
        direction=None,
        right_padding=1,
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
    trinton.attachment_command(
        attachments=[abjad.Dynamic("ppp")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
        direction=abjad.DOWN,
    ),
    voice=score["violin 2 bow voice 2"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.RhythmHandler(evans.tuplet([(1, 1, 1, 1, 1)])),
    evans.PitchHandler([["a"]]),
    trinton.noteheads_only(),
    trinton.invisible_tuplet_brackets(),
    trinton.change_notehead_command(
        notehead="cluster",
        selector=abjad.select.chords,
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("staccato")],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
        direction=abjad.DOWN,
    ),
    trinton.hooked_spanner_command(
        string=r"IV",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=6,
        direction=None,
        right_padding=1,
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
    voice=score["violin 4 voice"],
)

# viola music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.RhythmHandler(rhythm.rhythm_b(stage=1, instrument="viola", index=8)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler(["f", "cqs", "a", "d'", "g", "e"]),
    trinton.attachment_command(
        attachments=[abjad.Clef("alto")],
        selector=trinton.select_leaves_by_index([0]),
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
        selector=trinton.select_leaves_by_index([3], pitched=True),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartSlur(), abjad.StopSlur()],
        selector=trinton.select_leaves_by_index([0, 3], pitched=True, grace=False),
        direction=abjad.DOWN,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\big-half-harmonic", site="before"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 2], first=True, grace=False
        ),
    ),
    trinton.change_notehead_command(
        notehead="harmonic",
        selector=trinton.select_logical_ties_by_index([5], first=True, grace=False),
    ),
    trinton.hooked_spanner_command(
        string=r"""\normale-bow-rotation""",
        selector=trinton.select_logical_ties_by_index([0, 1], first=True, pitched=True),
        style="dashed-line-with-hook",
        padding=7,
        right_padding=-0.5,
        direction=None,
        full_string=True,
        command="One",
    ),
    trinton.spanner_command(
        strings=[r"""\markup { "" }""", r"\bow-tip-half-down"],
        selector=trinton.select_logical_ties_by_index(
            [1, 2, 2, 3],
            first=True,
        ),
        style="solid-line-with-arrow",
        padding=7,
        right_padding=0,
        direction=None,
        full_string=True,
        end_hook=True,
        end_hook_right_padding=-0.5,
        command="One",
    ),
    trinton.spanner_command(
        strings=[r"""\markup { "" }""", r"\bow-tip-up"],
        selector=trinton.select_logical_ties_by_index(
            [3, 4, 4, 5],
            first=True,
        ),
        style="solid-line-with-arrow",
        padding=7,
        right_padding=0,
        direction=None,
        full_string=True,
        end_hook=True,
        end_hook_right_padding=-0.5,
        command="One",
    ),
    trinton.spanner_command(
        strings=[r"Spz.", r"1/8 Spz.", "Spz."],
        selector=trinton.select_logical_ties_by_index([0, 2, 2, 4, 4, 5], first=True),
        style="solid-line-with-arrow",
        padding=9.5,
        right_padding=0,
        direction=None,
        full_string=False,
        end_hook=True,
        end_hook_right_padding=-0.5,
        command="Two",
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 1""",
        ],
    ),
    # trinton.linear_attachment_command(
    #     attachments=[
    #         abjad.Dynamic('"f"'),
    #         abjad.StartHairpin("--"),
    #         abjad.StartHairpin(">"),
    #         abjad.Dynamic('"pppp"'),
    #         abjad.StartHairpin("--"),
    #         abjad.StartHairpin(">o"),
    #         abjad.StopHairpin(),
    #     ],
    #     selector=trinton.select_logical_ties_by_index(
    #         [0, 0, 2, 4, 4, 5, -1], first=True, pitched=True
    #     ),
    # ),
    voice=score["viola 2 voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.RhythmHandler(evans.talea([1000], 16)),
    trinton.aftergrace_command(
        invisible=True, selector=trinton.logical_ties(pitched=True, grace=False)
    ),
    evans.PitchHandler(["dqf"]),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\big-half-harmonic", site="before"),
            abjad.Articulation(r"punta-to-talon"),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
        direction=abjad.UP,
    ),
    trinton.noteheads_only(),
    voice=score["viola 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 4)),
    trinton.continuous_glissando(
        selector=trinton.pleaves(exclude=[6, 7, 8]), zero_padding=True
    ),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index(
            [3, 4], pitched=True, grace=False
        ),
        zero_padding=True,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic('"ff"'),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">"),
            abjad.Dynamic('"p"'),
            abjad.StartHairpin("<"),
            abjad.Dynamic('"mf"'),
            abjad.StartHairpin("|>"),
            abjad.Dynamic('"pf"'),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">"),
            abjad.Dynamic('"pp"'),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 1, 2, 2, 3, 3, 4, 4, 5, 6, 6, -1], first=True, pitched=True
        ),
    ),
    trinton.spanner_command(
        strings=[r"""\markup { "" }""", r"\bow-tip-half-up"],
        selector=trinton.select_logical_ties_by_index(
            [5, 6, 6, 7],
            first=True,
        ),
        style="solid-line-with-arrow",
        padding=7,
        right_padding=0,
        direction=None,
        full_string=True,
        end_hook=True,
        end_hook_right_padding=0,
        command="One",
    ),
    trinton.spanner_command(
        strings=[r"1/4 Spz.", "1/2 Spz."],
        selector=trinton.select_logical_ties_by_index([5, 6, 6, 7], first=True),
        style="solid-line-with-arrow",
        padding=9.5,
        right_padding=0,
        direction=None,
        full_string=False,
        end_hook=True,
        end_hook_right_padding=0,
        command="Two",
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 1""",
        ],
    ),
    voice=score["viola 2 voice"],
)

# cello music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(rhythm.rhythm_c(stage=4, instrument="cello", index=5)),
    trinton.force_rest(selector=trinton.select_leaves_by_index([-2, -1], pitched=True)),
    trinton.rewrite_meter_command(boundary_depth=-2),
    trinton.aftergrace_command(
        slash=True,
        selector=trinton.select_logical_ties_by_index(
            [1, 2], pitched=True, grace=False
        ),
    ),
    evans.PitchHandler([["c", "fs"]]),
    library.attach_gamelan_scale_cent_markups(
        scale_degrees=[[9, 3]], selector=trinton.pleaves(grace=False)
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.detach_command(
        detachments=[abjad.Markup], selector=trinton.pleaves(grace=True)
    ),
    trinton.continuous_glissando(
        selector=trinton.select_leaves_by_index([1, 2, 3, 4], pitched=True),
        zero_padding=True,
        tweaks=[
            abjad.Tweak(r"- \tweak thickness #1.5"),
            abjad.Tweak(r"- \tweak bound-details.right.arrow ##t"),
        ],
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index([1, 2, 3, 4], pitched=True),
    ),
    trinton.force_accidentals_command(
        selector=trinton.logical_ties(first=True, pitched=True)
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([1, 2, 7, 9], grace=False),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(abjad.Articulation("talon-to-punta"), r"- \tweak padding #1"),
            abjad.Articulation(">"),
        ],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mf"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\big-half-harmonic", site="before"),
        ],
        selector=trinton.select_leaves_by_index([0, 4], pitched=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\grace-half-harmonic", site="before"),
        ],
        selector=trinton.pleaves(grace=True),
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup { \column { \line { "diagonal bow," } \line { "touching bridge" } } }""",
        selector=trinton.select_logical_ties_by_index(
            [0, -1], first=True, pitched=True
        ),
        style="dashed-line-with-hook",
        padding=15,
        right_padding=4,
        direction=None,
        full_string=True,
        command="One",
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 1""",
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
    fermata="long-fermata",
    voice_names=["cello 2 voice"],
    font_size=10,
    clef_whitespace=True,
    blank=True,
    last_measure=False,
    # padding=-5,
    # extra_offset=2.5,
    tag=abjad.Tag("+SCORE"),
)

# tempi

for voice_name, padding, end_anchor in zip(
    [
        "violin 2 voice temp",
        # "violin 4 voice",
        "viola 2 voice",
        "cello 2 voice",
    ],
    [
        12.5,
        # 16.5,
        12.5,
        # 12.5
    ],
    [
        11,
        # 14,
        2,
        # 7
    ],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (2, 3)),
        trinton.spanner_command(
            strings=[
                trinton.tempo_markup(
                    note_value=8,
                    tempo=60,
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
                    note_value=8,
                    tempo=60,
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
    lambda _: trinton.select_target(_, (2,)),
    trinton.spanner_command(
        strings=[
            trinton.tempo_markup(
                note_value=8,
                tempo=60,
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
            r"""\markup { "" }""",
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
        style="solid-line-with-arrow",
        padding=16.5,
        tweaks=None,
        right_padding=15,
        direction=None,
        full_string=True,
        command="Three",
    ),
    voice=score["violin 4 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    trinton.attachment_command(
        attachments=[
            trinton.tempo_markup(
                note_value=8,
                tempo=60,
                padding=8.5,
                note_head_fontsize=0.5,
                stem_length=1.5,
                text_fontsize=4,
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
    voice=score["violin 4 voice temp 2"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    trinton.spanner_command(
        strings=[
            trinton.tempo_markup(
                note_value=8,
                tempo=60,
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
            r"""\markup { "" }""",
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
        style="solid-line-with-arrow",
        padding=12.5,
        tweaks=None,
        right_padding=38,
        direction=None,
        full_string=True,
        command="Three",
    ),
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    trinton.attachment_command(
        attachments=[
            trinton.tempo_markup(
                note_value=8,
                tempo=60,
                padding=2,
                note_head_fontsize=0.5,
                stem_length=1.5,
                text_fontsize=4,
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
    voice=score["cello 2 voice"],
)

# breaking

# for measure in [
#     13,
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

for measure in [1, 3]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\noBreak", site="absolute_after")],
            selector=trinton.select_leaves_by_index([0]),
            tag=abjad.Tag("+SCORE"),
        ),
        voice=score["Global Context"],
    )

for measure in [2]:
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
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (11 38 30 32)))",
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
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (11 35 34 20)))",
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
    segment_path="/Users/trintonprater/scores/patterns/patterns/sections/03",
    build_path="/Users/trintonprater/scores/patterns/patterns/build",
    segment_name="03",
    includes=[
        "/Users/trintonprater/scores/patterns/patterns/build/patterns-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
