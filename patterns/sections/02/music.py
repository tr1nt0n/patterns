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
        evans.tuplet(
            [(2, 2, 4, 1, 1, 2), (8, 4, 3, 1, 4), (4, 1, 3, 2, 2), (8, 4, 4, 1, 3, 4)]
        )
    ),
    trinton.attachment_command(
        attachments=[abjad.Tie()],
        selector=trinton.select_leaves_by_index(
            [
                5,
                10,
            ]
        ),
    ),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([-1], pitched=True)
    ),
    evans.PitchHandler(
        [
            "c'''",
            "a",
            "c'''",
            "a''",
            "a",
            "b'",
            "f'",
            "e''",
            "c'",
            "c'''",
            "a''",
            "c'''",
            "d''",
            "a",
            "b",
            "c'''",
            "b'",
            "c'''",
            "a",
            "b",
            "e''",
        ]
    ),
    trinton.continuous_glissando(zero_padding=True, selector=trinton.pleaves()),
    trinton.hooked_spanner_command(
        string=r"""\markup { "CLT" }""",
        selector=trinton.select_logical_ties_by_index([0, 5], first=True, pitched=True),
        padding=6,
        direction=None,
        right_padding=10,
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
        string=r"""\markup { \hspace #12.5 "1/2 CLT" }""",
        selector=trinton.select_logical_ties_by_index([5, 6], first=True, pitched=True),
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
        string=r"""\markup { \hspace #-7.5 "CLT" }""",
        selector=trinton.select_leaves_by_index(
            [7, 10],
        ),
        padding=6,
        direction=None,
        right_padding=10,
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
        string=r"""\markup { \hspace #-5 "1/2 CLT" }""",
        selector=trinton.select_leaves_by_index(
            [11, 12],
        ),
        padding=6,
        direction=None,
        right_padding=-3,
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
        string=r"""\markup { \hspace #-3.5 "CLT" }""",
        selector=trinton.select_leaves_by_index(
            [12, 19],
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
        string=r"""\markup { \hspace #-2 "1/2 CLT" }""",
        selector=trinton.select_leaves_by_index(
            [20, 21],
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
        string=r"""\markup { "CLT" }""",
        selector=trinton.select_leaves_by_index(
            [21, -1],
        ),
        padding=6,
        direction=None,
        right_padding=1,
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
    voice=score["violin 1 voice"],
)

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
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("ppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("p"),
        ],
        selector=trinton.select_leaves_by_index([0, 7, 13, -1]),
        direction=abjad.UP,
    ),
    voice=score["violin 1 polyrhythm voice"],
)


