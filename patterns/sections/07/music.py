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
        ts.return_e_material_ts(measure_amount=3, index=16),
        [(5, 4) for _ in range(0, 3)],
        [(1, 4)],
    ],
)

score = library.patterns_score(
    section_ts,
)

# first violin music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(rhythm.rhythm_e(lower_voice=False, index=11)),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(rhythm.rhythm_e(index=12, lower_voice=True)),
        direction=abjad.DOWN,
        voice_name="violin 1 polyrhythm voice 1",
        preprocessor=trinton.fuse_quarters_preprocessor((4, 2)),
        temp_name="temp 1",
    ),
    voice=score["violin 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    pitch.pitch_e(instrument="violin 1", index=30, retrograde=True),
    trinton.octavation(octave=3, selector=trinton.select_leaves_by_index([5])),
    trinton.octavation(octave=2, selector=trinton.select_leaves_by_index([2, 3, 4])),
    trinton.octavation(octave=1, selector=trinton.select_leaves_by_index([0, 1])),
    trinton.linear_attachment_command(
        attachments=[abjad.StartBeam(), abjad.StopBeam()],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    trinton.hooked_spanner_command(
        string=r"CLB + SP",
        selector=trinton.select_leaves_by_index(
            [0, -1],
            pitched=True,
        ),
        padding=16,
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
    trinton.attachment_command(
        attachments=[abjad.Dynamic("pp")], selector=trinton.select_leaves_by_index([0])
    ),
    voice=score["violin 2 voice temp 1"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    pitch.pitch_e(instrument="violin 1", index=31),
    trinton.octavation(octave=2, selector=trinton.select_leaves_by_index([2])),
    trinton.octavation(octave=1, selector=trinton.select_leaves_by_index([1])),
    voice=score["violin 1 polyrhythm voice 1"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.PitchHandler([["cqf'", "gqf'", "dqf''", "aqf''"]]),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\big-half-harmonic", site="before"),
            abjad.Articulation("marcato"),
        ],
        selector=trinton.pleaves(),
    ),
    voice=score["violin 1 polyrhythm voice 1"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.PitchHandler([["cqf'", "gqf'", "dqf''", "aqf''"]]),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\big-half-harmonic", site="before"),
            abjad.Articulation("marcato"),
        ],
        selector=trinton.pleaves(),
    ),
    trinton.hooked_spanner_command(
        string=r"1/2 CLB",
        selector=trinton.select_leaves_by_index(
            [0, -1],
            pitched=True,
        ),
        padding=13.5,
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
    trinton.attachment_command(
        attachments=[trinton.make_custom_dynamic("ffffff")],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["violin 2 voice temp 1"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 4)),
    evans.RhythmHandler(
        rhythm.rhythm_b(stage=1, instrument="violin 1"),
    ),
    trinton.rewrite_meter_command(boundary_depth=-1),
    trinton.aftergrace_command(
        invisible=True,
        selector=trinton.select_logical_ties_by_index(
            [1, -1], pitched=True, grace=False
        ),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=[["5/1", "27/4"], ["1215/256", "45/8"]],
        selector=trinton.select_logical_ties_by_index([0, 2], grace=False),
        as_ratios=True,
    ),
    trinton.pitch_with_selector_command(
        pitch_list=[
            ["e'''", "a'''"],
            ["e'''", "a'''"],
            ["ds'''", "fs'''"],
            ["ds'''", "fs'''"],
        ],
        selector=trinton.select_logical_ties_by_index([1, 2, 4, 5], pitched=True),
    ),
    trinton.force_accidentals_command(
        selector=trinton.select_logical_ties_by_index(
            [0, 2], first=True, pitched=True, grace=False
        ),
    ),
    trinton.invisible_accidentals_command(selector=trinton.pleaves(grace=True)),
    trinton.change_notehead_command(
        notehead="harmonic",
        selector=trinton.select_leaves_by_index([1, 4, 5], pitched=True, grace=False),
    ),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index(
            [0, 1], pitched=True, grace=False
        ),
        zero_padding=True,
        tweaks=[
            abjad.Tweak(r"- \tweak thickness #1.5"),
            abjad.Tweak(r"- \tweak bound-details.right.arrow ##t"),
        ],
    ),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index(
            [2, 3], pitched=True, grace=False
        ),
        zero_padding=True,
        tweaks=[
            abjad.Tweak(r"- \tweak thickness #1.5"),
            abjad.Tweak(r"- \tweak bound-details.right.arrow ##t"),
        ],
    ),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index(
            [1, 2, 4, 5],
            pitched=True,
        ),
        zero_padding=True,
    ),
    trinton.attachment_command(
        attachments=[evans.make_fancy_gliss(1, 1, 1, 1, 1)],
        selector=trinton.select_logical_ties_by_index(
            [1, 3], grace=False, pitched=True, first=True
        ),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_logical_ties_by_index(
            [0, 2, 3, -1], first=True, pitched=True
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mp"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
    ),
    trinton.hooked_spanner_command(
        string=r"ST",
        selector=trinton.select_leaves_by_index(
            [0, -1],
            pitched=True,
        ),
        padding=14,
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
    voice=score["violin 2 voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 6)),
    evans.RhythmHandler(rhythm.rhythm_e(lower_voice=False, index=14)),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(rhythm.rhythm_e(index=14, lower_voice=True)),
        direction=abjad.DOWN,
        voice_name="violin 1 polyrhythm voice 2",
        preprocessor=trinton.fuse_quarters_preprocessor((5,)),
        temp_name="temp 2",
    ),
    voice=score["violin 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    pitch.pitch_e(instrument="violin 1", index=30, retrograde=True),
    trinton.octavation(octave=2, selector=trinton.select_leaves_by_index([2, 3, 4])),
    trinton.octavation(octave=1, selector=trinton.select_leaves_by_index([0, 1])),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("pp")], selector=trinton.select_leaves_by_index([0])
    ),
    voice=score["violin 2 voice temp 2"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    pitch.pitch_e(instrument="violin 1", index=31),
    trinton.octavation(octave=2, selector=trinton.select_leaves_by_index([2, 4, 5])),
    trinton.octavation(octave=1, selector=trinton.select_leaves_by_index([1, 3])),
    trinton.hooked_spanner_command(
        string=r"CLB + SP",
        selector=trinton.select_leaves_by_index(
            [0, -1],
            pitched=True,
        ),
        padding=12.5,
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
    voice=score["violin 1 polyrhythm voice 2"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    evans.PitchHandler([["cqf'", "gqf'", "dqf''", "aqf''"]]),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\big-half-harmonic", site="before"),
            abjad.Articulation("marcato"),
        ],
        selector=trinton.pleaves(),
    ),
    trinton.hooked_spanner_command(
        string=r"1/2 CLB",
        selector=trinton.select_leaves_by_index(
            [0, -1],
            pitched=True,
        ),
        padding=13.5,
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
    voice=score["violin 1 polyrhythm voice 2"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    evans.PitchHandler([["cqf'", "gqf'", "dqf''", "aqf''"]]),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\big-half-harmonic", site="before"),
            abjad.Articulation("marcato"),
        ],
        selector=trinton.pleaves(),
    ),
    trinton.attachment_command(
        attachments=[trinton.make_custom_dynamic("ffffff")],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["violin 2 voice temp 2"],
)


# second violin music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.RhythmHandler(rhythm.rhythm_e(lower_voice=False, index=0)),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(rhythm.rhythm_e(index=0, lower_voice=True)),
        direction=abjad.DOWN,
        voice_name="violin 2 polyrhythm voice",
        preprocessor=trinton.fuse_quarters_preprocessor((4, 2, 4)),
    ),
    voice=score["violin 4 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    pitch.pitch_e(instrument="violin 2", index=30, retrograde=True),
    trinton.octavation(octave=2, selector=trinton.pleaves(exclude=[0, -1])),
    trinton.octavation(octave=1, selector=trinton.select_leaves_by_index([0, -1])),
    trinton.linear_attachment_command(
        attachments=[abjad.StartBeam(), abjad.StopBeam()],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    trinton.hooked_spanner_command(
        string=r"CLB + SP",
        selector=trinton.select_leaves_by_index(
            [0, -1],
            pitched=True,
        ),
        padding=15,
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
    trinton.attachment_command(
        attachments=[abjad.Dynamic("pp")], selector=trinton.select_leaves_by_index([0])
    ),
    voice=score["violin 4 voice temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    pitch.pitch_e(instrument="violin 2", index=31),
    trinton.octavation(octave=2, selector=trinton.pleaves(exclude=[0])),
    trinton.octavation(octave=1, selector=trinton.select_leaves_by_index([0])),
    trinton.linear_attachment_command(
        attachments=[abjad.StartBeam(), abjad.StopBeam()],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    voice=score["violin 2 polyrhythm voice"],
)

for measure in [1, 3]:
    for voice_name in "violin 4 voice temp", "violin 2 polyrhythm voice":
        trinton.make_music(
            lambda _: trinton.select_target(_, (measure,)),
            evans.PitchHandler([["cqf'", "gqf'", "dqf''", "aqf''"]]),
            trinton.attachment_command(
                attachments=[
                    abjad.LilyPondLiteral(r"\big-half-harmonic", site="before"),
                    abjad.Articulation("marcato"),
                ],
                selector=trinton.pleaves(),
            ),
            voice=score[voice_name],
        )

    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[trinton.make_custom_dynamic("ffffff")],
            selector=trinton.select_leaves_by_index([0]),
        ),
        voice=score["violin 4 voice temp"],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.hooked_spanner_command(
        string=r"1/2 CLB",
        selector=trinton.select_leaves_by_index(
            [0, -1],
            pitched=True,
        ),
        padding=13.5,
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
    voice=score["violin 4 voice temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    trinton.hooked_spanner_command(
        string=r"1/2 CLB",
        selector=trinton.select_leaves_by_index(
            [0, -1],
            pitched=True,
        ),
        padding=11.5,
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
    voice=score["violin 4 voice temp"],
)

# viola music

# cello music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.RhythmHandler(rhythm.rhythm_b(stage=1, instrument="cello", index=0)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    trinton.aftergrace_command(
        invisible=True,
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["fs,", "bf", "c'", "e''"],
        selector=trinton.select_logical_ties_by_index([0, 1, 2, 3], pitched=True),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=[["45/16", "135/32"]],
        selector=trinton.select_logical_ties_by_index([4], pitched=True),
        as_ratios=True,
    ),
    trinton.pitch_with_selector_command(
        pitch_list=[
            [
                "fs''",
                "cs'''",
            ]
        ],
        selector=trinton.select_logical_ties_by_index([5, 6], pitched=True),
    ),
    trinton.invisible_accidentals_command(
        selector=trinton.select_leaves_by_index([-2, -1])
    ),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\big-half-harmonic", site="before")],
        selector=trinton.select_leaves_by_index([0, 2]),
    ),
    trinton.change_notehead_command(
        notehead="harmonic",
        selector=trinton.select_leaves_by_index([1, 3, -1], pitched=True, grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.LilyPondLiteral(
                r"\once \override Staff.Clef.X-extent = #'(-1 . 4)", site="before"
            ),
            abjad.Clef("tenor"),
            abjad.LilyPondLiteral(
                r"\once \override Staff.Clef.X-extent = #'(-1 . 4)", site="before"
            ),
            abjad.Clef("treble"),
            evans.make_fancy_gliss(1, 1, 1, 1, 1),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 1, 3, 3, -1], pitched=True, first=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 2, 3], pitched=True, first=True, grace=False
        ),
    ),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                1,
                2,
                3,
                4,
                5,
            ],
            pitched=True,
            grace=False,
        ),
        zero_padding=True,
        tweaks=[
            abjad.Tweak(r"- \tweak thickness #1.5"),
            abjad.Tweak(r"- \tweak bound-details.right.arrow ##t"),
        ],
    ),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index(
            [5, 6],
            pitched=True,
        ),
        zero_padding=True,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mp"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    trinton.spanner_command(
        strings=[
            r"\normale-bow-rotation",
            r"\bow-tip-half-up",
            r"\normale-bow-rotation",
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 1, 2], first=True, pitched=True
        ),
        style="solid-line-with-arrow",
        padding=5,
        tweaks=None,
        right_padding=0,
        direction=None,
        full_string=True,
        command="One",
    ),
    trinton.spanner_command(
        strings=[r"Spz.", "1/2 Spz.", "Norm."],
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 1, 2], pitched=True, first=True
        ),
        style="solid-line-with-arrow",
        padding=7.5,
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
        string=r"ST",
        selector=trinton.select_leaves_by_index(
            [-3, -1],
            pitched=True,
        ),
        padding=12,
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
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 6)),
    evans.RhythmHandler(rhythm.rhythm_e(lower_voice=False, index=0)),
    trinton.linear_attachment_command(
        attachments=[abjad.Clef("bass"), abjad.Clef("treble"), abjad.Clef("bass")],
        selector=trinton.select_leaves_by_index([0, 6, 11]),
    ),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(rhythm.rhythm_e(index=0, lower_voice=True)),
        direction=abjad.DOWN,
        voice_name="cello polyrhythm voice",
        preprocessor=trinton.fuse_quarters_preprocessor((5,)),
    ),
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    pitch.pitch_e(instrument="cello", index=60, retrograde=True),
    trinton.octavation(octave=1, selector=trinton.select_leaves_by_index([0, 1, 2, 4])),
    trinton.octavation(octave=2, selector=trinton.select_leaves_by_index([3])),
    trinton.hooked_spanner_command(
        string=r"CLB + SP",
        selector=trinton.select_leaves_by_index(
            [0, -1],
            pitched=True,
        ),
        padding=9.5,
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
    trinton.attachment_command(
        attachments=[abjad.Dynamic("pp")], selector=trinton.select_leaves_by_index([0])
    ),
    voice=score["cello 2 voice temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    pitch.pitch_e(instrument="cello", index=60),
    trinton.octavation(octave=1, selector=trinton.select_leaves_by_index([0, 3])),
    voice=score["cello polyrhythm voice"],
)

for measure in [4, 6]:
    for voice_name in "cello 2 voice temp", "cello polyrhythm voice":
        trinton.make_music(
            lambda _: trinton.select_target(_, (measure,)),
            evans.PitchHandler([["fqf,", "cqf", "gqf", "dqf'"]]),
            trinton.attachment_command(
                attachments=[
                    abjad.LilyPondLiteral(r"\big-half-harmonic", site="before"),
                    abjad.Articulation("marcato"),
                ],
                selector=trinton.pleaves(),
            ),
            voice=score[voice_name],
        )

    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[trinton.make_custom_dynamic("ffffff")],
            selector=trinton.select_leaves_by_index([0]),
        ),
        trinton.hooked_spanner_command(
            string=r"1/2 CLB",
            selector=trinton.select_leaves_by_index(
                [0, -1],
                pitched=True,
            ),
            padding=13.5,
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
        voice=score["cello 2 voice temp"],
    )


