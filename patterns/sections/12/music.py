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
        ],
        selector=trinton.pleaves(),
        direction=abjad.DOWN,
    ),
    trinton.attachment_command(
        attachments=[
            # abjad.LilyPondLiteral(r"\big-half-harmonic", site="before"),
            abjad.Articulation("marcato"),
        ],
        selector=trinton.pleaves(),
        direction=abjad.UP,
    ),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(rhythm.rhythm_e(index=0, lower_voice=True, shorten=True)),
        direction=abjad.DOWN,
        voice_name="violin 1 lower voice",
        preprocessor=trinton.fuse_quarters_preprocessor(
            (7, 3, 4, 3, 6, 7, 5, 5, 4, 4, 6, 4, 6, 6, 4)
        ),
        temp_name="upper",
    ),
    voice=score["violin 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 15)),
    evans.PitchHandler([["g", "b", "d'", "f'"]]),
    trinton.invisible_accidentals_command(selector=trinton.pleaves()),
    trinton.change_notehead_command(notehead="cross", selector=trinton.pleaves()),
    trinton.attachment_command(
        attachments=[
            # abjad.LilyPondLiteral(r"\big-half-harmonic", site="before"),
            abjad.Articulation("coda"),
        ],
        selector=trinton.pleaves(),
        direction=abjad.UP,
    ),
    trinton.hooked_spanner_command(
        string=r"1/2 CLB + ST poss.",
        selector=trinton.select_leaves_by_index(
            [0, -1],
            pitched=True,
        ),
        padding=13.5,
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
    voice=score["violin 1 lower voice"],
)

for measure in [1, 2, 3, 4, 5, 8, 9, 10, 11, 13]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        abjad.beam,
        voice=score["violin 2 voice upper"],
    )

for measure in [2, 4, 5, 7, 8, 9, 10, 12, 15]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        abjad.beam,
        voice=score["violin 1 lower voice"],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    trinton.manual_beam_positions(
        positions=(11, 11),
        selector=abjad.select.leaves,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = 13", site="before"
            )
        ],
        selector=abjad.select.rests,
    ),
    voice=score["violin 2 voice upper"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    trinton.manual_beam_positions(
        positions=(-8, -8),
        selector=abjad.select.leaves,
    ),
    voice=score["violin 1 lower voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10,)),
    trinton.manual_beam_positions(
        positions=(-9, -9),
        selector=abjad.select.leaves,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = -11", site="before"
            )
        ],
        selector=abjad.select.rests,
    ),
    voice=score["violin 1 lower voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11,)),
    trinton.linear_attachment_command(
        attachments=[
            trinton.make_custom_dynamic("fffffff"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
    ),
    voice=score["violin 2 voice upper"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12,)),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(
                    r"""\markup \override #'(font-name . "Bodoni72 Book Italic") { "( back to quiet as possible )" }"""
                ),
                r"- \tweak font-size 2",
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.DOWN,
    ),
    voice=score["violin 2 voice upper"],
)

# trinton.make_music(
#     lambda _: trinton.select_target(_, (1,)),
#     evans.PitchHandler([["g", "b", "d'", "f'"]]),
#     trinton.change_lines(
#         lines=4,
#         selector=trinton.select_leaves_by_index([0], pitched=True),
#         clef="percussion",
#         invisible_barlines=False,
#     ),
#     trinton.invisible_accidentals_command(selector=trinton.pleaves()),
#     trinton.change_notehead_command(notehead="cross", selector=trinton.pleaves()),
#     trinton.attachment_command(
#         attachments=[
#             abjad.LilyPondLiteral(
#                 [
#                     r"\override Staff.Clef.stencil = #ly:text-interface::print",
#                     r"\override Staff.Clef.text = \stringing-clef",
#                 ],
#                 site="before",
#             )
#         ],
#         selector=trinton.select_leaves_by_index([0], pitched=True),
#     ),
#     trinton.attachment_command(
#         attachments=[
#             # abjad.LilyPondLiteral(r"\big-half-harmonic", site="before"),
#             abjad.Articulation("coda"),
#             abjad.Articulation("marcato"),
#         ],
#         selector=trinton.pleaves(),
#         direction=abjad.UP,
#     ),
#     trinton.attachment_command(
#         attachments=[
#             abjad.LilyPondLiteral(
#                 r"\once \override TupletBracket.padding = #0.5", site="before"
#             )
#         ],
#         selector=abjad.select.tuplets,
#     ),
#     trinton.hooked_spanner_command(
#         string=r"1/2 CLB + ST poss.",
#         selector=trinton.select_leaves_by_index(
#             [0, -1],
#             pitched=True,
#         ),
#         padding=8.5,
#         right_padding=3,
#         full_string=False,
#         style="dashed-line-with-hook",
#         hspace=None,
#         command="One",
#         tag=None,
#         tweaks=[
#             r"""- \tweak font-name "Bodoni72 Book" """,
#             r"""- \tweak font-size 1""",
#         ],
#     ),
#     trinton.linear_attachment_command(
#         attachments=[abjad.StartBeam(), abjad.StopBeam()],
#         selector=trinton.select_leaves_by_index([0, -1]),
#     ),
#     trinton.manual_beam_positions(
#         positions=(-9, -9), selector=trinton.select_leaves_by_index([0, -1])
#     ),
#     trinton.attachment_command(
#         attachments=[
#             abjad.LilyPondLiteral(
#                 r"\once \override Rest.staff-position = #-11", site="before"
#             )
#         ],
#         selector=abjad.select.rests,
#     ),
#     voice=score["violin 1 polyrhythm voice 1"],
# )

