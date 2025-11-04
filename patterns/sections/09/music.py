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
        ts.return_c_material_ts(measure_amount=4, index=23),
        ts.return_d_material_ts(measure_amount=5, index=12),
        [(1, 4)],
    ],
)

score = library.patterns_score(
    section_ts,
)

# first violin music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 5)),
    evans.RhythmHandler(
        rhythm.rhythm_c(stage=4, instrument="violin 1", index=1),
    ),
    trinton.rewrite_meter_command(boundary_depth=-1),
    # trinton.annotate_leaves_locally(
    #     selector=abjad.select.leaves
    # ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [1, 3, 5, 6, 7, 8, 12, 13, 15, 16, 17, 18, 22, 23, 25, 26, 27, 28, 30, 32]
        ),
    ),
    voice=score["violin 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.PitchHandler([["3/2", "15/16"]], as_ratios=True),
    trinton.force_accidentals_command(
        selector=trinton.logical_ties(pitched=True, first=True)
    ),
    voice=score["violin 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 3)),
    trinton.aftergrace_command(
        slash=True,
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
        fraction=(15, 16),
    ),
    evans.PitchHandler([["1/1", "27/16"]], as_ratios=True),
    trinton.force_accidentals_command(
        selector=trinton.logical_ties(pitched=True, first=True)
    ),
    voice=score["violin 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    trinton.aftergrace_command(
        slash=True,
        selector=trinton.select_logical_ties_by_index([0], pitched=True, grace=False),
        fraction=(15, 16),
    ),
    evans.PitchHandler([["27/16", "5/2"]], as_ratios=True),
    trinton.force_accidentals_command(
        selector=trinton.logical_ties(pitched=True, first=True)
    ),
    voice=score["violin 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    trinton.aftergrace_command(
        slash=True,
        selector=trinton.select_logical_ties_by_index([1], pitched=True, grace=False),
        fraction=(15, 16),
    ),
    evans.PitchHandler([["5/2", "1215/256"]], as_ratios=True),
    trinton.force_accidentals_command(
        selector=trinton.logical_ties(pitched=True, first=True)
    ),
    voice=score["violin 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 5)),
    # trinton.annotate_leaves_locally(
    #     # selector=abjad.select.leaves
    #     selector=trinton.pleaves()
    # ),
    trinton.continuous_glissando(
        zero_padding=True,
        selector=trinton.select_leaves_by_index(
            [6, 7, 8, 9, 10, 11, 16, 17], pitched=True
        ),
        tweaks=[
            abjad.Tweak(r"- \tweak thickness #1.5"),
            abjad.Tweak(r"- \tweak bound-details.right.arrow ##t"),
        ],
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index([6, 8, 9, 11, 16, 17], pitched=True),
    ),
    trinton.change_notehead_command(
        notehead="harmonic",
        selector=trinton.select_leaves_by_index([0, 1, 3, 8, 9, 16], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\grace-half-harmonic", site="before")],
        selector=trinton.select_leaves_by_index([17], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\big-half-harmonic", site="before")],
        selector=trinton.select_leaves_by_index([18, 19, 20, 21], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin("o<"), abjad.Dynamic("f")],
        selector=trinton.select_leaves_by_index([0, 17], pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=r"""CLT, SP""",
        selector=trinton.select_logical_ties_by_index(
            [0, 3],
            first=True,
            pitched=True,
        ),
        padding=12,
        right_padding=-0.5,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="Two",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 0""",
            r"""- \tweak bound-details.left.Y #-1""",
            r"""- \tweak bound-details.right.Y #3.25""",
        ],
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup { "" }""",
            r"""\markup { \override #'(baseline-skip . 2) \column { \line { "1/2 CLT, MSP" } \line { "(hair on bridge, wood on string)" } } }""",
        ],
        selector=trinton.select_logical_ties_by_index(
            [3, 5, 5, 10], pitched=True, first=True
        ),
        style="solid-line-with-arrow",
        padding=15,
        right_padding=0,
        direction=None,
        full_string=True,
        end_hook=True,
        end_hook_right_padding=-0.5,
        command="Two",
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 0""",
        ],
    ),
    trinton.spanner_command(
        strings=[
            r"""\markup { "" }""",
            r"""\markup { \override #'(baseline-skip . 2) \column { \line { "1/2 CLT, Ord., 1/2 Scratch" } \line { "(hair and wood on string)" } } }""",
        ],
        selector=trinton.select_logical_ties_by_index(
            [10, 12], pitched=True, first=True
        ),
        style="solid-line-with-arrow",
        padding=15,
        right_padding=0,
        direction=None,
        full_string=True,
        end_hook=False,
        end_hook_right_padding=-0.5,
        command="Two",
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 0""",
            r"""- \tweak bound-details.left.Y #-0.5""",
            r"""- \tweak bound-details.right.Y #1""",
        ],
    ),
    trinton.hooked_spanner_command(
        string=r"""""",
        selector=trinton.select_logical_ties_by_index(
            [14, -1],
            first=True,
            pitched=True,
        ),
        padding=15,
        right_padding=3,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="Two",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 0""",
        ],
    ),
    voice=score["violin 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 9)),
    evans.RhythmHandler(evans.talea([-3, 3, -12, 4, -5, 4, -29, 6, -1000], 16)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler(["c'''"]),
    library.tablature_staff(
        selector=trinton.select_leaves_by_index([0]),
    ),
    # trinton.attachment_command(
    #     attachments=[
    #         abjad.LilyPondLiteral(
    #             [
    #                 r"\once \override Voice.NoteHead.layer = 2",
    #                 r"\once \override Voice.NoteHead.whiteout-style = #'outline",
    #                 r"\once \override Voice.NoteHead.whiteout = 1",
    #             ],
    #             site="before",
    #         )
    #     ],
    #     selector=trinton.pleaves(),
    # ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = #-7", site="before"
            )
        ],
        selector=abjad.select.rests,
    ),
    # trinton.annotate_leaves_locally(selector=abjad.select.leaves),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                2,
                3,
                6,
                7,
                8,
                9,
                10,
                11,
                12,
                13,
            ]
        ),
    ),
    trinton.manual_beam_positions(
        positions=(-6, -6),
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                2,
                3,
                6,
                7,
                8,
                9,
                10,
                11,
            ]
        ),
    ),
    trinton.manual_beam_positions(
        positions=(-6, -8), selector=trinton.select_leaves_by_index([12, 13])
    ),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(
            evans.accelerando(
                [(1, 8), (1, 20), (1, 16)],
                [(1, 8), (1, 20), (1, 16)],
                [(1, 20), (1, 8), (1, 16)],
            )
        ),
        direction=abjad.UP,
        voice_name="violin 1 bow voice",
        temp_name="fingers",
        preprocessor=trinton.fuse_sixteenths_preprocessor(
            (3, 3, 12, 4, 5, 4, 29, 6, 100)
        ),
    ),
    voice=score["violin 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 9)),
    trinton.force_rest(selector=trinton.select_tuplets_by_index([0, 2, 4, 6, 8])),
    trinton.treat_tuplets(),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler(["c'''"]),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\voiceOne")],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.change_notehead_command(notehead="cross", selector=trinton.pleaves()),
    # trinton.annotate_leaves_locally(
    #     selector=trinton.pleaves()
    # ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.bundle(
                    abjad.StartSlur(),
                    r"""- \tweak color #(css-color 'darkred)""",
                ),
                abjad.StopSlur(),
            ]
        ),
        selector=trinton.select_leaves_by_index(
            [0, 1, 2, 4, 5, 8, 9, 13], pitched=True
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Articulation("staccato"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
        ],
        selector=trinton.logical_ties(first=True, pitched=True),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = #7", site="before"
            )
        ],
        selector=abjad.select.rests,
    ),
    library.color_voice(),
    trinton.linear_attachment_command(
        attachments=[
            # abjad.LilyPondLiteral(
            #     r"\once \override DynamicLineSpanner.staff-padding = #-4.5",
            #     site="before",
            # ),
            abjad.Dynamic("mp"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("p"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("p"),
            # abjad.LilyPondLiteral(
            #     r"\once \override DynamicLineSpanner.staff-padding = #-5", site="before"
            # ),
        ],
        selector=trinton.select_leaves_by_index(
            [0, 5, 5, 7, 7, 8, 9, 9, 11, 11, 13], pitched=True
        ),
    ),
    trinton.hooked_spanner_command(
        string=r"""II + III, DP""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=17.5,
        direction=None,
        right_padding=3,
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
        string=r"""CLB""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=15,
        direction=None,
        right_padding=3,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="Two",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 2""",
            r"""- \tweak color #(css-color 'darkred)""",
            # r"""- \tweak bound-details.left.Y #5.5""",
            # r"""- \tweak bound-details.right.Y #7""",
        ],
    ),
    voice=score["violin 1 bow voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10,)),
    library.tablature_staff(
        selector=trinton.select_leaves_by_index([0]),
        reset=True,
        reset_staff_lines=5,
    ),
    voice=score["violin 2 voice"],
)

# second violin music

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 6)),
    evans.RhythmHandler(rhythm.rhythm_d(stage=3, instrument="violin 2", index=1)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    # trinton.annotate_leaves_locally(selector=trinton.logical_ties(first=True)),
    trinton.force_rest(
        selector=trinton.select_logical_ties_by_index([0, 1, 3, 4, 6, 8], pitched=True)
    ),
    evans.RewriteMeterCommand(boundary_depth=-1),
    pitch.pitch_d(
        instrument="violin",
        string_range_pairs=[
            ("II", (0, 2)),
            ("III", (3, 5)),
        ],
        stage=3,
        index=0,
        initial_seed=7,
        selector=trinton.logical_ties(pitched=True, grace=False),
    ),
    trinton.force_accidentals_command(
        selector=trinton.logical_ties(first=True, pitched=True)
    ),
    library.d_stage_3_noteheads(),
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
    # trinton.annotate_leaves_locally(selector=abjad.select.leaves),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [0, 2, 4, 5, 8, 9, 11, 13, 14, 15, 16, 17, 19, 20]
        ),
    ),
    trinton.hooked_spanner_command(
        string=r"""MSP""",
        selector=trinton.select_leaves_by_index(
            [0, -1],
            pitched=True,
        ),
        padding=13,
        right_padding=3,
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
    trinton.attachment_command(
        attachments=[
            abjad.Dynamic("mp"),
        ],
        selector=trinton.select_leaves_by_index([2]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Dynamic("mp"),
        ],
        selector=trinton.select_leaves_by_index([9]),
        direction=abjad.UP,
    ),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(
            evans.tuplet(
                [
                    (-1,),
                    (1, 1, 1, 1, 1, 1, 1),
                    (-1,),
                    (-2, 1, 1, 1, 1),
                    (-1,),
                    (-6, 2, 1, 1, 2, -2),
                    (-1,),
                    (1, 1, 1),
                    (-1,),
                ]
            )
        ),
        direction=abjad.DOWN,
        voice_name="violin 2 legno voice",
        temp_name="hair",
        preprocessor=trinton.fuse_eighths_preprocessor((15, 3, 2, 2, 3, 3, 5, 8, 100)),
    ),
    voice=score["violin 4 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 6)),
    rmakers.rewrite_dots,
    trinton.respell_tuplets_command(rewrite_brackets=False),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler(["a"]),
    trinton.change_notehead_command(notehead="cross", selector=trinton.pleaves()),
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
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = #-8.5", site="before"
            )
        ],
        selector=abjad.select.rests,
    ),
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
    # trinton.annotate_leaves_locally(
    #     # selector=abjad.select.leaves,
    #     selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    #     direction=abjad.DOWN
    # ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([4, 6, 7, 10, 12, 16, 20, 24, 27, -1]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Dynamic("p"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
            abjad.bundle(
                abjad.StartHairpin("<"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
            abjad.bundle(
                abjad.Dynamic("mf"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
            abjad.bundle(
                abjad.StartHairpin(">"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
            abjad.bundle(
                abjad.Dynamic("p"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
            abjad.bundle(
                abjad.Dynamic("p"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
            abjad.bundle(
                abjad.StartHairpin("<"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
            abjad.bundle(
                abjad.Dynamic("mf"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
            abjad.bundle(
                abjad.Dynamic("mf"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
            abjad.bundle(
                abjad.StartHairpin(">"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
            abjad.bundle(
                abjad.Dynamic("p"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
            abjad.bundle(
                abjad.Dynamic("mf"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 3, 3, 6, 7, 7, 10, 11, 11, 14, 15], first=True, pitched=True
        ),
        direction=abjad.DOWN,
    ),
    trinton.hooked_spanner_command(
        string="CLB OB",
        selector=trinton.select_leaves_by_index([0, -1], grace=False, pitched=True),
        padding=16,
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
    voice=score["violin 2 legno voice"],
)

voice_counter = 1
for measure, index in zip([7, 9], [9, 1]):
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        evans.RhythmHandler(
            rhythm.rhythm_e(lower_voice=False, index=index, shorten=True)
        ),
        trinton.IntermittentVoiceHandler(
            evans.RhythmHandler(
                rhythm.rhythm_e(index=index, lower_voice=True, shorten=True)
            ),
            direction=abjad.DOWN,
            voice_name=rf"violin 2 lower voice {voice_counter}",
            preprocessor=trinton.fuse_eighths_preprocessor((12, 9, 8)),
            temp_name=rf"upper {voice_counter}",
        ),
        voice=score["violin 4 voice"],
    )
    voice_counter += 1

trinton.make_music(
    lambda _: trinton.select_target(_, (7,)),
    pitch.pitch_e(
        instrument="violin 2", selector=trinton.pleaves(), index=4, retrograde=False
    ),
    trinton.octavation(octave=1, selector=trinton.pleaves()),
    trinton.force_rest(selector=trinton.select_leaves_by_index([0, 3], pitched=True)),
    trinton.fuse_tuplet_rests_command(),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\voiceOne")],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["violin 4 voice upper 1"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7,)),
    pitch.pitch_e(
        instrument="violin 2", selector=trinton.pleaves(), index=20, retrograde=True
    ),
    trinton.octavation(octave=1, selector=trinton.pleaves()),
    trinton.force_rest(
        selector=trinton.select_leaves_by_index([0, 3, 4], pitched=True)
    ),
    trinton.fuse_tuplet_rests_command(),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\voiceTwo")],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("mp"), abjad.Dynamic("mf")],
        selector=trinton.pleaves(),
    ),
    trinton.hooked_spanner_command(
        string=r"""1/2 CLB""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=12,
        direction=None,
        right_padding=10,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="Two",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 2""",
            # r"""- \tweak bound-details.left.Y #5.5""",
            # r"""- \tweak bound-details.right.Y #7""",
        ],
    ),
    voice=score["violin 2 lower voice 1"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9,)),
    pitch.pitch_e(
        instrument="violin 2", selector=trinton.pleaves(), index=20, retrograde=True
    ),
    trinton.octavation(octave=1, selector=trinton.pleaves()),
    trinton.force_rest(selector=trinton.select_leaves_by_index([3, 4], pitched=True)),
    trinton.fuse_tuplet_rests_command(),
    trinton.linear_attachment_command(
        attachments=[abjad.StartBeam(), abjad.StopBeam()],
        selector=trinton.select_leaves_by_index([0, 4]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = #10.5", site="before"
            )
        ],
        selector=abjad.select.rests,
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("f"), abjad.StartHairpin(">"), abjad.Dynamic("mp")],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=r"""CLB""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=12,
        direction=None,
        right_padding=3,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="Two",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 2""",
            # r"""- \tweak bound-details.left.Y #5.5""",
            # r"""- \tweak bound-details.right.Y #7""",
        ],
    ),
    voice=score["violin 4 voice upper 2"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9,)),
    pitch.pitch_e(
        instrument="violin 2", selector=trinton.pleaves(), index=4, retrograde=False
    ),
    trinton.octavation(octave=1, selector=trinton.pleaves()),
    trinton.force_rest(selector=trinton.select_leaves_by_index([2, 3], pitched=True)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    trinton.linear_attachment_command(
        attachments=[abjad.StartBeam(), abjad.StopBeam()],
        selector=trinton.select_leaves_by_index([0, 3]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = #0", site="before"
            )
        ],
        selector=abjad.select.rests,
    ),
    voice=score["violin 2 lower voice 2"],
)

# viola music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 9)),
    evans.RhythmHandler(rhythm.rhythm_d(stage=2, instrument="viola", index=1)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    # trinton.annotate_leaves_locally(selector=trinton.logical_ties(first=True)),
    trinton.force_rest(
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 4, 8, 10, 15, 20, 25, 27, 31, 32, 34, 35, 37, 38, 40, 41, 47],
            pitched=True,
        )
    ),
    evans.RewriteMeterCommand(boundary_depth=-1),
    pitch.pitch_d(
        instrument="viola",
        string_range_pairs=[
            ("III", (0, 13)),
            ("IV", (14, 17)),
            ("I", (18, 21)),
            ("II", (22, 23)),
            ("III", (24, 29)),
            ("IV", (30, 30)),
        ],
        stage=2,
        index=0,
        initial_seed=15,
        selector=trinton.logical_ties(pitched=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("alto")], selector=trinton.select_leaves_by_index([0])
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
    # trinton.annotate_leaves_locally(
    #     # selector=abjad.select.leaves,
    #     selector=trinton.logical_ties(first=True, pitched=True, grace=False)
    # ),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\big-half-harmonic", site="before")],
        selector=trinton.pleaves(),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [
                1,
                3,
                4,
                7,
                8,
                11,
                12,
                13,
                16,
                20,
                21,
                24,
                25,
                26,
                29,
                31,
                35,
                36,
                38,
                39,
                40,
                41,
                42,
                45,
                47,
                51,
                53,
                54,
                61,
                64,
                65,
                66,
            ]
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BeamCount(left=1, right=2),
            abjad.BeamCount(left=2, right=1),
        ],
        selector=trinton.select_leaves_by_index([17, 19]),
    ),
    trinton.hooked_spanner_command(
        string=r"""MSP""",
        selector=trinton.select_leaves_by_index(
            [0, -1],
            pitched=True,
        ),
        padding=13,
        right_padding=3,
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
    trinton.attachment_command(
        attachments=[
            abjad.Dynamic("mp"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 25], first=True, pitched=True
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Dynamic("mp"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [18, 27], first=True, pitched=True
        ),
        direction=abjad.UP,
    ),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(
            evans.tuplet(
                [
                    (-1,),
                    (2, -1),
                    (-1, 4, -1, 1, -3, 10),
                    (3, -1),
                    (3, -5, 2),
                    (2, -1),
                    (-4, 1, 2, 1, 1, 1),
                    (-1,),
                    (-1, 1, 1, 1, 1, 1, -1),
                    (-1,),
                    (-2, 2, 1, 1, 2, 1, 1),
                    (-1,),
                    (1, 1, 1, 1, 4, 4),
                    (-1,),
                    (-1, 1, 1, 1, -1),
                    (-1,),
                    (-2, 4, 1, 1),
                    (1, 1, 1),
                    (-1,),
                ]
            )
        ),
        direction=abjad.DOWN,
        voice_name="viola legno voice",
        temp_name="strings",
        preprocessor=trinton.fuse_eighths_preprocessor(
            (
                3,
                2,
                10,
                4,
                10,
                4,
                3,
                3,
                3,
                2,
                3,
                5,
                3,
                1,
                3,
                6,
                9,
                2,
                100,
            )
        ),
    ),
    voice=score["viola 2 voice"],
    preprocessor=trinton.fuse_preprocessor((1, 1, 1, 1, 1, 1, 2, 1)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 9)),
    rmakers.rewrite_dots,
    trinton.respell_tuplets_command(rewrite_brackets=False),
    trinton.attachment_command(
        attachments=[abjad.Tie()],
        selector=trinton.select_logical_ties_by_index(
            [6], last=True, pitched=True, grace=False
        ),
    ),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler(["g,"]),
    trinton.change_notehead_command(
        notehead="cross",
        selector=trinton.durational_selector(
            durations=[
                abjad.Duration((1, 8)),
                abjad.Duration((1, 16)),
                abjad.Duration((1, 32)),
            ],
            preselector=trinton.logical_ties(pitched=True, grace=False),
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
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = #-8.5", site="before"
            )
        ],
        selector=abjad.select.rests,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Articulation("staccato"),
                r"""- \tweak color #(css-color 'darkred)""",
            )
        ],
        selector=trinton.durational_selector(
            durations=[
                abjad.Duration((1, 8)),
                abjad.Duration((1, 16)),
                abjad.Duration((1, 32)),
            ],
            preselector=trinton.logical_ties(pitched=True, grace=False),
            first=True,
        ),
        direction=abjad.UP,
    ),
    # trinton.annotate_leaves_locally(
    #     selector=abjad.select.leaves,
    #     # selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    #     direction=abjad.DOWN
    # ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [
                3,
                5,
                6,
                9,
                10,
                11,
                14,
                15,
                17,
                18,
                24,
                26,
                27,
                29,
                32,
                38,
                41,
                47,
                50,
                54,
                55,
                56,
                58,
                62,
                66,
                67,
                68,
                70,
            ]
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Dynamic("p"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
            abjad.bundle(
                abjad.StartHairpin("<"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
            abjad.bundle(
                abjad.Dynamic("mf"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
            abjad.bundle(
                abjad.StartHairpin(">"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
            abjad.bundle(
                abjad.Dynamic("p"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
            abjad.bundle(
                abjad.Dynamic("p"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
            abjad.bundle(
                abjad.StartHairpin("<"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
            abjad.bundle(
                abjad.Dynamic("mf"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
            abjad.bundle(
                abjad.StartHairpin(">"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
            abjad.bundle(
                abjad.Dynamic("p"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
            abjad.bundle(
                abjad.Dynamic("p"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
            abjad.bundle(
                abjad.StartHairpin("<"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
            abjad.bundle(
                abjad.Dynamic("mf"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
            abjad.bundle(
                abjad.StartHairpin(">"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
            abjad.bundle(
                abjad.Dynamic("p"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
            abjad.bundle(
                abjad.Dynamic("p"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
            abjad.bundle(
                abjad.StartHairpin("<"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
            abjad.bundle(
                abjad.Dynamic("mf"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
            abjad.bundle(
                abjad.StartHairpin(">"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
            abjad.bundle(
                abjad.Dynamic("p"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
            abjad.bundle(
                abjad.Dynamic("p"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
            abjad.bundle(
                abjad.Dynamic("mf"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
            abjad.bundle(
                abjad.Dynamic("p"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
            abjad.bundle(
                abjad.Dynamic("p"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
            abjad.bundle(
                abjad.StartHairpin("<"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
            abjad.bundle(
                abjad.Dynamic("f"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
            abjad.bundle(
                abjad.StartHairpin(">"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
            abjad.bundle(
                abjad.Dynamic("p"),
                r"""- \tweak color #(css-color 'darkred)""",
            ),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                7,
                7,
                9,
                9,
                11,
                12,
                12,
                14,
                14,
                16,
                17,
                17,
                20,
                20,
                22,
                23,
                23,
                26,
                26,
                28,
                29,
                30,
                31,
                33,
                33,
                35,
                35,
                37,
            ],
            first=True,
            pitched=True,
        ),
        direction=abjad.DOWN,
    ),
    trinton.hooked_spanner_command(
        string="CLT DP",
        selector=trinton.select_leaves_by_index(
            [1, 6],
        ),
        padding=15.5,
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
    trinton.hooked_spanner_command(
        string="CLT DP",
        selector=trinton.select_leaves_by_index(
            [11, 22],
        ),
        padding=13,
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
    trinton.hooked_spanner_command(
        string="CLT DP",
        selector=trinton.select_leaves_by_index(
            [65, 66],
        ),
        padding=16,
        direction="down",
        right_padding=-1.5,
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
    trinton.hooked_spanner_command(
        string="CLB OB",
        selector=trinton.select_leaves_by_index(
            [7, 10],
        ),
        padding=12,
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
    trinton.hooked_spanner_command(
        string="CLB OB",
        selector=trinton.select_leaves_by_index(
            [25, 61, 66, 70],
        ),
        padding=17,
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

# cello music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 4)),
    evans.RhythmHandler(rhythm.rhythm_b(stage=2, instrument="cello", index=0)),
    trinton.force_rest(
        selector=trinton.select_logical_ties_by_index(
            [5, 8, 10, 13, 14, 22, 26, 28, 30], pitched=True, grace=False
        )
    ),
    trinton.rewrite_meter_command(boundary_depth=-1),
    trinton.aftergrace_command(
        slash=True,
        selector=trinton.select_logical_ties_by_index(
            [7, 20, 21], pitched=True, grace=False
        ),
        fraction=(15, 16),
    ),
    # trinton.annotate_leaves_locally(
    #     # selector=trinton.pleaves(),
    #     # selector=trinton.logical_ties(first=True, pitched=True, grace=False)
    #     # selector=abjad.select.leaves
    # ),
    evans.PitchHandler(
        [
            "cs,",
            "ds,",
            "dqf,",
            "e,",
            "cqs,",
            "cs,",
            "ds,",
            "e,",
            "gqf,",
            "fs,",
            "gqs,",
            "g,",
            "bf,",
            "af,",
            "b,",
            "a,",
            "aqs,",
            "f",
            "a",
            "fs",
            "d'",
            "e'",
            "g'",
            "gs'",
            "d''",
        ]
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Clef("bass"), abjad.Clef("tenor"), abjad.Clef("treble")],
        selector=trinton.select_logical_ties_by_index(
            [0, 17, 21], first=True, pitched=True, grace=False
        ),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [0, 4, 5, 7, 11, 12, 14, 18, 19, 21, 22, 23, 24, 25], grace=False
        ),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index(
            [0, 4, 5, 6, 7, 8, 21, 22, 23, 24], pitched=True
        ),
    ),
    trinton.continuous_glissando(
        zero_padding=True,
        selector=trinton.pleaves(exclude=[4, 6, 8, 10, 17, 20, 22, 24]),
    ),
    trinton.continuous_glissando(
        zero_padding=True,
        selector=trinton.select_leaves_by_index(
            [3, 4, 5, 6, 7, 8, 9, 10, 16, 17, 19, 20, 21, 22, 23, 24], pitched=True
        ),
        tweaks=[
            abjad.Tweak(r"- \tweak thickness #1.5"),
            abjad.Tweak(r"- \tweak bound-details.right.arrow ##t"),
        ],
    ),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\big-half-harmonic", site="before")],
        selector=trinton.select_leaves_by_index(
            [0, 1, 2, 3, 10, 11, 12, 13, 14, 15, 16], pitched=True
        ),
    ),
    trinton.change_notehead_command(
        notehead="harmonic",
        selector=trinton.select_leaves_by_index(
            [4, 5, 8, 9, 17, 18, 19, 22, 23], pitched=True
        ),
    ),
    trinton.hooked_spanner_command(
        string=r"""SP""",
        selector=trinton.select_logical_ties_by_index(
            [0, 10],
            first=True,
            pitched=True,
        ),
        padding=6,
        right_padding=3,
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
        strings=["SP", "ST"],
        selector=trinton.select_logical_ties_by_index(
            [11, 16, 16, -1], pitched=True, first=True
        ),
        style="solid-line-with-arrow",
        padding=10.5,
        right_padding=0,
        direction=None,
        full_string=False,
        end_hook=True,
        end_hook_right_padding=3,
        command="Two",
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 1""",
        ],
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
        ],
        selector=trinton.select_logical_ties_by_index([0], first=True, pitched=True),
    ),
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 9)),
    evans.RhythmHandler(
        rhythm.rhythm_c(stage=3, instrument="cello", index=11),
    ),
    trinton.rewrite_meter_command(boundary_depth=-1),
    # trinton.annotate_leaves_locally(
    #     selector=abjad.select.leaves
    # ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [
                2,
                3,
                5,
                6,
                8,
                9,
                10,
                12,
                13,
                14,
                16,
                17,
                19,
                21,
                23,
                24,
                27,
                30,
                32,
                34,
                36,
                37,
            ]
        ),
    ),
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    evans.PitchHandler([["2/1", "1215/512"]], as_ratios=True),
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    evans.PitchHandler([["45/32", "2/1"]], as_ratios=True),
    voice=score["cello 2 voice"],
)


trinton.make_music(
    lambda _: trinton.select_target(_, (7,)),
    evans.PitchHandler([["135/128", "45/32"]], as_ratios=True),
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8,)),
    evans.PitchHandler([["3645/4096", "135/128"]], as_ratios=True),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")], selector=trinton.select_leaves_by_index([0])
    ),
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9,)),
    evans.PitchHandler([["27/64", "3645/4096"]], as_ratios=True),
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 9)),
    trinton.force_accidentals_command(
        selector=trinton.logical_ties(first=True, pitched=True)
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\big-half-harmonic", site="before"),
            abjad.Articulation("staccato"),
            abjad.Articulation(">"),
        ],
        selector=trinton.durational_selector(
            durations=[abjad.Duration((1, 16))],
            preselector=trinton.logical_ties(pitched=True),
            first=True,
        ),
    ),
    # trinton.annotate_leaves_locally(
    #     # selector=trinton.pleaves()
    #     selector=trinton.logical_ties(pitched=True, first=True)
    # ),
    trinton.change_notehead_command(
        notehead="harmonic",
        selector=trinton.select_leaves_by_index(
            [3, 4, 5, 7, 14, 22, 23, 24, 27, 34], pitched=True
        ),
    ),
    trinton.continuous_glissando(
        zero_padding=True,
        selector=trinton.select_leaves_by_index(
            [9, 10, 14, 15, 16, 20, 21, 22, 24, 25, 27, 28, 29, 32, 33, 34],
            pitched=True,
        ),
        tweaks=[
            abjad.Tweak(r"- \tweak thickness #1.5"),
            abjad.Tweak(r"- \tweak bound-details.right.arrow ##t"),
        ],
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Dynamic("f"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [2, 5, 9, 14, 16, 25], first=True, pitched=True
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Dynamic("mp"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [3, 6, 10, 15, 18, 27], first=True, pitched=True
        ),
    ),
    trinton.hooked_spanner_command(
        string=r"""1/2 CLT""",
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
            r"""- \tweak font-size 0""",
        ],
    ),
    trinton.hooked_spanner_command(
        string=r"""Scr.""",
        selector=trinton.select_leaves_by_index(
            [2, 3],
            pitched=True,
        ),
        padding=9.5,
        right_padding=-3,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="Two",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 0""",
        ],
    ),
    trinton.hooked_spanner_command(
        string=r"""Scr.""",
        selector=trinton.select_leaves_by_index(
            [10, 11, 16, 17],
            pitched=True,
        ),
        padding=12.5,
        right_padding=-3,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="Two",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 0""",
        ],
    ),
    trinton.hooked_spanner_command(
        string=r"""Scr.""",
        selector=trinton.select_leaves_by_index(
            [18, 20, 30, 32],
            pitched=True,
        ),
        padding=10.5,
        right_padding=-3,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="Two",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 0""",
        ],
    ),
    voice=score["cello 2 voice"],
)

# globals

# final barline

trinton.make_music(
    lambda _: trinton.select_target(_, (10,)),
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
    measures=[10],
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
    [
        "violin 2 voice",
        "violin 4 voice",
        "viola 2 voice strings",
        "cello 2 voice",
    ],
    [
        1,
        0.5,
        2,
        0.5,
    ],
    [
        0,
        0,
        0,
        -7,
    ],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (1,)),
        trinton.attachment_command(
            attachments=[
                trinton.tempo_markup(
                    note_value=4,
                    tempo=50,
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

for voice_name, padding, hspace in zip(
    [
        "violin 2 voice fingers",
        "violin 4 voice upper 1",
        "viola 2 voice strings",
        "cello 2 voice",
    ],
    [
        3,
        2,
        2,
        6,
    ],
    [
        -13,
        -6,
        0,
        0,
    ],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (7,)),
        trinton.attachment_command(
            attachments=[
                trinton.tempo_markup(
                    note_value=4,
                    tempo=125,
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
    10,
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

for measure in [1, 3, 8, 9]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\noBreak", site="absolute_after")],
            selector=trinton.select_leaves_by_index([0]),
            tag=abjad.Tag("+SCORE"),
        ),
        voice=score["Global Context"],
    )

for measure in [2, 4, 5, 6, 7]:
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
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (12 14 20 30)))",
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
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (12 27 27 30)))",
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
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (12 23 36 36)))",
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
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (12 24.5 33 34)))",
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
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (13.5 26.5 26.5 35)))",
                site="absolute_before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (11 26.5 26.5 37)))",
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

# extract parts

trinton.extract_parts(score=score)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/patterns/patterns/sections/09",
    build_path="/Users/trintonprater/scores/patterns/patterns/build",
    segment_name="09",
    includes=[
        "/Users/trintonprater/scores/patterns/patterns/build/patterns-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
