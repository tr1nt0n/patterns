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
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override TupletBracket.padding = #0.5", site="before"
            )
        ],
        selector=abjad.select.tuplets,
    ),
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
    voice=score["violin 2 voice temp 1"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    pitch.pitch_e(instrument="violin 1", index=31),
    trinton.change_lines(
        lines=5,
        selector=trinton.select_leaves_by_index([0], pitched=True),
        clef="treble",
        invisible_barlines=False,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\revert Staff.Clef.stencil", site="before")
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.octavation(octave=2, selector=trinton.select_leaves_by_index([2])),
    trinton.octavation(octave=1, selector=trinton.select_leaves_by_index([1])),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override TupletBracket.padding = #0.5", site="before"
            )
        ],
        selector=abjad.select.tuplets,
    ),
    voice=score["violin 1 polyrhythm voice 1"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.PitchHandler([["g", "b", "d'", "f'"]]),
    trinton.change_lines(
        lines=4,
        selector=trinton.select_leaves_by_index([0], pitched=True),
        clef="percussion",
        invisible_barlines=False,
    ),
    trinton.invisible_accidentals_command(selector=trinton.pleaves()),
    trinton.change_notehead_command(notehead="cross", selector=trinton.pleaves()),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\override Staff.Clef.stencil = #ly:text-interface::print",
                    r"\override Staff.Clef.text = \stringing-clef",
                ],
                site="before",
            )
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            # abjad.LilyPondLiteral(r"\big-half-harmonic", site="before"),
            abjad.Articulation("coda"),
            abjad.Articulation("marcato"),
        ],
        selector=trinton.pleaves(),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override TupletBracket.padding = #0.5", site="before"
            )
        ],
        selector=abjad.select.tuplets,
    ),
    trinton.hooked_spanner_command(
        string=r"1/2 CLB",
        selector=trinton.select_leaves_by_index(
            [0, -1],
            pitched=True,
        ),
        padding=9,
        right_padding=3,
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
    voice=score["violin 1 polyrhythm voice 1"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.PitchHandler([["g", "b", "d'", "f'"]]),
    # trinton.change_lines(
    #     lines=4,
    #     selector=trinton.select_leaves_by_index([0], pitched=True),
    #     clef="percussion",
    #     invisible_barlines=False
    # ),
    trinton.invisible_accidentals_command(selector=trinton.pleaves()),
    trinton.change_notehead_command(notehead="cross", selector=trinton.pleaves()),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\override Staff.Clef.stencil = #ly:text-interface::print",
                    r"\override Staff.Clef.text = \stringing-clef",
                ],
                site="before",
            )
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            # abjad.LilyPondLiteral(r"\big-half-harmonic", site="before"),
            abjad.Articulation("coda"),
            abjad.Articulation("marcato"),
        ],
        selector=trinton.pleaves(),
        direction=abjad.DOWN,
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
    trinton.ottava_command(octave=1, selector=trinton.select_leaves_by_index([0, -1])),
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
        padding=13,
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
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override TupletBracket.padding = #0.5", site="before"
            )
        ],
        selector=abjad.select.tuplets,
    ),
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
    trinton.change_lines(
        lines=5,
        selector=trinton.select_leaves_by_index([0], pitched=True),
        clef="treble",
        invisible_barlines=False,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\revert Staff.Clef.stencil", site="before")
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.octavation(octave=2, selector=trinton.select_leaves_by_index([2, 4, 5])),
    trinton.octavation(octave=1, selector=trinton.select_leaves_by_index([1, 3])),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override TupletBracket.padding = #0.5", site="before"
            )
        ],
        selector=abjad.select.tuplets,
    ),
    trinton.hooked_spanner_command(
        string=r"CLB + SP",
        selector=trinton.select_leaves_by_index(
            [0, -1],
            pitched=True,
        ),
        padding=9,
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
    evans.PitchHandler([["g", "b", "d'", "f'"]]),
    trinton.change_lines(
        lines=4,
        selector=trinton.select_leaves_by_index([0], pitched=True),
        clef="percussion",
        invisible_barlines=False,
    ),
    trinton.invisible_accidentals_command(selector=trinton.pleaves()),
    trinton.change_notehead_command(notehead="cross", selector=trinton.pleaves()),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\override Staff.Clef.stencil = #ly:text-interface::print",
                    r"\override Staff.Clef.text = \stringing-clef",
                ],
                site="before",
            )
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            # abjad.LilyPondLiteral(r"\big-half-harmonic", site="before"),
            abjad.Articulation("coda"),
            abjad.Articulation("marcato"),
        ],
        selector=trinton.pleaves(),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override TupletBracket.padding = #0.5", site="before"
            )
        ],
        selector=abjad.select.tuplets,
    ),
    trinton.hooked_spanner_command(
        string=r"1/2 CLB",
        selector=trinton.select_leaves_by_index(
            [0, -1],
            pitched=True,
        ),
        padding=9,
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
    evans.PitchHandler([["g", "b", "d'", "f'"]]),
    trinton.invisible_accidentals_command(selector=trinton.pleaves()),
    trinton.change_notehead_command(notehead="cross", selector=trinton.pleaves()),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\override Staff.Clef.stencil = #ly:text-interface::print",
                    r"\override Staff.Clef.text = \stringing-clef",
                ],
                site="before",
            )
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            # abjad.LilyPondLiteral(r"\big-half-harmonic", site="before"),
            abjad.Articulation("coda"),
            abjad.Articulation("marcato"),
        ],
        selector=trinton.pleaves(),
        direction=abjad.DOWN,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override TupletBracket.padding = #0.5", site="before"
            )
        ],
        selector=abjad.select.tuplets,
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
    trinton.change_lines(
        lines=5,
        selector=trinton.select_leaves_by_index([0], pitched=True),
        clef="treble",
        invisible_barlines=False,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral([r"\revert Staff.Clef.stencil"], site="before")
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
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
            evans.PitchHandler([["g", "b", "d'", "f'"]]),
            trinton.change_lines(
                lines=4,
                selector=trinton.select_leaves_by_index([0], pitched=True),
                clef="percussion",
                invisible_barlines=False,
            ),
            trinton.invisible_accidentals_command(selector=trinton.pleaves()),
            trinton.change_notehead_command(
                notehead="cross", selector=trinton.pleaves()
            ),
            trinton.attachment_command(
                attachments=[
                    abjad.LilyPondLiteral(
                        [
                            r"\override Staff.Clef.stencil = #ly:text-interface::print",
                            r"\override Staff.Clef.text = \stringing-clef",
                        ],
                        site="before",
                    )
                ],
                selector=trinton.select_leaves_by_index([0], pitched=True),
            ),
            trinton.attachment_command(
                attachments=[
                    abjad.LilyPondLiteral(
                        r"\once \override TupletBracket.padding = #0.5", site="before"
                    )
                ],
                selector=abjad.select.tuplets,
            ),
            voice=score[voice_name],
        )

    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[trinton.make_custom_dynamic("ffffff")],
            selector=trinton.select_leaves_by_index([0]),
        ),
        trinton.attachment_command(
            attachments=[
                # abjad.LilyPondLiteral(r"\big-half-harmonic", site="before"),
                abjad.Articulation("coda"),
                abjad.Articulation("marcato"),
            ],
            selector=trinton.pleaves(),
            direction=abjad.DOWN,
        ),
        voice=score["violin 4 voice temp"],
    )

    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[
                # abjad.LilyPondLiteral(r"\big-half-harmonic", site="before"),
                abjad.Articulation("coda"),
                abjad.Articulation("marcato"),
            ],
            selector=trinton.pleaves(),
            direction=abjad.UP,
        ),
        voice=score["violin 2 polyrhythm voice"],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.hooked_spanner_command(
        string=r"1/2 CLB",
        selector=trinton.select_leaves_by_index(
            [0, -1],
            pitched=True,
        ),
        padding=9,
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
        padding=8.5,
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
    lambda _: trinton.select_target(_, (4, 6)),
    evans.RhythmHandler(rhythm.rhythm_d(stage=4, instrument="violin 2", index=1)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    pitch.pitch_d(
        instrument="violin",
        string_range_pairs=[("I", (0, 5))],
        stage=4,
        index=0,
        initial_seed=1,
        selector=trinton.logical_ties(pitched=True, grace=False),
    ),
    trinton.change_lines(
        lines=5,
        selector=trinton.select_leaves_by_index([0], pitched=True),
        clef="treble",
        invisible_barlines=False,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral([r"\revert Staff.Clef.stencil"], site="before")
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.octavation(
        octave=1,
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 2], pitched=True, grace=False
        ),
    ),
    trinton.ottava_command(octave=1, selector=trinton.select_leaves_by_index([0, 7])),
    trinton.force_accidentals_command(
        selector=trinton.logical_ties(first=True, pitched=True, grace=False)
    ),
    library.d_stage_3_noteheads(selector=abjad.select.chords),
    # trinton.attachment_command(
    #     attachments=[abjad.Arpeggio()],
    #     selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    # ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.bundle(
                    abjad.Articulation("punta-to-talon"), r"- \tweak padding 0.5"
                ),
                abjad.bundle(
                    abjad.Articulation("talon-to-punta"), r"- \tweak padding 0.5"
                ),
            ]
        ),
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override TupletBracket.padding = #0.5", site="before"
            )
        ],
        selector=abjad.select.tuplets,
    ),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(rhythm.rhythm_e(lower_voice=False, index=7)),
        direction=abjad.DOWN,
        voice_name="violin 2 legno voice",
        temp_name="temp 1",
        preprocessor=trinton.fuse_quarters_preprocessor((5,)),
    ),
    voice=score["violin 4 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 6)),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([3, 4, 7, 8, 11, 12]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\override DynamicLineSpanner.padding = #11.5", site="before"
            ),
            abjad.Dynamic("f"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
            abjad.LilyPondLiteral(
                r"\revert DynamicLineSpanner.padding", site="absolute_after"
            ),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, 3, 6, 6, 8, 10, -1]),
    ),
    trinton.hooked_spanner_command(
        string=r"MSP",
        selector=trinton.select_leaves_by_index(
            [0, -1],
            pitched=True,
        ),
        padding=15,
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
    voice=score["violin 4 voice temp 1"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 6)),
    evans.PitchHandler(
        [
            "a'",
            "a'",
            "a'",
            "a'",
            "a'",
            "a'",
            "a'",
            "a",
            "a",
            "a",
            "a",
            "a",
            "a",
            "a",
            "a",
            "a",
            "a",
            "a",
            "a",
            "a",
            "a",
            "a",
            "a",
            "a",
            "a",
            "a",
            "a",
            "a",
            "a",
            "a",
            "a",
            "a",
            "a",
            "a",
            "a",
            "a",
            "a",
            "a",
            "a",
            "a",
            "a",
            "a",
            "a",
            "a",
            "a",
            "a",
            "a",
        ]
    ),
    # trinton.annotate_leaves_locally(
    #     selector=abjad.select.leaves,
    #     direction=abjad.DOWN
    # ),
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
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override TupletBracket.padding = #0.5", site="before"
            )
        ],
        selector=abjad.select.tuplets,
    ),
    trinton.hooked_spanner_command(
        string="CLB OB",
        selector=trinton.select_leaves_by_index(
            [0, -1],
            grace=False,
        ),
        padding=12,
        direction="down",
        right_padding=1,
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
    voice=score["violin 2 legno voice"],
)

