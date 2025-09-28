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
        ts.return_c_material_ts(measure_amount=8, index=0),
        ts.return_e_material_ts(measure_amount=7, index=6),
        [(1, 4)],
    ],
)

score = library.patterns_score(
    section_ts,
)

# first violin music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 15)),
    evans.RhythmHandler(rhythm.rhythm_c(stage=4)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    # trinton.annotate_leaves_locally(
    #     selector=trinton.logical_ties(first=True)
    # ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                5,
                8,
                9,
                13,
                19,
                20,
                22,
                23,
                27,
                28,
                30,
                31,
                34,
                35,
                37,
                40,
                43,
                44,
                46,
                47,
                52,
                53,
                55,
                58,
                61,
                62,
                64,
                65,
                70,
                71,
                73,
                76,
                79,
                80,
                82,
                83,
            ]
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("p"),
            abjad.StartHairpin("|>o"),
            abjad.StopHairpin(),
            abjad.Dynamic("p"),
            abjad.StartHairpin("|>o"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin("|>o"),
            abjad.StopHairpin(),
            abjad.Dynamic("pp"),
            abjad.Dynamic("ppp"),
            abjad.StartHairpin("|>o"),
            abjad.StopHairpin(),
            abjad.StartHairpin("<"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("|>o"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin("|>o"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                1,
                21,
                22,
                23,
                27,
                29,
                33,
                34,
                35,
                39,
                39,
                40,
                69,
                75,
                75,
                77,
                77,
                83,
                83,
            ],
            first=True,
        ),
    ),
    voice=score["violin 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (16,)),
    trinton.attachment_command(
        attachments=[abjad.StopHairpin()], selector=trinton.select_leaves_by_index([0])
    ),
    voice=score["violin 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 7)),
    evans.PitchHandler(
        [
            ["g", "fs'"],
            ["cs'", "ds'"],
            ["cs'", "ds'"],
            ["cs'", "ds'"],
            ["cs'", "ds'"],
            ["cs'", "ds'"],
        ]
    ),
    library.attach_gamelan_scale_cent_markups(
        scale_degrees=[
            [11, 0],
            [8, 5],
            [8, 5],
            [8, 5],
            [8, 5],
            [8, 5],
        ],
        selector=trinton.pleaves(grace=False),
    ),
    trinton.force_accidentals_command(
        selector=trinton.logical_ties(first=True, pitched=True, grace=False)
    ),
    voice=score["violin 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9, 11)),
    evans.PitchHandler(
        [
            ["cs'", "ds'"],
            ["cs'", "ds'"],
            "cs'",
            ["cs'", "ds'"],
            ["cs'", "ds'"],
            "cs'",
            ["cs'", "ds'"],
            ["cs'", "ds'"],
            ["cs'", "ds'"],
        ]
    ),
    library.attach_gamelan_scale_cent_markups(
        scale_degrees=[
            [8, 6],
            [8, 6],
            6,
            [8, 6],
            [8, 6],
            6,
            [8, 6],
            [8, 6],
            [8, 6],
        ],
        selector=trinton.pleaves(grace=False),
    ),
    trinton.force_accidentals_command(
        selector=trinton.logical_ties(first=True, pitched=True, grace=False)
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \hspace #-9.5 { "+ bowing body" }""",
        selector=trinton.select_leaves_by_index([4, 6]),
        padding=6.5,
        direction=None,
        right_padding=-5,
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
        string=r"""\markup \hspace #-9.5 { "+ bowing body" }""",
        selector=trinton.select_leaves_by_index([10, 11]),
        padding=6.5,
        direction=None,
        right_padding=0,
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
    voice=score["violin 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12,)),
    evans.PitchHandler(
        [
            ["cs'", "ds'"],
            ["ds'", "bf'"],
            ["ds'", "bf'"],
            ["ds'", "bf'"],
        ]
    ),
    library.attach_gamelan_scale_cent_markups(
        scale_degrees=[
            [8, 6],
            [3, 8],
            [3, 8],
            [3, 8],
        ],
        selector=trinton.pleaves(grace=False),
    ),
    trinton.force_accidentals_command(
        selector=trinton.logical_ties(first=True, pitched=True, grace=False)
    ),
    voice=score["violin 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (13,)),
    evans.PitchHandler(
        [
            ["bf'", "gf''"],
            "gf''",
            "gf''",
        ]
    ),
    library.attach_gamelan_scale_cent_markups(
        scale_degrees=[
            [10, 3],
            3,
            3,
        ],
        selector=trinton.pleaves(grace=False),
    ),
    trinton.force_accidentals_command(
        selector=trinton.logical_ties(first=True, pitched=True, grace=False)
    ),
    trinton.hooked_spanner_command(
        string=r"+ bowing body",
        selector=trinton.select_leaves_by_index([1, 5]),
        padding=8,
        direction=None,
        right_padding=4,
        full_string=False,
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
    voice=score["violin 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (14, 15)),
    evans.PitchHandler(
        [
            ["gf''", "d'''"],
            ["gf''", "d'''"],
            "d'''",
            "d'''",
            "d'''",
        ]
    ),
    library.attach_gamelan_scale_cent_markups(
        scale_degrees=[
            [7, 10],
            [7, 10],
            7,
            7,
            7,
        ],
        selector=trinton.pleaves(grace=False),
    ),
    trinton.force_accidentals_command(
        selector=trinton.logical_ties(first=True, pitched=True, grace=False)
    ),
    trinton.hooked_spanner_command(
        string=r"+ bowing body",
        selector=trinton.select_leaves_by_index([2, -1], pitched=True),
        padding=10,
        direction=None,
        right_padding=4,
        full_string=False,
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
    voice=score["violin 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 4)),
    library.tablature_staff(
        selector=trinton.select_leaves_by_index([0]), reset=True, reset_staff_lines=1
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Clef("percussion"),
            abjad.LilyPondLiteral(r"\override Staff.Clef.stencil = ##f", site="before"),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.hooked_spanner_command(
        string=r"bridge",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=3,
        direction=None,
        right_padding=1.5,
        full_string=False,
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
    voice=score["violin 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    voice=score["violin 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 7)),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.patterned_tie_index_selector(
            [3, 5, 6, 9, 12], 15, first=True, pitched=True
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.patterned_tie_index_selector(
            [0, 1, 2, 4, 7, 8, 10, 11], 15, first=True, pitched=True
        ),
    ),
    voice=score["violin 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8, 15)),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    voice=score["violin 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 15)),
    trinton.change_lines(lines=5, clef="treble", invisible_barlines=False),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\revert Staff.Clef.stencil",
                    r"\once \override Staff.Clef.X-extent = ##f",
                    r"\once \override Staff.Clef.extra-offset = #'(-2.5 . 0)",
                ],
                site="before",
            )
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(r"\middle-fermata"),
                abjad.Tweak(r"- \tweak padding #7.5"),
                abjad.Tweak(r"- \tweak font-size #10"),
            ),
            abjad.bundle(
                abjad.Articulation("talon-to-punta"),
                abjad.Tweak(r"- \tweak padding #1"),
            ),
        ],
        direction=abjad.UP,
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.spanner_command(
        strings=[
            r"On bridge, allowing strings to ring",
            r"molto tasto",
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 7, 7, -1], first=True, pitched=True
        ),
        style="solid-line-with-arrow",
        padding=12.5,
        right_padding=0,
        direction=None,
        full_string=False,
        end_hook=True,
        end_hook_right_padding=4,
        command="One",
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 1""",
        ],
    ),
    voice=score["violin 2 voice"],
)

# second violin music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 8)),
    evans.RhythmHandler(
        evans.tuplet(
            [
                (6, 5, 1, 6),
                (1, 1, 1),
                (1, 1, 1, 1),
                (2, 1, 1, 4, 2, 2),
                (2, 3),
                (1, 1, 2, 1),
                (1, 1, 1, 1, 1, 1),
                (2, 1, 1, 2, 2, 1, 1, 2),
            ]
        )
    ),
    trinton.attachment_command(
        attachments=[abjad.Tie()],
        selector=trinton.select_leaves_by_index(
            [
                4,
                7,
                11,
            ]
        ),
    ),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([-1], pitched=True)
    ),
    evans.PitchHandler(
        [
            "g'",
            "a",
            "c'",
            "a",
            "f'",
            "d'",
            "e'",
            "a",
            "b",
            "g''",
            "b'",
            "e''",
            "c''",
            "b",
            "f'",
            "d'",
            "c'''",
            "c''",
            "d''",
            "b'",
            "e''",
            "a'",
            "f''",
            "g'",
            "g''",
            "f'",
            "a''",
            "e'",
            "b''",
            "d'",
            "c'''",
            "c'",
            "c'''",
            "b",
            "c'''",
            "a",
            "c'''",
            "a",
            "c'''",
            "a",
            "c'",
            "a",
            "c'",
            "a",
            "c'",
            "a",
            "c'",
            "a",
            "c'",
            "a",
            "c'",
            "a",
            "c'",
            "a",
            "c'",
            "a",
            "c'",
            "a",
            "c'",
            "a",
            "c'",
            "a",
            "c'",
            "a",
            "c'",
            "a",
            "c'",
            "a",
            "c'",
            "a",
            "c'",
            "a",
            "c'",
            "a",
            "c'",
            "a",
            "c'",
            "a",
            "c'",
            "a",
            "c'",
            "a",
            "c'",
            "a",
            "c'",
            "a",
            "c'",
            "a",
            "c'",
            "a",
        ]
    ),
    trinton.continuous_glissando(zero_padding=True, selector=trinton.pleaves()),
    trinton.hooked_spanner_command(
        string=r"""\markup { "CLT" }""",
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 15, 18, 19, -1], first=True, pitched=True
        ),
        padding=6,
        direction=None,
        right_padding=0,
        full_string=True,
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
        string=r"""\markup { "1/2 CLT" }""",
        selector=trinton.select_logical_ties_by_index(
            [1, 2, 18, 19], first=True, pitched=True
        ),
        padding=6,
        direction=None,
        right_padding=0,
        full_string=True,
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
        string=r"""\markup { \hspace #-0.5 "CLT" }""",
        selector=trinton.select_logical_ties_by_index([2, 3], first=True, pitched=True),
        padding=6,
        direction=None,
        right_padding=2,
        full_string=True,
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
        string=r"""\markup { \hspace #2.5 "1/2 CLT" }""",
        selector=trinton.select_logical_ties_by_index([3, 4], first=True, pitched=True),
        padding=6,
        direction=None,
        right_padding=6,
        full_string=True,
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
        string=r"""\markup { \hspace #7.5 "CLT" }""",
        selector=trinton.select_logical_ties_by_index([4, 5], first=True, pitched=True),
        padding=6,
        direction=None,
        right_padding=-6,
        full_string=True,
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
        string=r"""\markup { \hspace #-7.5 "1/2 CLT" }""",
        selector=trinton.select_logical_ties_by_index([5, 9], first=True, pitched=True),
        padding=6,
        direction=None,
        right_padding=-0.5,
        full_string=True,
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
        string=r"""\markup { \hspace #-0.5 "CLT" }""",
        selector=trinton.select_logical_ties_by_index(
            [9, 11], first=True, pitched=True
        ),
        padding=6,
        direction=None,
        right_padding=5,
        full_string=True,
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
        string=r"""\markup { \hspace #-10 "1/2 CLT" }""",
        selector=trinton.select_logical_ties_by_index(
            [12, 15], first=True, pitched=True
        ),
        padding=6,
        direction=None,
        right_padding=0,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="One",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 2""",
        ],
    ),
    voice=score["violin 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 8)),
    evans.RhythmHandler(rhythm.rhythm_e(index=5)),
    pitch.pitch_e(instrument="violin 2", index=25),
    trinton.rewrite_meter_command(boundary_depth=-2),
    # trinton.annotate_leaves_locally(
    #     selector=trinton.logical_ties(first=True, pitched=True),
    #     direction=abjad.UP
    # ),
    trinton.octavation(
        octave=2,
        selector=trinton.select_logical_ties_by_index(
            [
                34,
                35,
            ],
            pitched=True,
            grace=False,
        ),
    ),
    trinton.octavation(
        octave=1,
        selector=trinton.select_logical_ties_by_index(
            [
                4,
                30,
                32,
                33,
            ],
            pitched=True,
            grace=False,
        ),
    ),
    trinton.octavation(
        octave=-1,
        selector=trinton.select_logical_ties_by_index(
            [
                2,
                5,
                6,
                14,
                17,
            ],
            pitched=True,
            grace=False,
        ),
    ),
    trinton.respell_with_sharps(selector=trinton.select_leaves_by_index([-3])),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_logical_ties_by_index(
            [18, 21, 30, 35], first=True, pitched=True
        ),
    ),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(rhythm.rhythm_e(index=5, lower_voice=True)),
        direction=abjad.DOWN,
        voice_name="violin 2 polyrhythm voice",
        preprocessor=trinton.fuse_eighths_preprocessor(
            (9, 12, 10, 8, 2, 10, 6, 4, 12, 16, 8, 12, 8, 4, 12)
        ),
    ),
    voice=score["violin 4 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 8)),
    library.tablature_staff(
        selector=trinton.select_leaves_by_index([0]), reset=True, reset_staff_lines=5
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("p"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("ppp"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                12,
                18,
                24,
                30,
            ],
            first=True,
            pitched=True,
        ),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(r"\middle-fermata"),
                abjad.Tweak(r"- \tweak padding #3"),
                abjad.Tweak(r"- \tweak font-size #10"),
            ),
        ],
        direction=abjad.UP,
        selector=trinton.select_logical_ties_by_index([22], first=True, pitched=True),
    ),
    voice=score["violin 4 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 8)),
    trinton.rewrite_meter_command(boundary_depth=-2),
    pitch.pitch_e(instrument="violin 2", index=0),
    # trinton.annotate_leaves_locally(
    #     selector=trinton.logical_ties(first=True, pitched=True),
    #     direction=abjad.DOWN
    # ),
    trinton.octavation(
        octave=2,
        selector=trinton.select_logical_ties_by_index(
            [
                34,
            ],
            pitched=True,
            grace=False,
        ),
    ),
    trinton.octavation(
        octave=1,
        selector=trinton.select_logical_ties_by_index(
            [
                11,
                28,
                29,
                30,
                32,
                33,
            ],
            pitched=True,
            grace=False,
        ),
    ),
    trinton.octavation(
        octave=-1,
        selector=trinton.select_logical_ties_by_index(
            [
                7,
                8,
                9,
                12,
                15,
                21,
                23,
                24,
                25,
            ],
            pitched=True,
            grace=False,
        ),
    ),
    trinton.force_accidentals_command(
        selector=trinton.select_logical_ties_by_index([7], first=True, pitched=True)
    ),
    trinton.respell_with_sharps(selector=trinton.select_leaves_by_index([-1, -2])),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_logical_ties_by_index(
            [17, 21, 25, 30, 31, 34], first=True, pitched=True
        ),
    ),
    voice=score["violin 2 polyrhythm voice"],
)

# viola music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 15)),
    evans.RhythmHandler(
        evans.talea(
            [7, 11, 8, 8, 8, 10, 10, 7, 5, 4, 2, 2, 4, 16, 4, 4, 4, 3, 3, 2, -1000], 16
        )
    ),
    trinton.rewrite_meter_command(boundary_depth=-2),
    trinton.change_lines(lines=1, clef="percussion", invisible_barlines=False),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\override Staff.Clef.stencil = ##f",
                ],
                site="before",
            )
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    voice=score["viola 2 voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 6)),
    trinton.hooked_spanner_command(
        string=r"Tailpiece",
        selector=trinton.select_logical_ties_by_index(
            [0, -2], first=True, pitched=True
        ),
        padding=3.5,
        direction=None,
        right_padding=2,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 1""",
        ],
    ),
    # trinton.annotate_leaves_locally(
    #     selector=trinton.logical_ties(first=True, pitched=True)
    # ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic('"p"'),
            abjad.StartHairpin("<"),
            abjad.Dynamic('"f"'),
            abjad.StartHairpin(">o"),
            abjad.Dynamic('"pp"'),
            abjad.StartHairpin("<"),
            abjad.Dynamic('"mf"'),
            abjad.StartHairpin(">"),
            abjad.Dynamic('"mp"'),
            abjad.StartHairpin("<"),
            abjad.Dynamic('"mf"'),
            abjad.StartHairpin(">"),
            abjad.Dynamic('"pp"'),
            abjad.Dynamic('"f"'),
            abjad.StartHairpin(">"),
            abjad.Dynamic('"mf"'),
            abjad.StartHairpin("|>"),
            abjad.Dynamic('"p"'),
            abjad.StartHairpin(">"),
            abjad.Dynamic('"pp"'),
            abjad.StartHairpin("<"),
            abjad.Dynamic('"mp"'),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                0,
                1,
                1,
                2,
                2,
                3,
                3,
                4,
                4,
                5,
                5,
                6,
                7,
                7,
                8,
                8,
                9,
                10,
                11,
                11,
                12,
            ],
            first=True,
            pitched=True,
        ),
    ),
    voice=score["viola 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 15)),
    evans.PitchHandler(
        [
            "c'",
            ["g", "a"],
            ["g", "a"],
            ["g", "a"],
            ["g", "a"],
            ["g", "a"],
            ["g", "a"],
            ["g", "a"],
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
    library.attach_gamelan_scale_cent_markups(
        scale_degrees=[
            [2, 0],
        ],
        selector=trinton.select_logical_ties_by_index(
            [1, 2, 3, 4, 5, 6, 7], first=True, pitched=True
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\revert Staff.Clef.stencil", site="before")
        ],
        selector=trinton.select_leaves_by_index([1]),
    ),
    trinton.change_lines(
        lines=5, clef="alto", selector=trinton.select_leaves_by_index([1])
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(r"\middle-fermata"),
                abjad.Tweak(r"- \tweak padding #4"),
                abjad.Tweak(r"- \tweak font-size #10"),
            ),
        ],
        direction=abjad.UP,
        selector=trinton.select_logical_ties_by_index([0], first=True, pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Articulation(">"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("|>o"),
            abjad.Dynamic("ppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("p"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin(">o"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("|>"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("ppp"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [1, 1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7], first=True, pitched=True
        ),
    ),
    trinton.spanner_command(
        strings=[
            r"On bridge, allowing strings to ring",
            r"molto tasto",
        ],
        selector=trinton.select_logical_ties_by_index([1, 8, 8, 9], first=True),
        style="solid-line-with-arrow",
        padding=10,
        right_padding=0,
        direction=None,
        full_string=False,
        end_hook=True,
        end_hook_right_padding=4,
        command="One",
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 1""",
        ],
    ),
    voice=score["viola 2 voice"],
)

for measure in list(range(1, 6)):
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        abjad.slur,
        voice=score["viola 2 voice"],
    )

for measure in list(range(7, 9)):
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        abjad.slur,
        trinton.attachment_command(
            attachments=[abjad.Articulation(">")],
            selector=trinton.select_leaves_by_index([0]),
        ),
        voice=score["viola 2 voice"],
    )

# cello music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 7)),
    evans.RhythmHandler(rhythm.rhythm_b(stage=3, instrument="cello", index=1)),
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 5)),
    trinton.force_rest(
        selector=trinton.patterned_tie_index_selector([3, 5, 6, 9, 12], 15)
    ),
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 7)),
    trinton.rewrite_meter_command(boundary_depth=-2),
    # trinton.annotate_leaves_locally(
    #     # selector=abjad.select.leaves
    #     selector=trinton.logical_ties(first=True, pitched=True)
    # ),
    evans.PitchHandler(
        [
            "gs",
            "fs",
            "eqf,",
            "bf,",
            "gf",
            "fqs",
            "f",
            "e",
            "cs",
            "dqf",
            "a,",
            "bqf,",
            "aqs,",
            "eqs",
            "e",
            "eqf",
            "d",
            "cs",
            "fqs",
            "e",
            "cqs",
            "b,",
            "fs",
            "g",
            "ef",
            "gf",
            "gf",
            "bqf",
            "aqf,",
            "b,",
            "as,",
            "bqf,",
            "c",
            "df",
            "af",
            "c'",
            "b",
            "e'",
            "d'",
            "cs'",
            "b",
            "g",
            "d",
            "f",
            "a",
            "bf",
            "a",
            "aqs",
            "a",
            "bqf",
            "a",
            "b",
            "c'",
            "b",
            "bqf",
            "b",
            "c'",
            "b",
            "c'",
            "dqs'",
            "fs'",
            "gs'",
            "a'",
            "g'",
            "d''",
            "eqf''",
            "d''",
            "e''",
            "b''",
            "bf''",
            "bqf''",
        ]
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Clef("bass"),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Clef("tenor"),
        ],
        selector=trinton.select_logical_ties_by_index([36], first=True, pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Clef("treble"),
        ],
        selector=trinton.select_logical_ties_by_index([59], first=True, pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                2,
                5,
                6,
                9,
                10,
                13,
                14,
                17,
                18,
                26,
                27,
                29,
                32,
                34,
                35,
                38,
                39,
                42,
                44,
                49,
                51,
                53,
                55,
                63,
                65,
                71,
                72,
                75,
                76,
                79,
                80,
                81,
                82,
                85,
                86,
                91,
            ]
        ),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.BeamCount(left=2, right=1),
                abjad.BeamCount(left=1, right=2),
            ]
        ),
        selector=trinton.select_leaves_by_index(
            [
                3,
                4,
                7,
                8,
                11,
                12,
                15,
                16,
            ]
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BeamCount(left=3, right=1),
            abjad.BeamCount(left=1, right=3),
            abjad.BeamCount(left=2, right=1),
            abjad.BeamCount(left=1, right=2),
        ],
        selector=trinton.select_leaves_by_index(
            [
                58,
                59,
                88,
                89,
            ]
        ),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [abjad.StartSlur(), abjad.StopSlur()],
        ),
        selector=trinton.select_leaves_by_index(
            [
                0,
                2,
                4,
                5,
                6,
                7,
                8,
                9,
                10,
                12,
                14,
                15,
                16,
                17,
                18,
                22,
                24,
                25,
                26,
                27,
                29,
                31,
                34,
                35,
                36,
                37,
                38,
                39,
                40,
                42,
                44,
                50,
                51,
                58,
                61,
                63,
                65,
                67,
                68,
                -1,
            ],
            pitched=True,
        ),
    ),
    trinton.continuous_glissando(
        zero_padding=True,
        tweaks=[
            abjad.Tweak(r"- \tweak thickness #1.5"),
            abjad.Tweak(r"- \tweak bound-details.right.arrow ##t"),
        ],
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.select_leaves_by_index(
            [26, 33, 34, 40, 51, 59, 60, 61, 64, 65, 68], pitched=True
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(r"\middle-fermata"),
                abjad.Tweak(r"- \tweak padding #3"),
                abjad.Tweak(r"- \tweak font-size #10"),
            ),
        ],
        direction=abjad.UP,
        selector=trinton.select_logical_ties_by_index([43], first=True, pitched=True),
    ),
    trinton.change_notehead_command(
        notehead="harmonic",
        selector=trinton.select_leaves_by_index(
            [
                1,
                5,
                6,
                9,
                13,
                17,
                19,
                23,
                24,
                26,
                29,
                31,
                35,
                37,
                38,
                41,
            ],
            pitched=True,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\big-half-harmonic", site="before")],
        selector=trinton.select_leaves_by_index(
            [
                2,
                3,
                4,
                10,
                12,
                14,
                15,
                16,
                18,
                21,
                30,
                32,
                33,
                34,
                36,
                39,
                42,
            ],
            pitched=True,
        ),
    ),
    trinton.spanner_command(
        strings=[
            r"\normale-bow-rotation",
            r"\bow-tip-half-up",
        ],
        selector=trinton.select_leaves_by_index([0, 2, 2, 8], pitched=True),
        style="solid-line-with-arrow",
        padding=7.5,
        tweaks=None,
        right_padding=0,
        direction=None,
        full_string=True,
        end_hook=True,
        end_hook_right_padding=-0.5,
        command="One",
    ),
    trinton.spanner_command(
        strings=[r"Norm.", r"1/2 Spz."],
        selector=trinton.select_leaves_by_index([0, 1, 1, 8], pitched=True),
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
        ],
    ),
    trinton.spanner_command(
        strings=[
            r"\markup {}",
            r"\bow-tip-half-down",
        ],
        selector=trinton.select_leaves_by_index([8, 9, 9, 17], pitched=True),
        style="solid-line-with-arrow",
        padding=7.5,
        tweaks=None,
        right_padding=0,
        direction=None,
        full_string=True,
        end_hook=True,
        end_hook_right_padding=2,
        command="One",
    ),
    trinton.spanner_command(
        strings=[r"", r"3/4 Spz."],
        selector=trinton.select_leaves_by_index([8, 12, 12, 17], pitched=True),
        style="solid-line-with-arrow",
        padding=10,
        right_padding=0,
        direction=None,
        full_string=False,
        end_hook=True,
        end_hook_right_padding=2,
        command="Two",
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 1""",
        ],
    ),
    trinton.spanner_command(
        strings=[r"\bow-tip-half-down", r"\normale-bow-rotation"],
        selector=trinton.select_leaves_by_index([18, 21, 21, 23], pitched=True),
        style="solid-line-with-arrow",
        padding=9.5,
        tweaks=None,
        right_padding=0,
        direction=None,
        full_string=True,
        end_hook=True,
        end_hook_right_padding=2,
        command="One",
    ),
    trinton.spanner_command(
        strings=[r"Norm.", r"Spz."],
        selector=trinton.select_leaves_by_index([18, 21, 21, 22], pitched=True),
        style="solid-line-with-arrow",
        padding=12,
        right_padding=0,
        direction=None,
        full_string=False,
        end_hook=True,
        end_hook_right_padding=1,
        command="Two",
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 1""",
        ],
    ),
    trinton.hooked_spanner_command(
        string=r"""1/4 Spz.""",
        selector=trinton.select_leaves_by_index([23, 27], pitched=True),
        padding=12,
        direction=None,
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
    trinton.hooked_spanner_command(
        string=r"""\bow-tip-half-up""",
        selector=trinton.select_leaves_by_index([24, 27], pitched=True),
        padding=9.5,
        direction=None,
        right_padding=2,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="One",
        tag=None,
    ),
    trinton.hooked_spanner_command(
        string=r"""1/2 Spz.""",
        selector=trinton.select_leaves_by_index([28, 33], pitched=True),
        padding=14,
        direction=None,
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
    trinton.hooked_spanner_command(
        string=r"""\bow-tip-half-up""",
        selector=trinton.select_leaves_by_index([28, 33], pitched=True),
        padding=11.5,
        direction=None,
        right_padding=2,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="One",
        tag=None,
    ),
    trinton.spanner_command(
        strings=[r"(Norm.)", r"1/2 Spz.", "1/4 Spz.", "Spz."],
        selector=trinton.select_leaves_by_index(
            [44, 51, 51, 56, 56, 65, 65, -1], pitched=True
        ),
        style="solid-line-with-arrow",
        padding=11,
        right_padding=0,
        direction=None,
        full_string=False,
        end_hook=True,
        end_hook_right_padding=2,
        command="Two",
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 1""",
        ],
    ),
    trinton.spanner_command(
        strings=[
            r"\normale-bow-rotation",
            r"\bow-tip-half-up",
            r"\bow-tip-half-down",
        ],
        selector=trinton.select_leaves_by_index([44, 48, 48, 55, 55, -1], pitched=True),
        style="solid-line-with-arrow",
        padding=8.5,
        tweaks=None,
        right_padding=0,
        direction=None,
        full_string=True,
        end_hook=True,
        end_hook_right_padding=2,
        command="One",
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("p"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
        ],
        selector=trinton.select_leaves_by_index([0, 28, 36, 59, -1], pitched=True),
    ),
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 7)),
    trinton.change_notehead_command(
        notehead="harmonic",
        selector=trinton.patterned_leaf_index_selector([1], 2, pitched=True),
    ),
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8, 15)),
    evans.RhythmHandler(rhythm.rhythm_e(index=13)),
    pitch.pitch_e(instrument="cello", index=0, retrograde=True),
    trinton.rewrite_meter_command(boundary_depth=-2),
    trinton.annotate_leaves_locally(
        selector=trinton.logical_ties(first=True, pitched=True), direction=abjad.UP
    ),
    trinton.octavation(
        octave=2,
        selector=trinton.select_logical_ties_by_index(
            [
                2,
                5,
            ],
            pitched=True,
            grace=False,
        ),
    ),
    trinton.octavation(
        octave=1,
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                1,
                3,
                4,
                6,
                7,
                8,
                9,
                10,
                11,
                12,
            ],
            pitched=True,
            grace=False,
        ),
    ),
    trinton.octavation(
        octave=-1,
        selector=trinton.select_logical_ties_by_index(
            [17, 18, 21, 22, 23, 24, 25, 26, 28, 30, 34],
            pitched=True,
            grace=False,
        ),
    ),
    trinton.octavation(
        octave=-2,
        selector=trinton.select_logical_ties_by_index(
            [20, 27, 29, 31, 32, 33, 35],
            pitched=True,
            grace=False,
        ),
    ),
    trinton.respell_with_sharps(selector=trinton.select_leaves_by_index([29])),
    trinton.respell_with_flats(selector=trinton.select_leaves_by_index([33])),
    trinton.force_accidentals_command(
        selector=trinton.select_logical_ties_by_index(
            [10, 34], first=True, pitched=True
        )
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Clef("tenor"), abjad.Clef("bass")],
        selector=trinton.select_leaves_by_index([18, 26]),
    ),
    # trinton.linear_attachment_command(
    #     attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
    #     selector=trinton.select_logical_ties_by_index(
    #         [18, 21, 30, 35], first=True, pitched=True
    #     ),
    # ),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(rhythm.rhythm_e(index=13, lower_voice=True)),
        direction=abjad.DOWN,
        voice_name="cello polyrhythm voice",
        preprocessor=trinton.fuse_quarters_preprocessor((2, 6, 8, 4, 6, 4, 2, 6)),
    ),
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8, 15)),
    pitch.pitch_e(instrument="cello", index=0, retrograde=False),
    trinton.annotate_leaves_locally(
        selector=trinton.logical_ties(first=True, pitched=True), direction=abjad.DOWN
    ),
    trinton.octavation(
        octave=2, selector=trinton.select_leaves_by_index([0, 2, 3, 7, 10, 11])
    ),
    trinton.octavation(
        octave=1, selector=trinton.select_leaves_by_index([1, 4, 5, 6, 14])
    ),
    trinton.octavation(
        octave=-1,
        selector=trinton.select_leaves_by_index(
            [
                16,
                18,
                19,
                20,
                21,
                22,
                23,
                24,
                25,
            ]
        ),
    ),
    trinton.octavation(
        octave=-2,
        selector=trinton.select_leaves_by_index([26, 27, 28, 29, 30, 31, 32, 33, 34]),
    ),
    trinton.respell_with_sharps(selector=trinton.select_leaves_by_index([29])),
    trinton.force_accidentals_command(
        selector=trinton.select_logical_ties_by_index([34], first=True, pitched=True)
    ),
    voice=score["cello polyrhythm voice"],
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
    ["violin 2 voice", "violin 3 voice", "viola 2 voice", "cello 2 voice"],
    [3, 4, 5, 9.5],
    [-7, -7, -7, -7],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (1,)),
        trinton.attachment_command(
            attachments=[
                trinton.tempo_markup(
                    note_value=8,
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
        "violin 2 voice",
        "violin 3 voice",
        "viola 2 voice",
        # "cello 2 voice",
    ],
    [14, 8.5, 11.5, 16],
    [-1, -9, -4, -1],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (4, 8)),
        trinton.spanner_command(
            strings=[
                trinton.tempo_markup(
                    note_value=4,
                    tempo=125,
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
                    note_value=4,
                    tempo=125,
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
    lambda _: trinton.select_target(_, (4, 7)),
    trinton.spanner_command(
        strings=[
            trinton.tempo_markup(
                note_value=4,
                tempo=125,
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
                note_value=4,
                tempo=125,
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
        padding=16,
        tweaks=None,
        right_padding=8,
        direction=None,
        full_string=True,
        command="Three",
    ),
    voice=score["cello 2 voice"],
)

for voice_name, padding, end_anchor in zip(
    [
        "violin 2 voice",
        "violin 4 voice",
        "viola 2 voice",
        # "cello 2 voice",
    ],
    [14, 2, 2, 2],
    [-1, -1, -1, -1],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (14, 16)),
        trinton.spanner_command(
            strings=[
                trinton.tempo_markup(
                    note_value=4,
                    tempo=50,
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
                    tempo=50,
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
    lambda _: trinton.select_target(_, (14, 15)),
    trinton.spanner_command(
        strings=[
            trinton.tempo_markup(
                note_value=4,
                tempo=50,
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
                tempo=50,
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
        padding=16,
        tweaks=None,
        right_padding=15,
        direction=None,
        full_string=True,
        command="Three",
    ),
    voice=score["cello 2 voice temp"],
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

for measure in [1, 3, 5, 7]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\noBreak", site="absolute_after")],
            selector=trinton.select_leaves_by_index([0]),
            tag=abjad.Tag("+SCORE"),
        ),
        voice=score["Global Context"],
    )

for measure in [2, 4, 6, 8]:
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
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (7 23 15.5 20 28)))",
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
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (13 24 19 26.5 33)))",
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
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (5.5 23 16 30 32)))",
                site="absolute_before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (13 19 20 27 32)))",
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
    segment_path="/Users/trintonprater/scores/patterns/patterns/sections/04",
    build_path="/Users/trintonprater/scores/patterns/patterns/build",
    segment_name="04",
    includes=[
        "/Users/trintonprater/scores/patterns/patterns/build/patterns-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
