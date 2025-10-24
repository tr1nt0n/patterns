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
        ts.return_c_material_ts(measure_amount=8, index=15),
        ts.return_b_material_ts(measure_amount=7, index=2),
        [(1, 4)],
    ],
)

score = library.patterns_score(
    section_ts,
)

# first violin music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 15)),
    evans.RhythmHandler(evans.talea([-1000], 4)),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(
            evans.talea(
                [-1000],
                4,
            )
        ),
        direction=abjad.UP,
        voice_name="violin 1 bow voice",
        temp_name="fingers",
    ),
    voice=score["violin 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 15)),
    trinton.rewrite_meter_command(),
    voice=score["violin 1 bow voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.RhythmHandler(evans.talea([4, 3, 1, 1, 1, 1, -1], 8)),
    evans.PitchHandler(
        [
            ["f''"],
            ["d''"],
            "d''",
            ["d''"],
            ["d''"],
            ["d''"],
        ]
    ),
    library.tablature_staff(
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([3, 5]),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.bundle(
                    abjad.StartSlur(),
                    r"""- \tweak color #(css-color 'darkred)""",
                ),
                abjad.StopSlur(),
            ]
        ),
        selector=trinton.select_leaves_by_index([0, 2]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Articulation(">"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
        ],
        selector=trinton.select_leaves_by_index([3, 4, 5]),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Articulation("staccato"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
        ],
        selector=trinton.select_leaves_by_index([3, 4, 5]),
        direction=abjad.DOWN,
    ),
    trinton.change_notehead_command(notehead="cluster", selector=abjad.select.chords),
    trinton.continuous_glissando(
        zero_padding=True,
        selector=trinton.select_leaves_by_index([0, 1]),
        tweaks=[abjad.Tweak(r"""- \tweak color #(css-color 'darkred)""")],
    ),
    trinton.continuous_glissando(
        zero_padding=True,
        selector=trinton.select_leaves_by_index([2, 3]),
        tweaks=[abjad.Tweak(r"""- \tweak color #(css-color 'darkred)""")],
    ),
    trinton.continuous_glissando(
        zero_padding=True,
        selector=trinton.select_leaves_by_index([1, 2]),
        tweaks=[
            abjad.Tweak(r"- \tweak thickness #1.5"),
            abjad.Tweak(r"- \tweak bound-details.right.arrow ##t"),
            abjad.Tweak(r"""- \tweak color #(css-color 'darkred)"""),
        ],
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = #7", site="before"
            )
        ],
        selector=abjad.select.rests,
    ),
    library.color_voice(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override DynamicLineSpanner.staff-padding = #-4.5",
                site="before",
            ),
            abjad.Dynamic("pp"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mp"),
            abjad.LilyPondLiteral(
                r"\once \override DynamicLineSpanner.staff-padding = #-5", site="before"
            ),
            trinton.make_custom_dynamic("s. f"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, 1, 2, 3, 3]),
    ),
    trinton.hooked_spanner_command(
        string=r"""III""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
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
            # r"""- \tweak color #(css-color 'darkred)""",
            # r"""- \tweak bound-details.left.Y #5.5""",
            # r"""- \tweak bound-details.right.Y #7""",
        ],
    ),
    trinton.hooked_spanner_command(
        string=r"""Scratch""",
        selector=trinton.select_leaves_by_index([0, 1], pitched=True),
        padding=10,
        direction=None,
        right_padding=-0.5,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="Two",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 2""",
            r"""- \tweak color #(css-color 'darkred)""",
            # r"""- \tweak bound-details.left.Y #5.5""",
            # r"""- \tweak bound-details.right.Y #7""",
        ],
    ),
    trinton.spanner_command(
        strings=[r"", "Norm."],
        selector=trinton.select_leaves_by_index([1, 2, 2, 3], pitched=True),
        style="solid-line-with-arrow",
        padding=10,
        right_padding=0,
        direction=None,
        full_string=False,
        end_hook=True,
        end_hook_right_padding=-0.5,
        command="Two",
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 1""",
            r"""- \tweak color #(css-color 'darkred)""",
        ],
    ),
    trinton.hooked_spanner_command(
        string=r"""Scratch""",
        selector=trinton.select_leaves_by_index([3, 5], pitched=True),
        padding=10,
        direction=None,
        right_padding=3,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="Two",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 2""",
            r"""- \tweak color #(css-color 'darkred)""",
            # r"""- \tweak bound-details.left.Y #5.5""",
            # r"""- \tweak bound-details.right.Y #7""",
        ],
    ),
    voice=score["violin 1 bow voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.RhythmHandler(evans.talea([4, 4, 3, -1], 8)),
    evans.PitchHandler(
        [
            "a''",
            "f''",
            "f''",
        ]
    ),
    trinton.continuous_glissando(selector=trinton.pleaves(), zero_padding=True),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = #-7", site="before"
            )
        ],
        selector=abjad.select.rests,
    ),
    trinton.change_notehead_command(notehead="harmonic", selector=trinton.pleaves()),
    voice=score["violin 2 voice fingers"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 6)),
    evans.RhythmHandler(
        evans.tuplet(
            [
                (3, 2),
                (1,),
                (1, 1, 1, 1, 1),
                (-1,),
            ]
        )
    ),
    evans.PitchHandler(
        [["a'"], "c''", "c''", ["c''"], ["c''"], ["c''"], ["c''"], ["c''"]]
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([-5, -1], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.bundle(
                    abjad.StartSlur(),
                    r"""- \tweak color #(css-color 'darkred)""",
                ),
                abjad.StopSlur(),
            ]
        ),
        selector=trinton.select_leaves_by_index([0, 1], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Articulation(">"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
            abjad.bundle(
                abjad.Articulation("staccato"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
        ],
        selector=trinton.select_leaves_by_index([-5, -4, -3, -2, -1], pitched=True),
        direction=abjad.UP,
    ),
    trinton.change_notehead_command(notehead="cluster", selector=abjad.select.chords),
    trinton.continuous_glissando(
        zero_padding=True,
        selector=trinton.select_leaves_by_index([0, 1], pitched=True),
        tweaks=[
            abjad.Tweak(r"- \tweak thickness #1.5"),
            abjad.Tweak(r"- \tweak bound-details.right.arrow ##t"),
            abjad.Tweak(r"""- \tweak color #(css-color 'darkred)"""),
        ],
    ),
    trinton.continuous_glissando(
        zero_padding=True,
        selector=trinton.select_leaves_by_index([1, 2, 3], pitched=True),
        tweaks=[abjad.Tweak(r"""- \tweak color #(css-color 'darkred)""")],
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = #7", site="before"
            )
        ],
        selector=abjad.select.rests,
    ),
    library.color_voice(),
    trinton.linear_attachment_command(
        attachments=[
            # abjad.LilyPondLiteral(
            #     r"\once \override DynamicLineSpanner.staff-padding = #-4.5",
            #     site="before"
            # ),
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mp"),
            # abjad.LilyPondLiteral(
            #     r"\once \override DynamicLineSpanner.staff-padding = #-5",
            #     site="before"
            # ),
            trinton.make_custom_dynamic("s. f"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 2, 3]),
    ),
    trinton.hooked_spanner_command(
        string=r"""III""",
        selector=trinton.select_leaves_by_index([0, 2], pitched=True),
        padding=9.5,
        direction=None,
        right_padding=43,
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
        string=r"""(III)""",
        selector=trinton.select_leaves_by_index([-6, -1]),
        padding=13.5,
        direction=None,
        right_padding=-2.5,
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
        strings=[r"Scratch", "Norm."],
        selector=trinton.select_leaves_by_index([0, 1], pitched=True),
        style="solid-line-with-arrow",
        padding=7.5,
        right_padding=0,
        direction=None,
        full_string=False,
        end_hook=False,
        end_hook_right_padding=-0.5,
        command="Two",
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 1""",
            r"""- \tweak color #(css-color 'darkred)""",
        ],
    ),
    trinton.hooked_spanner_command(
        string=r"""Scratch""",
        selector=trinton.select_leaves_by_index([-5, -1], pitched=True),
        padding=11,
        direction=None,
        right_padding=3,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="Two",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 2""",
            r"""- \tweak color #(css-color 'darkred)""",
            # r"""- \tweak bound-details.left.Y #5.5""",
            # r"""- \tweak bound-details.right.Y #7""",
        ],
    ),
    voice=score["violin 1 bow voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((5, 4, 2, 1)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 6)),
    evans.RhythmHandler(evans.talea([3, 2, 4, 2, -1], 4)),
    evans.PitchHandler(["c''", "e''", "e''", ["e''", "a'"]]),
    trinton.continuous_glissando(
        selector=trinton.select_leaves_by_index([0, 1]), zero_padding=True
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = #-7", site="before"
            )
        ],
        selector=abjad.select.rests,
    ),
    trinton.change_notehead_command(notehead="harmonic", selector=trinton.pleaves()),
    library.tablature_trill(
        trill_pitch="a'",
        selector=trinton.select_leaves_by_index([1, 2]),
        notehead="harmonic",
        bound_details=(0, 0),
        direction=abjad.DOWN,
    ),
    voice=score["violin 2 voice fingers"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 9)),
    evans.RhythmHandler(evans.tuplet([(1, 9), (1,), (1, 1, 1), (-1,)])),
    trinton.rewrite_meter_command(boundary_depth=-2),
    evans.PitchHandler(
        [
            ["f''"],
            "e''",
            "c''",
            ["f''"],
            ["f''"],
            ["f''"],
        ]
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([0, 1, -3, -1], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.bundle(
                    abjad.StartSlur(),
                    r"""- \tweak color #(css-color 'darkred)""",
                ),
                abjad.StopSlur(),
            ]
        ),
        selector=trinton.select_leaves_by_index([0, 3], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Articulation(">"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
            abjad.bundle(
                abjad.Articulation("staccato"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
        ],
        selector=trinton.select_leaves_by_index([-3, -2, -1], pitched=True),
        direction=abjad.UP,
    ),
    trinton.change_notehead_command(notehead="cluster", selector=abjad.select.chords),
    trinton.continuous_glissando(
        zero_padding=True,
        selector=trinton.select_logical_ties_by_index([0, 1], pitched=True),
        tweaks=[
            abjad.Tweak(r"- \tweak thickness #1.5"),
            abjad.Tweak(r"- \tweak bound-details.right.arrow ##t"),
            abjad.Tweak(r"""- \tweak color #(css-color 'darkred)"""),
        ],
    ),
    trinton.continuous_glissando(
        zero_padding=True,
        selector=trinton.select_logical_ties_by_index([2, 3], pitched=True),
        tweaks=[
            abjad.Tweak(r"- \tweak thickness #1.5"),
            abjad.Tweak(r"- \tweak bound-details.right.arrow ##t"),
            abjad.Tweak(r"""- \tweak color #(css-color 'darkred)"""),
        ],
    ),
    trinton.continuous_glissando(
        zero_padding=True,
        selector=trinton.select_leaves_by_index([1, 2, 3, 4], pitched=True),
        tweaks=[abjad.Tweak(r"""- \tweak color #(css-color 'darkred)""")],
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = #7", site="before"
            )
        ],
        selector=abjad.select.rests,
    ),
    library.color_voice(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override DynamicLineSpanner.staff-padding = #-4.5",
                site="before",
            ),
            abjad.Dynamic("mp"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("pp"),
            abjad.LilyPondLiteral(
                r"\once \override DynamicLineSpanner.staff-padding = #-3.5",
                site="before",
            ),
            trinton.make_custom_dynamic("s. f"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 0, 2, 3, 3], first=True, pitched=True
        ),
    ),
    trinton.hooked_spanner_command(
        string=r"""IV""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=12,
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
        strings=[r"Scr.", "Norm."],
        selector=trinton.select_leaves_by_index([0, 1], pitched=True),
        style="solid-line-with-arrow",
        padding=9.5,
        right_padding=0,
        direction=None,
        full_string=False,
        end_hook=False,
        end_hook_right_padding=-0.5,
        command="Two",
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 1""",
            r"""- \tweak color #(css-color 'darkred)""",
        ],
    ),
    trinton.spanner_command(
        strings=["(Norm.)", "Scratch"],
        selector=trinton.select_leaves_by_index([4, 5, 5, -1], pitched=True),
        style="solid-line-with-arrow",
        padding=10.5,
        right_padding=0,
        direction=None,
        full_string=False,
        end_hook=True,
        end_hook_right_padding=3,
        command="Two",
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 1""",
            r"""- \tweak color #(css-color 'darkred)""",
        ],
    ),
    voice=score["violin 1 bow voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor((20, 12, 3, 3)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 9)),
    evans.RhythmHandler(
        evans.tuplet(
            [(1,), (1, 1, 1, 1, 1), (1,), (1, 1, 1), (1,), (1, 1, 1, 1, 1), (1, -1)]
        ),
    ),
    trinton.treat_tuplets(),
    trinton.rewrite_meter_command(boundary_depth=-2),
    evans.PitchHandler(
        [
            "a''",
            "g''",
            ["g''", "c''"],
            "g''",
            ["f''", "c''"],
            "c''",
            "f''",
            "e''",
            "b'",
            ["b'", "e''"],
            "e''",
            "f''",
            "c''",
            "f''",
            "c''",
            "g''",
            ["a''", "d''"],
        ]
    ),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index(
            [6, 7, 10, 11, 15, 16], pitched=True
        ),
        zero_padding=True,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = #-7", site="before"
            )
        ],
        selector=abjad.select.rests,
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [
                0,
                6,
                8,
                10,
                12,
                17,
            ]
        ),
    ),
    trinton.change_notehead_command(notehead="harmonic", selector=trinton.pleaves()),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\big-half-harmonic", site="before")],
        selector=trinton.select_leaves_by_index([5, 9, 14, 16], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\once \override Tie.stencil = ##f", site="before"),
            abjad.LilyPondLiteral(
                r"\set glissandoMap = #'((0 . 1) (1 . 0))",
                site="before",
            ),
        ],
        selector=trinton.select_logical_ties_by_index(
            [10, 15], first=True, pitched=True
        ),
    ),
    voice=score["violin 2 voice fingers"],
    preprocessor=trinton.fuse_eighths_preprocessor((1, 4, 3, 2, 4, 2, 3)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10, 12)),
    evans.RhythmHandler(
        evans.talea([16, 3, 3, 2, 2, -4], 16),
    ),
    evans.PitchHandler(
        [
            "f''",
            ["d''"],
            ["d''"],
            ["d''"],
            ["d''"],
        ]
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([1, 2, 3, 4], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Articulation(">"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
            abjad.bundle(
                abjad.Articulation("staccato"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
        ],
        selector=trinton.select_leaves_by_index([1, 2, 3, 4], pitched=True),
        direction=abjad.UP,
    ),
    trinton.change_notehead_command(notehead="cluster", selector=abjad.select.chords),
    trinton.continuous_glissando(
        zero_padding=True,
        selector=trinton.select_logical_ties_by_index([0, 1], pitched=True),
        tweaks=[abjad.Tweak(r"""- \tweak color #(css-color 'darkred)""")],
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = #7", site="before"
            )
        ],
        selector=abjad.select.rests,
    ),
    library.color_voice(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override DynamicLineSpanner.staff-padding = #-3.5",
                site="before",
            ),
            abjad.Dynamic("pp"),
            abjad.LilyPondLiteral(
                r"\once \override DynamicLineSpanner.staff-padding = #-3.5",
                site="before",
            ),
            trinton.make_custom_dynamic("s. f"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 1, 1], first=True, pitched=True
        ),
    ),
    trinton.hooked_spanner_command(
        string=r"""II""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=9.5,
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
        string=r"""Scratch""",
        selector=trinton.select_leaves_by_index([1, -1], pitched=True),
        padding=8.5,
        direction=None,
        right_padding=3,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="Two",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 1""",
            r"""- \tweak color #(css-color 'darkred)""",
            # r"""- \tweak bound-details.left.Y #5.5""",
            # r"""- \tweak bound-details.right.Y #7""",
        ],
    ),
    voice=score["violin 1 bow voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10, 12)),
    evans.RhythmHandler(
        evans.talea([1, 1, 1, 13, 10, -100], 16),
    ),
    trinton.rewrite_meter_command(boundary_depth=-2),
    evans.PitchHandler(
        [
            "a''",
            "d''",
            ["d''", "g''"],
            "g''",
            ["f''", "b'"],
        ]
    ),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index([3, 4], pitched=True),
        zero_padding=True,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = #-7", site="before"
            )
        ],
        selector=abjad.select.rests,
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([0, 3]),
    ),
    trinton.change_notehead_command(notehead="harmonic", selector=trinton.pleaves()),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\big-half-harmonic", site="before")],
        selector=trinton.select_leaves_by_index([1], pitched=True),
    ),
    voice=score["violin 2 voice fingers"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (13, 15)),
    evans.RhythmHandler(
        evans.tuplet(
            [
                (1,),
                (1, 1, 1, 1, 1),
                (1,),
                (1,),
                (-1,),
            ]
        )
    ),
    trinton.treat_tuplets(),
    trinton.attachment_command(
        attachments=[abjad.Tie()], selector=trinton.select_leaves_by_index([5])
    ),
    trinton.rewrite_meter_command(boundary_depth=-2),
    trinton.aftergrace_command(
        slash=True, selector=trinton.select_logical_ties_by_index([-1], pitched=True)
    ),
    evans.PitchHandler(
        ["d''", ["g''"], ["g''"], ["g''"], ["g''"], ["g''"], "g''", "d''"]
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([1, 5], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.bundle(
                    abjad.StartSlur(),
                    r"""- \tweak color #(css-color 'darkred)""",
                ),
                abjad.StopSlur(),
            ]
        ),
        selector=trinton.select_logical_ties_by_index(
            [5, -1], first=True, pitched=True
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Articulation(">"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
            abjad.bundle(
                abjad.Articulation("staccato"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
        ],
        selector=trinton.select_leaves_by_index([1, 2, 3, 4], pitched=True),
        direction=abjad.UP,
    ),
    trinton.change_notehead_command(notehead="cluster", selector=abjad.select.chords),
    trinton.continuous_glissando(
        zero_padding=True,
        selector=trinton.select_logical_ties_by_index([0, 1, -2, -1], pitched=True),
        tweaks=[abjad.Tweak(r"""- \tweak color #(css-color 'darkred)""")],
    ),
    trinton.continuous_glissando(
        zero_padding=True,
        selector=trinton.select_logical_ties_by_index([5, 6], pitched=True),
        tweaks=[
            abjad.Tweak(r"- \tweak thickness #1.5"),
            abjad.Tweak(r"- \tweak bound-details.right.arrow ##t"),
            abjad.Tweak(r"""- \tweak color #(css-color 'darkred)"""),
        ],
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = #7", site="before"
            )
        ],
        selector=abjad.select.rests,
    ),
    library.color_voice(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\override DynamicLineSpanner.staff-padding = #-3.5", site="before"
            ),
            abjad.Dynamic("mp"),
            trinton.make_custom_dynamic("s. f"),
            abjad.Dynamic("ppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mf"),
            abjad.LilyPondLiteral(
                r"\revert DynamicLineSpanner.staff-padding", site="absolute_after"
            ),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 1, 5, 6, -1], first=True, pitched=True
        ),
    ),
    trinton.hooked_spanner_command(
        string=r"""IV""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=6,
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
        string=r"""Scratch""",
        selector=trinton.select_logical_ties_by_index([1, 5], first=True, pitched=True),
        padding=13,
        direction=None,
        right_padding=-0.5,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="Two",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 1""",
            r"""- \tweak color #(css-color 'darkred)""",
            # r"""- \tweak bound-details.left.Y #5.5""",
            # r"""- \tweak bound-details.right.Y #7""",
        ],
    ),
    trinton.spanner_command(
        strings=["", "Norm."],
        selector=trinton.select_logical_ties_by_index([5, 6], first=True, pitched=True),
        style="solid-line-with-arrow",
        padding=13,
        right_padding=0,
        direction=None,
        full_string=False,
        end_hook=False,
        end_hook_right_padding=3,
        command="Two",
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 1""",
            r"""- \tweak color #(css-color 'darkred)""",
        ],
    ),
    voice=score["violin 1 bow voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor((16, 12, 12, 5, 5)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (13, 15)),
    evans.RhythmHandler(
        evans.talea([16, 12, 12, 5, -5], 16),
    ),
    trinton.rewrite_meter_command(boundary_depth=-2),
    trinton.aftergrace_command(
        slash=True,
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
    ),
    evans.PitchHandler(
        [
            "f''",
            ["b''", "b''"],
            "a''",
            ["b''", "e''"],
            ["f''", "b'"],
        ]
    ),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index([0, 1, -2, -1], pitched=True),
        zero_padding=True,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = #-7", site="before"
            )
        ],
        selector=abjad.select.rests,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\unset glissandoMap",
                site="before",
            ),
        ],
        selector=trinton.select_logical_ties_by_index([0], first=True, pitched=True),
    ),
    trinton.change_notehead_command(notehead="harmonic", selector=trinton.pleaves()),
    voice=score["violin 2 voice fingers"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (16,)),
    library.tablature_staff(
        selector=trinton.select_leaves_by_index([0]), reset=True, reset_staff_lines=5
    ),
    voice=score["violin 2 voice"],
)

