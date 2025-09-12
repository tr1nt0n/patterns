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
        ts.return_d_material_ts(measure_amount=6, index=1),
        ts.return_e_material_ts(measure_amount=6, index=0),
        [(1, 4)],
    ],
)

score = library.patterns_score(
    section_ts,
)

# first violin music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 4)),
    evans.RhythmHandler(
        rhythm.rhythm_e(lower_voice=False, index=8),
    ),
    trinton.rewrite_meter_command(boundary_depth=-1),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(rhythm.rhythm_e(index=8, lower_voice=True)),
        direction=abjad.DOWN,
        voice_name="violin 1 polyrhythm voice",
        preprocessor=trinton.fuse_eighths_preprocessor((8, 10, 8, 11)),
    ),
    voice=score["violin 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 4)),
    pitch.pitch_e(instrument="violin 1", index=0),
    # trinton.annotate_leaves_locally(selector=trinton.pleaves(), direction=abjad.UP),
    trinton.octavation(octave=1, selector=trinton.select_leaves_by_index([8, 15, 16])),
    trinton.spanner_command(
        strings=["Norm.", "1/2 Batt.", "1/4 Batt."],
        selector=trinton.select_leaves_by_index(
            [0, 7, 7, 11, 11, 14],
        ),
        style="solid-line-with-arrow",
        padding=10,
        right_padding=0,
        direction=None,
        full_string=False,
        end_hook=True,
        end_hook_right_padding=-1,
        command="One",
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 1""",
        ],
    ),
    trinton.spanner_command(
        strings=[
            "Norm.",
            "3/4 Batt.",
        ],
        selector=trinton.select_leaves_by_index(
            [14, 17],
        ),
        style="solid-line-with-arrow",
        padding=10,
        right_padding=10,
        direction=None,
        full_string=False,
        end_hook=False,
        # end_hook_right_padding=-1,
        command="One",
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 1""",
        ],
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("staccato"), abjad.Articulation("tenuto")],
        selector=trinton.select_leaves_by_index(
            [
                7,
                8,
                9,
                11,
                12,
                13,
            ]
        ),
        direction=abjad.DOWN,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation("staccato"),
        ],
        selector=trinton.select_leaves_by_index([17]),
        direction=abjad.DOWN,
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("staccato"), abjad.Articulation("tenuto")],
        selector=trinton.select_leaves_by_index([10, 16]),
        # direction=abjad.DOWN
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override TupletBracket.padding = 0.5", site="before"
            )
        ],
        selector=trinton.select_tuplets_by_index([-1]),
    ),
    voice=score["violin 2 voice temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 4)),
    pitch.pitch_e(instrument="violin 1", index=9),
    # trinton.annotate_leaves_locally(selector=trinton.pleaves(), direction=abjad.DOWN),
    trinton.octavation(
        octave=1,
        selector=trinton.select_leaves_by_index([12, 14, 15]),
    ),
    trinton.octavation(
        octave=-1,
        selector=trinton.select_leaves_by_index(
            [
                1,
                2,
                5,
                10,
            ]
        ),
    ),
    trinton.respell_with_sharps(selector=trinton.select_leaves_by_index([16])),
    trinton.attachment_command(
        attachments=[abjad.Articulation("staccato")],
        selector=trinton.select_leaves_by_index(
            [
                5,
                6,
                7,
                8,
                10,
                11,
                13,
                15,
                16,
                17,
            ]
        ),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.select_leaves_by_index(
            [
                5,
                6,
                7,
                8,
                10,
                11,
                13,
            ]
        ),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("staccato")],
        selector=trinton.select_leaves_by_index(
            [
                9,
                14,
            ]
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.select_leaves_by_index([9, 14]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("ppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("p"),
        ],
        selector=trinton.select_leaves_by_index([0, 7, 13, -1]),
    ),
    voice=score["violin 1 polyrhythm voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    trinton.graphic_bow_pressure_spanner(
        selector=trinton.logical_ties(),
        peaks=[5, 3, 4, 2, 3, 1, 2, 0.5, 0.75, 0],
        peak_direction=abjad.DOWN,
        anchor_point_step_sizes=[
            5,
            4,
            5,
            4,
            6,
            5,
            7,
            6,
            9,
            8,
        ],
        divisions=None,
        counts=None,
        cyclic=True,
        left_broken_text=None,
        left_text=None,
        right_padding=None,
        right_text=None,
        padding=9.5,
        forget=False,
    ),
    voice=score["violin 1 polyrhythm voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 4)),
    trinton.graphic_bow_pressure_spanner(
        selector=trinton.logical_ties(),
        peaks=[2, 3, 1, 2, 0.5, 4, 2, 3, 1, 2, 0.5, 0.75, 0],
        peak_direction=abjad.DOWN,
        anchor_point_step_sizes=[1, 2, 1, 1, 8, 9, 8, 7, 6, 7, 5, 4, 5, 4, 5, 4],
        divisions=None,
        counts=None,
        cyclic=True,
        left_broken_text=None,
        left_text=None,
        right_padding=None,
        right_text=None,
        padding=8,
        forget=False,
    ),
    voice=score["violin 1 polyrhythm voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 8)),
    evans.RhythmHandler(
        evans.talea([-3, 7, 1, 1, 4, 1, 1, 4, 3, 1, -1000], 8),
    ),
    evans.PitchHandler(["f''", "c''", "c'", "b'", "g'", "d''", "e'", "a", "e''"]),
    trinton.noteheads_only(
        selector=trinton.select_leaves_by_index([0], pitched=True),
        stem=True,
        no_ledgers=True,
    ),
    trinton.noteheads_only(selector=trinton.pleaves(exclude=[0]), no_ledgers=True),
    trinton.invisible_rests(),
    library.tablature_staff(
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.continuous_glissando(
        zero_padding=True,
        tweaks=[
            abjad.Tweak(r"- \tweak thickness #1.5"),
            abjad.Tweak(r"- \tweak bound-details.right.arrow ##t"),
        ],
    ),
    trinton.change_notehead_command(
        notehead="harmonic",
        selector=trinton.select_logical_ties_by_index(
            [1, 3, 6, 8], first=True, pitched=True
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\big-half-harmonic", site="before"),
        ],
        selector=trinton.select_logical_ties_by_index([2, 5], first=True, pitched=True),
    ),
    trinton.hooked_spanner_command(
        string="""Slide""",
        selector=trinton.select_leaves_by_index([0, -2], grace=False),
        padding=6,
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
        ],
    ),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(
            evans.talea(
                [
                    -6,
                    2,
                    -1,
                    3,
                    -6,
                    2,
                    -1,
                    2,
                    -1,
                    1,
                    -1,
                    2,
                    3,
                    -1,
                    1,
                    4,
                    -1,
                    4,
                    -1,
                    6,
                    -1000,
                ],
                16,
            )
        ),
        direction=abjad.UP,
        voice_name="violin 1 vibrator voice",
        temp_name="temp 1",
    ),
    voice=score["violin 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 8)),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 2, 3, 4, 6, 8, 9, 10], pitched=True, grace=False
        )
    ),
    evans.PitchHandler(
        [
            "a''",
            "a''",
            "g''",
            "a''",
            "a''",
            "f''",
            "d''",
            "g''",
            "c''",
            "g''",
            "c''",
            "b'",
            "g''",
            "a''",
            "d''",
            "f''",
            "a''",
            "a'",
            "a''",
            "d''",
        ]
    ),
    trinton.noteheads_only(
        selector=trinton.select_leaves_by_index([0], pitched=True),
        stem=True,
        no_ledgers=True,
    ),
    trinton.noteheads_only(selector=trinton.pleaves(exclude=[0]), no_ledgers=True),
    trinton.invisible_rests(),
    trinton.continuous_glissando(
        zero_padding=True,
        tweaks=[
            abjad.Tweak(r"- \tweak thickness #1.5"),
            abjad.Tweak(r"- \tweak bound-details.right.arrow ##t"),
        ],
    ),
    trinton.change_notehead_command(
        notehead="harmonic",
        selector=trinton.select_logical_ties_by_index(
            [0, 2, 4, 5, 8, 9], first=True, pitched=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\big-half-harmonic", site="before"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [7], first=True, pitched=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\big-half-harmonic", site="before"),
        ],
        selector=trinton.logical_ties(first=True, grace=True),
    ),
    trinton.hooked_spanner_command(
        string="""Vib. on IV""",
        selector=trinton.select_leaves_by_index(
            [0, -2],
        ),
        padding=9,
        direction=None,
        right_padding=7,
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
        string="""+ III""",
        selector=trinton.select_logical_ties_by_index(
            [10, 12, 16, 17], first=True, pitched=True
        ),
        padding=7,
        direction=None,
        right_padding=1,
        full_string=False,
        style="dashed-line-with-hook",
        command="Two",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 2""",
        ],
    ),
    voice=score["violin 1 vibrator voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9, 12)),
    evans.RhythmHandler(rhythm.rhythm_c(stage=4, instrument="violin 1", index=0)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler(["a"]),
    evans.PitchHandler(["6/5"], as_ratios=True),
    # trinton.annotate_leaves_locally(selector=abjad.select.leaves),
    trinton.force_accidentals_command(
        selector=trinton.logical_ties(first=True, pitched=True)
    ),
    library.tablature_staff(
        selector=trinton.select_leaves_by_index([0]), reset_staff_lines=5, reset=True
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([0, 1, 5, 8, 9, 12, 17, 20]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BeamCount(left=2, right=1),
            abjad.BeamCount(left=1, right=2),
        ],
        selector=trinton.select_leaves_by_index([10, 11]),
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("pp")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.hooked_spanner_command(
        string="""Bowing IV (tasto) + Waist""",
        selector=trinton.select_logical_ties_by_index(
            [0, -1], first=True, pitched=True
        ),
        padding=7,
        direction=None,
        right_padding=4,
        full_string=False,
        style="dashed-line-with-hook",
        command="One",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 1""",
        ],
    ),
    voice=score["violin 2 voice"],
)

