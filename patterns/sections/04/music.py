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
            abjad.LilyPondLiteral(r"\revert Staff.Clef.stencil", site="before")
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
    # trinton.hooked_spanner_command(
    #     string=r"""\markup { \hspace #19 "1/2 CLT" }""",
    #     selector=trinton.select_leaves_by_index([5, 6], pitched=True),
    #     padding=6,
    #     direction=None,
    #     right_padding=0,
    #     full_string=True,
    #     style="dashed-line-with-hook",
    #     hspace=None,
    #     command="One",
    #     tag=None,
    #     tweaks=[
    #         r"""- \tweak font-name "Bodoni72 Book" """,
    #         r"""- \tweak font-size 2""",
    #     ],
    # ),
    # trinton.hooked_spanner_command(
    #     string=r"""\markup { "CLT" }""",
    #     selector=trinton.select_leaves_by_index([6, 13], pitched=True),
    #     padding=6,
    #     direction=None,
    #     right_padding=0,
    #     full_string=True,
    #     style="dashed-line-with-hook",
    #     hspace=None,
    #     command="One",
    #     tag=None,
    #     tweaks=[
    #         r"""- \tweak font-name "Bodoni72 Book" """,
    #         r"""- \tweak font-size 2""",
    #     ],
    # ),
    # trinton.hooked_spanner_command(
    #     string=r"""\markup { "1/2 CLT" }""",
    #     selector=trinton.select_leaves_by_index([13, 15], pitched=True),
    #     padding=6,
    #     direction=None,
    #     right_padding=3,
    #     full_string=True,
    #     style="dashed-line-with-hook",
    #     hspace=None,
    #     command="One",
    #     tag=None,
    #     tweaks=[
    #         r"""- \tweak font-name "Bodoni72 Book" """,
    #         r"""- \tweak font-size 2""",
    #     ],
    # ),
    # trinton.hooked_spanner_command(
    #     string=r"""\markup { \hspace #4 "CLT" }""",
    #     selector=trinton.select_leaves_by_index([15, -1], pitched=True),
    #     padding=6,
    #     direction=None,
    #     right_padding=1,
    #     full_string=True,
    #     style="dashed-line-with-hook",
    #     hspace=None,
    #     command="One",
    #     tag=None,
    #     tweaks=[
    #         r"""- \tweak font-name "Bodoni72 Book" """,
    #         r"""- \tweak font-size 2""",
    #     ],
    # ),
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

# trinton.make_music(
#     lambda _: trinton.select_target(_, (1, 15)),
#     evans.RhythmHandler(
#         rhythm.rhythm_c(stage=2)
#     ),
#     voice=score["viola 2 voice"]
# )

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
    voice=score["cello 2 voice"],
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
    [3, 4, 2, 2],
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
        "cello 2 voice",
    ],
    [14, 8.5, 2, 2],
    [-1, -9, -1, -1],
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

for voice_name, padding, end_anchor in zip(
    [
        "violin 2 voice",
        "violin 4 voice",
        "viola 2 voice",
        "cello 2 voice",
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

# for measure in [1, 3]:
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
# for measure in [2]:
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
#                 r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (13 34 30 28)))",
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
    segment_path="/Users/trintonprater/scores/patterns/patterns/sections/04",
    build_path="/Users/trintonprater/scores/patterns/patterns/build",
    segment_name="04",
    includes=[
        "/Users/trintonprater/scores/patterns/patterns/build/patterns-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
