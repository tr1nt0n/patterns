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
        evans.talea(
            [
                14,
                2,
                2,
                2,
                3,
                1,
                3,
                1,
                3,
                1,
                3,
                1,
                3,
                1,
                3,
                1,
                1,
                1,
                1,
                1,
                1,
                1,
                1,
                6,
                4,
                1,
                -1000,
            ],
            16,
        ),
    ),
    evans.PitchHandler(
        [
            "b'",
            "b'",
            "d''",
            "a",
            "d''",
            "g'",
            "d''",
            "g'",
            "d''",
            "g'",
            "d''",
            "g'",
            "d''",
            "g'",
            "d''",
            "g'",
            "a",
            "e'",
            "b",
            "f'",
            "c'",
            "g'",
            "d'",
            "a'",
            "d''",
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
        selector=trinton.patterned_tie_index_selector([0], 3, first=True, pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\big-half-harmonic", site="before"),
        ],
        selector=trinton.patterned_tie_index_selector([2], 3, first=True, pitched=True),
    ),
    trinton.hooked_spanner_command(
        string="""Slide""",
        selector=trinton.select_leaves_by_index([0, -1], grace=False),
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
                    4,
                    16,
                    3,
                    1,
                    3,
                    1,
                    3,
                    1,
                    3,
                    1,
                    3,
                    1,
                    3,
                    1,
                    8,
                    12,
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
    lambda _: trinton.select_target(_, (4,)),
    library.tablature_staff(selector=trinton.select_leaves_by_index([0]), reset=True),
    voice=score["violin 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    trinton.aftergrace_command(
        invisible=True,
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[abjad.Tie()], selector=trinton.select_leaves_by_index([0])
    ),
    evans.PitchHandler(
        [
            "d''",
            "f''",
            "f''",
            "f''",
            "g''",
            "f''",
            "a''",
            "g''",
            "a''",
            "a''",
            "a''",
            "a''",
            "a''",
            "g''",
            "d''",
            "a''",
        ]
    ),
    trinton.noteheads_only(
        selector=trinton.select_leaves_by_index([0], pitched=True),
        stem=True,
        no_ledgers=True,
    ),
    trinton.noteheads_only(selector=trinton.pleaves(exclude=[0]), no_ledgers=True),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 12, 13, 14, 15], pitched=True
        ),
        zero_padding=True,
    ),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index(
            [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], pitched=True
        ),
        zero_padding=True,
        tweaks=[
            abjad.Tweak(r"- \tweak thickness #1.5"),
            abjad.Tweak(r"- \tweak bound-details.right.arrow ##t"),
        ],
    ),
    trinton.change_notehead_command(
        notehead="harmonic",
        selector=trinton.select_logical_ties_by_index(
            [2, 4, 6, 8, 10, 12, 13, 14], first=True, pitched=True, grace=False
        ),
    ),
    trinton.hooked_spanner_command(
        string="""Vib. on III + IV""",
        selector=trinton.select_leaves_by_index(
            [0, -1],
        ),
        padding=9,
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
        ],
    ),
    voice=score["violin 1 vibrator voice"],
)

# second violin music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.talea([1, -1000], 1)),
    trinton.rewrite_meter_command(boundary_depth=-2),
    trinton.change_lines(
        clef="percussion",
        lines=1,
        invisible_barlines=False,
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ff"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_logical_ties_by_index([0, 0, -1], first=True),
    ),
    trinton.hooked_spanner_command(
        string=r"""Vib. on Jawharp""",
        selector=trinton.select_logical_ties_by_index([0, -1], first=True),
        style="dashed-line-with-hook",
        padding=3,
        right_padding=0,
        direction=None,
        full_string=False,
        command="One",
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 1""",
        ],
    ),
    voice=score["violin 4 voice"],
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
    trinton.change_lines(
        clef="treble",
        lines=5,
        invisible_barlines=False,
        selector=trinton.select_leaves_by_index([0], pitched=True),
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
            abjad.Articulation(">"),
            abjad.Articulation("tenuto"),
            abjad.Articulation("tenuto"),
        ],
        selector=trinton.select_leaves_by_index([0, 5, 9], pitched=True),
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
            abjad.Dynamic('"f"'),
            abjad.StartHairpin("|>"),
            abjad.Dynamic('"mp"'),
            abjad.StartHairpin(">"),
            abjad.Dynamic('"p"'),
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
    evans.RhythmHandler(evans.talea([-1, 1000], 2)),
    trinton.rewrite_meter_command(boundary_depth=-2),
    trinton.aftergrace_command(
        selector=trinton.logical_ties(pitched=True), invisible=True
    ),
    trinton.change_lines(
        clef="percussion",
        lines=1,
        invisible_barlines=False,
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ppp"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, -1], first=True, pitched=True
        ),
    ),
    trinton.hooked_spanner_command(
        string=r"""Vib. on Jawharp""",
        selector=trinton.select_logical_ties_by_index(
            [0, -1], first=True, pitched=True
        ),
        style="dashed-line-with-hook",
        padding=3,
        right_padding=0,
        direction=None,
        full_string=False,
        command="One",
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 1""",
        ],
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
        zero_padding=True,
    ),
    trinton.linear_attachment_command(
        attachments=[
            evans.make_fancy_gliss(
                1, 2, 1, 3, 2, 3, 1, 5, 1, 2, 1, 4, 1, 2, 1, 5, 1, 2, 1, 3, 2, 3, 2, 3
            ),
            evans.make_fancy_gliss(
                1,
                2,
                5,
                3,
                2,
                3,
                1,
                2,
                1,
                2,
                1,
                7,
                1,
                2,
                5,
                1,
                3,
                2,
                1,
                3,
                1,
                1,
                1,
                1,
                1,
                1,
            ),
            evans.make_fancy_gliss(2, 2, 2, 2, 2, 2, 2),
        ],
        selector=trinton.select_logical_ties_by_index(
            [1, 3, 5], first=True, pitched=True, grace=False
        ),
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
        selector=trinton.select_leaves_by_index([3], pitched=True, grace=False),
        direction=abjad.UP,
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
        selector=trinton.select_logical_ties_by_index([4, 5], first=True, grace=False),
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
            abjad.Dynamic('"ffff"'),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">"),
            abjad.Dynamic('"pp"'),
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
    evans.PitchHandler(["a,"]),
    evans.PitchHandler([["6/5", "5/3"]], as_ratios=True),
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
            abjad.Dynamic("ff"),
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
        "violin 1 vibrator voice",
        "violin 4 voice",
        "viola 2 voice",
        "cello 2 voice",
    ],
    [10, 16.5, 14.5, 12.5],
    [-4, 14, 2, 7],
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
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (-7 30 27 28)))",
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