# second violin music

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 12)),
    evans.RhythmHandler(rhythm.rhythm_e(index=0)),
    trinton.force_rest(selector=trinton.select_tuplets_by_index([0, 1])),
    trinton.treat_tuplets(),
    trinton.rewrite_meter_command(boundary_depth=-1),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(rhythm.rhythm_e(index=0, lower_voice=True)),
        direction=abjad.DOWN,
        voice_name="violin 2 polyrhythm voice",
        preprocessor=trinton.fuse_quarters_preprocessor((5, 1, 4, 6, 4, 4, 4, 4)),
    ),
    voice=score["violin 4 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 6)),
    rmakers.force_rest,
    trinton.treat_tuplets(),
    trinton.rewrite_meter_command(boundary_depth=-1),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\voiceTwo")],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\once \override Rest.transparent = ##t",
                    r"\once \override Dots.stencil = ##f",
                ],
                site="before",
            )
        ],
        selector=abjad.select.rests,
    ),
    voice=score["violin 2 polyrhythm voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 6)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = #0", site="before"
            )
        ],
        selector=abjad.select.rests,
    ),
    voice=score["violin 4 voice temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 12)),
    pitch.pitch_e(instrument="violin 2", index=0),
    # trinton.annotate_leaves_locally(selector=trinton.pleaves(), direction=abjad.UP),
    trinton.octavation(
        octave=-1,
        selector=trinton.select_leaves_by_index([13, 18, 19, 21], pitched=True),
    ),
    trinton.octavation(
        octave=1,
        selector=trinton.select_leaves_by_index([0, 1, 3, 6, 16, 22], pitched=True),
    ),
    trinton.octavation(
        octave=2,
        selector=trinton.select_leaves_by_index(
            [
                2,
                4,
            ],
            pitched=True,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.select_leaves_by_index(
            [5, 12, 13, 14, 15, 16, 17, 18, 19, 20]
        ),
        direction=abjad.DOWN,
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("staccato")],
        selector=trinton.select_leaves_by_index(
            [0, 1, 2, 3, 5, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
        ),
        direction=abjad.DOWN,
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("staccato")],
        selector=trinton.select_leaves_by_index([4, 6]),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.select_leaves_by_index([4, 6]),
    ),
    trinton.spanner_command(
        strings=[
            "3/4 Batt.",
            "1/2 Batt.",
            "3/4 Batt.",
            "1/4 Batt.",
            "1/2 Batt.",
            "Norm.",
        ],
        selector=trinton.select_leaves_by_index(
            [0, 5, 5, 8, 8, 15, 15, 19, 19, 22, 22, -1],
        ),
        style="solid-line-with-arrow",
        padding=11.5,
        right_padding=0,
        direction=None,
        full_string=False,
        end_hook=True,
        end_hook_right_padding=6,
        command="One",
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 1""",
        ],
    ),
    voice=score["violin 4 voice temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 12)),
    pitch.pitch_e(instrument="violin 2", index=295),
    # trinton.annotate_leaves_locally(selector=trinton.pleaves(), direction=abjad.DOWN),
    trinton.octavation(
        octave=-1, selector=trinton.select_leaves_by_index([24], pitched=True)
    ),
    trinton.octavation(
        octave=1,
        selector=trinton.select_leaves_by_index([0, 1, 2, 3, 4, 5, 15], pitched=True),
    ),
    trinton.octavation(
        octave=2, selector=trinton.select_leaves_by_index([5, 6, 9], pitched=True)
    ),
    trinton.respell_with_sharps(selector=trinton.select_leaves_by_index([8])),
    trinton.respell_with_flats(
        selector=trinton.select_leaves_by_index(
            [
                10,
            ]
        )
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.select_leaves_by_index([4, 5, 6, 8, 14, 15, 16, 17, 18, 19]),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("staccato")],
        selector=trinton.select_leaves_by_index(
            [0, 1, 2, 4, 5, 6, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19]
        ),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("staccato")],
        selector=trinton.select_leaves_by_index([3, 7]),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.select_leaves_by_index([3, 7]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("p"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("ppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("p"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("pp"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 2, 3, 6, 8, 11]),
    ),
    voice=score["violin 2 polyrhythm voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 8)),
    trinton.graphic_bow_pressure_spanner(
        selector=trinton.logical_ties(),
        peaks=[0.5, 0.75, 1, 0.1, 0.5, 0.1, 2, 0],
        peak_direction=abjad.DOWN,
        anchor_point_step_sizes=[3, 1, 4, 1, 2, 20, 5],
        divisions=None,
        counts=None,
        cyclic=True,
        left_broken_text=None,
        left_text=None,
        right_padding=None,
        right_text=None,
        padding=10.5,
        forget=False,
    ),
    voice=score["violin 2 polyrhythm voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9, 10)),
    trinton.graphic_bow_pressure_spanner(
        selector=trinton.logical_ties(),
        peaks=[0.75, 0.5, 0.8, 0.1, 0.5, 0.1, 0.5, 2],
        peak_direction=abjad.DOWN,
        anchor_point_step_sizes=[2, 2, 3, 2, 3, 30, 6],
        divisions=None,
        counts=None,
        cyclic=True,
        left_broken_text=None,
        left_text=None,
        right_padding=None,
        right_text=None,
        padding=10,
        forget=False,
    ),
    voice=score["violin 4 voice temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11, 12)),
    trinton.graphic_bow_pressure_spanner(
        selector=trinton.logical_ties(),
        peaks=[2, 1, 2, 1, 3, 2, 3.5, 1, 5, 4, 5, 5],
        peak_direction=abjad.DOWN,
        anchor_point_step_sizes=[1, 2, 2, 1, 2, 2, 1, 20, 3, 4, 4],
        divisions=None,
        counts=None,
        cyclic=True,
        left_broken_text=None,
        left_text=None,
        right_padding=None,
        right_text=None,
        padding=10.5,
        forget=False,
    ),
    voice=score["violin 2 polyrhythm voice"],
)


# viola music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 4)),
    evans.RhythmHandler(rhythm.rhythm_c(stage=1, instrument="viola", index=0)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\override Staff.Clef.stencil = ##f", site="before")
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.change_lines(
        lines=1,
        selector=trinton.select_leaves_by_index([0]),
        invisible_barlines=False,
        clef="percussion",
    ),
    trinton.hooked_spanner_command(
        string=r"Tailpiece",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=3,
        direction=None,
        right_padding=6,
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
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic('"mf"'),
            abjad.StartHairpin(">"),
            abjad.Dynamic('"ppp"'),
            abjad.StartHairpin("<"),
            abjad.Dynamic('"ff"'),
            abjad.StartHairpin(">"),
            abjad.Dynamic('"ppp"'),
            abjad.StartHairpin("<"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 1, 1, 2, 2, 3, 3], first=True, pitched=True
        ),
    ),
    voice=score["viola 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 8)),
    evans.RhythmHandler(rhythm.rhythm_b(stage=1, instrument="viola", index=0)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    pitch.pitch_b(instrument="viola", base_pitch=0, index=4),
    trinton.change_lines(lines=5, clef="alto", invisible_barlines=False),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\revert Staff.Clef.stencil", site="before")
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.octavation(
        octave=-1, selector=trinton.select_logical_ties_by_index([0, 1, 2, 3, 4, 5])
    ),
    trinton.change_notehead_command(
        notehead="harmonic", selector=trinton.select_leaves_by_index([4, 6, 8])
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\big-half-harmonic", site="before"),
        ],
        selector=trinton.select_leaves_by_index([2, 7]),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.bundle(
                    abjad.Articulation("talon-to-punta"), r"- \tweak padding #1"
                ),
                abjad.bundle(
                    abjad.Articulation("punta-to-talon"), r"- \tweak padding #1"
                ),
            ]
        ),
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                3,
                4,
            ],
            first=True,
        ),
        direction=abjad.UP,
    ),
    trinton.continuous_glissando(
        selector=trinton.select_leaves_by_index([0, 1, 2, 3, 4, 6, 7, 8, 9, 10, 11]),
        tweaks=[
            abjad.Tweak(r"- \tweak thickness #1.5"),
            abjad.Tweak(r"- \tweak bound-details.right.arrow ##t"),
        ],
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [abjad.StartSlur(), abjad.StopSlur()],
        ),
        selector=trinton.select_leaves_by_index([0, 4, 6, 11]),
    ),
    trinton.respell_with_sharps(selector=trinton.select_leaves_by_index([6, 7])),
    trinton.spanner_command(
        strings=[
            r"\bow-tip-half-down",
            r"\bow-tip-up",
        ],
        selector=trinton.select_logical_ties_by_index([0, 2], first=True),
        style="solid-line-with-arrow",
        padding=9.5,
        tweaks=None,
        right_padding=0,
        direction=None,
        full_string=True,
        command="One",
    ),
    trinton.spanner_command(
        strings=[r"\normale-bow-rotation", r"\bow-tip-half-down"],
        selector=trinton.select_logical_ties_by_index([3, -1], first=True),
        style="solid-line-with-arrow",
        padding=9.5,
        tweaks=None,
        right_padding=0,
        direction=None,
        full_string=True,
        command="One",
    ),
    trinton.spanner_command(
        strings=[r"Spz.", r"1/2 Spz."],
        selector=trinton.select_logical_ties_by_index([0, 2], first=True),
        style="solid-line-with-arrow",
        padding=12,
        right_padding=-3,
        direction=None,
        full_string=False,
        command="Two",
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 1""",
        ],
    ),
    trinton.spanner_command(
        strings=[r"Spz.", r"Norm.", r"1/2 Spz."],
        selector=trinton.select_logical_ties_by_index([3, 5, 5, -1], first=True),
        style="solid-line-with-arrow",
        padding=12,
        right_padding=0,
        direction=None,
        full_string=False,
        command="Two",
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 1""",
        ],
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic('"f"'),
            abjad.StartHairpin(">"),
            abjad.Dynamic('"pp"'),
            abjad.StartHairpin("<"),
            abjad.Dynamic('"mf"'),
            abjad.StartHairpin(">"),
            abjad.Dynamic('"ppp"'),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 2, 4, 5, 5, -1], first=True, pitched=True
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.select_logical_ties_by_index([3], pitched=True, first=True),
    ),
    voice=score["viola 2 voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9, 12)),
    evans.RhythmHandler(rhythm.rhythm_e(index=11)),
    pitch.pitch_e(instrument="viola", index=0),
    trinton.octavation(
        octave=-1, selector=trinton.patterned_leaf_index_selector([0], 2)
    ),
    # trinton.octavation(octave=-2, selector=trinton.patterned_leaf_index_selector([1], 2)),
    library.bow_staff(selector=trinton.select_leaves_by_index([0])),
    trinton.change_notehead_command(notehead="cross", selector=trinton.pleaves()),
    trinton.hooked_spanner_command(
        string="""Drumstick on Bowhair""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=12,
        direction=None,
        right_padding=14,
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
        evans.RhythmHandler(rhythm.rhythm_e(index=11, lower_voice=True)),
        direction=abjad.DOWN,
        voice_name="viola polyrhythm voice",
        preprocessor=trinton.fuse_quarters_preprocessor((4,)),
    ),
    voice=score["viola 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9, 12)),
    trinton.attachment_command(
        attachments=[abjad.Articulation("staccato")],
        selector=trinton.logical_ties(first=True, pitched=True),
        direction=abjad.DOWN,
    ),
    voice=score["viola 2 voice temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9, 12)),
    pitch.pitch_e(instrument="viola", index=0),
    trinton.octavation(
        octave=-1, selector=trinton.patterned_leaf_index_selector([1], 2)
    ),
    trinton.force_rest(
        selector=trinton.select_leaves_by_index([0, 2, 4, 6, 8, 10, 13])
    ),
    trinton.change_notehead_command(notehead="cross", selector=trinton.pleaves()),
    trinton.attachment_command(
        attachments=[abjad.Articulation("staccato")],
        selector=trinton.logical_ties(first=True, pitched=True),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\voiceTwo",
            ),
            abjad.Dynamic("pp"),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = #-10", site="before"
            ),
        ],
        selector=trinton.select_leaves_by_index([4, 8]),
    ),
    voice=score["viola polyrhythm voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (13,)),
    library.bow_staff(selector=trinton.select_leaves_by_index([0]), reset=True),
    voice=score["viola 2 voice"],
)

