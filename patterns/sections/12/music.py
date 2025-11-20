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
        ts.return_d_material_ts(measure_amount=8, index=21),
        ts.return_e_material_ts(measure_amount=7, index=22),
        [(1, 4)],
    ],
)

score = library.patterns_score(
    section_ts,
)

# first violin music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 15)),
    evans.RhythmHandler(rhythm.rhythm_e(lower_voice=False, index=0, shorten=True)),
    trinton.change_lines(
        lines=0,
        selector=trinton.select_leaves_by_index([0], pitched=True),
        clef="percussion",
        invisible_barlines=False,
    ),
    trinton.invisible_accidentals_command(selector=trinton.pleaves()),
    # trinton.change_notehead_command(notehead="cross", selector=trinton.pleaves()),
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
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(rhythm.rhythm_e(index=0, lower_voice=True, shorten=False)),
        direction=abjad.DOWN,
        voice_name="violin 1 lower voice",
        preprocessor=trinton.fuse_eighths_preprocessor(
            (
                6,
                4,
                4,
                2,
                4,
                3,
                3,
                2,
                4,
                2,
                4,
                2,
                2,
                4,
                4,
                6,
                4,
                4,
                6,
                6,
                4,
                8,
                8,
                12,
                8,
                12,
                12,
                8,
            )
        ),
        temp_name="upper",
    ),
    voice=score["violin 2 voice"],
    preprocessor=trinton.fuse_eighths_preprocessor(
        (
            6,
            4,
            4,
            2,
            4,
            3,
            3,
            2,
            4,
            2,
            4,
            2,
            2,
            4,
            4,
            6,
            4,
            4,
            6,
            6,
            4,
            8,
            8,
            12,
            8,
            12,
            12,
            8,
        )
    ),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 15)),
    trinton.force_rest(
        selector=trinton.select_logical_ties_by_index(
            [
                57,
                72,
                74,
                76,
                90,
                92,
                94,
                116,
            ],
            pitched=True,
            grace=False,
        )
    ),
    trinton.fuse_tuplet_rests_command(),
    trinton.change_notehead_command(notehead="cross", selector=trinton.pleaves()),
    library.color_voice(),
    voice=score["violin 2 voice upper"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (13,)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    voice=score["violin 2 voice upper"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 15)),
    # trinton.annotate_leaves_locally(
    #     selector=abjad.select.leaves,
    # ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [
                0,
                11,
                12,
                21,
                22,
                29,
                30,
                35,
                36,
                47,
                48,
                57,
                58,
                63,
                64,
                71,
                72,
                83,
                84,
                91,
                92,
                101,
                102,
                107,
                108,
                117,
                118,
                125,
                126,
                131,
                132,
                141,
                142,
                148,
                149,
                154,
                155,
                164,
                165,
                172,
                173,
                179,
                186,
                193,
                194,
                203,
                204,
                213,
                214,
                217,
                220,
                223,
            ]
        ),
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
                abjad.Articulation(">"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
        ],
        selector=trinton.patterned_tie_index_selector(
            [3, 5, 6, 9, 12], 15, first=True, pitched=True, grace=False
        ),
        direction=abjad.DOWN,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = 7", site="before"
            )
        ],
        selector=abjad.select.rests,
    ),
    trinton.manual_beam_positions(positions=(11, 11)),
    trinton.hooked_spanner_command(
        string="CLB OB",
        selector=trinton.select_leaves_by_index([0, -1], grace=False),
        padding=12.75,
        # direction="down",
        right_padding=3,
        full_string=False,
        style="dashed-line-with-hook",
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
    voice=score["violin 2 voice upper"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 15)),
    trinton.force_rest(
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                5,
                9,
                12,
                14,
                16,
                18,
                23,
                26,
                30,
                33,
                36,
                38,
                40,
                45,
                48,
                50,
                52,
                54,
                58,
                61,
                66,
                75,
                80,
                84,
                87,
                93,
                97,
                102,
                103,
                104,
                105,
                106,
                107,
                113,
                117,
                120,
            ],
            pitched=True,
            grace=False,
        )
    ),
    rmakers.rewrite_rest_filled,
    rmakers.trivialize,
    rmakers.extract_trivial,
    # trinton.annotate_leaves_locally(
    #     # selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    #     selector=abjad.select.leaves,
    #     direction=abjad.DOWN
    # ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [
                0,
                4,
                5,
                8,
                12,
                17,
                18,
                22,
                23,
                25,
                26,
                29,
                30,
                35,
                36,
                39,
                40,
                44,
                48,
                53,
                54,
                57,
                61,
                65,
                66,
                71,
                75,
                79,
                80,
                83,
                84,
                89,
            ]
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = -7", site="before"
            )
        ],
        selector=abjad.select.rests,
    ),
    trinton.manual_beam_positions(positions=(-8, -8)),
    library.color_voice(),
    trinton.hooked_spanner_command(
        string="CLT DP",
        selector=trinton.select_leaves_by_index([0, -1], grace=False),
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
            r"""- \tweak font-size 1""",
            r"""- \tweak color #(css-color 'darkred)""",
            # r"- \tweak Y-extent ##f",
            # r"- \tweak Y-offset -12",
            # r"""- \tweak bound-details.left.Y #-10.5""",
            # r"""- \tweak bound-details.right.Y #-6.5""",
        ],
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(
                    r"""\markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #1 { "Interruptive polyphony: Lower voice stops when interrupted by upper voice, and does not resume until next notated attack." }"""
                ),
                r"- \tweak padding 13.5",
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.DOWN,
    ),
    voice=score["violin 1 lower voice"],
)