# second violin music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 5)),
    evans.RhythmHandler(rhythm.rhythm_e(lower_voice=False, index=10)),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(rhythm.rhythm_e(index=10, lower_voice=True)),
        direction=abjad.DOWN,
        voice_name="violin 2 lower voice",
        preprocessor=trinton.fuse_quarters_preprocessor((7, 3, 4, 3, 6)),
        temp_name="upper",
    ),
    voice=score["violin 4 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 5)),
    pitch.pitch_e(instrument="violin 2", index=0, retrograde=True),
    trinton.rewrite_meter_command(boundary_depth=-1),
    trinton.octavation(octave=1, selector=trinton.pleaves()),
    trinton.octavation(
        octave=1,
        selector=trinton.select_logical_ties_by_index(
            [
                6,
            ],
            pitched=True,
            grace=False,
        ),
    ),
    trinton.octavation(
        octave=-1,
        selector=trinton.select_logical_ties_by_index(
            [1, 13, 14, 15, 19], pitched=True, grace=False
        ),
    ),
    # trinton.annotate_leaves_locally(
    #     # selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    #     selector=abjad.select.leaves,
    #     direction=abjad.UP
    # ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index(
            [
                0,
                4,
                8,
                13,
                14,
                19,
            ],
            pitched=True,
        ),
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
        selector=trinton.select_leaves_by_index([0, 5, 8, 14, 20], pitched=True),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override TupletBracket.padding = #3", site="before"
            )
        ],
        selector=trinton.select_tuplets_by_index([0]),
    ),
    voice=score["violin 4 voice upper"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 5)),
    pitch.pitch_e(instrument="violin 2", index=0, retrograde=True),
    trinton.octavation(
        octave=1,
        selector=trinton.select_logical_ties_by_index(
            [1, 2, 4, 5, 6, 8], pitched=True, grace=False
        ),
    ),
    # trinton.annotate_leaves_locally(
    #     # selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    #     selector=abjad.select.leaves,
    #     direction=abjad.DOWN
    # ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index([3, 8, 16, 20], pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=r"CLT, ST poss.",
        selector=trinton.select_leaves_by_index(
            [0, -1],
            pitched=True,
        ),
        padding=13,
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
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(
                    r"""\markup \override #'(font-name . "Bodoni72 Book Italic") { "quasi dolce" }"""
                ),
                r"- \tweak font-size 1",
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.DOWN,
    ),
    voice=score["violin 2 lower voice"],
    beam_meter=True,
)

# viola music

# cello music

# globals

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
        2,
        2,
        2,
        2,
    ],
    [
        -7,
        -7,
        -7,
        -7,
    ],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (1,)),
        trinton.attachment_command(
            attachments=[
                trinton.tempo_markup(
                    note_value=4,
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

for measure in [15]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\noBreak", site="absolute_after")],
            selector=trinton.select_leaves_by_index([0]),
            tag=abjad.Tag("+SCORE"),
        ),
        voice=score["Global Context"],
    )

# for measure in [2, 4, 5, 6, 7]:
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
#                 r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (12 14 20 30)))",
#                 site="absolute_before",
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0]),
#         tag=abjad.Tag("+SCORE"),
#     ),
#     voice=score["Global Context"],
# )


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