# cello music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 6)),
    evans.RhythmHandler(rhythm.rhythm_c(stage=4, instrument="cello", index=0)),
    evans.PitchHandler(["a,"]),
    trinton.rewrite_meter_command(boundary_depth=-1),
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.PitchHandler([["1/1", "69/64"]], as_ratios=True),
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 6)),
    evans.PitchHandler([["69/64", "6/5"]], as_ratios=True),
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 6)),
    # trinton.annotate_leaves_locally(selector=trinton.logical_ties(first=True)),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [0, 1, 4, 5, 8, 9, 14, 16, 18, 19, 21, 22, 25, 27, 29, 30, 32, 34, 37, 38]
        ),
    ),
    trinton.force_accidentals_command(
        selector=trinton.logical_ties(first=True, pitched=True, grace=False)
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")], selector=trinton.select_leaves_by_index([0])
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("pp"),
            abjad.Dynamic("ppp"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("ppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("p"),
            abjad.Dynamic("pp"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [1, 2, 4, 11, 11, 12, 20, 21, 33, 34, 35], first=True
        ),
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup { \column { \line { "diagonal bow," } \line { "touching bridge" } \line { "for added air sound" } } }""",
            r"""\markup { \column { \line { "MSP, 1/2 hair on strings" } \line { "1/2 hair on bridge" } } }""",
            r"""\markup { \column { \line { "all hair on bridge," } \line { "but allowing strings to ring" } } }""",
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 4, 4, 8, 8, 9], first=True, pitched=True
        ),
        style="solid-line-with-arrow",
        padding=15,
        right_padding=0,
        direction=None,
        full_string=True,
        end_hook=True,
        end_hook_right_padding=0,
        command="One",
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 1""",
        ],
    ),
    trinton.spanner_command(
        strings=[
            r"\markup {}",
            r"""\markup { \column { \line { "diagonal bow," } \line { "touching bridge" } \line { "for added air sound" } } }""",
        ],
        selector=trinton.select_logical_ties_by_index(
            [9, 14], first=True, pitched=True
        ),
        style="solid-line-with-arrow",
        padding=15,
        right_padding=0,
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

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 12)),
    evans.RhythmHandler(rhythm.rhythm_d(instrument="cello", stage=4, index=1)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler(["aqs,"]),
    trinton.pitch_with_selector_command(
        pitch_list=["gs,"],
        selector=trinton.patterned_tie_index_selector([3, 5, 6, 9, 12], 15),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["gs,"], selector=trinton.select_logical_ties_by_index([-1])
    ),
    # trinton.annotate_leaves_locally(selector=abjad.select.leaves),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [
                0,
                4,
                5,
                12,
                17,
                20,
                22,
                25,
                26,
                30,
                31,
                37,
                38,
                40,
                42,
                43,
                45,
                49,
                50,
                54,
                55,
                62,
                66,
                74,
            ]
        ),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.BeamCount(left=1, right=2),
                abjad.BeamCount(left=2, right=1),
            ]
        ),
        selector=trinton.select_leaves_by_index(
            [
                1,
                3,
                27,
                29,
                51,
                53,
            ]
        ),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.BeamCount(left=1, right=3),
                abjad.BeamCount(left=3, right=1),
            ]
        ),
        selector=trinton.select_leaves_by_index(
            [
                6,
                8,
                46,
                48,
                56,
                58,
                71,
                73,
            ]
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\big-half-harmonic", site="before"),
        ],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
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
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 8)),
    trinton.aftergrace_command(
        invisible=True,
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
    ),
    trinton.continuous_glissando(zero_padding=True),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                evans.make_fancy_gliss(
                    1,
                    2,
                    1,
                ),
                evans.make_fancy_gliss(1, 1, 1, 2, 1),
            ]
        ),
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.spanner_command(
        strings=[
            r' "(Ord.)" ',
            r"""MSP""",
        ],
        selector=trinton.select_logical_ties_by_index(
            [6, 11], first=True, pitched=True
        ),
        style="solid-line-with-arrow",
        padding=12,
        right_padding=0,
        direction=None,
        full_string=True,
        command="One",
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 2""",
        ],
    ),
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9, 12)),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(
            evans.talea(
                [
                    1,
                    1,
                    -3,
                    1,
                    1,
                    1,
                    -2,
                    4,
                    1,
                    -1,
                    4,
                    1,
                    1,
                    1,
                    2,
                    1,
                    1,
                    1,
                    5,
                    1,
                    -3,
                    1,
                    1,
                    1,
                    1,
                    -2,
                    1,
                    1,
                    1,
                    1,
                    -6,
                    1000,
                ],
                16,
            )
        ),
        direction=abjad.DOWN,
        voice_name="cello legno voice",
    ),
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9, 12)),
    trinton.aftergrace_command(
        invisible=True,
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
    ),
    trinton.continuous_glissando(zero_padding=True),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                evans.make_fancy_gliss(
                    1,
                    2,
                    1,
                ),
                evans.make_fancy_gliss(1, 1, 1, 2, 1),
            ]
        ),
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.hooked_spanner_command(
        string=r' "(MSP)" ',
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
    voice=score["cello 2 voice temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9, 12)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    trinton.pitch_with_selector_command(
        pitch_list=["b,,"],
        selector=trinton.logical_ties(pitched=True),
    ),
    # trinton.annotate_leaves_locally(
    #     # selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    #     # selector=abjad.select.leaves,
    #     selector=trinton.pleaves(),
    # ),
    trinton.change_notehead_command(
        notehead="cross",
        selector=trinton.durational_selector(
            durations=[abjad.Duration((1, 16))],
            preselector=trinton.logical_ties(pitched=True, grace=False),
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("staccato")],
        selector=trinton.durational_selector(
            durations=[abjad.Duration((1, 16))],
            preselector=trinton.logical_ties(pitched=True, grace=False),
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
            [0, 6, 7, 11, 13, 16, 17, 20, 22, 28, 29, 36, 38, 39],
            grace=False,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BeamCount(left=2, right=1),
            abjad.BeamCount(left=1, right=2),
        ],
        selector=trinton.select_leaves_by_index(
            [
                32,
                33,
            ],
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = #-10", site="before"
            ),
        ],
        selector=abjad.select.rests,
    ),
    # trinton.manual_beam_positions(
    #     positions=(-12, -10.5), selector=trinton.select_leaves_by_index([0, 3])
    # ),
    trinton.hooked_spanner_command(
        string="""CLDP""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True, grace=False),
        padding=12,
        direction="down",
        right_padding=21,
        full_string=False,
        style="dashed-line-with-up-hook",
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
    voice=score["cello legno voice"],
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
    fermata="very-short-fermata",
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
    ["violin 2 voice", "violin 4 voice", "viola 2 voice", "cello 2 voice"],
    [2, 1, 5, 3],
    [-7, 0, 0, -3.5],
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
        "violin 1 vibrator voice",
        "violin 4 voice temp",
        "viola 2 voice",
        "cello 2 voice",
    ],
    [11, 15, 15, 10.75],
    [
        13,
        5,
        6,
        11,
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

for measure in [
    1,
    3,
    5,
    7,
    9,
    11,
    12,
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

for measure in [2, 4, 6, 8, 10]:
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
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (-7 20 15 32)))",
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
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (-7 20 15 32)))",
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
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (-7 28 23 28)))",
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
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (-7 30 30 30)))",
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

for measure in [1, 3]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[
                abjad.LilyPondLiteral(
                    r"\once \override BarNumber.Y-offset = #-12", site="before"
                )
            ],
            selector=trinton.select_leaves_by_index([0]),
        ),
        voice=score["Global Context"],
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
    segment_path="/Users/trintonprater/scores/patterns/patterns/sections/02",
    build_path="/Users/trintonprater/scores/patterns/patterns/build",
    segment_name="02",
    includes=[
        "/Users/trintonprater/scores/patterns/patterns/build/patterns-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