# second violin music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 5)),
    evans.RhythmHandler(rhythm.rhythm_e(lower_voice=False, index=10, shorten=True)),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(rhythm.rhythm_e(index=10, lower_voice=True)),
        direction=abjad.DOWN,
        voice_name="violin 2 lower voice",
        preprocessor=trinton.fuse_eighths_preprocessor(
            (
                4,
                4,
                6,
                4,
                2,
                2,
                3,
                3,
                2,
                4,
                2,
                4,
                4,
                2,
            )
        ),
        temp_name="upper",
    ),
    trinton.change_lines(
        lines=0,
        selector=trinton.select_leaves_by_index([0], pitched=True),
        clef="percussion",
        invisible_barlines=False,
    ),
    trinton.invisible_accidentals_command(selector=trinton.pleaves()),
    # trinton.change_notehead_command(notehead="cross", selector=trinton.pleaves()),
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
    voice=score["violin 4 voice"],
    preprocessor=trinton.fuse_eighths_preprocessor(
        (4, 4, 6, 4, 2, 2, 3, 3, 2, 4, 2, 4, 4, 2)
    ),
)
#
trinton.make_music(
    lambda _: trinton.select_target(_, (1, 5)),
    trinton.force_rest(
        selector=trinton.select_logical_ties_by_index(
            [26, 28, 30, 44, 46, 48, 57, 58, 59, 60, 61],
            pitched=True,
            grace=False,
        )
    ),
    trinton.fuse_tuplet_rests_command(),
    trinton.change_notehead_command(notehead="cross", selector=trinton.pleaves()),
    rmakers.rewrite_rest_filled,
    rmakers.trivialize,
    rmakers.extract_trivial,
    library.color_voice(),
    voice=score["violin 4 voice upper"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    trinton.rewrite_meter_command(boundary_depth=-2),
    voice=score["violin 4 voice upper"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 5)),
    # trinton.annotate_leaves_locally(
    #     selector=abjad.select.leaves,
    # ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [
                0,
                9,
                10,
                15,
                16,
                27,
                28,
                35,
                36,
                41,
                42,
                51,
                52,
                60,
                61,
                66,
                67,
                76,
                77,
                84,
                85,
                91,
                92,
                97,
                98,
                105,
            ]
        ),
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
                abjad.Articulation(">"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
        ],
        selector=trinton.patterned_tie_index_selector(
            [3, 5, 6, 9, 12], 15, first=True, pitched=True, grace=False
        ),
        direction=abjad.DOWN,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = 7", site="before"
            )
        ],
        selector=abjad.select.rests,
    ),
    trinton.manual_beam_positions(positions=(11, 11)),
    trinton.hooked_spanner_command(
        string="CLB OB",
        selector=trinton.select_leaves_by_index([0, -1], grace=False),
        padding=15,
        # direction="down",
        right_padding=3,
        full_string=False,
        style="dashed-line-with-hook",
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
    voice=score["violin 4 voice upper"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 5)),
    trinton.force_rest(
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                3,
                5,
                7,
                9,
                11,
                13,
                16,
                21,
                30,
                35,
                39,
                42,
                48,
                52,
            ],
            pitched=True,
            grace=False,
        )
    ),
    # trinton.annotate_leaves_locally(
    #     # selector=trinton.logical_ties(first=True, grace=False),
    #     selector=abjad.select.leaves,
    #     direction=abjad.DOWN
    # ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [
                3,
                8,
                9,
                12,
                16,
                20,
                21,
                26,
                27,
                29,
                30,
                34,
                35,
                38,
                39,
                44,
                45,
                47,
                48,
                51,
                52,
                56,
                57,
                61,
            ]
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = -7", site="before"
            )
        ],
        selector=abjad.select.rests,
    ),
    trinton.manual_beam_positions(positions=(-8, -8)),
    library.color_voice(),
    trinton.hooked_spanner_command(
        string="CLT DP",
        selector=trinton.select_leaves_by_index([0, -1], grace=False),
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
            r"""- \tweak font-size 1""",
            r"""- \tweak color #(css-color 'darkred)""",
            # r"- \tweak Y-extent ##f",
            # r"- \tweak Y-offset -12",
            # r"""- \tweak bound-details.left.Y #-10.5""",
            # r"""- \tweak bound-details.right.Y #-6.5""",
        ],
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(
                    r"""\markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #1 { "Interruptive polyphony: Lower voice stops when interrupted by upper voice, and does not resume until next notated attack." }"""
                ),
                r"- \tweak padding 13.5",
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.DOWN,
    ),
    voice=score["violin 2 lower voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 10)),
    evans.RhythmHandler(rmakers.note),
    trinton.rewrite_meter_command(boundary_depth=-1),
    library.color_voice(),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.bundle(
                    abjad.Articulation("talon-to-punta"),
                    r"- \tweak padding 1",
                    r"""- \tweak color #(css-color 'darkred)""",
                ),
                abjad.bundle(
                    abjad.Articulation("punta-to-talon"),
                    r"- \tweak padding 1",
                    r"""- \tweak color #(css-color 'darkred)""",
                ),
            ]
        ),
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
        direction=abjad.UP,
    ),
    trinton.hooked_spanner_command(
        string="CLT DP",
        selector=trinton.select_leaves_by_index([0, -1], grace=False),
        padding=4.5,
        # direction="down",
        right_padding=3,
        full_string=False,
        style="dashed-line-with-hook",
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
    voice=score["violin 4 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11, 15)),
    evans.RhythmHandler(rhythm.rhythm_d(instrument="violin 2", stage=1, index=0)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    library.color_voice(),
    # trinton.annotate_leaves_locally(
    #     selector=abjad.select.leaves,
    #     # selector=trinton.logical_ties(first=True, pitched=True, grace=False)
    # ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                3,
                5,
                8,
                10,
                11,
                16,
                17,
                21,
                22,
                23,
                28,
                32,
                33,
                34,
                37,
                39,
                41,
                42,
                43,
                48,
                49,
                51,
            ]
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BeamCount(left=2, right=1),
            abjad.BeamCount(left=1, right=2),
        ],
        selector=trinton.select_leaves_by_index([30, 31]),
    ),
    trinton.change_notehead_command(
        notehead="cross",
        selector=trinton.durational_selector(
            durations=[abjad.Duration((1, 16)), abjad.Duration((1, 8))],
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
            durations=[abjad.Duration((1, 16)), abjad.Duration((1, 8))],
            preselector=trinton.logical_ties(pitched=True, grace=False),
            first=True,
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Articulation(">"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
        ],
        selector=trinton.patterned_tie_index_selector(
            [3, 5, 6, 9, 12], 15, first=True, pitched=True, grace=False
        ),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.bundle(
                    abjad.Articulation("talon-to-punta"),
                    r"- \tweak padding 1",
                    r"""- \tweak color #(css-color 'darkred)""",
                ),
                abjad.bundle(
                    abjad.Articulation("punta-to-talon"),
                    r"- \tweak padding 1",
                    r"""- \tweak color #(css-color 'darkred)""",
                ),
            ]
        ),
        selector=trinton.select_logical_ties_by_index(
            [2, 5, 14, 15, 20, 21, 29, 33, 38, 44],
            first=True,
            pitched=True,
            grace=False,
        ),
        direction=abjad.UP,
    ),
    trinton.aftergrace_command(
        invisible=True,
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
    ),
    trinton.hooked_spanner_command(
        string="CLT DP",
        selector=trinton.select_leaves_by_index(
            [
                2,
                4,
                16,
                20,
                35,
                37,
                45,
                46,
            ],
        ),
        padding=4.5,
        # direction="down",
        right_padding=-1.5,
        full_string=False,
        style="dashed-line-with-hook",
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
        selector=trinton.select_leaves_by_index(
            [6, 8, 24, 28, 40, 41, 51, -1],
        ),
        padding=6.75,
        # direction="down",
        right_padding=-1.5,
        full_string=False,
        style="dashed-line-with-hook",
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
        selector=trinton.select_leaves_by_index(
            [
                0,
                2,
                # 4, 6,
                8,
                16,
                20,
                24,
                28,
                35,
                # 37, 40,
                41,
                45,
                46,
                51,
            ],
        ),
        padding=3.25,
        # direction="down",
        right_padding=-1.5,
        full_string=False,
        style="dashed-line-with-hook",
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
        string="""\markup \column { \line { "CLB" } \line { "OB" } }""",
        selector=trinton.select_leaves_by_index(
            [4, 6, 37, 40],
        ),
        padding=4.5,
        # direction="down",
        right_padding=-1.5,
        full_string=True,
        style="dashed-line-with-hook",
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
    voice=score["violin 4 voice"],
)

