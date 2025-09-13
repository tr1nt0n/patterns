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

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.talea([1], 8)),
    evans.PitchHandler(["a"]),
    evans.PitchHandler(
        [
            "1/1",
            "4431/4064",
            "1151/1016",
            "1185/1016",
            "327/254",
            "1403/1016",
            "366/254",
            "6227/4064",
            "405/254",
            "3483/2032",
            "1819/1016",
            "233/127",
        ],
        as_ratios=True,
    ),
    trinton.force_accidentals_command(selector=trinton.pleaves()),
    trinton.noteheads_only(),
    voice=score["violin voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.talea([1], 8)),
    evans.PitchHandler(["a"]),
    evans.PitchHandler(
        [
            ["1/1"],
            ["1/1", "4431/4064"],
            ["1/1", "1151/1016"],
            ["1/1", "1185/1016"],
            ["1/1", "327/254"],
            ["1/1", "1403/1016"],
            ["1/1", "366/254"],
            ["1/1", "6227/4064"],
            ["1/1", "405/254"],
            ["1/1", "3483/2032"],
            ["1/1", "1819/1016"],
            ["1/1", "233/127"],
        ],
        as_ratios=True,
    ),
    # trinton.force_accidentals_command(
    #     selector=trinton.pleaves()
    # ),
    # trinton.noteheads_only(),
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
#     segment_name="_scale_test",
#     includes=[
#         "/Users/trintonprater/scores/patterns/patterns/build/patterns-stylesheet.ily",
#         "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
#     ],
# )