# globals

# final barline

trinton.make_music(
    lambda _: trinton.select_target(_, (7,)),
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
    measures=[7],
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

# for voice_name, padding, hspace in zip(
#     ["violin 2 voice temp", "violin 4 voice", "viola 2 voice", "cello 2 voice"],
#     [9.5, 3, 3, 3],
#     [0, -9, -7, -7],
# ):
#     trinton.make_music(
#         lambda _: trinton.select_target(_, (1,)),
#         trinton.attachment_command(
#             attachments=[
#                 trinton.tempo_markup(
#                     note_value=4,
#                     tempo=99,
#                     padding=padding,
#                     note_head_fontsize=0.5,
#                     stem_length=1.5,
#                     text_fontsize=4,
#                     dotted=False,
#                     fraction=None,
#                     tempo_change=None,
#                     site="after",
#                     hspace=hspace,
#                     string_only=False,
#                 ),
#             ],
#             selector=trinton.select_leaves_by_index([0]),
#             direction=abjad.UP,
#             tag=abjad.Tag("+SCORE"),
#         ),
#         voice=score[voice_name],
#     )

for voice_name, padding, end_anchor in zip(
    [
        "violin 2 voice",
        # "violin 4 voice temp",
        "viola 2 voice",
        # "cello 2 voice",
    ],
    [
        15.5,
        # 13.5,
        5,
        # 14
    ],
    [
        3,
        -1,
        -1,
        -1,
    ],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (3, 4)),
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

for voice_name, padding, right_padding in zip(
    [
        "violin 4 voice temp",
        "cello 2 voice",
    ],
    [
        13.5,
        15.5,
    ],
    [
        23.5,
        14.5,
    ],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (3,)),
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
            selector=trinton.select_leaves_by_index([0, -1]),
            style="solid-line-with-arrow",
            padding=padding,
            tweaks=None,
            right_padding=right_padding,
            direction=None,
            full_string=True,
            command="Three",
        ),
        voice=score[voice_name],
    )

for voice_name, padding, end_anchor in zip(
    [
        "violin 2 voice temp 2",
        "violin 4 voice",
        "viola 2 voice",
        "cello 2 voice temp",
    ],
    [
        15.5,
        5,
        5,
        15.5,
    ],
    [
        3,
        -1,
        -1,
        5,
    ],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (5, 6)),
        trinton.spanner_command(
            strings=[
                trinton.tempo_markup(
                    note_value=4,
                    tempo=80,
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
                    tempo=80,
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
    7,
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

for measure in [1, 3, 5, 6]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\noBreak", site="absolute_after")],
            selector=trinton.select_leaves_by_index([0]),
            tag=abjad.Tag("+SCORE"),
        ),
        voice=score["Global Context"],
    )

for measure in [2, 4]:
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
#                 r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (15 30 36 22)))",
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
    segment_path="/Users/trintonprater/scores/patterns/patterns/sections/07",
    build_path="/Users/trintonprater/scores/patterns/patterns/build",
    segment_name="07",
    includes=[
        "/Users/trintonprater/scores/patterns/patterns/build/patterns-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