# viola music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 15)),
    evans.RhythmHandler(rmakers.note),
    trinton.rewrite_meter_command(boundary_depth=-1),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\override Staff.Clef.stencil = ##f", site="before")
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.change_lines(
        lines=0,
        clef="percussion",
        invisible_barlines=False,
        selector=trinton.select_leaves_by_index([0]),
    ),
    library.color_voice(),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.bundle(
                    abjad.Articulation("talon-to-punta"),
                    r"- \tweak padding 1",
                    r"""- \tweak color #(css-color 'darkred)""",
                ),
                abjad.bundle(
                    abjad.Articulation("punta-to-talon"),
                    r"- \tweak padding 1",
                    r"""- \tweak color #(css-color 'darkred)""",
                ),
            ]
        ),
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
        direction=abjad.UP,
    ),
    trinton.hooked_spanner_command(
        string="CLT DP",
        selector=trinton.select_leaves_by_index([0, -1], grace=False),
        padding=4.5,
        # direction="down",
        right_padding=3,
        full_string=False,
        style="dashed-line-with-hook",
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
    voice=score["viola 2 voice"],
)

# cello music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 5)),
    evans.RhythmHandler(
        rhythm.rhythm_c(
            instrument="cello",
            stage=4,
            index=0,
        ),
    ),
    trinton.rewrite_meter_command(boundary_depth=-1),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\override Staff.Clef.stencil = ##f", site="before")
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.change_lines(
        lines=0,
        selector=trinton.select_leaves_by_index([0]),
        invisible_barlines=False,
        clef="percussion",
    ),
    # trinton.annotate_leaves_locally(
    #     selector=abjad.select.leaves,
    #     # selector=trinton.logical_ties(first=True, pitched=True, grace=False)
    # ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                2,
                3,
                5,
                6,
                11,
                13,
                15,
                16,
                18,
                19,
                21,
                22,
                24,
                25,
                27,
                28,
                29,
                30,
                31,
                33,
                34,
                35,
            ]
        ),
    ),
    trinton.change_notehead_command(
        notehead="cross",
        selector=trinton.durational_selector(
            durations=[abjad.Duration((1, 16)), abjad.Duration((1, 8))],
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
            durations=[abjad.Duration((1, 16)), abjad.Duration((1, 8))],
            preselector=trinton.logical_ties(pitched=True, grace=False),
            first=True,
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Articulation(">"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
        ],
        selector=trinton.patterned_tie_index_selector(
            [3, 5, 6, 9, 12], 15, first=True, pitched=True, grace=False
        ),
    ),
    library.color_voice(),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.bundle(
                    abjad.Articulation("talon-to-punta"),
                    r"- \tweak padding 1",
                    r"""- \tweak color #(css-color 'darkred)""",
                ),
                abjad.bundle(
                    abjad.Articulation("punta-to-talon"),
                    r"- \tweak padding 1",
                    r"""- \tweak color #(css-color 'darkred)""",
                ),
            ]
        ),
        selector=trinton.select_logical_ties_by_index(
            [0, 2, 3, 4, 6, 7, 8, 9, 12],
            first=True,
            pitched=True,
            grace=False,
        ),
        direction=abjad.UP,
    ),
    # trinton.aftergrace_command(
    #     invisible=True,
    #     selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
    # ),
    trinton.hooked_spanner_command(
        string="CLT DP",
        selector=trinton.select_leaves_by_index(
            [
                1,
                2,
                5,
                6,
                7,
                8,
                9,
                10,
                14,
                15,
                16,
                18,
                # 19, 21,
                # 22, 24,
                # 29, 30
            ],
        ),
        padding=5.5,
        # direction="down",
        right_padding=0,
        full_string=False,
        style="dashed-line-with-hook",
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
        selector=trinton.select_leaves_by_index(
            [
                19,
                21,
                # 29, 30
            ],
        ),
        padding=4.5,
        # direction="down",
        right_padding=0,
        full_string=False,
        style="dashed-line-with-hook",
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
        selector=trinton.select_leaves_by_index(
            [22, 24, 29, 30],
        ),
        padding=6.75,
        # direction="down",
        right_padding=0,
        full_string=False,
        style="dashed-line-with-hook",
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
        selector=trinton.select_leaves_by_index(
            [3, 4, 11, 13, 25, 26, 27, 28, 31, 36],
        ),
        padding=3.25,
        # direction="down",
        right_padding=0,
        full_string=False,
        style="dashed-line-with-hook",
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
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 10)),
    evans.RhythmHandler(rhythm.rhythm_b(stage=3, instrument="cello", index=4)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    # trinton.annotate_leaves_locally(
    #     selector=abjad.select.leaves,
    #     # selector=trinton.logical_ties(first=True, pitched=True, grace=False)
    # ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [
                3,
                5,
                7,
                9,
                10,
                12,
                14,
                17,
                18,
                21,
                22,
                24,
                27,
                29,
                32,
                34,
                35,
                38,
                39,
                42,
                43,
                49,
                50,
                53,
                56,
                58,
                59,
                63,
                64,
                67,
                68,
                70,
            ]
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BeamCount(left=2, right=1),
            abjad.BeamCount(left=1, right=2),
        ],
        selector=trinton.select_leaves_by_index(
            [
                46,
                47,
            ]
        ),
    ),
    trinton.change_notehead_command(
        notehead="cross",
        selector=trinton.durational_selector(
            durations=[abjad.Duration((1, 16)), abjad.Duration((1, 8))],
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
            durations=[abjad.Duration((1, 16)), abjad.Duration((1, 8))],
            preselector=trinton.logical_ties(pitched=True, grace=False),
            first=True,
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Articulation(">"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
        ],
        selector=trinton.patterned_tie_index_selector(
            [3, 5, 6, 9, 12], 15, first=True, pitched=True, grace=False
        ),
    ),
    library.color_voice(),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.bundle(
                    abjad.Articulation("punta-to-talon"),
                    r"- \tweak padding 1",
                    r"""- \tweak color #(css-color 'darkred)""",
                ),
                abjad.bundle(
                    abjad.Articulation("talon-to-punta"),
                    r"- \tweak padding 1",
                    r"""- \tweak color #(css-color 'darkred)""",
                ),
            ]
        ),
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 2, 6, 13, 25, 26, 30, 31, 54, 55, 71, 72],
            first=True,
            pitched=True,
            grace=False,
        ),
        direction=abjad.UP,
    ),
    # trinton.aftergrace_command(
    #     invisible=True,
    #     selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
    # ),
    trinton.hooked_spanner_command(
        string="CLT DP",
        selector=trinton.select_leaves_by_index(
            [
                0,
                2,
                25,
                26,
                30,
                31,
            ],
        ),
        padding=5.5,
        # direction="down",
        right_padding=2,
        full_string=False,
        style="dashed-line-with-hook",
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
        selector=trinton.select_leaves_by_index(
            [6, 7, 13, 14],
        ),
        padding=5.5,
        # direction="down",
        right_padding=-1.5,
        full_string=False,
        style="dashed-line-with-hook",
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
        selector=trinton.select_leaves_by_index(
            [54, 55, 71, 72],
        ),
        padding=6.5,
        # direction="down",
        right_padding=2,
        full_string=False,
        style="dashed-line-with-hook",
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
        selector=trinton.select_leaves_by_index(
            [
                3,
                5,
                7,
                12,
                14,
                24,
                27,
                29,
                32,
                53,
                56,
                70,
            ],
        ),
        padding=3.25,
        # direction="down",
        right_padding=0.75,
        full_string=False,
        style="dashed-line-with-hook",
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
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11, 15)),
    evans.RhythmHandler(rhythm.rhythm_e(lower_voice=False, index=9, shorten=True)),
    # trinton.change_notehead_command(notehead="cross", selector=trinton.pleaves()),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(rhythm.rhythm_e(index=9, lower_voice=True, shorten=False)),
        direction=abjad.DOWN,
        voice_name="cello lower voice",
        preprocessor=trinton.fuse_quarters_preprocessor((6, 4, 6, 6, 4)),
        temp_name="upper",
    ),
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11, 15)),
    trinton.change_notehead_command(notehead="cross", selector=trinton.pleaves()),
    library.color_voice(),
    voice=score["cello 2 voice upper"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11, 15)),
    # trinton.annotate_leaves_locally(
    #     selector=abjad.select.leaves,
    # ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [
                8,
                17,
                24,
                35,
                36,
                43,
            ]
        ),
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
                abjad.Articulation(">"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
        ],
        selector=trinton.patterned_tie_index_selector(
            [3, 5, 6, 9, 12], 15, first=True, pitched=True, grace=False
        ),
        direction=abjad.DOWN,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = 7", site="before"
            )
        ],
        selector=abjad.select.rests,
    ),
    trinton.manual_beam_positions(positions=(7, 7)),
    trinton.hooked_spanner_command(
        string="CLB OB",
        selector=trinton.select_leaves_by_index([0, -1], grace=False),
        padding=10,
        # direction="down",
        right_padding=3,
        full_string=False,
        style="dashed-line-with-hook",
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
    voice=score["cello 2 voice upper"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11, 15)),
    trinton.force_rest(
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                5,
                8,
                10,
                12,
                14,
                16,
                18,
            ],
            pitched=True,
            grace=False,
        )
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = -7", site="before"
            )
        ],
        selector=abjad.select.rests,
    ),
    library.color_voice(),
    trinton.hooked_spanner_command(
        string="CLT DP",
        selector=trinton.select_leaves_by_index([0, -1], grace=False),
        padding=9.5,
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
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(
                    r"""\markup \override #'(font-name . "Bodoni72 Book Italic") \fontsize #1 { "Interruptive polyphony: Lower voice stops when interrupted by upper voice, and does not resume until next notated attack." }"""
                ),
                r"- \tweak padding 11",
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.DOWN,
    ),
    voice=score["cello lower voice"],
)