trinton.make_music(
    lambda _: trinton.select_target(_, (5, 8)),
    evans.RhythmHandler(
        evans.talea(
            [
                -2,
                10,
                -6,
                6,
                -2,
                12,
                -4,
                5,
                1,
                -19,
                5,
                -5,
                7,
                8,
                -4,
                -8,
                -8,
                -8,
                -2,
                4,
                -1000,
            ],
            32,
        ),
    ),
    library.tablature_staff(
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.IntermittentVoiceHandler(
        rhythm_handler=evans.RhythmHandler(
            evans.talea(
                [
                    1,
                    -7,
                    1,
                    -3,
                    1,
                    -7,
                    1,
                    -3,
                    2,
                    2,
                    -1,
                    2,
                    -1,
                    4,
                    -2,
                    4,
                    1,
                    1,
                    2,
                    1,
                    6,
                    1,
                    1,
                    1,
                    3,
                    1,
                    1,
                    1,
                    -1000,
                ],
                16,
            )
        ),
        direction=abjad.UP,
        voice_name="violin 1 bow voice",
        temp_name="temp 1",
    ),
    voice=score["violin 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 8)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    trinton.aftergrace_command(
        slash=True,
        selector=trinton.logical_ties(exclude=[3, 4], pitched=True, grace=False),
        fraction=(15, 16),
    ),
    # trinton.annotate_leaves_locally(
    #     selector=abjad.select.leaves,
    #     # selector=trinton.logical_ties(first=True, pitched=True),
    #     direction=abjad.DOWN,
    # ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [0, 1, 4, 6, 7, 10, 11, 15, 16, 19, 21, 27, 28, 33, 36, 40],
            # grace=False,
        ),
    ),
    evans.PitchHandler(
        [
            "b'",
            "e'",
            "d''",
            "b'",
            "a'",
            "c'",
            "g'",
            "b'",
            "f''",
            "c''",
            "a'",
            "d''",
            "b'",
            "e'",
            "c'",
            "a",
        ],
    ),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                1,
            ],
            pitched=True,
        ),
        zero_padding=True,
    ),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index([2, 3], pitched=True),
        zero_padding=True,
    ),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index([4, 5], pitched=True),
        zero_padding=True,
    ),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index([6, 7], pitched=True),
        zero_padding=True,
    ),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index([8, 9], pitched=True),
        zero_padding=True,
    ),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index([10, 11], pitched=True),
        zero_padding=True,
    ),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index([12, 13], pitched=True),
        zero_padding=True,
    ),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index([14, 15], pitched=True),
        zero_padding=True,
    ),
    trinton.manual_beam_positions(
        positions=(-8, -8),
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                # 3,
                # 5,
                4,
                6,
                # 13,
                # 14,
                16,
                19,
            ],
            # grace=False,
        ),
    ),
    trinton.manual_beam_positions(
        positions=(-7, -8.5),
        selector=trinton.select_leaves_by_index([7, 10]),
    ),
    trinton.manual_beam_positions(
        positions=(-8, -10),
        selector=trinton.select_leaves_by_index([11, 15, 21, 27]),
    ),
    trinton.manual_beam_positions(
        positions=(-10.5, -10.5),
        selector=trinton.select_leaves_by_index([36, 40]),
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
        selector=trinton.select_leaves_by_index([33]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = #-9", site="before"
            )
        ],
        selector=trinton.select_leaves_by_index([33]),
    ),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\big-half-harmonic", site="before")],
        selector=trinton.select_logical_ties_by_index(
            [0, 5, 6, 7], first=True, pitched=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\grace-half-harmonic", site="before")],
        selector=trinton.select_leaves_by_index([0, 3, 4, 5], pitched=True, grace=True),
    ),
    trinton.change_notehead_command(
        notehead="harmonic",
        selector=trinton.select_leaves_by_index(
            [3, 5, 6, 10, 11, 12, 13], pitched=True
        ),
    ),
    library.tablature_trill(
        trill_pitch="g'",
        selector=trinton.select_logical_ties_by_index([0, 1], first=True, pitched=True),
        bound_details=(-4, -3),
        direction=abjad.DOWN,
    ),
    library.tablature_trill(
        trill_pitch="a'",
        selector=trinton.select_logical_ties_by_index([2, 3], first=True, pitched=True),
        bound_details=(-4, -4),
        direction=abjad.DOWN,
    ),
    library.tablature_trill(
        trill_pitch="e'",
        selector=trinton.select_logical_ties_by_index([4, 5], first=True, pitched=True),
        bound_details=(-4, -5.5),
        direction=abjad.DOWN,
    ),
    library.tablature_trill(
        trill_pitch="e'",
        selector=trinton.select_logical_ties_by_index([6, 7], first=True, pitched=True),
        bound_details=(-4, -4),
        direction=abjad.DOWN,
    ),
    library.tablature_trill(
        trill_pitch="c''",
        selector=trinton.select_logical_ties_by_index([8, 9], first=True, pitched=True),
        bound_details=(-4.5, -5),
        direction=abjad.DOWN,
    ),
    library.tablature_trill(
        trill_pitch="d'",
        selector=trinton.select_logical_ties_by_index(
            [10, 11], first=True, pitched=True
        ),
        bound_details=(-6, -6),
        direction=abjad.DOWN,
    ),
    library.tablature_trill(
        trill_pitch="g'",
        selector=trinton.select_logical_ties_by_index(
            [12, 13], first=True, pitched=True
        ),
        bound_details=(-4, -4),
        direction=abjad.DOWN,
    ),
    library.tablature_trill(
        trill_pitch="g",
        selector=trinton.select_logical_ties_by_index(
            [14, 15], first=True, pitched=True
        ),
        bound_details=(-6.5, -6.5),
        direction=abjad.DOWN,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \fontsize #2 { \hspace #-10 \lower #2 { "Fng. Perc.:" } }"""
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("p"),
            abjad.Dynamic("pp"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                4,
                5,
                6,
            ],
            first=True,
            pitched=True,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                rf"\once \override DynamicLineSpanner.padding = #{_}", site="before"
            )
            for _ in [2.5, 2, 2.5]
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                4,
                6,
            ],
            first=True,
            pitched=True,
        ),
    ),
    voice=score["violin 2 voice temp 1"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 8)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler(
        [
            ["a''"],
            ["a''"],
            ["f''"],
            ["d''"],
            ["d''"],
            ["c''"],
            ["b'"],
            ["g'"],
            ["f''"],
            ["e'"],
            ["e'"],
            ["c'"],
            ["e'"],
            ["g'"],
            ["a'"],
            ["b'"],
            ["c''"],
            ["d''"],
            ["e''"],
            ["f''"],
            ["g''"],
        ],
    ),
    trinton.change_notehead_command(
        notehead="cluster",
        selector=abjad.select.chords,
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
        selector=trinton.select_leaves_by_index(
            [0, 1, 3, 5, 6, 8, 10, 11, 12, 17, 19, 20, 21, 26, 28, 31, 32, 36]
        ),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.BeamCount(left=2, right=1),
                abjad.BeamCount(left=1, right=2),
            ]
        ),
        selector=trinton.select_leaves_by_index([33, 34]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Articulation("staccato"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
        ],
        selector=trinton.durational_selector(
            durations=[abjad.Duration((1, 16)), abjad.Duration((1, 8))],
            preselector=trinton.logical_ties(pitched=True, grace=False),
            first=True,
        ),
        direction=abjad.DOWN,
    ),
    # trinton.annotate_leaves_locally(
    #     # selector=trinton.logical_ties(first=True, pitched=True)
    #     selector=abjad.select.leaves,
    # ),
    trinton.manual_beam_positions(
        positions=(7, 7), selector=trinton.select_leaves_by_index([12, 17, 21, 26])
    ),
    trinton.duration_line(
        selector=trinton.select_logical_ties_by_index(
            [7, 8, 13, 17], pitched=True, grace=False
        ),
        color=r"(css-color 'darkred)",
    ),
    trinton.noteheads_only(selector=trinton.pleaves(grace=True)),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(
                    r"""\markup \fontsize #2 { \hspace #-4.5 \raise #2 { "Bow:" } }"""
                ),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup { \hspace #-8 "IV" }""",
        selector=trinton.select_leaves_by_index(
            [0, -1],
        ),
        padding=9.1,
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
    library.color_voice(),
    voice=score["violin 1 bow voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9, 12)),
    evans.RhythmHandler(rhythm.rhythm_c(stage=4, instrument="violin 1", index=0)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler(
        [
            "c'",
            "c'",
            ["c'", "ef'"],
            "c'",
            "c'",
            ["c'", "ef'"],
            "c'",
            "c'",
            ["c'", "ef'"],
            "c'",
            ["c'", "f'"],
        ]
    ),
    trinton.aftergrace_command(
        invisible=True,
        selector=trinton.select_leaves_by_index([-1], pitched=True, grace=False),
    ),
    library.attach_gamelan_scale_cent_markups(
        scale_degrees=[3],
        selector=trinton.select_leaves_by_index([0, 1, 3, 4, 6, 7, 9], pitched=True),
    ),
    library.attach_gamelan_scale_cent_markups(
        scale_degrees=[[5, 3]],
        selector=trinton.select_leaves_by_index(
            [
                2,
            ],
            pitched=True,
            grace=False,
        ),
    ),
    library.attach_gamelan_scale_cent_markups(
        scale_degrees=[[6, 3]],
        selector=trinton.select_leaves_by_index(
            [
                5,
                8,
            ],
            pitched=True,
            grace=False,
        ),
    ),
    library.attach_gamelan_scale_cent_markups(
        scale_degrees=[[8, 3]],
        selector=trinton.select_leaves_by_index([10], pitched=True, grace=False),
    ),
    # trinton.annotate_leaves_locally(selector=abjad.select.leaves),
    trinton.force_accidentals_command(
        selector=trinton.logical_ties(first=True, pitched=True, grace=False)
    ),
    library.tablature_staff(
        selector=trinton.select_leaves_by_index([0]), reset_staff_lines=5, reset=True
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [0, 1, 5, 8, 9, 12, 17, 20], grace=False
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BeamCount(left=2, right=1),
            abjad.BeamCount(left=1, right=2),
        ],
        selector=trinton.select_leaves_by_index([10, 11], grace=False),
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("pp")],
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
    ),
    trinton.hooked_spanner_command(
        string="""Bowing IV (molto tasto) + Waist""",
        selector=trinton.select_leaves_by_index([0, 1], pitched=True, grace=False),
        padding=7,
        direction=None,
        right_padding=2,
        full_string=False,
        style="dashed-line-with-hook",
        command="One",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 1""",
        ],
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \hspace #-4 { \column { \line { "Diagonal bow," } \line { "touching bridge" } } }""",
        selector=trinton.select_leaves_by_index(
            [6, 7, 12, 13, 18, 19],
        ),
        padding=11,
        direction=None,
        right_padding=0,
        full_string=True,
        style="dashed-line-with-hook",
        command="One",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size -2""",
        ],
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \column { \line { "Diagonal bow," } \line { "touching bridge" } }""",
        selector=trinton.select_leaves_by_index(
            [22, 23],
        ),
        padding=11,
        direction=None,
        right_padding=0,
        full_string=True,
        style="dashed-line-with-hook",
        command="One",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size -2""",
        ],
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \column { \line { "IV + Waist" } { "molto tasto" } }""",
        selector=trinton.select_leaves_by_index([8, 10, 14, 16]),
        padding=9,
        direction=None,
        right_padding=2,
        full_string=True,
        style="dashed-line-with-hook",
        command="One",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size -1""",
        ],
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \column { \line { "IV + Waist" } { "molto tasto" } }""",
        selector=trinton.select_leaves_by_index([19, 21]),
        padding=7.5,
        direction=None,
        right_padding=2,
        full_string=True,
        style="dashed-line-with-hook",
        command="One",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size -1""",
        ],
    ),
    voice=score["violin 2 voice"],
)

# second violin music

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 12)),
    evans.RhythmHandler(
        evans.tuplet(
            [
                (8, 1, 3),
                (1, 1, 4),
                (15, 1, 8),
                (4, 3, 1, 4, 2, 2, 4),
                (1, 2),
                (2, 1, 1, 2, 2, 1, 1, 2),
            ]
        )
    ),
    trinton.attachment_command(
        attachments=[abjad.Tie()],
        selector=trinton.select_leaves_by_index(
            [
                5,
                15,
            ]
        ),
    ),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([-1], pitched=True)
    ),
    evans.PitchHandler(
        [
            "e''",
            "c'''",
            "a",
            "f''",
            "a",
            "c'''",
            "a'",
            "c'''",
            "a",
            "c'''",
            "a",
            "c'''",
            "a",
            "c'",
            "a",
            "e'",
            "a",
            "c'''",
            "a",
            "c'''",
            "a",
            "c'''",
            "a",
            "c'''",
            "a",
            "c'''",
        ]
    ),
    trinton.continuous_glissando(zero_padding=True, selector=trinton.pleaves()),
    trinton.hooked_spanner_command(
        string=r"""\markup { "1/2 CLT" }""",
        selector=trinton.select_leaves_by_index([0, 1], pitched=True),
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
        string=r"""\markup { "CLT" }""",
        selector=trinton.select_leaves_by_index([1, 5], pitched=True),
        padding=6,
        direction=None,
        right_padding=15,
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
        string=r"""\markup { \hspace #19 "1/2 CLT" }""",
        selector=trinton.select_leaves_by_index([5, 6], pitched=True),
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
        string=r"""\markup { "CLT" }""",
        selector=trinton.select_leaves_by_index([6, 13], pitched=True),
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
        selector=trinton.select_leaves_by_index([13, 15], pitched=True),
        padding=6,
        direction=None,
        right_padding=3,
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
        string=r"""\markup { \hspace #4 "CLT" }""",
        selector=trinton.select_leaves_by_index([15, -1], pitched=True),
        padding=6,
        direction=None,
        right_padding=1,
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
        selector=trinton.select_leaves_by_index([4, 6]),
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
        direction=abjad.UP,
    ),
    voice=score["violin 2 polyrhythm voice"],
)


# viola music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 4)),
    evans.RhythmHandler(
        evans.talea(
            [
                4,
                3,
                5,
                4,
                8,
                4,
                7,
                5,
                1,
                7,
                1,
                3,
                6,
                16,
            ],
            16,
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
        lines=1,
        selector=trinton.select_leaves_by_index([0]),
        invisible_barlines=False,
        clef="percussion",
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [
                2,
                3,
                10,
                12,
                14,
                15,
                17,
                18,
            ]
        ),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index([0, 4, 5, 6, 7, 11, 14, 16, 17, 19]),
    ),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
        invisible=True,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic('"f"'),
            abjad.StartHairpin(">"),
            abjad.Dynamic('"ppp"'),
            abjad.StartHairpin("<"),
            abjad.Dynamic('"f"'),
            abjad.StartHairpin(">o"),
            abjad.StartHairpin("o<"),
            abjad.Dynamic('"f"'),
            abjad.StartHairpin(">"),
            abjad.Dynamic('"ppp"'),
            abjad.StartHairpin("--"),
            abjad.Dynamic('"f"'),
            abjad.Dynamic('"p"'),
            abjad.StartHairpin(">o"),
            abjad.Dynamic('"ff"'),
            abjad.Dynamic('"mp"'),
            abjad.StartHairpin(">o"),
            abjad.StartHairpin("o<"),
            abjad.Dynamic('"mp"'),
            abjad.StartHairpin("<"),
            abjad.Dynamic('"fff"'),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 1, 2, 3, 4, 4, 5, 6, 6, 7, 7, 8, 9, 9, 10, 11, 11, 12, 13, 13, -1],
            first=True,
            pitched=True,
        ),
    ),
    trinton.hooked_spanner_command(
        string=r"Tailpiece",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=3.5,
        direction=None,
        right_padding=0,
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
    voice=score["viola 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 8)),
    evans.RhythmHandler(
        evans.talea([4, 4, 4, 4, 4, 4, 4, 1, 3, 3, 1, 4, 4, 4, 4, 4, 4, 4, -1000], 16),
    ),
    trinton.rewrite_meter_command(boundary_depth=-1),
    trinton.aftergrace_command(
        slash=True,
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
    ),
    evans.PitchHandler(
        [
            "dqs''",
            "a'",
            "gqf''",
            "d''",
            "fs'",
            "f'",
            "gqs''",
            "a''",
            "dqs'''",
            "fs'''",
            "cqs'''",
            "gs''",
            "cqf'''",
            "fs''",
            "e'''",
            "a'''",
            "bqs'",
            "af'",
            "gqs'",
        ]
    ),
    trinton.change_lines(lines=5, clef="alto", invisible_barlines=False),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\revert Staff.Clef.stencil", site="before")
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.change_notehead_command(
        notehead="harmonic",
        selector=trinton.patterned_tie_index_selector([1], 2, first=True, pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\grace-half-harmonic", site="before"),
        ],
        selector=trinton.pleaves(grace=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("treble")],
        selector=trinton.select_logical_ties_by_index([6], first=True, pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.StartBeam(),
                abjad.StopBeam(),
            ]
        ),
        selector=trinton.select_leaves_by_index(
            [
                2,
                3,
                9,
                10,
                11,
                12,
            ]
        ),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index(
            [
                0,
                7,
                8,
                13,
                14,
                -1,
            ]
        ),
    ),
    trinton.continuous_glissando(
        selector=trinton.pleaves(),
        tweaks=[
            abjad.Tweak(r"- \tweak thickness #1.5"),
            abjad.Tweak(r"- \tweak bound-details.right.arrow ##t"),
        ],
    ),
    trinton.spanner_command(
        strings=[
            r"\bow-tip-half-up",
            r"\normale-bow-rotation",
        ],
        selector=trinton.select_logical_ties_by_index([0, 5], first=True),
        style="solid-line-with-arrow",
        padding=9,
        tweaks=None,
        right_padding=0,
        direction=None,
        full_string=True,
        command="One",
        end_hook=False,
        end_hook_right_padding=0,
    ),
    trinton.spanner_command(
        strings=[r"1/2 Spz.", r"Norm."],
        selector=trinton.select_logical_ties_by_index([0, 5], first=True, pitched=True),
        style="solid-line-with-arrow",
        padding=11.5,
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
            abjad.Dynamic("ppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("p"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("ppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("p"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                1,
                5,
                6,
                10,
                12,
                15,
                16,
                -1,
            ],
            first=True,
            pitched=True,
        ),
    ),
    voice=score["viola 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 8)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\big-half-harmonic", site="before"),
        ],
        selector=trinton.patterned_tie_index_selector(
            [0], 2, first=True, pitched=True, grace=False
        ),
    ),
    voice=score["viola 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9, 12)),
    evans.RhythmHandler(rhythm.rhythm_e(index=22)),
    pitch.pitch_e(instrument="viola", index=0),
    # trinton.annotate_leaves_locally(selector=trinton.pleaves(), direction=abjad.UP),
    trinton.octavation(
        octave=1,
        selector=trinton.select_leaves_by_index(
            [4, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19]
        ),
    ),
    trinton.octavation(octave=-1, selector=trinton.select_leaves_by_index([7])),
    trinton.respell_with_flats(selector=trinton.select_leaves_by_index([4])),
    trinton.hooked_spanner_command(
        string="""1/2 CLB""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=12,
        direction=None,
        right_padding=5,
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
        evans.RhythmHandler(rhythm.rhythm_e(index=20, lower_voice=True)),
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
        selector=trinton.logical_ties(
            first=True, pitched=True, exclude=[4, 9, 10, 11, 12, 13, 14]
        ),
        direction=abjad.DOWN,
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("staccato")],
        selector=trinton.select_leaves_by_index([4, 9, 10, 11, 12, 13, 14]),
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("ppp")],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.DOWN,
    ),
    voice=score["viola 2 voice temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9, 12)),
    pitch.pitch_e(instrument="viola", index=-7),
    # trinton.annotate_leaves_locally(selector=trinton.pleaves(), direction=abjad.DOWN),
    trinton.octavation(
        octave=1,
        selector=trinton.select_leaves_by_index([11, 12, 14, 15, 16]),
    ),
    trinton.octavation(
        octave=-1,
        selector=trinton.select_leaves_by_index([0, 6]),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("staccato")],
        selector=trinton.logical_ties(
            first=True, pitched=True, exclude=[3, 7, 8, 9, 10, 11, 12]
        ),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("staccato")],
        selector=trinton.select_leaves_by_index([3, 7, 8, 9, 10, 11, 12]),
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("alto")], selector=trinton.select_leaves_by_index([0])
    ),
    voice=score["viola polyrhythm voice"],
)

# cello music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 6)),
    evans.RhythmHandler(rhythm.rhythm_c(stage=4, instrument="cello", index=0)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.PitchHandler([["a,", "bqf,"]]),
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.PitchHandler([["bqf,", "c"]]),
    library.attach_gamelan_scale_cent_markups(
        scale_degrees=[[3, 1]], selector=trinton.pleaves(grace=False)
    ),
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 6)),
    evans.PitchHandler([["g,", "c"]]),
    library.attach_gamelan_scale_cent_markups(
        scale_degrees=[[3, 10]], selector=trinton.pleaves(grace=False)
    ),
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
        padding=13.5,
        right_padding=0,
        direction=None,
        full_string=True,
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
            r"\markup {}",
            r"""\markup { \column { \line { "diagonal bow," } \line { "touching bridge" } \line { "for added air sound" } } }""",
        ],
        selector=trinton.select_logical_ties_by_index(
            [9, 14], first=True, pitched=True
        ),
        style="solid-line-with-arrow",
        padding=13.5,
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
        pitch_list=[
            ["gs,", "aqs,"],
            ["gs,", "bqs,"],
            ["gs,", "cqf"],
            ["gs,", "c"],
            ["gs,", "cs"],
            ["gs,", "dqf"],
            ["gs,", "d"],
            ["gs,", "e"],
            ["gs,", "eqs"],
        ],
        selector=trinton.patterned_tie_index_selector([3, 5, 6, 9, 12], 15),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=[["gs,", "fqf"]],
        selector=trinton.select_logical_ties_by_index([-1]),
    ),
    # trinton.attachment_command(
    #     attachments=[abjad.Arpeggio()],
    #     selector=trinton.patterned_tie_index_selector(
    #         [3, 5, 6, 9, 12], 15, first=True, pitched=True
    #     ),
    # ),
    # trinton.attachment_command(
    #     attachments=[abjad.Arpeggio()],
    #     selector=trinton.select_logical_ties_by_index([-1], first=True, pitched=True),
    # ),
    library.double_muting(),
    trinton.force_accidentals_command(
        selector=trinton.patterned_tie_index_selector(
            [3, 5, 6, 9, 12], 15, first=True, pitched=True
        ),
    ),
    trinton.force_accidentals_command(
        selector=trinton.select_logical_ties_by_index([-1], first=True, pitched=True),
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
        selector=trinton.pleaves(grace=False),
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
    trinton.spanner_command(
        strings=[
            r' "(Ord.)" ',
            r"""MSP""",
        ],
        selector=trinton.select_logical_ties_by_index(
            [6, -1], first=True, pitched=True
        ),
        style="solid-line-with-arrow",
        padding=13,
        right_padding=2,
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
    trinton.hooked_spanner_command(
        string=r' "(MSP)" ',
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=13.5,
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
        attachments=[
            abjad.bundle(
                abjad.Articulation("staccato"),
                r"""- \tweak color #(css-color 'darkred)""",
            )
        ],
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
        string="""CLB OB""",
        selector=trinton.select_leaves_by_index(
            [0, 4, 9, 11, 14, 16, 19, 27], pitched=True, grace=False
        ),
        padding=12,
        direction="down",
        right_padding=2,
        full_string=False,
        style="dashed-line-with-up-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 0""",
            r"""- \tweak color #(css-color 'darkred)""",
            # r"- \tweak Y-extent ##f",
            # r"- \tweak Y-offset -12",
            # r"""- \tweak bound-details.left.Y #-10.5""",
            # r"""- \tweak bound-details.right.Y #-6.5""",
        ],
    ),
    trinton.hooked_spanner_command(
        string="""CLB OB""",
        selector=trinton.select_leaves_by_index(
            [
                7,
                8,
            ],
            pitched=True,
            grace=False,
        ),
        padding=12,
        direction="down",
        right_padding=-1,
        full_string=False,
        style="dashed-line-with-up-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 0""",
            r"""- \tweak color #(css-color 'darkred)""",
            # r"- \tweak Y-extent ##f",
            # r"- \tweak Y-offset -12",
            # r"""- \tweak bound-details.left.Y #-10.5""",
            # r"""- \tweak bound-details.right.Y #-6.5""",
        ],
    ),
    trinton.hooked_spanner_command(
        string="""CLT DP""",
        selector=trinton.select_leaves_by_index(
            [12, 13, 17, 18], pitched=True, grace=False
        ),
        padding=12,
        direction="down",
        right_padding=2,
        full_string=False,
        style="dashed-line-with-up-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 0""",
            r"""- \tweak color #(css-color 'darkred)""",
            # r"- \tweak Y-extent ##f",
            # r"- \tweak Y-offset -12",
            # r"""- \tweak bound-details.left.Y #-10.5""",
            # r"""- \tweak bound-details.right.Y #-6.5""",
        ],
    ),
    trinton.hooked_spanner_command(
        string="""CLT DP""",
        selector=trinton.select_leaves_by_index(
            [5, 7, 8, 9], pitched=True, grace=False
        ),
        padding=12,
        direction="down",
        right_padding=-1,
        full_string=False,
        style="dashed-line-with-up-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 0""",
            r"""- \tweak color #(css-color 'darkred)""",
            # r"- \tweak Y-extent ##f",
            # r"- \tweak Y-offset -12",
            # r"""- \tweak bound-details.left.Y #-10.5""",
            # r"""- \tweak bound-details.right.Y #-6.5""",
        ],
    ),
    trinton.hooked_spanner_command(
        string="""CLT DP""",
        selector=trinton.select_leaves_by_index([28, -1], pitched=True, grace=False),
        padding=12,
        direction="down",
        right_padding=30,
        full_string=False,
        style="dashed-line-with-up-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 0""",
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
    ["violin 1 voice", "violin 4 voice", "viola 2 voice", "cello 2 voice"],
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
        "violin 1 bow voice",
        "violin 4 voice temp",
        "viola 2 voice",
        "cello 2 voice",
    ],
    [10, 13, 13.5, 18],
    [
        12,
        5,
        8,
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
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (11 17 17 15 30)))",
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
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (14 17 17 12 30)))",
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
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (11 35 26 32)))",
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
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (6 23.5 22.5 25.5 30.5)))",
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
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (10 17 16 27 28)))",
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
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (10 15 14 32 28)))",
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