# second violin music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 15)),
    evans.RhythmHandler(rhythm.rhythm_c(stage=3, instrument="violin 2", index=0)),
    voice=score["violin 4 voice"],
)

for measure in [1, 2, 3, 4, 5, 6, 7, 10, 12, 13, 14]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.rewrite_meter_command(boundary_depth=-1),
        voice=score["violin 4 voice"],
    )

for measure in [8, 9, 11, 15]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.rewrite_meter_command(boundary_depth=-2),
        voice=score["violin 4 voice"],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.PitchHandler([["f'''", "b'''"]]),
    trinton.force_accidentals_command(
        selector=trinton.logical_ties(first=True, pitched=True, grace=False)
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"\markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { -12 } \line { +0 } } } }"
            )
        ],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
        direction=abjad.UP,
    ),
    trinton.tweak_command(
        tweaks=[
            r"\tweak Accidental.stencil #ly:text-interface::print",
            rf"\tweak Accidental.text \natural-one-syntonic-comma-down",
        ],
        selector=trinton.notehead_selector(
            chord_indices=[0, 1, 2, 3, 4, 5, 6, 7, 8],
            head_indices_lists=[
                [1],
                [1],
                [1],
                [1],
                [1],
                [1],
                [1],
                [1],
                [1],
            ],
        ),
    ),
    trinton.tweak_command(
        tweaks=[
            r"\tweak Accidental.stencil #ly:text-interface::print",
            rf"\tweak Accidental.text \abjad-natural",
        ],
        selector=trinton.notehead_selector(
            chord_indices=[0, 1, 2, 3, 4, 5, 6],
            head_indices_lists=[
                [0],
                [0],
                [0],
                [0],
                [0],
                [0],
                [0],
                [0],
                [0],
            ],
        ),
    ),
    trinton.change_notehead_command(
        notehead="harmonic", selector=trinton.select_leaves_by_index([1, 4, 7, 8])
    ),
    trinton.continuous_glissando(
        zero_padding=True,
        selector=trinton.select_logical_ties_by_index([0, 1]),
        tweaks=[
            abjad.Tweak(r"- \tweak thickness #1.5"),
            abjad.Tweak(r"- \tweak bound-details.right.arrow ##t"),
        ],
    ),
    trinton.continuous_glissando(
        zero_padding=True,
        selector=trinton.select_logical_ties_by_index([1, 2]),
        tweaks=[
            abjad.Tweak(r"- \tweak thickness #1.5"),
            abjad.Tweak(r"- \tweak bound-details.right.arrow ##t"),
        ],
    ),
    trinton.continuous_glissando(
        zero_padding=True,
        selector=trinton.select_logical_ties_by_index([2, 3]),
        tweaks=[
            abjad.Tweak(r"- \tweak thickness #1.5"),
            abjad.Tweak(r"- \tweak bound-details.right.arrow ##t"),
        ],
    ),
    trinton.continuous_glissando(
        zero_padding=True,
        selector=trinton.select_logical_ties_by_index([3, 4]),
        tweaks=[
            abjad.Tweak(r"- \tweak thickness #1.5"),
            abjad.Tweak(r"- \tweak bound-details.right.arrow ##t"),
        ],
    ),
    trinton.continuous_glissando(
        zero_padding=True,
        selector=trinton.select_logical_ties_by_index([4, 5]),
        tweaks=[
            abjad.Tweak(r"- \tweak thickness #1.5"),
            abjad.Tweak(r"- \tweak bound-details.right.arrow ##t"),
        ],
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\override DynamicLineSpanner.staff-padding = #-4", site="before"
            ),
            abjad.Dynamic("pp"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mp"),
            trinton.make_custom_dynamic("s. f"),
            abjad.LilyPondLiteral(
                r"\revert DynamicLineSpanner.staff-padding", site="absolute_after"
            ),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 0, 1, 4, 5, -1], first=True, pitched=True, grace=False
        ),
    ),
    trinton.hooked_spanner_command(
        string=r"1/2 CLT",
        selector=trinton.select_leaves_by_index(
            [0, -1],
            pitched=True,
        ),
        padding=20,
        right_padding=3,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="One",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 0""",
        ],
    ),
    trinton.hooked_spanner_command(
        string=r"Scratch",
        selector=trinton.select_leaves_by_index(
            [-2, -1],
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
    trinton.spanner_command(
        strings=[
            r"""\markup { \override #'(baseline-skip . 2) \column { \line { MSP } \line { "(hair on bridge," } \line { "wood on string)" } } }""",
            r"""\markup { \override #'(baseline-skip . 2) \column { \line { Ord. } \line { "(hair and wood" } \line { "on string)" } } }""",
        ],
        selector=trinton.select_logical_ties_by_index([0, 3], pitched=True, first=True),
        style="solid-line-with-arrow",
        padding=15.5,
        right_padding=0,
        direction=None,
        full_string=True,
        end_hook=False,
        end_hook_right_padding=0,
        command="Two",
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 0""",
        ],
    ),
    voice=score["violin 4 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 6)),
    evans.PitchHandler([["as''", "f'''"]]),
    trinton.force_accidentals_command(
        selector=trinton.logical_ties(first=True, pitched=True, grace=False)
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"\markup \fontsize #0.1 { \override #'(baseline-skip . 2) { \center-column { \line { +0 } \line { -2 } } } }"
            )
        ],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
        direction=abjad.UP,
    ),
    trinton.tweak_command(
        tweaks=[
            r"\tweak Accidental.stencil #ly:text-interface::print",
            rf"\tweak Accidental.text \sharp-one-syntonic-comma-down",
        ],
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
                17,
            ],
            head_indices_lists=[
                [0],
                [0],
                [0],
                [0],
                [0],
                [0],
                [0],
                [0],
                [0],
                [0],
                [0],
                [0],
                [0],
                [0],
                [0],
                [0],
                [0],
                [0],
            ],
        ),
    ),
    trinton.tweak_command(
        tweaks=[
            r"\tweak Accidental.stencil #ly:text-interface::print",
            rf"\tweak Accidental.text \abjad-natural",
        ],
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
                17,
            ],
            head_indices_lists=[
                [1],
                [1],
                [1],
                [1],
                [1],
                [1],
                [1],
                [1],
                [1],
                [1],
                [1],
                [1],
                [1],
                [1],
                [1],
                [1],
                [1],
                [1],
            ],
        ),
    ),
    trinton.change_notehead_command(
        notehead="harmonic", selector=trinton.select_leaves_by_index([2, 4, 7, 15, 16])
    ),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\big-half-harmonic", site="before")],
        selector=trinton.select_leaves_by_index([9, 12]),
    ),
    trinton.continuous_glissando(
        zero_padding=True,
        selector=trinton.select_logical_ties_by_index([0, 1]),
        tweaks=[
            abjad.Tweak(r"- \tweak thickness #1.5"),
            abjad.Tweak(r"- \tweak bound-details.right.arrow ##t"),
        ],
    ),
    trinton.continuous_glissando(
        zero_padding=True,
        selector=trinton.select_logical_ties_by_index([1, 2]),
        tweaks=[
            abjad.Tweak(r"- \tweak thickness #1.5"),
            abjad.Tweak(r"- \tweak bound-details.right.arrow ##t"),
        ],
    ),
    trinton.continuous_glissando(
        zero_padding=True,
        selector=trinton.select_logical_ties_by_index([2, 3]),
        tweaks=[
            abjad.Tweak(r"- \tweak thickness #1.5"),
            abjad.Tweak(r"- \tweak bound-details.right.arrow ##t"),
        ],
    ),
    trinton.continuous_glissando(
        zero_padding=True,
        selector=trinton.select_logical_ties_by_index([4, 5]),
        tweaks=[
            abjad.Tweak(r"- \tweak thickness #1.5"),
            abjad.Tweak(r"- \tweak bound-details.right.arrow ##t"),
        ],
    ),
    trinton.continuous_glissando(
        zero_padding=True,
        selector=trinton.select_logical_ties_by_index([5, 6]),
        tweaks=[
            abjad.Tweak(r"- \tweak thickness #1.5"),
            abjad.Tweak(r"- \tweak bound-details.right.arrow ##t"),
        ],
    ),
    trinton.continuous_glissando(
        zero_padding=True,
        selector=trinton.select_logical_ties_by_index([7, 8]),
        tweaks=[
            abjad.Tweak(r"- \tweak thickness #1.5"),
            abjad.Tweak(r"- \tweak bound-details.right.arrow ##t"),
        ],
    ),
    trinton.continuous_glissando(
        zero_padding=True,
        selector=trinton.select_logical_ties_by_index([9, 10]),
        tweaks=[
            abjad.Tweak(r"- \tweak thickness #1.5"),
            abjad.Tweak(r"- \tweak bound-details.right.arrow ##t"),
        ],
    ),
    trinton.continuous_glissando(
        zero_padding=True,
        selector=trinton.select_logical_ties_by_index([10, 11]),
        tweaks=[
            abjad.Tweak(r"- \tweak thickness #1.5"),
            abjad.Tweak(r"- \tweak bound-details.right.arrow ##t"),
        ],
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\override DynamicLineSpanner.staff-padding = #-4", site="before"
            ),
            abjad.Dynamic("pp"),
            trinton.make_custom_dynamic("s. f"),
            abjad.Dynamic("p"),
            trinton.make_custom_dynamic("s. f"),
            abjad.Dynamic("p"),
            trinton.make_custom_dynamic("s. f"),
            abjad.Dynamic("mp"),
            trinton.make_custom_dynamic("s. f"),
            abjad.Dynamic("mp"),
            abjad.LilyPondLiteral(
                r"\revert DynamicLineSpanner.staff-padding", site="absolute_after"
            ),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 3, 4, 6, 7, 8, 9, 11, 13, -1], first=True, pitched=True, grace=False
        ),
    ),
    trinton.hooked_spanner_command(
        string=r"1/2 CLT",
        selector=trinton.select_logical_ties_by_index(
            [0, 6],
            first=True,
            pitched=True,
        ),
        padding=17.5,
        right_padding=1.5,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="One",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 0""",
        ],
    ),
    trinton.hooked_spanner_command(
        string=r"Scr.",
        selector=trinton.select_logical_ties_by_index(
            [3, 4, 6, 7, 8, 9],
            first=True,
            pitched=True,
        ),
        padding=14.5,
        right_padding=-0.5,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="Three",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 0""",
        ],
    ),
    trinton.hooked_spanner_command(
        string=r"Scr.",
        selector=trinton.select_logical_ties_by_index(
            [11, 12],
            first=True,
            pitched=True,
        ),
        padding=13.5,
        right_padding=1.5,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="Three",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 0""",
        ],
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup { \override #'(baseline-skip . 2) \column { \line { Ord. } \line { "(hair and wood" } \line { "on string)" } } }""",
            r"""\markup { \override #'(baseline-skip . 2) \column { \line { MSP } \line { "(hair on bridge," } \line { "wood on string)" } } }""",
        ],
        selector=trinton.select_logical_ties_by_index([0, 2], pitched=True, first=True),
        style="solid-line-with-arrow",
        padding=13.5,
        right_padding=0,
        direction=None,
        full_string=True,
        end_hook=False,
        end_hook_right_padding=0,
        command="Two",
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 0""",
        ],
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup { \override #'(baseline-skip . 2) \column { \line { MSP } \line { "(hair on bridge," } \line { "wood on string)" } } }""",
            r"""\markup { \override #'(baseline-skip . 2) \column { \line { Ord. } \line { "(no wood)" } } }""",
        ],
        selector=trinton.select_logical_ties_by_index([4, 9], pitched=True, first=True),
        style="solid-line-with-arrow",
        padding=13.5,
        right_padding=0,
        direction=None,
        full_string=True,
        end_hook=False,
        end_hook_right_padding=0,
        command="Two",
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 0""",
        ],
    ),
    voice=score["violin 4 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 9)),
    evans.PitchHandler(["c''"]),
    evans.PitchHandler([["3645/2048", "405/256"]], as_ratios=True),
    trinton.force_accidentals_command(
        selector=trinton.logical_ties(first=True, pitched=True, grace=False)
    ),
    voice=score["violin 4 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10, 12)),
    evans.PitchHandler(["c'"]),
    evans.PitchHandler([["405/128", "3/2"]], as_ratios=True),
    trinton.force_accidentals_command(
        selector=trinton.logical_ties(first=True, pitched=True, grace=False)
    ),
    voice=score["violin 4 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (13, 15)),
    evans.PitchHandler(["c'"]),
    evans.PitchHandler([["3/2", "15/16"]], as_ratios=True),
    trinton.force_accidentals_command(
        selector=trinton.logical_ties(first=True, pitched=True, grace=False)
    ),
    voice=score["violin 4 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 15)),
    # trinton.annotate_leaves_locally(
    #     selector=trinton.logical_ties(first=True, pitched=True, grace=False)
    # ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(
            exclude=[
                5,
                6,
                10,
                13,
                15,
                18,
                19,
                26,
                30,
                33,
                37,
                39,
                40,
                41,
                42,
                45,
                47,
                48,
                50,
                52,
                54,
                55,
            ],
            first=True,
            pitched=True,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("marcato"), abjad.Articulation("staccato")],
        selector=trinton.select_logical_ties_by_index(
            [
                5,
                6,
                10,
                13,
                15,
                18,
                19,
                26,
                30,
                33,
                37,
                39,
                40,
                41,
                42,
                45,
                47,
                48,
                50,
                52,
                54,
                55,
            ],
            first=True,
            pitched=True,
        ),
    ),
    voice=score["violin 4 voice"],
    beam_meter=True,
)


# viola music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 5)),
    evans.RhythmHandler(rhythm.rhythm_e(lower_voice=False, index=9)),
    trinton.attachment_command(
        attachments=[abjad.Clef("alto")], selector=trinton.select_leaves_by_index([0])
    ),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(rhythm.rhythm_e(index=9, lower_voice=True)),
        direction=abjad.DOWN,
        voice_name="viola polyrhythm voice 1",
        preprocessor=trinton.fuse_quarters_preprocessor((2, 2, 2, 5, 4)),
        temp_name="temp 1",
    ),
    voice=score["viola 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 5)),
    pitch.pitch_e(
        instrument="viola", selector=trinton.pleaves(), index=3, retrograde=False
    ),
    # trinton.annotate_leaves_locally(selector=trinton.pleaves(), direction=abjad.UP),
    trinton.octavation(
        octave=-1,
        selector=trinton.select_leaves_by_index([3, 4, 6, 8, 10, 12, 13, 15, 16, 19]),
    ),
    trinton.respell_with_flats(selector=trinton.select_leaves_by_index([11, 17, 20])),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("mp"), abjad.StartHairpin(">"), abjad.Dynamic("pp")],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
        direction=abjad.UP,
    ),
    voice=score["viola 2 voice temp 1"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 5)),
    pitch.pitch_e(
        instrument="viola", selector=trinton.pleaves(), index=1, retrograde=True
    ),
    # trinton.annotate_leaves_locally(selector=trinton.pleaves(), direction=abjad.DOWN),
    trinton.octavation(octave=1, selector=trinton.select_leaves_by_index([5])),
    trinton.octavation(
        octave=-1,
        selector=trinton.select_leaves_by_index([2, 3, 4, 6, 7, 8, 9, 14, 15, 16, 20]),
    ),
    trinton.respell_with_flats(selector=trinton.select_leaves_by_index([16])),
    voice=score["viola polyrhythm voice 1"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 5)),
    evans.RhythmHandler(
        evans.tuplet(
            [
                (1,),
                (1,),
                (1, 1),
                (4, 4, 3, 1),
            ]
        )
    ),
    evans.PitchHandler(["c'", "a", "e'", "a", "g'", "a", "d''", "a", "f''"]),
    trinton.continuous_glissando(zero_padding=True, selector=trinton.pleaves()),
    trinton.hooked_spanner_command(
        string=r"CLT",
        selector=trinton.select_leaves_by_index(
            [0, 1, 2, 3, 4, 5],
            pitched=True,
        ),
        padding=5.5,
        right_padding=-0.5,
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
    trinton.hooked_spanner_command(
        string=r"1/2 CLT",
        selector=trinton.select_leaves_by_index(
            [1, 2, 3, 4],
            pitched=True,
        ),
        padding=5.5,
        right_padding=-0.5,
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
    trinton.hooked_spanner_command(
        string=r"ST",
        selector=trinton.select_leaves_by_index(
            [0, 3],
            pitched=True,
        ),
        padding=8,
        right_padding=-0.5,
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
    trinton.spanner_command(
        strings=[
            r"",
            r"SP",
        ],
        selector=trinton.select_leaves_by_index(
            [3, -1],
            pitched=True,
        ),
        style="solid-line-with-arrow",
        padding=8,
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
    voice=score["viola 1 voice"],
    preprocessor=trinton.fuse_preprocessor((2, 1, 1, 1)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 10)),
    evans.RhythmHandler(rhythm.rhythm_d(stage=2, instrument="viola", index=2)),
    trinton.rewrite_meter_command(boundary_depth=-2),
    pitch.pitch_d(
        instrument="viola",
        string_range_pairs=[
            ("I", (0, 5)),
            ("II", (6, 7)),
            ("III", (8, 14)),
            ("IV", (15, 18)),
        ],
        stage=2,
        index=0,
        initial_seed=5,
        selector=trinton.logical_ties(pitched=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\big-half-harmonic", site="before")],
        selector=trinton.pleaves(),
    ),
    # trinton.annotate_leaves_locally(
    #     selector=trinton.pleaves()
    # ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [
                0,
                3,
                4,
                6,
                11,
                12,
                13,
                16,
                17,
                20,
                21,
                24,
                25,
                26,
            ]
        ),
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
    trinton.hooked_spanner_command(
        string=r"MSP",
        selector=trinton.select_leaves_by_index(
            [0, -1],
            pitched=True,
        ),
        padding=16,
        right_padding=2,
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
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(rhythm.rhythm_e(lower_voice=True, index=1)),
        direction=abjad.DOWN,
        voice_name="viola legno voice",
        temp_name="temp 2",
        preprocessor=trinton.fuse_eighths_preprocessor((6, 10, 6, 3, 8)),
    ),
    voice=score["viola 2 voice"],
    preprocessor=trinton.fuse_preprocessor((2,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 10)),
    evans.PitchHandler(
        [
            "a,",
        ]
    ),
    # trinton.annotate_leaves_locally(
    #     selector=abjad.select.leaves,
    #     direction=abjad.DOWN
    # ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([0, 3, 7, 9, 10, 12, 13, 17]),
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
    trinton.change_notehead_command(notehead="cross", selector=trinton.pleaves()),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Articulation("staccato"),
                r"""- \tweak color #(css-color 'darkred)""",
            )
        ],
        selector=trinton.pleaves(),
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
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\once \override DynamicLineSpanner.padding = #5.5"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mf"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
    ),
    trinton.hooked_spanner_command(
        string="CLB OB",
        selector=trinton.select_leaves_by_index(
            [0, -1],
            grace=False,
        ),
        padding=14,
        direction="down",
        right_padding=1.5,
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
    lambda _: trinton.select_target(_, (11, 15)),
    evans.RhythmHandler(rhythm.rhythm_e(lower_voice=False, index=5)),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(rhythm.rhythm_e(index=1, lower_voice=True)),
        direction=abjad.DOWN,
        voice_name="viola polyrhythm voice 2",
        preprocessor=trinton.fuse_eighths_preprocessor((7, 8, 12, 5)),
        temp_name="temp 3",
    ),
    voice=score["viola 2 voice"],
    preprocessor=trinton.fuse_preprocessor((2, 1, 1, 1)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11, 15)),
    pitch.pitch_e(
        instrument="viola", selector=trinton.pleaves(), index=3, retrograde=False
    ),
    # trinton.annotate_leaves_locally(selector=trinton.pleaves(), direction=abjad.UP),
    trinton.octavation(
        octave=-1,
        selector=trinton.select_leaves_by_index([3, 4, 8, 10, 12, 13, 15, 16]),
    ),
    trinton.respell_with_flats(selector=trinton.select_leaves_by_index([17])),
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin(">"), abjad.Dynamic("ppp")],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        direction=abjad.DOWN,
    ),
    trinton.hooked_spanner_command(
        string=r"CLB",
        selector=trinton.select_leaves_by_index(
            [0, -1],
            pitched=True,
        ),
        padding=11,
        right_padding=1.5,
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
    voice=score["viola 2 voice temp 3"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11, 12)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    voice=score["viola polyrhythm voice 2"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11, 15)),
    pitch.pitch_e(
        instrument="viola", selector=trinton.pleaves(), index=1, retrograde=True
    ),
    # trinton.annotate_leaves_locally(selector=trinton.pleaves(), direction=abjad.DOWN),
    trinton.octavation(octave=1, selector=trinton.select_logical_ties_by_index([5])),
    trinton.octavation(
        octave=-1,
        selector=trinton.select_logical_ties_by_index(
            [2, 3, 4, 6, 7, 8, 9, 14, 15, 16]
        ),
    ),
    trinton.respell_with_flats(selector=trinton.select_logical_ties_by_index([16])),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([1, 3, 4, 5, 6, 7, 17, 21]),
    ),
    voice=score["viola polyrhythm voice 2"],
    # beam_meter=True
)