# globals

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            trinton.boxed_markup(
                string="Insect Language",
                tweaks=[
                    # r"- \tweak padding 10",
                    r"""- \tweak color #(css-color 'darkred)""",
                ],
                column="\center-column",
                font_name="Bodoni72 Book Italic",
                fontsize=4,
                string_only=False,
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

# final barline

trinton.make_music(
    lambda _: trinton.select_target(_, (16,)),
    trinton.attachment_command(
        attachments=[
            abjad.BarLine("|.", site="after"),
        ],
        selector=trinton.select_leaves_by_index([-1]),
    ),
    voice=score["Global Context"],
)

# fermate

trinton.fermata_measures(
    score=score,
    measures=[16],
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
    [
        "violin 2 voice upper",
        "violin 4 voice upper",
        "viola 2 voice",
        "cello 2 voice",
    ],
    [
        3,
        3,
        4.5,
        3,
    ],
    [
        -7.5,
        -7.5,
        -7.5,
        -7.5,
    ],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (1,)),
        trinton.attachment_command(
            attachments=[
                trinton.tempo_markup(
                    note_value=16,
                    tempo=83,
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

for measure in [1, 3, 7, 9, 12, 14, 15]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\noBreak", site="absolute_after")],
            selector=trinton.select_leaves_by_index([0]),
            tag=abjad.Tag("+SCORE"),
        ),
        voice=score["Global Context"],
    )

for measure in [2, 4, 5, 6, 8, 10, 11, 13]:
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
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (15 37 30 16)))",
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
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (15 37 27 19)))",
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
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (15 37 27 19)))",
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
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (15 27 19 19)))",
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
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (15 27 19 19)))",
                site="absolute_before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (15 27 19 19)))",
                site="absolute_before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (15 27 21 23)))",
                site="absolute_before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (15 27 21 23)))",
                site="absolute_before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (14,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (3.5 24 16 14)))",
                site="absolute_before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)


