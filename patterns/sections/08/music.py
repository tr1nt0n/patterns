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

# second violin music

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
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")], selector=trinton.select_leaves_by_index([0])
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
            abjad.LilyPondLiteral(r"\once \override DynamicLineSpanner.padding = #13"),
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
    ["violin 2 voice", "violin 4 voice", "viola 1 voice", "cello 2 voice"],
    [3, 3, 4, 6],
    [-7, -7, -7, -7],
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
        "violin 2 voice",
        "violin 4 voice",
        # "viola 2 voice",
        "cello 1 voice",
    ],
    [
        3,
        3,
        # 3,
        9.5,
    ],
    [
        -1,
        -1,
        # -1,
        -1,
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

# trinton.make_music(
#     lambda _: trinton.select_target(_, (1,)),
#     trinton.attachment_command(
#         attachments=[
#             abjad.LilyPondLiteral(
#                 r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (12 30 32 25)))",
#                 site="absolute_before",
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0]),
#         tag=abjad.Tag("+SCORE"),
#     ),
#     voice=score["Global Context"],
# )

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