# cello music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 8)),
    evans.RhythmHandler(rhythm.rhythm_d(instrument="cello", stage=1, index=0)),
    voice=score["cello 2 voice"],
    preprocessor=trinton.fuse_preprocessor((2,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 7)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8,)),
    trinton.rewrite_meter_command(boundary_depth=-2),
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 8)),
    pitch.pitch_d(
        instrument="cello",
        string_range_pairs=[
            ("II", (0, 0)),
            ("III", (1, 3)),
            ("II", (4, 8)),
            ("III", (9, 14)),
            ("I", (15, 20)),
            ("II", (21, 22)),
            ("III", (23, 27)),
            ("I", (28, 50)),
        ],
        stage=1,
        index=0,
        initial_seed=5,
        selector=trinton.logical_ties(pitched=True, grace=False),
    ),
    trinton.change_lines(
        lines=5,
        clef="bass",
        invisible_barlines=True,
        selector=trinton.select_leaves_by_index([0]),
    ),
    # trinton.annotate_leaves_locally(
    #     # selector=trinton.pleaves()
    #     selector=trinton.logical_ties(first=True, pitched=True)
    # ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [
                1,
                2,
                4,
                5,
                6,
                12,
                14,
                20,
                22,
                24,
                25,
                27,
                29,
                33,
                35,
                41,
                42,
                48,
                50,
                52,
                54,
                59,
            ]
        ),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index(
            [2, 6, 7, 11, 12, 19, 20, 26, 27, 28, 29, 33]
        ),
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
            [0, 1, 4, 9, 15, 21, 23], first=True, pitched=True, grace=False
        ),
        direction=abjad.UP,
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
        selector=trinton.logical_ties(
            exclude=list(range(0, 28)), first=True, pitched=True, grace=False
        ),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override TupletBracket.padding = #4", site="before"
            )
        ],
        selector=trinton.select_tuplets_by_index([4]),
    ),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\big-half-harmonic", site="before")],
        selector=trinton.pleaves(),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("mp"), abjad.StartHairpin(">"), abjad.Dynamic("pp")],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 27], first=True, pitched=True
        ),
    ),
    trinton.hooked_spanner_command(
        string=r"MST",
        selector=trinton.select_leaves_by_index(
            [0, 14],
            pitched=True,
        ),
        padding=7.5,
        right_padding=-0.5,
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
    trinton.spanner_command(
        strings=[r"", "MSP"],
        selector=trinton.select_leaves_by_index([14, 33], pitched=True),
        style="solid-line-with-arrow",
        padding=7.5,
        right_padding=-2,
        direction=None,
        full_string=False,
        end_hook=False,
        end_hook_right_padding=0,
        command="One",
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 1""",
            r"""- \tweak bound-details.left.Y #-0.5""",
            r"""- \tweak bound-details.right.Y #4""",
        ],
    ),
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 8)),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(rhythm.rhythm_e(lower_voice=False, index=5)),
        direction=abjad.DOWN,
        voice_name="cello legno voice",
        temp_name="temp",
        preprocessor=trinton.fuse_quarters_preprocessor((3, 5, 3)),
    ),
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 8)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override DynamicLineSpanner.padding = #12.25"
            ),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mf"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
    ),
    trinton.hooked_spanner_command(
        string=r"(MSP)",
        selector=trinton.select_leaves_by_index(
            [0, -1],
            pitched=True,
        ),
        padding=13,
        right_padding=1,
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
    voice=score["cello 2 voice temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 8)),
    evans.PitchHandler(
        [
            "c,",
        ]
    ),
    # trinton.annotate_leaves_locally(
    #     selector=abjad.select.leaves,
    #     direction=abjad.DOWN
    # ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([0, 4, 8, 11]),
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
    trinton.change_notehead_command(notehead="cross", selector=trinton.pleaves()),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Articulation("staccato"),
                r"""- \tweak color #(css-color 'darkred)""",
            )
        ],
        selector=trinton.pleaves(),
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
    trinton.hooked_spanner_command(
        string="CLB OB",
        selector=trinton.select_leaves_by_index(
            [0, -1],
            grace=False,
        ),
        padding=13.5,
        direction="down",
        right_padding=1.5,
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
    lambda _: trinton.select_target(_, (8,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Staff.Clef.stencil = ##f", site="before"
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["cello 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9, 15)),
    evans.RhythmHandler(
        evans.tuplet(
            [
                (3, 1, 2, 2, 1, 3),
                (1, 1, 1, 1, 1),
                (1,),
                (1,),
                (1, 1),
                (1,),
                (1,),
                (-1,),
                (-1,),
                (-1,),
                (-1,),
                (-1,),
                (-1,),
                (-1,),
                (-1,),
                (-1,),
                (-1,),
                (-1,),
                (-1,),
                (-1,),
                (-1,),
            ]
        )
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Tie(),
        ],
        selector=trinton.select_leaves_by_index([-2]),
    ),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False)
    ),
    evans.PitchHandler(
        [
            "d'''",
            "a",
            "a''",
            "c'",
            "d''",
            "e'",
            "d''",
            "a",
            "c'",
            "c'''",
            "a''",
            "c'''",
            "a",
            "f'",
            "a",
            "e'",
            "b",
            "a",
        ]
    ),
    trinton.continuous_glissando(zero_padding=True, selector=trinton.pleaves()),
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin(">"), abjad.Dynamic("ppp")],
        selector=trinton.select_leaves_by_index([11, -1], pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=r"1/2 CLT",
        selector=trinton.select_leaves_by_index(
            [11, 15],
            pitched=True,
        ),
        padding=7.5,
        right_padding=-0.5,
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
        string=r"CLT",
        selector=trinton.select_leaves_by_index(
            [15, -1],
            pitched=True,
        ),
        padding=7.5,
        right_padding=0,
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
        string=r"ST poss.",
        selector=trinton.select_leaves_by_index(
            [0, -1],
            pitched=True,
        ),
        padding=6,
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
    voice=score["cello 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9,)),
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
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    voice=score["cello 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9, 15)),
    evans.RhythmHandler(rhythm.rhythm_e(lower_voice=False, index=13)),
    trinton.attachment_command(
        attachments=[abjad.Clef("treble")], selector=trinton.select_leaves_by_index([0])
    ),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(rhythm.rhythm_e(index=13, lower_voice=True)),
        direction=abjad.DOWN,
        voice_name="cello lower voice",
        preprocessor=trinton.fuse_eighths_preprocessor((3, 8, 7, 8, 12, 5)),
        temp_name="upper",
    ),
    voice=score["cello 2 voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((3, 8, 7, 8, 12, 5)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9, 15)),
    pitch.pitch_e(
        instrument="cello", selector=trinton.pleaves(), index=3, retrograde=False
    ),
    # trinton.annotate_leaves_locally(selector=trinton.pleaves(), direction=abjad.UP),
    trinton.octavation(
        octave=-1,
        selector=trinton.select_leaves_by_index([2, 3, 10, 13, 16]),
    ),
    trinton.octavation(
        octave=1,
        selector=trinton.select_leaves_by_index([6, 7, 8, 20, 21, 22, 24, 25]),
    ),
    trinton.respell_with_flats(selector=trinton.select_leaves_by_index([0])),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([0, 3, -5, -1]),
    ),
    # trinton.linear_attachment_command(
    #     attachments=[abjad.Dynamic("mp"), abjad.StartHairpin(">"), abjad.Dynamic("pp")],
    #     selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    #     direction=abjad.UP,
    # ),
    voice=score["cello 2 voice upper"],
    # beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9, 15)),
    pitch.pitch_e(
        instrument="cello", selector=trinton.pleaves(), index=5, retrograde=False
    ),
    # trinton.annotate_leaves_locally(selector=trinton.pleaves(), direction=abjad.DOWN),
    trinton.octavation(
        octave=-1,
        selector=trinton.select_leaves_by_index([0, 1, 3, 14]),
    ),
    trinton.octavation(
        octave=1,
        selector=trinton.select_leaves_by_index([5, 6, 9, 19, 20, 22, 23, 24, 25]),
    ),
    trinton.respell_with_sharps(selector=trinton.select_leaves_by_index([7, 24])),
    trinton.force_accidentals_command(selector=trinton.select_leaves_by_index([21])),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([0, 2, 8, 13, 22, -1]),
    ),
    # trinton.linear_attachment_command(
    #     attachments=[abjad.Dynamic("mp"), abjad.StartHairpin(">"), abjad.Dynamic("pp")],
    #     selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    #     direction=abjad.UP,
    # ),
    voice=score["cello lower voice"],
    # beam_meter=True,
)

