import abjad
import baca
import evans
import trinton
from abjadext import rmakers

score = trinton.make_empty_score(
    instruments=[
        abjad.Violin(),
    ],
    groups=[1],
    time_signatures=[(12, 8)],
)

# trinton.make_music(
#     lambda _: trinton.select_target(_, (1,)),
#     evans.RhythmHandler(evans.talea([1], 8)),
#     evans.PitchHandler(["c'"]),
#     evans.PitchHandler(
#         [
#             "1/1",
#             "135/128",
#             "9/8",
#             "1215/1024",
#             "5/4",
#             "10935/8192",
#             "45/32",
#             "3/2",
#             "405/256",
#             "27/16",
#             "3645/2048",
#             "15/8",
#         ],
#         as_ratios=True,
#     ),
#     trinton.force_accidentals_command(selector=trinton.pleaves()),
#     trinton.noteheads_only(),
#     voice=score["violin voice"],
# )

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.talea([1], 8)),
    evans.PitchHandler(["c'"]),
    evans.PitchHandler(
        [
            "1/1",
            ["1/1", "135/128"],
            ["1/1", "9/8"],
            ["1/1", "1215/1024"],
            ["1/1", "5/4"],
            ["1/1", "10935/8192"],
            ["1/1", "45/32"],
            ["1/1", "3/2"],
            ["1/1", "405/256"],
            ["1/1", "27/16"],
            ["1/1", "3645/2048"],
            ["1/1", "15/8"],
        ],
        as_ratios=True,
    ),
    voice=score["violin voice"],
)

# abjad.attach(
#     abjad.LilyPondLiteral(
#         r"\override Score.TimeSignature.stencil = ##f",
#         site="before"
#     ),
#     abjad.select.leaf(score["Global Context"], 0)
# )

trinton.make_sc_file(
    score=score,
    tempo=((1, 4), 30),
    current_directory="/Users/trintonprater/scores/patterns/patterns/etc/pitch",
)

# trinton.render_file(
#     score=score,
#     segment_path="/Users/trintonprater/scores/patterns/patterns/etc/pitch",
#     build_path="/Users/trintonprater/scores/patterns/patterns/etc/pitch",
#     segment_name="_just_scale_test",
#     includes=[
#         "/Users/trintonprater/scores/patterns/patterns/build/patterns-stylesheet.ily",
#         "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
#     ],
# )
