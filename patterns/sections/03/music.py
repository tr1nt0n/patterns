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
        rhythm.rhythm_a(stage=2, extra_count=1),
    ),
    evans.PitchHandler(
        [
            "e''",
            "a'",
            "a'",
            ["a'", "e'"],
            "a'",
            ["a'", "d'"],
            ["a'", "d'"],
            "d'",
            "b'",
            "c''",
            ["c''", "e''"],
            "d''",
            ["e''", "f''"],
            "e''",
            "b'",
            "c''",
            ["d''", "g''"],
            ["d''", "g''"],
            ["e''", "g''"],
            "e'",
            "g'",
            "f'",
            ["a'", "d''"],
            "g'",
            ["a'", "b'"],
            "a'",
            "c''",
            "c''",
            "d''",
            "d''",
            "b'",
            "b'",
            "e''",
            ["e''", "g''"],
        ],
    ),
    # trinton.annotate_leaves_locally(
    #     selector=trinton.pleaves(),
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
        selector=trinton.select_leaves_by_index(
            [0, 2, 5, 10, 11, 17, 23, 27, 28, 37, 38, 43]
        ),
    ),
    trinton.manual_beam_positions(
        positions=(-5, -6),
        selector=trinton.select_leaves_by_index(
            [0, 2],
        ),
    ),
    trinton.manual_beam_positions(
        positions=(-6.5, -5.5),
        selector=trinton.select_leaves_by_index(
            [11, 17],
        ),
    ),
    trinton.manual_beam_positions(
        positions=(-8.5, -8.5),
        selector=trinton.select_leaves_by_index(
            [23, 27],
        ),
    ),
    trinton.manual_beam_positions(
        positions=(-9, -9),
        selector=trinton.select_leaves_by_index(
            [28, 37],
        ),
    ),
    trinton.manual_beam_positions(
        positions=(-8, -8),
        selector=trinton.select_leaves_by_index(
            [38, -1],
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BeamCount(left=3, right=1),
            abjad.BeamCount(left=1, right=3),
        ],
        selector=trinton.select_leaves_by_index([32, 33]),
    ),
    trinton.change_notehead_command(
        notehead="highest",
        selector=trinton.select_leaves_by_index([6, 13, 17, 25, 31], pitched=True),
    ),
    trinton.change_notehead_command(
        notehead="cross",
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                7,
                8,
                9,
                11,
                14,
                15,
                19,
                20,
                21,
                23,
                27,
                29,
                30,
            ],
            pitched=True,
        ),
    ),
    trinton.change_notehead_command(
        notehead="harmonic",
        selector=trinton.select_leaves_by_index(
            [
                2,
                4,
                26,
                28,
                32,
            ],
            pitched=True,
        ),
    ),
    trinton.change_notehead_command(
        notehead="cross",
        selector=trinton.notehead_selector(
            chord_indices=[
                0,
                1,
                3,
                4,
                5,
                7,
                8,
                9,
                10,
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
            ],
        ),
    ),
    trinton.change_notehead_command(
        notehead="harmonic",
        selector=trinton.notehead_selector(
            chord_indices=[
                0,
                1,
                3,
                4,
                7,
                9,
            ],
            head_indices_lists=[
                [1],
                [1],
                [1],
                [1],
                [1],
                [1],
            ],
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.patterned_tie_index_selector(
            [0, 3, 5, 6, 9, 12], 15, pitched=True, first=True, grace=False
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
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index([26, 27, 28, 29, 32, 33], pitched=True),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("p"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("ppp"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                6,
                11,
                12,
                12,
                14,
                19,
                25,
            ],
            pitched=True,
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(r"""\markup \fontsize #2 { \hspace #-8.5 { "F. Perc.:" } }""")
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.IntermittentVoiceHandler(
        rhythm_handler=evans.RhythmHandler(
            evans.talea(
                [
                    -2,
                    2,
                    -4,
                    2,
                    2,
                    -14,
                    10,
                    -17,
                    2,
                    8,
                    -6,
                    2,
                    -8,
                    2,
                    -9,
                    2,
                    1,
                    -1,
                    6,
                    -8,
                    1,
                    -9,
                    2,
                    -1000,
                ],
                32,
            )
        ),
        direction=abjad.UP,
        voice_name="violin 1 bow voice",
    ),
    voice=score["violin 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler(
        [
            ["f''"],
            ["a''"],
            ["a''"],
            ["g''"],
            ["f''"],
            ["a''"],
            ["a'"],
            ["a'"],
            ["b'"],
            ["b'"],
            ["g'"],
            ["e'"],
            ["d''"],
        ],
    ),
    # trinton.annotate_leaves_locally(
    #     selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    #     # selector=abjad.select.leaves,
    # ),
    trinton.duration_line(
        selector=trinton.select_logical_ties_by_index(
            [3, 5, 10], pitched=True, grace=False
        ),
    ),
    trinton.noteheads_only(selector=trinton.pleaves(grace=True)),
    trinton.change_notehead_command(
        notehead="cluster",
        selector=abjad.select.chords,
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.patterned_tie_index_selector(
            [0, 3, 5, 6, 9, 12], 15, pitched=True, first=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("staccato")],
        selector=trinton.durational_selector(
            preselector=trinton.logical_ties(pitched=True, grace=False),
            durations=[
                abjad.Duration((1, 16)),
                abjad.Duration((1, 8)),
                abjad.Duration((1, 32)),
            ],
            first=True,
        ),
        direction=abjad.DOWN,
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
            [0, 5, 7, 10, 12, 17, 18, 25, 26, 31, 33, 34, 35, -1], grace=False
        ),
    ),
    trinton.manual_beam_positions(
        positions=(8, 8),
        selector=trinton.select_leaves_by_index(
            [0, 5, 7, 10, 33, 34, 35, -1], grace=False
        ),
    ),
    trinton.manual_beam_positions(
        positions=(10.5, 10.5),
        selector=trinton.select_leaves_by_index([12, 17, 18, 25], grace=False),
    ),
    trinton.manual_beam_positions(
        positions=(9, 11.5),
        selector=trinton.select_leaves_by_index([26, 31], grace=False),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \fontsize #2 { \hspace #-4.5 \raise #2 { "Bow:" } }"""
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.hooked_spanner_command(
        string=r"""IV""",
        selector=trinton.select_leaves_by_index([0, 6], pitched=True),
        padding=0,
        direction=None,
        right_padding=1.5,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="One",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 2""",
            r"""- \tweak bound-details.left.Y #5.5""",
            r"""- \tweak bound-details.right.Y #7""",
        ],
    ),
    trinton.hooked_spanner_command(
        string=r"""III""",
        selector=trinton.select_leaves_by_index([7, 12], pitched=True),
        padding=13.5,
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
    trinton.hooked_spanner_command(
        string=r"""\markup \hspace #4 { "II" }""",
        selector=trinton.select_leaves_by_index([27, -1]),
        padding=10.5,
        direction=None,
        right_padding=4,
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
    voice=score["violin 1 bow voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    library.tablature_staff(
        selector=trinton.select_leaves_by_index([0]),
        reset=True,
        reset_staff_lines=5,
    ),
    voice=score["violin 2 voice"],
)

# second violin music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(
        rhythm.rhythm_a(stage=1),
    ),
    evans.PitchHandler(
        [
            ["b'", "d''"],
            ["c'", "d'"],
            "c'",
            ["d'", "g'"],
            "d'",
        ],
    ),
    library.tablature_staff(
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([3, 4]),
    ),
    trinton.change_notehead_command(
        notehead="highest",
        selector=trinton.select_leaves_by_index([2, -1], pitched=True),
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
            chord_indices=[0, 1, 2], head_indices_lists=[[1], [1], [1]]
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.patterned_tie_index_selector(
            [0, 3, 5, 6, 9, 12], 15, pitched=True, first=True, grace=False
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
    trinton.IntermittentVoiceHandler(
        rhythm_handler=evans.RhythmHandler(
            evans.talea(
                [
                    -2,
                    1,
                    -2,
                    1,
                    -2,
                    -4,
                    1,
                    -1,
                    1,
                    -1,
                    -100,
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
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("mf"), abjad.StartHairpin(">"), abjad.Dynamic("mp")],
        selector=trinton.select_leaves_by_index([0, 1, 3], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(r"""\markup \fontsize #2 { \hspace #-8.5 { "F. Perc.:" } }""")
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["violin 4 voice temp 1"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler(
        [
            ["a''"],
            ["g''"],
            ["g''"],
        ],
    ),
    trinton.change_notehead_command(
        notehead="cluster",
        selector=abjad.select.chords,
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.patterned_tie_index_selector(
            [0, 3, 5, 6, 9, 12], 15, pitched=True, first=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("staccato")],
        selector=trinton.durational_selector(
            preselector=trinton.logical_ties(pitched=True, grace=False),
            durations=[
                abjad.Duration((1, 16)),
                abjad.Duration((1, 8)),
                abjad.Duration((1, 32)),
            ],
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
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([0, 2, 3, 5, 7, 10]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \fontsize #2 { \hspace #-4.5 \raise #2 { "Bow:" } }"""
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.hooked_spanner_command(
        string=r"""III""",
        selector=trinton.select_leaves_by_index(
            [0, -1],
        ),
        padding=10.5,
        direction=None,
        right_padding=6,
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
    voice=score["violin 2 bow voice 1"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(rhythm.rhythm_b(instrument="violin 2", stage=3, index=3)),
    trinton.force_rest(selector=trinton.select_leaves_by_index([0, 1, 2, 3])),
    pitch.pitch_b(instrument="violin 2", base_pitch=7, index=10),
    trinton.octavation(
        octave=-1, selector=trinton.select_leaves_by_index([4, 8], pitched=True)
    ),
    trinton.respell_with_flats(
        selector=trinton.select_leaves_by_index([3, 7], pitched=True)
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
    trinton.change_notehead_command(
        notehead="harmonic",
        selector=trinton.select_leaves_by_index([5, 6, 7, 8], pitched=True),
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
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\big-half-harmonic", site="before")],
        selector=trinton.select_leaves_by_index([-1], pitched=True),
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
        rhythm.rhythm_a(stage=1, extra_count=-2),
    ),
    evans.PitchHandler(
        [
            ["c''", "f''"],
            "c''",
            ["c''", "d''"],
            "c''",
            ["e''", "g''"],
            "e''",
            ["e''", "f''"],
            "e''",
            ["a'", "e''"],
            "a'",
        ],
    ),
    library.tablature_staff(
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([2, 3, 4, 9, 10, -1]),
    ),
    trinton.change_notehead_command(
        notehead="highest",
        selector=trinton.patterned_tie_index_selector(
            [1], 2, first=True, pitched=True, grace=False
        ),
    ),
    trinton.change_notehead_command(
        notehead="cross",
        selector=trinton.notehead_selector(
            chord_indices=[0, 1, 2, 3, 4, 5],
            head_indices_lists=[[0], [0], [0], [0], [0], [0]],
        ),
    ),
    trinton.change_notehead_command(
        notehead="harmonic",
        selector=trinton.notehead_selector(
            chord_indices=[1, 2, 4, 5], head_indices_lists=[[1], [1], [1], [1]]
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.patterned_tie_index_selector(
            [3, 5, 6, 9, 12], 15, pitched=True, first=True, grace=False
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
    trinton.manual_beam_positions(
        positions=(-8, -8),
        selector=abjad.select.leaves,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(r"""\markup \fontsize #2 { \hspace #-11 { "Fng. Perc.:" } }""")
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("ppp")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=r"""IV""",
        selector=trinton.select_leaves_by_index([0, 1], pitched=True),
        padding=0,
        direction=None,
        right_padding=38,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="One",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 2""",
            r"""- \tweak bound-details.left.Y #0.5""",
            r"""- \tweak bound-details.right.Y #2.75""",
        ],
    ),
    voice=score["violin 4 voice"],
)

handler = trinton.IntermittentVoiceHandler(
    rhythm_handler=evans.RhythmHandler(
        evans.talea(
            [
                -4,
                -3,
                1,
                1,
                -1,
                1,
                1,
                2,
                -2,
                -4,
                2,
                -2,
                -100,
            ],
            32,
        )
    ),
    direction=abjad.UP,
    voice_name="violin 2 bow voice 2",
    temp_name="temp 2",
)

handler_selections = [abjad.select.tuplet(score["violin 4 voice"], _) for _ in [-2, -1]]

handler(handler_selections)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    # trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler(
        [
            ["g'"],
            ["b'"],
            ["f'"],
            ["c'"],
            ["a'"],
            ["e''"],
        ],
    ),
    trinton.change_notehead_command(
        notehead="cluster",
        selector=abjad.select.chords,
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.patterned_tie_index_selector(
            [3, 5, 6, 9, 12], 15, pitched=True, first=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("staccato")],
        selector=trinton.pleaves(),
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
        selector=trinton.select_leaves_by_index([0, 6, 7, -1]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BeamCount(left=3, right=1),
            abjad.BeamCount(left=1, right=3),
        ],
        selector=trinton.select_leaves_by_index([2, 3]),
    ),
    trinton.manual_beam_positions(
        positions=(6.5, 11),
        selector=trinton.select_leaves_by_index([0, 6]),
    ),
    trinton.manual_beam_positions(
        positions=(7, 7),
        selector=trinton.select_leaves_by_index([7, -1]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(r"""\markup \fontsize #2 { \hspace #-4.5 { "Bow:" } }""")
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["violin 2 bow voice 2"],
)


trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    library.tablature_staff(
        selector=trinton.select_leaves_by_index([0]),
        reset=True,
    ),
    voice=score["violin 4 voice"],
)

# viola music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.RhythmHandler(rhythm.rhythm_b(stage=1, instrument="viola", index=8)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    pitch.pitch_b(instrument="viola", base_pitch=0, index=12),
    trinton.attachment_command(
        attachments=[abjad.Clef("alto")],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.octavation(octave=-1, selector=trinton.select_logical_ties_by_index([0])),
    trinton.octavation(octave=1, selector=trinton.select_logical_ties_by_index([-1])),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
        invisible=True,
    ),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index([0, 1]),
        zero_padding=True,
    ),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index([2, 3]),
        zero_padding=True,
    ),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index([4, 5]),
        zero_padding=True,
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartSlur(), abjad.StopSlur()],
        selector=trinton.select_leaves_by_index([0, 3], pitched=True, grace=False),
        direction=abjad.DOWN,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(abjad.Articulation("talon-to-punta"), r"- \tweak padding #1"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
            ],
            first=True,
            grace=False,
        ),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.select_logical_ties_by_index(
            [0, 2, 3], first=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.select_logical_ties_by_index([4, 5], first=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\big-half-harmonic", site="before"),
        ],
        selector=trinton.select_logical_ties_by_index([2, 3], first=True, grace=False),
    ),
    trinton.change_notehead_command(
        notehead="harmonic",
        selector=trinton.select_leaves_by_index([9, 10], grace=False),
    ),
    trinton.change_notehead_command(
        notehead="harmonic-mixed",
        selector=trinton.select_leaves_by_index([6, 11], grace=False),
    ),
    trinton.spanner_command(
        strings=[
            r"\normale-bow-rotation",
            r"\bow-tip-half-up",
            r"\bow-tip-half-down",
            r"\bow-tip-up",
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                2,
                2,
                4,
                4,
                -1,
            ],
            first=True,
        ),
        style="solid-line-with-arrow",
        padding=10,
        tweaks=None,
        right_padding=0,
        direction=None,
        full_string=True,
        command="One",
    ),
    trinton.spanner_command(
        strings=[r"Spz.", r"1/2 Spz.", r"3/4 Spz."],
        selector=trinton.select_logical_ties_by_index([0, 2, 2, 4, 4, -1], first=True),
        style="solid-line-with-arrow",
        padding=12.5,
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
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic('"f"'),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">"),
            abjad.Dynamic('"pppp"'),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 2, 4, 4, 5, -1], first=True, pitched=True
        ),
    ),
    voice=score["viola 2 voice"],
    beam_meter=True,
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

for voice_name, padding, end_anchor in zip(
    [
        "violin 2 voice temp",
        "violin 4 voice",
        "viola 2 voice",
        "cello 2 voice",
    ],
    [15, 16.5, 14.5, 12.5],
    [12, 14, 2, 7],
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
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (13 34 30 28)))",
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
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (12 35 34 26)))",
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
