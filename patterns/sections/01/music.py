import abjad
from abjadext import rmakers
import baca
import evans
import trinton
import itertools
from patterns import library
from patterns import ts

# score

section_ts = abjad.sequence.flatten(
    [
        ts.return_b_material_ts(measure_amount=2, index=0),
        ts.return_d_material_ts(measure_amount=1, index=0),
        [(1, 4)],
    ],
)

score = library.patterns_score(
    section_ts,
)

# first violin music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(
        evans.tuplet(
            [
                (
                    1,
                    1,
                    1,
                    1,
                    4,
                    4,
                ),
                (1, 1),
                (4, 4, 1, 1, 1, 1),
            ],
        )
    ),
    rmakers.rewrite_dots,
    trinton.respell_tuplets_command(rewrite_brackets=False),
    evans.PitchHandler(
        [
            "eqf'''",
            "b''",
            "d'''",
            "cqs'''",
            "e'''",
            "fs''",
            "eqs''",
            "dqf''",
            "c'",
            "c'",
            "c'",
            "bf'",
            "aqf'",
            "d''",
        ]
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.StartBeam(),
                abjad.StopBeam(),
            ]
        ),
        selector=trinton.select_leaves_by_index(
            [0, 7, 8, 13], pitched=True, grace=False
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BeamCount(left=2, right=1),
            abjad.BeamCount(left=1, right=2),
        ],
        selector=trinton.select_leaves_by_index([4, 5]),
    ),
    trinton.continuous_glissando(
        selector=trinton.select_leaves_by_index([0, 1, 2, 3, 4, 5]), zero_padding=True
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.StartSlur(),
                abjad.StopSlur(),
            ]
        ),
        selector=trinton.select_leaves_by_index(
            [0, 5, 6, 7, 10, 13], pitched=True, grace=False
        ),
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
        selector=trinton.select_leaves_by_index(
            [0, 6, 8, 9, 10], pitched=True, grace=False
        ),
    ),
    trinton.continuous_glissando(
        selector=trinton.select_leaves_by_index([6, 7]), zero_padding=True
    ),
    trinton.continuous_glissando(
        selector=trinton.select_leaves_by_index([8, 9, 10, 11, 12, 13]),
        zero_padding=True,
    ),
    trinton.linear_attachment_command(
        attachments=[
            evans.make_fancy_gliss(0.5, 1, 2, 3, 2, 1, 0.5),
            evans.make_fancy_gliss(0.5, 0.6, 0.8, 1, 2, 3, 2),
        ],
        selector=trinton.select_leaves_by_index([8, 9], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\big-half-harmonic", site="before"),
        ],
        selector=trinton.pleaves(),
    ),
    trinton.hooked_spanner_command(
        string="""MSP""",
        selector=trinton.select_leaves_by_index([0, 13], pitched=True, grace=False),
        padding=18.5,
        direction=None,
        right_padding=2,
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
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(
            evans.tuplet(
                [
                    (1,),
                    (
                        -1,
                        2,
                    ),
                    (1, 1, 1),
                ]
            )
        ),
        direction=abjad.DOWN,
        voice_name="violin 1 legno voice 1",
        preprocessor=trinton.fuse_sixteenths_preprocessor((2, 3, 5)),
    ),
    voice=score["violin 1 voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor((3, 2, 5)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    rmakers.rewrite_dots,
    trinton.respell_tuplets_command(rewrite_brackets=False),
    evans.PitchHandler(["f"]),
    trinton.change_notehead_command(
        notehead="cross",
        selector=trinton.select_leaves_by_index([0, 1, 4], pitched=True, grace=False),
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
            [0, 1, 2, 4], pitched=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("staccato")],
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
            ],
            pitched=True,
        ),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("staccato")],
        selector=trinton.select_leaves_by_index([4], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BeamCount(left=1, right=2),
        ],
        selector=trinton.select_leaves_by_index([1]),
    ),
    trinton.hooked_spanner_command(
        string="""CL""",
        selector=trinton.select_leaves_by_index([0, 4], pitched=True, grace=False),
        padding=0,
        direction="down",
        right_padding=2,
        full_string=False,
        style="dashed-line-with-up-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 2""",
            r"- \tweak Y-extent ##f",
            r"- \tweak Y-offset -12",
        ],
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override TupletBracket.padding = #3", site="before"
            ),
        ],
        selector=trinton.select_tuplets_by_index([0]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override DynamicLineSpanner.staff-padding = 12"
            ),
            abjad.Dynamic("pp"),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["violin 1 legno voice 1"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 3)),
    evans.RhythmHandler(
        evans.tuplet(
            [
                (1,),
                (1,),
                (1, 1, 1, 1, 1),
                (1,),
                (4, 1, 1, 1),
                (1,),
                (3, 1, 1, 1),
                (1, 1, 4),
                (1,),
            ]
        )
    ),
    rmakers.rewrite_dots,
    trinton.respell_tuplets_command(rewrite_brackets=False),
    evans.PitchHandler(
        [
            "cs''",
            "bqf'",
            "e'",
            "gqs'",
            "g'",
            "c''",
            "eqf'",
            "eqf'",
            "cqs'",
            "cqs'",
            "b",
            "c'",
            "aqs",
            "a",
            "aqf'",
            "fs''",
            "fqs''",
            "aqf''",
            "g''",
            "dqf'''",
            "eqs''''",
        ]
    ),
    # trinton.annotate_leaves_locally(
    #     selector=abjad.select.leaves
    # ),
    trinton.continuous_glissando(selector=trinton.pleaves(), zero_padding=True),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.StartBeam(),
                abjad.StopBeam(),
            ]
        ),
        selector=trinton.select_leaves_by_index(
            [2, 6, 8, 11, 13, 16, 17, 18], grace=False
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            evans.make_fancy_gliss(1, 1, 2, 1, 4, 1, 1, 3, 1, 1, 1, 1, 1, 5, 1),
            evans.make_fancy_gliss(
                1, 4, 1, 1, 3, 1, 1, 1, 1, 1, 5, 1, 7, 1, 1, 1, 1, 1
            ),
            evans.make_fancy_gliss(1, 1, 1, 3, 1, 1, 1, 7, 1, 1, 1, 11, 1, 1),
            evans.make_fancy_gliss(
                1, 0.5, 1, 1, 1, 0.5, 1, 1, 1, 1, 1, 1, 0.5, 1, 1, 0.5, 1, 1, 1, 1, 1
            ),
        ],
        selector=trinton.select_leaves_by_index([1, 7, 8, 20]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\big-half-harmonic", site="before"),
        ],
        selector=trinton.pleaves(),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.StartSlur(),
                abjad.StopSlur(),
            ]
        ),
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                2,
                3,
                8,
                13,
            ],
            pitched=True,
            grace=False,
        ),
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
        selector=trinton.select_leaves_by_index(
            [0, 2, 4, 5, 6, 7, 8, 14, 15, 16, 17, 18, 19, 20], pitched=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override TupletBracket.padding = #1", site="before"
            )
        ],
        selector=trinton.select_tuplets_by_index([1]),
    ),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(
            evans.tuplet(
                [
                    (
                        -6,
                        1,
                        1,
                    ),
                    (1,),
                    (1, -1, 1, 1, 1),
                    (1,),
                    (4, 1, 1, 1),
                    (3, 1),
                    (3, 1, 1, 1),
                    (1, 1, -3, 1),
                    (1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
                ]
            )
        ),
        direction=abjad.DOWN,
        voice_name="violin 1 legno voice 2",
        preprocessor=trinton.fuse_eighths_preprocessor((2, 2, 2, 2, 2, 2, 3, 3, 6)),
        temp_name="temp 2",
    ),
    voice=score["violin 1 voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((2, 2, 2, 2, 2, 2, 3, 3, 6)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 3)),
    trinton.aftergrace_command(
        invisible=True,
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[abjad.Glissando(zero_padding=True)],
        selector=trinton.select_leaves_by_index([-1], pitched=True, grace=False),
    ),
    trinton.hooked_spanner_command(
        string="""MSP""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=11.5,
        direction=None,
        right_padding=1,
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
    voice=score["violin 1 voice temp 2"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 3)),
    rmakers.rewrite_dots,
    trinton.respell_tuplets_command(rewrite_brackets=False),
    evans.PitchHandler(["e"]),
    trinton.change_notehead_command(
        notehead="cross",
        selector=trinton.select_leaves_by_index(
            [
                1,
                2,
                4,
                6,
                7,
                8,
                11,
                12,
                13,
                15,
                23,
                24,
                25,
                26,
                27,
                28,
                29,
                30,
                31,
                32,
                33,
                34,
                35,
            ],
        ),
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
    # trinton.annotate_leaves_locally(selector=abjad.select.leaves),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.StartBeam(),
                abjad.StopBeam(),
            ]
        ),
        selector=trinton.select_leaves_by_index(
            [0, 2, 4, 8, 10, 13, 14, 15, 16, 19, 20, 23, 24, 35], grace=False
        ),
    ),
    # trinton.attachment_command(
    #     attachments=[
    #         abjad.Articulation("staccato")
    #     ],
    #     selector=trinton.select_leaves_by_index([0, 1,], pitched=True),
    #     direction=abjad.UP
    # ),
    # trinton.attachment_command(
    #     attachments=[
    #         abjad.Articulation("staccato")
    #     ],
    #     selector=trinton.select_leaves_by_index([4], pitched=True),
    # ),
    trinton.hooked_spanner_command(
        string="""CL""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True, grace=False),
        padding=0,
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
            r"- \tweak Y-extent ##f",
            r"- \tweak Y-offset -13",
        ],
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override TupletBracket.padding = #3", site="before"
            ),
        ],
        selector=abjad.select.tuplets,
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin(">o"), abjad.StopHairpin()],
        selector=trinton.select_leaves_by_index([16, 35]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override DynamicLineSpanner.staff-padding = 12"
            ),
        ],
        selector=trinton.select_leaves_by_index([16]),
    ),
    voice=score["violin 1 legno voice 2"],
)