# trinton.make_music(
#     lambda _: trinton.select_target(_, (8, 10)),
#     trinton.attachment_command(
#         attachments=[
#             abjad.LilyPondLiteral(
#                 [
#                     r"\magnifyStaff #7/8",
#                     r"\once \override Staff.Clef.Y-extent = ##f",
#                     rf"\once \override Staff.Clef.Y-offset = #-2",
#                     r"\once \override Staff.Clef.X-extent = ##f",
#                     r"\once \override Staff.Clef.extra-offset = #'(4 . 0)",
#                 ],
#                 site="absolute_after",
#             )
#         ],
#         selector=trinton.select_leaves_by_index([0]),
#     ),
#     trinton.attachment_command(
#         attachments=[
#             abjad.LilyPondLiteral([r"\magnifyStaff #1"], site="absolute_after")
#         ],
#         selector=trinton.select_leaves_by_index([-1]),
#     ),
#     voice=score["cello 1 voice"],
# )

# trinton.make_music(
#     lambda _: trinton.select_target(_, (8,)),
#     trinton.attachment_command(
#         attachments=[abjad.LilyPondLiteral([r"\magnifyStaff #7/8"], site="before")],
#         selector=trinton.select_leaves_by_index([0]),
#     ),
#     voice=score["cello 2 voice temp"],
# )