# viola music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 6)),
    evans.RhythmHandler(rhythm.rhythm_e(lower_voice=True, index=5)),
    trinton.attachment_command(
        attachments=[abjad.Clef("treble")], selector=trinton.select_leaves_by_index([0])
    ),
    trinton.rewrite_meter_command(boundary_depth=-1),
    library.tablature_staff(
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([3, 6]),
    ),
    # trinton.attachment_command(
    #     attachments=[
    #         abjad.Markup(
    #             r"""\markup \fontsize #2 { \hspace #-10.5 { "Fng. Perc.:" } }"""
    #         )
    #     ],
    #     selector=trinton.select_leaves_by_index([0]),
    # ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override TupletBracket.padding = #0.5", site="before"
            )
        ],
        selector=abjad.select.tuplets,
    ),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(rhythm.rhythm_e(lower_voice=False, index=5)),
        direction=abjad.UP,
        voice_name="viola bow voice",
        preprocessor=trinton.fuse_quarters_preprocessor((4, 2, 4, 5, 5, 5)),
    ),
    voice=score["viola 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 6)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    trinton.aftergrace_command(
        invisible=True,
        selector=trinton.logical_ties(pitched=True, last=True, grace=False),
    ),
    evans.PitchHandler(
        [
            ["c'"],
            ["e'"],
            ["d'"],
            ["f'"],
            ["e'"],
            ["g'"],
            ["f'"],
            ["a'"],
            ["g'"],
            ["b'"],
            ["a'"],
            ["c''"],
            ["b'"],
            ["d''"],
            ["c''"],
            ["e''"],
            ["d''"],
            ["f''"],
            ["e''"],
            ["g''"],
            ["f''"],
            ["a''"],
            ["g''"],
            ["b''"],
            ["c'''"],
            ["c'''"],
            ["c'''"],
            ["c'''"],
            ["c'''"],
            ["c'''"],
            ["c'''"],
            ["c'''"],
            ["c'''"],
            ["c'''"],
            ["c'''"],
            ["c'''"],
            ["c'''"],
            ["c'''"],
            ["c'''"],
            ["c'''"],
            ["c'''"],
            ["c'''"],
            ["c'''"],
            ["c'''"],
            ["c'''"],
            ["c'''"],
            ["c'''"],
            ["c'''"],
            ["c'''"],
            ["c'''"],
            ["c'''"],
            ["c'''"],
            ["c'''"],
            ["c'''"],
            ["c'''"],
            ["c'''"],
        ]
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override TupletBracket.padding = #0.5", site="before"
            )
        ],
        selector=abjad.select.tuplets,
    ),
    trinton.change_notehead_command(
        notehead="cluster",
        selector=abjad.select.chords,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Glissando(zero_padding=True),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
        ],
        selector=trinton.logical_ties(last=True, pitched=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Dynamic("fp"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
            abjad.bundle(
                abjad.StartHairpin(">o"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
        ],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[abjad.StopHairpin()], selector=trinton.select_leaves_by_index([-1])
    ),
    # trinton.annotate_leaves_locally(
    #     selector=abjad.select.leaves,
    #     direction=abjad.UP
    # ),
    # trinton.manual_beam_positions(
    #     positions=(7, 7),
    #     selector=trinton.select_leaves_by_index(
    #         [15, 18, 19, 21, 22, 24, 26, 28, 30, 32, 35, 37]
    #     ),
    # ),
    # trinton.attachment_command(
    #     attachments=[
    #         abjad.Markup(
    #             r"""\markup {
    #                 \hspace #-2 {
    #                     ( \note {2} #2 )
    #                 }
    #             }"""
    #         )
    #     ],
    #     selector=trinton.select_leaves_by_index([1], pitched=True),
    #     direction=abjad.UP,
    # ),
    # trinton.continuous_glissando(
    #     zero_padding=True,
    #     selector=trinton.pleaves(exclude=[-6, -5, -4, -3, -2, -1]),
    #     tweaks=[abjad.Tweak(r"- \tweak color #(css-color 'darkred)")],
    # ),
    trinton.noteheads_only(selector=trinton.pleaves(grace=True)),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Articulation(">"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
        ],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    # trinton.attachment_command(
    #     attachments=[
    #         abjad.bundle(
    #             abjad.Markup(r"""\markup \fontsize #2 { \hspace #-5.5 { "Bow:" } }"""),
    #             r"""- \tweak color #(css-color 'darkred)""",
    #         ),
    #     ],
    #     selector=trinton.select_leaves_by_index([0], pitched=True),
    # ),
    trinton.hooked_spanner_command(
        string=r"""IV""",
        selector=trinton.select_leaves_by_index([0, 7]),
        padding=12.5,
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
            # r"""- \tweak color #(css-color 'darkred)""",
            # r"""- \tweak bound-details.left.Y #5.5""",
            # r"""- \tweak bound-details.right.Y #7""",
        ],
    ),
    trinton.hooked_spanner_command(
        string=r"""III""",
        selector=trinton.select_leaves_by_index([8, 13]),
        padding=12.5,
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
            # r"""- \tweak color #(css-color 'darkred)""",
            # r"""- \tweak bound-details.left.Y #5.5""",
            # r"""- \tweak bound-details.right.Y #7""",
        ],
    ),
    trinton.hooked_spanner_command(
        string=r"""II""",
        selector=trinton.select_leaves_by_index([14, 17]),
        padding=16,
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
            # r"""- \tweak color #(css-color 'darkred)""",
            # r"""- \tweak bound-details.left.Y #5.5""",
            # r"""- \tweak bound-details.right.Y #7""",
        ],
    ),
    trinton.hooked_spanner_command(
        string=r"""I""",
        selector=trinton.select_leaves_by_index([18, 23]),
        padding=16,
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
            # r"""- \tweak color #(css-color 'darkred)""",
            # r"""- \tweak bound-details.left.Y #5.5""",
            # r"""- \tweak bound-details.right.Y #7""",
        ],
    ),
    trinton.hooked_spanner_command(
        string=r"""III, DP""",
        selector=trinton.select_leaves_by_index([30, 31, 46, 47]),
        padding=16,
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
            # r"""- \tweak color #(css-color 'darkred)""",
            # r"""- \tweak bound-details.left.Y #5.5""",
            # r"""- \tweak bound-details.right.Y #7""",
        ],
    ),
    trinton.hooked_spanner_command(
        string=r"""II, DP""",
        selector=trinton.select_leaves_by_index([32, 33, 50, 51]),
        padding=16,
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
            # r"""- \tweak color #(css-color 'darkred)""",
            # r"""- \tweak bound-details.left.Y #5.5""",
            # r"""- \tweak bound-details.right.Y #7""",
        ],
    ),
    trinton.hooked_spanner_command(
        string=r"""IV, DP""",
        selector=trinton.select_leaves_by_index([34, 41, 44, 45]),
        padding=16,
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
            # r"""- \tweak color #(css-color 'darkred)""",
            # r"""- \tweak bound-details.left.Y #5.5""",
            # r"""- \tweak bound-details.right.Y #7""",
        ],
    ),
    trinton.hooked_spanner_command(
        string=r"""I, DP""",
        selector=trinton.select_leaves_by_index([24, 29, 42, 43, 48, 49, 52, 53]),
        padding=16,
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
            # r"""- \tweak color #(css-color 'darkred)""",
            # r"""- \tweak bound-details.left.Y #5.5""",
            # r"""- \tweak bound-details.right.Y #7""",
        ],
    ),
    library.color_voice(),
    voice=score["viola bow voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 6)),
    evans.PitchHandler(
        [
            "a",
            "b",
            ["b", "d'"],
            "f'",
            ["d'", "g'"],
            ["d'", "a'"],
            "b'",
            ["a'", "b'"],
            "c''",
            "d''",
            ["a'", "d''"],
            ["a'", "e''"],
            "e''",
            "c'''",
            "c'''",
            "c'''",
            "c'''",
            "c'''",
            "c'''",
            "c'''",
            "c'''",
            "c'''",
            "c'''",
            "c'''",
            "c'''",
        ]
    ),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\big-half-harmonic", site="before")],
        selector=trinton.select_leaves_by_index([0, 1, 5, 9, 11]),
    ),
    trinton.artificial_harmonics(selector=trinton.select_leaves_by_index([2, 10])),
    trinton.change_notehead_command(
        notehead="harmonic",
        selector=trinton.select_leaves_by_index([4, 7, 8, 14, 19, 22]),
    ),
    library.tablature_trill(
        trill_pitch="c'",
        selector=trinton.select_leaves_by_index([1, 2]),
        notehead="harmonic",
        bound_details=(-5, -5),
        direction=abjad.DOWN,
    ),
    library.tablature_trill(
        trill_pitch="c'",
        selector=trinton.select_leaves_by_index([2, 3]),
        notehead="harmonic",
        bound_details=(-4.5, -4.5),
        direction=abjad.DOWN,
    ),
    library.tablature_trill(
        trill_pitch="f'",
        selector=trinton.select_leaves_by_index([4, 5]),
        notehead="harmonic",
        bound_details=(-3, -3),
        direction=abjad.DOWN,
    ),
    library.tablature_trill(
        trill_pitch="f'",
        selector=trinton.select_leaves_by_index([5, 6]),
        notehead="harmonic",
        bound_details=(-3, -3),
        direction=abjad.DOWN,
    ),
    library.tablature_trill(
        trill_pitch="e''",
        selector=trinton.select_leaves_by_index([9, 10]),
        notehead="harmonic",
        bound_details=(-2.5, -2.5),
        direction=abjad.DOWN,
    ),
    library.tablature_trill(
        trill_pitch="c''",
        selector=trinton.select_leaves_by_index([10, 11]),
        notehead="harmonic",
        bound_details=(-3, -3),
        direction=abjad.DOWN,
    ),
    library.tablature_trill(
        trill_pitch="e''",
        selector=trinton.select_leaves_by_index([12, 13]),
        notehead="harmonic",
        bound_details=(-1.5, -1.5),
        direction=abjad.DOWN,
    ),
    library.tablature_trill(
        trill_pitch="c'''",
        selector=trinton.select_leaves_by_index([13, 14]),
        notehead="harmonic",
        bound_details=(-0.75, -0.75),
        direction=abjad.DOWN,
    ),
    library.tablature_trill(
        trill_pitch="c'''",
        selector=trinton.select_leaves_by_index([15, 16]),
        notehead="harmonic",
        bound_details=(-1.25, -1.25),
        direction=abjad.DOWN,
    ),
    library.tablature_trill(
        trill_pitch="c'''",
        selector=trinton.select_leaves_by_index([17, 18]),
        notehead="harmonic",
        bound_details=(-0.25, -0.25),
        direction=abjad.DOWN,
    ),
    library.tablature_trill(
        trill_pitch="c'''",
        selector=trinton.select_leaves_by_index([21, 22]),
        notehead="harmonic",
        bound_details=(-0.25, -0.25),
        direction=abjad.DOWN,
    ),
    library.tablature_trill(
        trill_pitch="c'''",
        selector=trinton.select_leaves_by_index([23, 24]),
        notehead="harmonic",
        bound_details=(-1.25, -1.25),
        direction=abjad.DOWN,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(r"""\markup { "( LH silent )" }"""),
                r"""- \tweak font-name "Bodoni72 Book Italic" """,
                r"""- \tweak font-size 1 """,
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\once \override Voice.NoteHead.layer = 2",
                    r"\once \override Voice.NoteHead.whiteout-style = #'outline",
                    r"\once \override Voice.NoteHead.whiteout = 1",
                ],
                site="before",
            )
        ],
        selector=trinton.pleaves(exclude=list(range(0, 13)), grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\override TrillSpanner.bound-details.right.padding = #1.5",
                site="before",
            ),
            abjad.LilyPondLiteral(
                r"\revert TrillSpanner.bound-details.right.padding",
                site="absolute_after",
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    voice=score["viola 2 voice temp"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7,)),
    library.tablature_staff(reset=True, selector=trinton.select_leaves_by_index([0])),
    voice=score["viola 2 voice"],
)

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
        attachments=[abjad.StartSlur(), abjad.StopSlur()],
        selector=trinton.select_leaves_by_index([-3, -1], pitched=True),
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
    # trinton.linear_attachment_command(
    #     attachments=[abjad.Clef("bass"), abjad.Clef("treble"), abjad.Clef("bass")],
    #     selector=trinton.select_leaves_by_index([0, 6, 11]),
    # ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override TupletBracket.padding = #0.5", site="before"
            )
        ],
        selector=abjad.select.tuplets,
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
    trinton.change_lines(
        lines=5,
        clef="treble",
        selector=trinton.select_leaves_by_index([0]),
        invisible_barlines=False,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\revert Staff.Clef.stencil", site="before")
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override TupletBracket.padding = #0.5", site="before"
            )
        ],
        selector=abjad.select.tuplets,
    ),
    voice=score["cello polyrhythm voice"],
)

