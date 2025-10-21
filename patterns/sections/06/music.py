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
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \fontsize #2 { \hspace #-10.5 { "Fng. Perc.:" } }"""
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
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
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.talea([3, 1, 3, 1], 16)),
    evans.PitchHandler(["f''", "d''", "e''", "c''"]),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\big-half-harmonic", site="before")],
        selector=trinton.select_leaves_by_index([0, 1]),
    ),
    trinton.change_notehead_command(
        notehead="harmonic", selector=trinton.select_leaves_by_index([2, 3])
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Glissando(zero_padding=True),
            abjad.LilyPondLiteral(
                r"\once \override Dots.staff-position = #-1", site="before"
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.continuous_glissando(
        zero_padding=True, selector=trinton.select_leaves_by_index([2, 3])
    ),
    library.tablature_trill(
        trill_pitch="c''",
        selector=trinton.select_leaves_by_index([0, 1]),
        bound_details=(-1, -1),
        direction=abjad.DOWN,
    ),
    library.tablature_trill(
        trill_pitch="a'",
        selector=trinton.select_leaves_by_index([2, 3]),
        bound_details=(-1.5, -1.5),
        direction=abjad.DOWN,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override DynamicLineSpanner.padding = #5", site="before"
            ),
            abjad.Dynamic("ppp"),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.hooked_spanner_command(
        string=r"""IV""",
        selector=trinton.select_leaves_by_index([0, 1]),
        padding=9,
        direction="down",
        right_padding=1.5,
        full_string=False,
        style="dashed-line-with-up-hook",
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
        selector=trinton.select_leaves_by_index([2, 3]),
        padding=9.5,
        direction="down",
        right_padding=1.5,
        full_string=False,
        style="dashed-line-with-up-hook",
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
    voice=score["violin 2 voice temp"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(evans.talea([-5, 1, 1, 6, -1, 1, -2, 1], 16)),
    trinton.rewrite_meter_command(boundary_depth=-2),
    evans.PitchHandler([["a'", "b'"], ["b'", "f'"], "b'", ["c''", "a'"]]),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = #-7", site="before"
            ),
        ],
        selector=abjad.select.rests,
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([1, 2, 3, 4, 6, 11]),
    ),
    trinton.manual_beam_positions(
        positions=(-8.5, -8.5), selector=trinton.select_leaves_by_index([1, 2, 6, 11])
    ),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\big-half-harmonic", site="before")],
        selector=trinton.select_leaves_by_index([2, 3, 4], pitched=True),
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
    library.tablature_trill(
        trill_pitch="f'",
        selector=trinton.select_leaves_by_index([2, 4], pitched=True),
        bound_details=(-1.5, -4),
        direction=abjad.DOWN,
    ),
    trinton.hooked_spanner_command(
        string=r"""III""",
        selector=trinton.select_leaves_by_index([0, 4], pitched=True),
        padding=10.5,
        direction="down",
        right_padding=1.5,
        full_string=False,
        style="dashed-line-with-up-hook",
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
        string=r"""IV""",
        selector=trinton.select_leaves_by_index([5, 6], pitched=True),
        padding=10.5,
        direction="down",
        right_padding=1.5,
        full_string=False,
        style="dashed-line-with-up-hook",
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
    voice=score["violin 2 voice temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(evans.talea([-1, 1, 1, 1], 4)),
    evans.PitchHandler(["c'", "a", "d'"]),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = #-7", site="before"
            ),
        ],
        selector=abjad.select.rests,
    ),
    trinton.change_notehead_command(notehead="harmonic", selector=trinton.pleaves()),
    library.tablature_trill(
        trill_pitch="a",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        bound_details=(-4, -4),
        direction=abjad.DOWN,
    ),
    trinton.continuous_glissando(
        selector=trinton.select_leaves_by_index([0, 1, 2], pitched=True),
        zero_padding=True,
    ),
    trinton.hooked_spanner_command(
        string=r"""III""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=12,
        direction="down",
        right_padding=1.5,
        full_string=False,
        style="dashed-line-with-up-hook",
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
    voice=score["violin 2 voice temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.RhythmHandler(evans.talea([9, 11], 32, extra_counts=[0, 4])),
    trinton.rewrite_meter_command(boundary_depth=-2),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([-1]),
        slash=True,
    ),
    evans.PitchHandler(["d'", "b", "c''"]),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([0, 1]),
    ),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\big-half-harmonic", site="before")],
        selector=trinton.pleaves(grace=False),
    ),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\grace-half-harmonic", site="before")],
        selector=trinton.pleaves(grace=True),
    ),
    trinton.continuous_glissando(selector=trinton.pleaves(), zero_padding=True),
    library.tablature_trill(
        trill_pitch="a",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        bound_details=(-6.5, -6.5),
        direction=abjad.DOWN,
    ),
    trinton.hooked_spanner_command(
        string=r"""IV""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=14.5,
        direction="down",
        right_padding=1.5,
        full_string=False,
        style="dashed-line-with-up-hook",
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
    voice=score["violin 2 voice temp"],
    preprocessor=trinton.fuse_thirty_seconds_preprocessor((5, 8, 3)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    evans.RhythmHandler(evans.talea([-1, 7, -3, 1], 16)),
    trinton.rewrite_meter_command(boundary_depth=-2),
    trinton.aftergrace_command(
        slash=True,
        selector=trinton.select_logical_ties_by_index([0], pitched=True, grace=False),
    ),
    evans.PitchHandler(["d''", "g'", ["g'", "c'"]]),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = #-7", site="before"
            ),
        ],
        selector=abjad.select.rests,
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([0, 1, 3, -1], grace=False),
    ),
    trinton.manual_beam_positions(
        positions=(-8.5, -8.5), selector=trinton.select_leaves_by_index([0, 1])
    ),
    trinton.change_notehead_command(
        notehead="harmonic",
        selector=trinton.select_logical_ties_by_index([0, 1], first=True, pitched=True),
    ),
    trinton.change_notehead_command(
        notehead="cross",
        selector=trinton.notehead_selector(
            chord_indices=[0],
            head_indices_lists=[[0]],
        ),
    ),
    trinton.change_notehead_command(
        notehead="harmonic",
        selector=trinton.notehead_selector(
            chord_indices=[0],
            head_indices_lists=[[1]],
        ),
    ),
    library.tablature_trill(
        trill_pitch="b'",
        selector=trinton.select_logical_ties_by_index([0, 1], first=True, pitched=True),
        bound_details=(-4, -4),
        direction=abjad.DOWN,
    ),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index([0, 1], pitched=True),
        zero_padding=True,
    ),
    trinton.hooked_spanner_command(
        string=r"""III""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=12,
        direction="down",
        right_padding=1.5,
        full_string=False,
        style="dashed-line-with-up-hook",
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
    voice=score["violin 2 voice temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    evans.RhythmHandler(evans.talea([3, 3, 3, 7, 4, 8, 100], 64)),
    trinton.rewrite_meter_command(boundary_depth=-2),
    evans.PitchHandler(
        [
            "c''",
            "b",
            "d'",
            "a",
            "a'",
            "c'",
            "f'",
        ]
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([0, 4, 5, 8], grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BeamCount(left=3, right=1),
            abjad.BeamCount(left=1, right=4),
        ],
        selector=trinton.select_leaves_by_index([2, 3], grace=False),
    ),
    # trinton.manual_beam_positions(
    #     positions=(-8.5, -8.5),
    #     selector=trinton.select_leaves_by_index([0, 1])
    # ),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\big-half-harmonic", site="before")],
        selector=trinton.pleaves(),
    ),
    library.tablature_trill(
        trill_pitch="a'",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        bound_details=(-6.5, -6),
        direction=abjad.DOWN,
    ),
    trinton.continuous_glissando(
        selector=trinton.logical_ties(exclude=[0, 4]), zero_padding=True
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Glissando(zero_padding=True),
            abjad.LilyPondLiteral(
                r"\once \override Dots.staff-position = #-3", site="before"
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Glissando(zero_padding=True),
            abjad.LilyPondLiteral(
                r"\once \override Dots.staff-position = #-2", site="before"
            ),
        ],
        selector=trinton.select_logical_ties_by_index([3, 4], first=True, grace=False),
    ),
    trinton.hooked_spanner_command(
        string=r"""III""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=14,
        direction="down",
        right_padding=1.5,
        full_string=False,
        style="dashed-line-with-up-hook",
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
    voice=score["violin 2 voice temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7,)),
    evans.RhythmHandler(
        evans.tuplet(
            [
                (1,),
                (1, 1, 1),
                (3, 1, 1, 1),
            ]
        )
    ),
    trinton.attachment_command(
        attachments=[abjad.Tie()],
        selector=trinton.select_leaves_by_index(
            [
                1,
                4,
            ]
        ),
    ),
    trinton.rewrite_meter_command(boundary_depth=-2),
    evans.PitchHandler(
        [
            "f'",
            "b'",
            "e'",
            "f'",
            "a'",
            "c''",
        ]
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([2, 4, 6, -1], grace=False),
    ),
    trinton.change_notehead_command(
        notehead="harmonic", selector=trinton.select_leaves_by_index([0, 3, 4, 5, 6])
    ),
    trinton.change_notehead_command(
        notehead="cross", selector=trinton.select_leaves_by_index([7, 8, 9])
    ),
    library.tablature_trill(
        trill_pitch="c'",
        selector=trinton.select_leaves_by_index([0, 6], pitched=True),
        bound_details=(-3.5, -5),
        direction=abjad.DOWN,
    ),
    trinton.continuous_glissando(
        selector=trinton.logical_ties(exclude=[-1, -2, -3]), zero_padding=True
    ),
    trinton.hooked_spanner_command(
        string=r"""IV""",
        selector=trinton.select_leaves_by_index([0, 6], pitched=True),
        padding=11.5,
        direction="down",
        right_padding=2,
        full_string=False,
        style="dashed-line-with-up-hook",
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
        selector=trinton.select_leaves_by_index([7, -1], pitched=True),
        padding=8.5,
        direction="down",
        right_padding=1.5,
        full_string=False,
        style="dashed-line-with-up-hook",
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
    voice=score["violin 2 voice temp"],
    preprocessor=trinton.fuse_eighths_preprocessor((5, 2, 3)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8,)),
    evans.RhythmHandler(evans.talea([-16, 3, 1], 16)),
    trinton.rewrite_meter_command(boundary_depth=-2),
    evans.PitchHandler(["c'", "d'"]),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\big-half-harmonic", site="before"),
        ],
        selector=trinton.pleaves(),
    ),
    library.tablature_trill(
        trill_pitch="b",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        bound_details=(-5.5, -4.5),
        direction=abjad.DOWN,
    ),
    trinton.continuous_glissando(
        selector=trinton.logical_ties(pitched=True), zero_padding=True
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = #-7", site="before"
            )
        ],
        selector=abjad.select.rests,
    ),
    trinton.hooked_spanner_command(
        string=r"""IV""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=13.5,
        direction="down",
        right_padding=1.5,
        full_string=False,
        style="dashed-line-with-up-hook",
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
    voice=score["violin 2 voice temp"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9,)),
    evans.RhythmHandler(evans.talea([-8, 3, 1, 6, 2], 16)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler(["d'", "a", "e'", "a"]),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\big-half-harmonic", site="before"),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.change_notehead_command(
        notehead="harmonic", selector=trinton.select_leaves_by_index([2], pitched=True)
    ),
    trinton.change_notehead_command(
        notehead="cross", selector=trinton.select_leaves_by_index([1, -1], pitched=True)
    ),
    library.tablature_trill(
        trill_pitch="b",
        selector=trinton.select_leaves_by_index([0, 1], pitched=True),
        bound_details=(-5.5, -5.5),
        direction=abjad.DOWN,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override TrillSpanner.bound-details.right.padding = #1.5",
                site="before",
            )
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    library.tablature_trill(
        trill_pitch="c'",
        selector=trinton.select_leaves_by_index([2, 3], pitched=True),
        bound_details=(-2.5, -3.5),
        direction=abjad.DOWN,
    ),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index([0, 1], pitched=True),
        zero_padding=True,
    ),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index([2, 3], pitched=True),
        zero_padding=True,
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.select_logical_ties_by_index([1, 3], first=True, pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = #-7", site="before"
            )
        ],
        selector=abjad.select.rests,
    ),
    trinton.hooked_spanner_command(
        string=r"""IV""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=13.5,
        direction="down",
        right_padding=1.5,
        full_string=False,
        style="dashed-line-with-up-hook",
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
    voice=score["violin 2 voice temp"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10,)),
    evans.RhythmHandler(evans.tuplet([(-1,), (1, 1, 1, 1, 1)])),
    trinton.rewrite_meter_command(boundary_depth=-1),
    trinton.aftergrace_command(
        slash=True,
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
    ),
    evans.PitchHandler(
        [
            # "d'", "b", "c'", "a", "b", "a",
            "a''",
            "f''",
            "g''",
            "e''",
            "f''",
            "e''",
        ]
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartBeam(), abjad.StopBeam()],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True, grace=False),
    ),
    trinton.manual_beam_positions(
        positions=(-8, -8),
        selector=trinton.select_leaves_by_index([0, -1], pitched=True, grace=False),
    ),
    trinton.change_notehead_command(notehead="harmonic", selector=trinton.pleaves()),
    library.tablature_trill(
        trill_pitch="f''",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        bound_details=(-6.5, -6.5),
        direction=abjad.DOWN,
    ),
    trinton.continuous_glissando(
        selector=trinton.logical_ties(pitched=True), zero_padding=True
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = #-7", site="before"
            )
        ],
        selector=abjad.select.rests,
    ),
    trinton.hooked_spanner_command(
        string=r"""III""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=14.5,
        direction="down",
        right_padding=1.5,
        full_string=False,
        style="dashed-line-with-up-hook",
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
    voice=score["violin 2 voice temp"],
    preprocessor=trinton.fuse_quarters_preprocessor((3, 2)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11,)),
    evans.RhythmHandler(evans.talea([-4, 7, 1, 1, 3, 2, 2], 16)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler(
        [
            "e'",
            ["c''", "a'"],
            ["d''", "a'"],
            "e'",
            ["c''", "a'"],
            ["d''", "a'"],
        ]
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([2, 3, 4, 5, 6, 7]),
    ),
    trinton.manual_beam_positions(positions=(-8, -8), selector=trinton.pleaves()),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\big-half-harmonic", site="before")],
        selector=trinton.select_logical_ties_by_index([0, 3], first=True, pitched=True),
    ),
    library.tablature_trill(
        trill_pitch="b",
        selector=trinton.select_leaves_by_index([0, 1], pitched=True),
        bound_details=(-4, -4),
        direction=abjad.DOWN,
    ),
    library.tablature_trill(
        trill_pitch="d'",
        selector=trinton.select_leaves_by_index([4, 5], pitched=True),
        bound_details=(-4, -4),
        direction=abjad.DOWN,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override TrillSpanner.bound-details.right.padding = #1.5",
                site="before",
            )
        ],
        selector=trinton.select_leaves_by_index([4], pitched=True),
    ),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 3, 4], first=True, pitched=True
        ),
        zero_padding=True,
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
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.select_logical_ties_by_index(
            [1, 2, 4, 5], first=True, pitched=True
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Voice.Rest.staff-position = #-10", site="before"
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.hooked_spanner_command(
        string=r"""III""",
        selector=trinton.select_leaves_by_index([0, 3], pitched=True),
        padding=12,
        direction="down",
        right_padding=1.5,
        full_string=False,
        style="dashed-line-with-up-hook",
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
        string=r"""IV""",
        selector=trinton.select_leaves_by_index([4, -1], pitched=True),
        padding=12,
        direction="down",
        right_padding=1.5,
        full_string=False,
        style="dashed-line-with-up-hook",
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
    voice=score["violin 2 voice temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12,)),
    evans.RhythmHandler(evans.tuplet([(-1,), (2, 1)])),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler([["d''", "b'"], ["a'", "e'"]]),
    trinton.change_notehead_command(
        notehead="cross",
        selector=trinton.notehead_selector(
            chord_indices=[0, 1],
            head_indices_lists=[[0], [0]],
        ),
    ),
    trinton.change_notehead_command(
        notehead="harmonic",
        selector=trinton.notehead_selector(
            chord_indices=[0, 1],
            head_indices_lists=[[1], [1]],
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
    trinton.hooked_spanner_command(
        string=r"""III""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=12,
        direction="down",
        right_padding=1.5,
        full_string=False,
        style="dashed-line-with-up-hook",
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
    voice=score["violin 2 voice temp"],
    preprocessor=trinton.fuse_quarters_preprocessor((4, 1)),
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

# second violin music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 6)),
    evans.RhythmHandler(rhythm.rhythm_d(instrument="violin 2", stage=4, index=2)),
    trinton.rewrite_meter_command(boundary_depth=-2),
    pitch.pitch_d(
        instrument="violin",
        string_range_pairs=[
            ("I", [0, 1]),
            ("II", [2, 3]),
            ("I", [4, 6]),
            ("II", [7, 8]),
        ],
        stage=4,
        index=4,
        initial_seed=5,
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
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
        direction=abjad.UP,
    ),
    trinton.detach_command(
        detachments=[abjad.Tie],
        selector=trinton.select_leaves_by_index([3, 4, 10, 11, 19, 20, 23, 24]),
    ),
    library.d_stage_3_noteheads(),
    trinton.pitch_with_selector_command(
        pitch_list=[
            ["bf", "f'", "b'", "gs''"],
        ],
        selector=trinton.select_logical_ties_by_index(
            [2, 5, 8, 10, 13], pitched=True, grace=False
        ),
    ),
    # trinton.annotate_leaves_locally(
    #     selector=abjad.select.leaves,
    # ),
    trinton.change_lines(
        lines=5,
        clef="treble",
        selector=trinton.select_leaves_by_index([0]),
        invisible_barlines=False,
    ),
    trinton.detach_command(
        detachments=[abjad.Articulation], selector=trinton.select_leaves_by_index([15])
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation("marcato"),
            abjad.Articulation("half-clb"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [2, 5, 8, 10, 13], first=True, pitched=True, grace=False
        ),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[
            trinton.make_custom_dynamic("ffffff"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [2, 5, 8, 10, 13], first=True, pitched=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("ppp")],
        selector=trinton.select_logical_ties_by_index(
            [0, 3, 6, 9, 11, 14], first=True, pitched=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.StartHairpin("<")],
        selector=trinton.select_logical_ties_by_index(
            [1], first=True, pitched=True, grace=False
        ),
    ),
    # trinton.attachment_command(
    #     attachments=[abjad.LilyPondLiteral(r"\big-half-harmonic", site="before")],
    #     selector=trinton.select_leaves_by_index(
    #         [
    #             4,
    #             11,
    #             15,
    #             16,
    #             17,
    #             20,
    #             24,
    #         ]
    #     ),
    # ),
    trinton.change_notehead_command(
        notehead="harmonic",
        selector=trinton.select_leaves_by_index(
            [
                4,
                11,
                15,
                16,
                17,
                20,
                24,
            ]
        ),
    ),
    # trinton.attachment_command(
    #     attachments=[abjad.Arpeggio()],
    #     selector=trinton.logical_ties(
    #         exclude=[2, 5, 8, 10, 13], first=True, pitched=True, grace=False
    #     ),
    # ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(abjad.Articulation("punta-to-talon"), r"- \tweak padding 1"),
        ],
        selector=trinton.select_leaves_by_index([5, 21]),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(abjad.Articulation("talon-to-punta"), r"- \tweak padding 1"),
        ],
        selector=trinton.select_leaves_by_index([12]),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [1, 3, 7, 8, 12, 13, 15, 16, 21, 22, 27, 28]
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(
                    r"""\markup { \hspace #-6.75 { \center-column { \line { "extremely strong battuto," } \line { "striking so hard as to hit all strings at once" } } } }"""
                ),
                r"""- \tweak font-name "Bodoni72 Book Italic" """,
            ),
        ],
        selector=trinton.select_logical_ties_by_index(
            [2], first=True, pitched=True, grace=False
        ),
        direction=abjad.DOWN,
    ),
    trinton.force_accidentals_command(
        trinton.logical_ties(first=True, pitched=True, grace=False)
    ),
    trinton.hooked_spanner_command(
        string=r"MSP",
        selector=trinton.select_leaves_by_index(
            [0, 3, 5, 10],
            pitched=True,
        ),
        padding=13.5,
        right_padding=1.5,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="One",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 1""",
        ],
    ),
    trinton.hooked_spanner_command(
        string=r"MSP",
        selector=trinton.select_leaves_by_index(
            [12, 14, 21, 23],
            pitched=True,
        ),
        padding=14.5,
        right_padding=1.5,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="One",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 1""",
        ],
    ),
    trinton.hooked_spanner_command(
        string=r"MSP",
        selector=trinton.select_leaves_by_index(
            [18, 19, 25, 28],
            pitched=True,
        ),
        padding=16,
        right_padding=1.5,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="One",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 1""",
        ],
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\override DynamicLineSpanner.staff-padding = #14.25",
                site="before",
            ),
            abjad.LilyPondLiteral(
                r"\revert DynamicLineSpanner.staff-padding",
                site="absolute_after",
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(
            evans.talea(
                [
                    5,
                    1,
                    1,
                    1,
                    -3,
                    2,
                    1,
                    1,
                    6,
                    1,
                    1,
                    1,
                    1,
                    1,
                    -4,
                    1,
                    2,
                    1,
                    2,
                    1,
                    2,
                    3,
                    -2,
                    1,
                    1,
                    4,
                    -3,
                    1,
                    1,
                    1,
                    4,
                    1,
                    1,
                    -2,
                    1,
                    1,
                    5,
                    1,
                    1,
                    1,
                    4,
                    -100,
                ],
                16,
            )
        ),
        direction=abjad.DOWN,
        voice_name="violin 2 legno voice",
    ),
    voice=score["violin 4 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 6)),
    evans.PitchHandler(["e"]),
    trinton.rewrite_meter_command(boundary_depth=-1),
    # trinton.annotate_leaves_locally(
    #     selector=abjad.select.leaves,
    #     direction=abjad.DOWN
    # ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [
                1,
                4,
                5,
                9,
                10,
                11,
                13,
                18,
                20,
                23,
                24,
                26,
                27,
                28,
                29,
                31,
                33,
                37,
                39,
                40,
                41,
                43,
                45,
                48,
            ]
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
            durations=[abjad.Duration((1, 8)), abjad.Duration((1, 16))],
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
            durations=[abjad.Duration((1, 8)), abjad.Duration((1, 16))],
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
    trinton.hooked_spanner_command(
        string="CLB OB",
        selector=trinton.select_leaves_by_index(
            [2, 10, 14, 27, 29, 31, 34, 37, 39, 43, 46, 48],
            grace=False,
        ),
        padding=13.5,
        direction="down",
        right_padding=1,
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
            [
                0,
                1,
                11,
                13,
                # 28, 29,
                32,
                33,
                44,
                45,
            ],
            grace=False,
        ),
        padding=13.5,
        direction="down",
        right_padding=1,
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
            [28, 29, 38, 39],
            grace=False,
        ),
        padding=13.5,
        direction="down",
        right_padding=-0.5,
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
    voice=score["violin 2 legno voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 9)),
    evans.RhythmHandler(
        evans.tuplet(
            [
                (1,),
                (-1,),
                (1,),
                (-1,),
                (3, 1, 4, 4, 4, 4),
            ]
        ),
    ),
    trinton.treat_tuplets(),
    trinton.respell_tuplets_command(rewrite_brackets=False),
    trinton.rewrite_meter_command(boundary_depth=-1),
    trinton.aftergrace_command(
        slash=True,
        selector=trinton.select_logical_ties_by_index([7], pitched=True, grace=False),
    ),
    evans.PitchHandler(
        [
            ["bf", "f'", "b'", "gs''"],
            ["bf", "f'", "b'", "gs''"],
            "bf",
            "cqs'",
            ["bf", "f'", "b'", "gs''"],
            "c'''",
            "cqs'''",
            "b''",
            "cqf'''",
        ]
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override TupletBracket.direction = #DOWN", site="before"
            )
        ],
        selector=abjad.select.tuplets,
    ),
    # trinton.annotate_leaves_locally(
    #     # selector=abjad.select.leaves
    #     selector=trinton.logical_ties(first=True, pitched=True)
    # ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartBeam(), abjad.StopBeam()],
        selector=trinton.select_leaves_by_index([5, 6], grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index([2, 3, 5, 8], pitched=True),
    ),
    trinton.continuous_glissando(
        selector=trinton.select_leaves_by_index([2, 3, 5, 6, 7, 8], pitched=True),
        zero_padding=True,
        tweaks=[
            abjad.Tweak(r"- \tweak thickness #1.5"),
            abjad.Tweak(r"- \tweak bound-details.right.arrow ##t"),
        ],
    ),
    # trinton.attachment_command(
    #     attachments=[abjad.LilyPondLiteral(r"\big-half-harmonic", site="before")],
    #     selector=trinton.select_leaves_by_index(
    #         [0, 1, 3, 4, 5, 7], pitched=True, grace=False
    #     ),
    # ),
    trinton.change_notehead_command(
        notehead="harmonic",
        selector=trinton.select_leaves_by_index(
            [0, 1, 3, 4, 5, 7], pitched=True, grace=False
        ),
    ),
    trinton.change_notehead_command(
        notehead="harmonic",
        selector=trinton.select_leaves_by_index([2, 4, 6, 8], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation("marcato"),
            abjad.Articulation("half-clb"),
        ],
        selector=trinton.select_leaves_by_index([0, 1, 4], pitched=True, grace=False),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[
            trinton.make_custom_dynamic("ffffff"),
        ],
        selector=trinton.select_leaves_by_index([0, 1, 4], pitched=True, grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic('"f"'),
            abjad.StartHairpin(">"),
            abjad.Dynamic('"ppp"'),
            abjad.Dynamic("mp"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([2, 2, 3, 5, 5, 8], pitched=True),
    ),
    trinton.spanner_command(
        strings=[
            r"\bow-tip-half-up",
            r"\normale-bow-rotation",
        ],
        selector=trinton.select_logical_ties_by_index([2, 3], first=True, pitched=True),
        style="solid-line-with-arrow",
        padding=4.5,
        tweaks=None,
        right_padding=0,
        direction=None,
        full_string=True,
        command="One",
    ),
    trinton.spanner_command(
        strings=[r"1/2 Spz.", "Norm."],
        selector=trinton.select_logical_ties_by_index([2, 3], pitched=True, first=True),
        style="solid-line-with-arrow",
        padding=7,
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
    trinton.hooked_spanner_command(
        string=r"MSP",
        selector=trinton.select_leaves_by_index(
            [5, 6],
            pitched=True,
        ),
        padding=8,
        right_padding=1,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="One",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 1""",
        ],
    ),
    trinton.spanner_command(
        strings=[
            r"\normale-bow-rotation",
            r"\bow-tip-half-down",
        ],
        selector=trinton.select_logical_ties_by_index([6, 8], first=True, pitched=True),
        style="solid-line-with-arrow",
        padding=10,
        tweaks=None,
        right_padding=-1.5,
        direction=None,
        full_string=True,
        command="One",
    ),
    trinton.spanner_command(
        strings=[
            "Norm.",
            r"3/4 Spz.",
        ],
        selector=trinton.select_logical_ties_by_index([6, 8], pitched=True, first=True),
        style="solid-line-with-arrow",
        padding=12.5,
        right_padding=-2.5,
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
    preprocessor=trinton.fuse_quarters_preprocessor((1, 4, 1, 3, 6)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10,)),
    evans.RhythmHandler(
        evans.tuplet(
            [
                (
                    1,
                    -2,
                ),
                (1, 1, 1, 1, 1),
            ]
        )
    ),
    trinton.treat_tuplets(),
    trinton.respell_tuplets_command(rewrite_brackets=False),
    trinton.rewrite_meter_command(boundary_depth=-1),
    trinton.aftergrace_command(
        slash=True,
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
    ),
    evans.PitchHandler(
        [
            ["bf", "f'", "b'", "gs''"],
            "bf'''",
            "cqs''''",
            "c''''",
            "cqs''''",
            "b'''",
            "c''''",
        ]
    ),
    # trinton.annotate_leaves_locally(
    #     # selector=abjad.select.leaves
    #     selector=trinton.logical_ties(first=True, pitched=True)
    # ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartBeam(), abjad.StopBeam()],
        selector=trinton.select_leaves_by_index([1, -1], pitched=True, grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index([1, -1], pitched=True),
    ),
    trinton.continuous_glissando(
        selector=trinton.select_leaves_by_index([1, 2, 3, 4, 5, 6], pitched=True),
        zero_padding=True,
    ),
    trinton.change_notehead_command(
        notehead="harmonic",
        selector=trinton.select_leaves_by_index([0, 1, 2, 3, 4, 5, 6], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation("marcato"),
            abjad.Articulation("half-clb"),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[
            # abjad.LilyPondLiteral(r"\big-half-harmonic", site="before"),
            trinton.make_custom_dynamic("ffffff"),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mp"),
        ],
        selector=trinton.select_leaves_by_index([1, 1, -1], pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=r"MSP",
        selector=trinton.select_leaves_by_index(
            [1, -1],
            pitched=True,
        ),
        padding=12.5,
        right_padding=1,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="One",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 1""",
        ],
    ),
    voice=score["violin 4 voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((3, 2)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11,)),
    evans.RhythmHandler(evans.tuplet([(1, -3), (2, 1)])),
    trinton.treat_tuplets(),
    trinton.respell_tuplets_command(rewrite_brackets=False),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler([["bf", "f'", "b'", "gs''"], "cqs''''", "bf'''"]),
    # trinton.annotate_leaves_locally(
    #     # selector=abjad.select.leaves
    #     selector=trinton.logical_ties(first=True, pitched=True)
    # ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index([1, -1], pitched=True),
    ),
    trinton.continuous_glissando(
        selector=trinton.select_leaves_by_index(
            [
                1,
                2,
            ],
            pitched=True,
        ),
        zero_padding=True,
    ),
    trinton.change_notehead_command(
        notehead="harmonic",
        selector=trinton.select_leaves_by_index([0, 1, 2], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation("marcato"),
            abjad.Articulation("half-clb"),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[
            # abjad.LilyPondLiteral(r"\big-half-harmonic", site="before"),
            trinton.make_custom_dynamic("ffffff"),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic('"f"')],
        selector=trinton.select_leaves_by_index([1], pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=r"\bow-tip-half-down",
        selector=trinton.select_leaves_by_index(
            [1, -1],
            pitched=True,
        ),
        padding=11,
        right_padding=2,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="One",
        tag=None,
        # tweaks=[
        #     r"""- \tweak font-name "Bodoni72 Book" """,
        #     r"""- \tweak font-size 1""",
        # ],
    ),
    trinton.hooked_spanner_command(
        string=r"1/2 Spz.",
        selector=trinton.select_leaves_by_index(
            [1, -1],
            pitched=True,
        ),
        padding=13.5,
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
    voice=score["violin 4 voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((4, 1)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12,)),
    evans.RhythmHandler(evans.tuplet([(1, -3), (2, 1)])),
    trinton.treat_tuplets(),
    trinton.respell_tuplets_command(rewrite_brackets=False),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler([["bf", "f'", "b'", "gs''"], "cqs''''", "bf'''"]),
    # trinton.annotate_leaves_locally(
    #     # selector=abjad.select.leaves
    #     selector=trinton.logical_ties(first=True, pitched=True)
    # ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index([1, -1], pitched=True),
    ),
    trinton.continuous_glissando(
        selector=trinton.select_leaves_by_index(
            [
                1,
                2,
            ],
            pitched=True,
        ),
        zero_padding=True,
    ),
    trinton.change_notehead_command(
        notehead="harmonic",
        selector=trinton.select_leaves_by_index([0, 1, 2], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation("marcato"),
            abjad.Articulation("half-clb"),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[
            # abjad.LilyPondLiteral(r"\big-half-harmonic", site="before"),
            trinton.make_custom_dynamic("ffffff"),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mp"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("ppp"),
        ],
        selector=trinton.select_leaves_by_index([1, 1, -1], pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=r"MSP",
        selector=trinton.select_leaves_by_index(
            [1, -1],
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
    voice=score["violin 4 voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((4, 1)),
)

# viola music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 4)),
    evans.RhythmHandler(rhythm.rhythm_c(instrument="viola", stage=2)),
    trinton.pitch_with_selector_command(
        pitch_list=[["f", "b", "g'", "d''"]],
        selector=trinton.select_leaves_by_index([2, 5, 9]),
    ),
    trinton.change_lines(
        lines=5,
        clef="alto",
        invisible_barlines=False,
        selector=trinton.select_leaves_by_index([2, 5, 9]),
        force_clef=True,
    ),
    trinton.change_lines(
        lines=1,
        clef="alto",
        invisible_barlines=False,
        selector=trinton.select_leaves_by_index([0, 3, 6, 10]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Staff.Clef.stencil = ##f", site="before"
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.invisible_accidentals_command(selector=trinton.pleaves(exclude=[2, 5, 9])),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation("marcato"),
            abjad.Articulation("half-clb"),
        ],
        selector=trinton.select_leaves_by_index([2, 5, 9]),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.pleaves(exclude=[2, 5, 9]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(
                    r"""\markup { \hspace #-6.75 { \center-column { \line { "extremely strong battuto," } \line { "striking so hard as to hit all strings at once" } } } }"""
                ),
                r"""- \tweak font-name "Bodoni72 Book Italic" """,
            ),
        ],
        selector=trinton.select_leaves_by_index([2]),
        direction=abjad.DOWN,
    ),
    trinton.attachment_command(
        attachments=[
            trinton.make_custom_dynamic("ffffff"),
            # abjad.LilyPondLiteral(r"\big-half-harmonic", site="before"),
        ],
        selector=trinton.select_leaves_by_index([2, 5, 9]),
    ),
    trinton.change_notehead_command(
        notehead="harmonic", selector=trinton.select_leaves_by_index([2, 5, 9])
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ppp"),
            abjad.Dynamic('"ppp"'),
            abjad.StartHairpin("<"),
            abjad.Dynamic('"ff"'),
            abjad.Dynamic("ppp"),
            abjad.Dynamic('"ff"'),
        ],
        selector=trinton.select_leaves_by_index([0, 3, 3, 4, 6, 10]),
    ),
    trinton.hooked_spanner_command(
        string=r"""bridge""",
        selector=trinton.select_leaves_by_index([0, 1, 6, 8]),
        padding=3,
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
            # r"""- \tweak color #(css-color 'darkred)""",
            # r"""- \tweak bound-details.left.Y #5.5""",
            # r"""- \tweak bound-details.right.Y #7""",
        ],
    ),
    trinton.aftergrace_command(
        invisible=True,
        selector=trinton.select_logical_ties_by_index([-1], grace=False),
    ),
    trinton.hooked_spanner_command(
        string=r"""tailpiece""",
        selector=trinton.select_leaves_by_index([3, 4]),
        padding=3,
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
            # r"""- \tweak color #(css-color 'darkred)""",
            # r"""- \tweak bound-details.left.Y #5.5""",
            # r"""- \tweak bound-details.right.Y #7""",
        ],
    ),
    trinton.hooked_spanner_command(
        string=r"""tailpiece""",
        selector=trinton.select_leaves_by_index([10, 11]),
        padding=3,
        direction=None,
        right_padding=0,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="One",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 2""",
            # r"""- \tweak color #(css-color 'darkred)""",
            # r"""- \tweak bound-details.left.Y #5.5""",
            # r"""- \tweak bound-details.right.Y #7""",
        ],
    ),
    voice=score["viola 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 8)),
    evans.RhythmHandler(rhythm.rhythm_d(instrument="viola", stage=3, index=7)),
    trinton.rewrite_meter_command(boundary_depth=-2),
    pitch.pitch_d(
        instrument="viola",
        string_range_pairs=[
            ("I", [0, 8]),
            ("II", [9, 16]),
            ("I", [17, 19]),
            ("II", [20, 26]),
        ],
        stage=3,
        index=0,
        initial_seed=10,
        selector=trinton.logical_ties(pitched=True, grace=False),
    ),
    library.d_stage_3_noteheads(),
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
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
        direction=abjad.UP,
    ),
    trinton.detach_command(
        detachments=[abjad.Tie],
        selector=trinton.select_leaves_by_index(
            [
                9,
                29,
            ]
        ),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=[["f", "b", "g'", "d''"]],
        selector=trinton.select_logical_ties_by_index(
            [0, 7, 14, 20], pitched=True, grace=False
        ),
    ),
    # trinton.annotate_leaves_locally(
    #     selector=abjad.select.leaves,
    #     # selector=trinton.logical_ties(first=True, pitched=True, grace=False)
    # ),
    trinton.change_lines(
        lines=5,
        clef="alto",
        selector=trinton.select_leaves_by_index([0]),
        invisible_barlines=False,
        force_clef=True,
    ),
    trinton.detach_command(
        detachments=[abjad.Articulation],
        selector=trinton.select_leaves_by_index(
            [
                0,
                20,
            ]
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation("marcato"),
            abjad.Articulation("half-clb"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 7, 14, 20], first=True, pitched=True, grace=False
        ),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[
            trinton.make_custom_dynamic("ffffff"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 7, 14, 20], first=True, pitched=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("ppp")],
        selector=trinton.select_logical_ties_by_index(
            [1, 8, 15, 21], first=True, pitched=True, grace=False
        ),
    ),
    # trinton.attachment_command(
    #     attachments=[abjad.LilyPondLiteral(r"\big-half-harmonic", site="before")],
    #     selector=trinton.select_leaves_by_index([0, 10, 20, 21, 22, 30]),
    # ),
    trinton.change_notehead_command(
        notehead="harmonic",
        selector=trinton.select_leaves_by_index([0, 10, 20, 21, 22, 30]),
    ),
    # trinton.attachment_command(
    #     attachments=[abjad.Arpeggio()],
    #     selector=trinton.logical_ties(
    #         exclude=[0, 7, 14, 20], first=True, pitched=True, grace=False
    #     ),
    # ),
    trinton.force_accidentals_command(
        selector=trinton.logical_ties(first=True, pitched=True, grace=False)
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                3,
                9,
                10,
                14,
                15,
                18,
                22,
                24,
                26,
                29,
                30,
                33,
                37,
                39,
            ]
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BeamCount(left=2, right=1),
            abjad.BeamCount(left=1, right=2),
            abjad.BeamCount(left=4, right=1),
            abjad.BeamCount(left=1, right=3),
            abjad.BeamCount(left=3, right=1),
            abjad.BeamCount(left=1, right=4),
        ],
        selector=trinton.select_leaves_by_index([4, 5, 6, 7, 12, 13]),
    ),
    trinton.hooked_spanner_command(
        string=r"MSP",
        selector=trinton.select_leaves_by_index(
            [1, 9, 23, 29, 31, 39],
            pitched=True,
        ),
        padding=15.5,
        right_padding=1.5,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="One",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 1""",
        ],
    ),
    trinton.hooked_spanner_command(
        string=r"MSP",
        selector=trinton.select_leaves_by_index(
            [11, 19],
            pitched=True,
        ),
        padding=17.5,
        right_padding=1.5,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="One",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 1""",
        ],
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\override DynamicLineSpanner.staff-padding = #13",
                site="before",
            ),
            abjad.LilyPondLiteral(
                r"\revert DynamicLineSpanner.staff-padding",
                site="absolute_after",
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(
            evans.talea(
                [
                    -1,
                    7,
                    1,
                    2,
                    1,
                    -2,
                    2,
                    1,
                    1,
                    1,
                    1,
                    1,
                    3,
                    -4,
                    2,
                    1,
                    2,
                    1,
                    7,
                    1,
                    1,
                    1,
                    -1,
                    1,
                    1,
                    13,
                    1,
                    1,
                    1,
                    1,
                    -100,
                ],
                16,
            )
        ),
        direction=abjad.DOWN,
        voice_name="viola legno voice",
    ),
    voice=score["viola 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 8)),
    evans.PitchHandler(["g,"]),
    trinton.rewrite_meter_command(boundary_depth=-1),
    # trinton.annotate_leaves_locally(
    #     selector=abjad.select.leaves,
    #     direction=abjad.DOWN
    # ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [0, 1, 3, 7, 8, 9, 10, 13, 14, 15, 17, 19, 20, 22, 24, 27, 28, 31, 34, 37]
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
            durations=[abjad.Duration((1, 8)), abjad.Duration((1, 16))],
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
            durations=[abjad.Duration((1, 8)), abjad.Duration((1, 16))],
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
    trinton.hooked_spanner_command(
        string="CLB OB",
        selector=trinton.select_leaves_by_index(
            [4, 14, 17, 21, 25, 30, 34, 37],
            grace=False,
        ),
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
            [1, 3, 15, 16, 22, 24, 31, 33],
            grace=False,
        ),
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
    lambda _: trinton.select_target(_, (9, 12)),
    evans.RhythmHandler(rhythm.rhythm_c(instrument="viola", stage=3)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    trinton.pitch_with_selector_command(
        pitch_list=[["f", "b", "g'", "d''"]],
        selector=trinton.select_logical_ties_by_index([0, 5, 10, 17]),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=[["af", "gf"]],
        selector=trinton.select_logical_ties_by_index([8, 20, 21]),
    ),
    library.attach_gamelan_scale_cent_markups(
        scale_degrees=[[8, 5]],
        selector=trinton.select_logical_ties_by_index([8, 20, 21], first=True),
        padding=None,
    ),
    trinton.change_lines(
        lines=5,
        clef="alto",
        invisible_barlines=False,
        selector=trinton.select_logical_ties_by_index(
            [5, 8, 10, 17, 20], first=True, pitched=True
        ),
        force_clef=True,
    ),
    trinton.change_lines(
        lines=1,
        clef="alto",
        invisible_barlines=False,
        selector=trinton.select_logical_ties_by_index(
            [1, 6, 9, 11, 18], first=True, pitched=True
        ),
    ),
    trinton.invisible_accidentals_command(
        selector=trinton.logical_ties(exclude=[0, 5, 8, 10, 17, 20, 21], first=True)
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation("marcato"),
            abjad.Articulation("half-clb"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 5, 10, 17], first=True, pitched=True
        ),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[
            trinton.make_custom_dynamic("ffffff"),
            # abjad.LilyPondLiteral(r"\big-half-harmonic", site="before"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 5, 10, 17], first=True, pitched=True
        ),
    ),
    trinton.change_notehead_command(
        notehead="harmonic", selector=trinton.select_leaves_by_index([0, 6, 13, 21, 22])
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.select_logical_ties_by_index(
            [1, 3, 7, 8, 9, 11, 14, 15, 18, 19, 20, 21],
            first=True,
            pitched=True,
            grace=False,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic('"f"'),
            abjad.Dynamic("ppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mp"),
            abjad.Dynamic('"f"'),
            abjad.Dynamic("ppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mp"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [1, 6, 6, 8, 11, 18, 18, 20], first=True, pitched=True
        ),
    ),
    # trinton.aftergrace_command(
    #     invisible=True,
    #     selector=trinton.select_logical_ties_by_index([-1], grace=False),
    # ),
    # trinton.annotate_leaves_locally(
    #     # selector=trinton.pleaves()
    #     selector=trinton.logical_ties(first=True, pitched=True)
    # ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Stem.direction = #DOWN", site="before"
            )
        ],
        selector=trinton.select_leaves_by_index([9, 10]),
    ),
    trinton.hooked_spanner_command(
        string=r"""tailpiece""",
        selector=trinton.select_leaves_by_index([1, 5, 14, 20]),
        padding=3,
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
            # r"""- \tweak color #(css-color 'darkred)""",
            # r"""- \tweak bound-details.left.Y #5.5""",
            # r"""- \tweak bound-details.right.Y #7""",
        ],
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup { "bridge" }""",
            r"""\markup { "MSP" }""",
            r"""\markup { \hspace #0.5 { "bridge" } }""",
        ],
        selector=trinton.select_leaves_by_index(
            [7, 10, 10, 11, 11, 12],
            pitched=True,
        ),
        style="solid-line-with-arrow",
        padding=7.5,
        right_padding=0,
        direction=None,
        full_string=True,
        end_hook=True,
        end_hook_right_padding=3,
        command="One",
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 1""",
        ],
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup { "bridge" }""",
            r"""\markup { "MSP" }""",
        ],
        selector=trinton.select_leaves_by_index(
            [23, 26, 26, 27],
            pitched=True,
        ),
        style="solid-line-with-arrow",
        padding=11,
        right_padding=0,
        direction=None,
        full_string=True,
        end_hook=True,
        end_hook_right_padding=3,
        command="One",
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 1""",
        ],
    ),
    voice=score["viola 2 voice"],
    beam_meter=True,
)

# cello music

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 12)),
    evans.RhythmHandler(
        evans.talea(
            [-4, 4, -4, -12, -8, -3, 1, -16, 4, -16, -5, 3, -12, 4, -16, 4, -16], 16
        )
    ),
    trinton.rewrite_meter_command(boundary_depth=-2),
    evans.PitchHandler(
        [
            ["cs,", "a,", "ds", "as"],
            ["d,", "bf,", "e", "a"],
            ["c,", "af,", "f", "b"],
            [
                "c,",
                "g,",
                "b",
                "fs'",
            ],
            [
                "cs,",
                "g,",
                "fs",
                "as",
            ],
            ["d,", "af,", "f", "a"],
        ]
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([5, 6, 13, 14]),
    ),
    trinton.change_lines(
        lines=5,
        clef="bass",
        selector=trinton.select_leaves_by_index([0], pitched=True),
        force_clef=True,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation("tenuto"),
            abjad.bundle(
                abjad.Markup(r"""\markup { "Strum" }"""), r"- \tweak font-size #1"
            ),
        ],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [abjad.Arpeggio(direction=abjad.UP), abjad.Arpeggio(direction=abjad.DOWN)]
        ),
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[abjad.LaissezVibrer()],
        selector=trinton.logical_ties(last=True, pitched=True, grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mp"),
            abjad.Dynamic("f"),
            abjad.Dynamic("mp"),
            abjad.Dynamic("f"),
        ],
        selector=trinton.select_leaves_by_index([0, 2, 3, 4], pitched=True),
    ),
    trinton.change_notehead_command(
        notehead="harmonic", selector=trinton.select_leaves_by_index([0], pitched=True)
    ),
    trinton.change_notehead_command(
        notehead="harmonic",
        selector=trinton.notehead_selector(
            chord_indices=list(range(1, 6)),
            head_indices_lists=[[0, 1, 2], [1, 2, 3], [2, 3], [0, 2, 3], [0, 1, 2]],
        ),
    ),
    trinton.hooked_spanner_command(
        string=r"""Pizz.""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=11.5,
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
            # r"""- \tweak bound-details.left.Y #5.5""",
            # r"""- \tweak bound-details.right.Y #7""",
        ],
    ),
    voice=score["cello 2 voice"],
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
    ["violin 2 voice temp", "violin 4 voice", "viola 2 voice", "cello 2 voice"],
    [9.5, 3, 3, 3],
    [0, -9, -7, -7],
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
        # "violin 4 voice",
        "viola 2 voice temp",
        "cello 2 voice",
    ],
    [
        10,
        # 5,
        19,
        9,
    ],
    [
        -10,
        # -1,
        20,
        -2,
    ],
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

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 6)),
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
        selector=trinton.select_leaves_by_index([0, -1]),
        style="solid-line-with-arrow",
        padding=13,
        tweaks=None,
        right_padding=15.5,
        direction=None,
        full_string=True,
        command="Three",
    ),
    voice=score["violin 4 voice temp"],
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

for measure in [
    13,
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

for measure in [1, 3, 6, 8, 10, 12]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\noBreak", site="absolute_after")],
            selector=trinton.select_leaves_by_index([0]),
            tag=abjad.Tag("+SCORE"),
        ),
        voice=score["Global Context"],
    )

for measure in [2, 4, 5, 7, 9, 11]:
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
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (15 30 36 22)))",
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
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (7 36 32 18)))",
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
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (7 34 43 32)))",
                site="absolute_before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (14 40 46 39)))",
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
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (7 32 30 30)))",
                site="absolute_before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10, 12)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (11 32 25 24)))",
                site="absolute_before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
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
    segment_path="/Users/trintonprater/scores/patterns/patterns/sections/06",
    build_path="/Users/trintonprater/scores/patterns/patterns/build",
    segment_name="06",
    includes=[
        "/Users/trintonprater/scores/patterns/patterns/build/patterns-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