# globals

# final barline

trinton.make_music(
    lambda _: trinton.select_target(_, (16,)),
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
    measures=[16],
    fermata="long-fermata",
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
    ["violin 1 bow voice", "violin 4 voice", "viola 1 voice", "cello 2 voice"],
    [3, 6, 4, 6],
    [-8.5, -10, -7, -7],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (1,)),
        trinton.attachment_command(
            attachments=[
                trinton.tempo_markup(
                    note_value=4,
                    tempo=100,
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
        "violin 1 bow voice",
        "violin 4 voice",
        # "viola 2 voice",
        "cello 1 voice",
    ],
    [
        13,
        3,
        # 3,
        9.5,
    ],
    [
        -2,
        -2,
        # -1,
        11,
    ],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (9, 11)),
        trinton.spanner_command(
            strings=[
                trinton.tempo_markup(
                    note_value=4,
                    tempo=153,
                    padding=0,
                    note_head_fontsize=-0.5,
                    stem_length=1.5,
                    text_fontsize=3,
                    dotted=True,
                    fraction=None,
                    tempo_change="accel.",
                    site="after",
                    hspace=0,
                    string_only=True,
                ),
                trinton.tempo_markup(
                    note_value=4,
                    tempo=153,
                    padding=0,
                    note_head_fontsize=0.5,
                    stem_length=1.5,
                    text_fontsize=4,
                    dotted=True,
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
    lambda _: trinton.select_target(_, (9, 10)),
    trinton.spanner_command(
        strings=[
            trinton.tempo_markup(
                note_value=4,
                tempo=153,
                padding=0,
                note_head_fontsize=-0.5,
                stem_length=1.5,
                text_fontsize=3,
                dotted=True,
                fraction=None,
                tempo_change="accel.",
                site="after",
                hspace=0,
                string_only=True,
            ),
            r"\markup {}",
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
        style="solid-line-with-arrow",
        padding=10,
        tweaks=None,
        right_padding=30,
        direction=None,
        full_string=True,
        command="Three",
    ),
    voice=score["viola 2 voice temp 2"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11,)),
    trinton.attachment_command(
        attachments=[
            trinton.tempo_markup(
                note_value=4,
                tempo=153,
                padding=10,
                note_head_fontsize=0.5,
                stem_length=1.5,
                text_fontsize=4,
                dotted=True,
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
    voice=score["viola 2 voice temp 3"],
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

for measure in [1, 2, 4, 6, 8, 9]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\noBreak", site="absolute_after")],
            selector=trinton.select_leaves_by_index([0]),
            tag=abjad.Tag("+SCORE"),
        ),
        voice=score["Global Context"],
    )

for measure in [3, 5, 7, 10]:
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
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (9 33.5 22.5 19 26.5)))",
                site="absolute_before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (9 31 20 19 24)))",
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
    segment_path="/Users/trintonprater/scores/patterns/patterns/sections/08",
    build_path="/Users/trintonprater/scores/patterns/patterns/build",
    segment_name="08",
    includes=[
        "/Users/trintonprater/scores/patterns/patterns/build/patterns-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