for measure in [4, 6]:
    for voice_name in "cello 2 voice temp", "cello polyrhythm voice":
        trinton.make_music(
            lambda _: trinton.select_target(_, (measure,)),
            evans.PitchHandler([["g", "b", "d'", "f'"]]),
            trinton.change_lines(
                lines=4,
                selector=trinton.select_leaves_by_index([0], pitched=True),
                clef="percussion",
                invisible_barlines=False,
            ),
            trinton.invisible_accidentals_command(selector=trinton.pleaves()),
            trinton.change_notehead_command(
                notehead="cross", selector=trinton.pleaves()
            ),
            trinton.attachment_command(
                attachments=[
                    abjad.LilyPondLiteral(
                        [
                            r"\override Staff.Clef.stencil = #ly:text-interface::print",
                            r"\override Staff.Clef.text = \stringing-clef",
                        ],
                        site="before",
                    )
                ],
                selector=trinton.select_leaves_by_index([0], pitched=True),
            ),
            trinton.attachment_command(
                attachments=[
                    abjad.LilyPondLiteral(
                        r"\once \override TupletBracket.padding = #0.5", site="before"
                    )
                ],
                selector=abjad.select.tuplets,
            ),
            voice=score[voice_name],
        )

    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[trinton.make_custom_dynamic("ffffff")],
            selector=trinton.select_leaves_by_index([0]),
        ),
        trinton.attachment_command(
            attachments=[
                # abjad.LilyPondLiteral(r"\big-half-harmonic", site="before"),
                abjad.Articulation("coda"),
                abjad.Articulation("marcato"),
            ],
            selector=trinton.pleaves(),
            direction=abjad.DOWN,
        ),
        trinton.hooked_spanner_command(
            string=r"1/2 CLB",
            selector=trinton.select_leaves_by_index(
                [0, -1],
                pitched=True,
            ),
            padding=9,
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

    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[
                # abjad.LilyPondLiteral(r"\big-half-harmonic", site="before"),
                abjad.Articulation("coda"),
                abjad.Articulation("marcato"),
            ],
            selector=trinton.pleaves(),
            direction=abjad.UP,
        ),
        voice=score["cello polyrhythm voice"],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(
                    r"""\markup \center-column { \line { "extremely strong battuto," } \line { "striking so hard as to hit all strings at once" } }"""
                ),
                r"""- \tweak font-name "Bodoni72 Book Italic" """,
            ),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0], first=True, pitched=True, grace=False
        ),
        direction=abjad.DOWN,
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
        "viola 2 voice temp",
        # "cello 2 voice",
    ],
    [
        14.5,
        # 13.5,
        18,
        # 14
    ],
    [
        3,
        # -1,
        6,
        # -1,
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
        17,
        13.5,
    ],
    [
        27.5,
        17.5,
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
        "violin 4 voice temp 1",
        "viola 2 voice temp",
        "cello 2 voice temp",
    ],
    [
        11.5,
        11,
        18,
        11,
    ],
    [
        3,
        4,
        5,
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

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (12 30 30 28)))",
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
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (12.5 30.5 41 28)))",
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
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (10 31 42 27)))",
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