# second violin music

# trinton.make_music(
#     lambda _: trinton.select_target(_, (1,)),
#     trinton.rewrite_meter_command(boundary_depth=-2),
#     voice=score["violin 2 voice"]
# )

# viola music

# cello music

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
    fermata="middle-fermata",
    voice_names=library.voice_names,
    font_size=10,
    clef_whitespace=True,
    blank=True,
    last_measure=False,
    # padding=-5,
    # extra_offset=2.5,
    tag=abjad.Tag("+SCORE"),
)

# tempi

for voice_name, padding in zip(library.voice_names, [19, 2, 2, 2]):
    trinton.make_music(
        lambda _: trinton.select_target(_, (1,)),
        trinton.attachment_command(
            attachments=[
                trinton.tempo_markup(
                    note_value=8,
                    tempo=60,
                    padding=padding,
                    note_head_fontsize=0.5,
                    stem_length=1.5,
                    text_fontsize=5.5,
                    dotted=False,
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
        voice=score[voice_name],
    )

for voice_name, padding, end_anchor in zip(
    library.voice_names,
    [14, 5, 5, 5],
    [
        13,
        -1,
        -1,
        -1,
    ],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (2, 3)),
        trinton.spanner_command(
            strings=[
                trinton.tempo_markup(
                    note_value=8,
                    tempo=160,
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
                    note_value=8,
                    tempo=160,
                    padding=0,
                    note_head_fontsize=0.5,
                    stem_length=1.5,
                    text_fontsize=5.5,
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

# for measure in [6, 12]:
#     trinton.make_music(
#         lambda _: trinton.select_target(_, (measure,)),
#         trinton.attachment_command(
#             attachments=[abjad.LilyPondLiteral(r"\pageBreak", site="absolute_after")],
#             selector=trinton.select_leaves_by_index([0]),
#             tag=abjad.Tag("+SCORE"),
#         ),
#         voice=score["Global Context"],
#     )
#
for measure in [
    3,
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

for measure in [
    1,
    2,
]:
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
    lambda _: trinton.select_target(_, (1, 4)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\set Score.proportionalNotationDuration = #(ly:make-moment 1/100)",
                site="before",
            ),
            abjad.LilyPondLiteral(
                r"\set Score.proportionalNotationDuration = #(ly:make-moment 1/20)",
                site="before",
            ),
            abjad.LilyPondLiteral(
                r"\set Score.proportionalNotationDuration = #(ly:make-moment 1/40)",
                site="before",
            ),
            abjad.LilyPondLiteral(
                r"\set Score.proportionalNotationDuration = #(ly:make-moment 1/20)",
                site="before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0, 1, 2, 3]),
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

# instrument names

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

# beautification

trinton.remove_redundant_time_signatures(score=score)

# extract parts

trinton.extract_parts(score=score)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/patterns/patterns/sections/01",
    build_path="/Users/trintonprater/scores/patterns/patterns/build",
    segment_name="01",
    includes=[
        "/Users/trintonprater/scores/patterns/patterns/build/patterns-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