# trinton.make_music(
#     lambda _: trinton.select_target(_, (10,)),
#     trinton.attachment_command(
#         attachments=[
#             abjad.LilyPondLiteral([r"\magnifyStaff #1"], site="absolute_after")
#         ],
#         selector=trinton.select_leaves_by_index([-1], grace=False),
#     ),
#     voice=score["cello lower voice"],
# )
#
# for voice_name in ["violin 1 bow voice", "violin 4 voice", "viola 2 voice temp 2"]:
#     trinton.make_music(
#         lambda _: trinton.select_target(_, (8, 10)),
#         trinton.attachment_command(
#             attachments=[abjad.LilyPondLiteral([r"\magnifyStaff #7/8"], site="before")],
#             selector=trinton.select_leaves_by_index([0]),
#         ),
#         trinton.attachment_command(
#             attachments=[
#                 abjad.LilyPondLiteral([r"\magnifyStaff #1"], site="absolute_after")
#             ],
#             selector=trinton.select_leaves_by_index([-1]),
#         ),
#         voice=score[voice_name],
#     )

# instrument names

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

# beautification

trinton.remove_redundant_time_signatures(score=score)
# library.whiteout_empty_staves(
#     score=score, voice_names=["viola 1 voice", "cello 1 voice"]
# )

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

# colophon

trinton.make_music(
    lambda _: trinton.select_target(_, (16,)),
    trinton.attachment_command(
        attachments=[
            # abjad.LilyPondLiteral(
            #     r"\override Staff.TextScript.whiteout = ##f",
            #     site="before",
            # ),
            abjad.bundle(
                abjad.Markup(
                    r"""\markup \fontsize #1 \lower #5 { \hspace #-1.75 \column \override #'(font-name . "Bodoni72 Book Italic") { \line { August - November 2025 } \line { Buffalo - Brooklyn, NY } } }"""
                ),
                r"- \tweak X-extent ##f",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.DOWN,
    ),
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (15,)),
    trinton.attachment_command(
        attachments=[
            # abjad.LilyPondLiteral(
            #     r"\override Staff.TextScript.whiteout = ##f",
            #     site="before",
            # ),
            abjad.bundle(
                abjad.Markup(
                    r"""\markup \fontsize #1 \lower #20 { \hspace #-66.6 \center-column \override #'(font-name . "Bodoni72 Book Italic") { \line { " \". . . The history is held and the context is closer to the burn of what you & I can call " } \line { " \"Knowing " } \line { " \"But we just mean feeling " } \line { " \"To know and be known and to strike against the brush " } \line { " \"The brush that submits to decay in the gutters " } \line { " \"and the gutters, what the American can understand as, the oversaturation, that which the American increasingly comes to know as, the flood." } \line { " \"We will have that flood and we will fear the fire" } \line { " \"I am unable to peel myself from any fire . . .\" " } } }"""
                ),
                r"- \tweak X-extent ##f",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.DOWN,
    ),
    voice=score["cello lower voice"],
)

# extract parts

trinton.extract_parts(score=score)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/patterns/patterns/sections/12",
    build_path="/Users/trintonprater/scores/patterns/patterns/build",
    segment_name="12",
    includes=[
        "/Users/trintonprater/scores/patterns/patterns/build/patterns-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
