import abjad
import baca
import evans
import trinton
from patterns import library
from patterns import sieve_structures

# b material time signatures

b_material_numerators = abjad.sequence.flatten(
    [
        library.cello_root,
        library.viola_root,
        library.second_violin_root,
        library.first_violin_root,
    ]
)

b_material_numerators = trinton.get_intervals_from_numbers(
    numbers=b_material_numerators, ordered=False, interval_classes=True
)

retrograded_b_material_numerators = abjad.PitchClassSegment(
    b_material_numerators
).retrograde()

alpha_retrograded_b_material_numerators = evans.Sequence(
    retrograded_b_material_numerators
).alpha(category=2)

new_b_material_numerators = trinton.shuffle(
    lists=[b_material_numerators, alpha_retrograded_b_material_numerators]
)

b_time_signatures = []

for numerator in new_b_material_numerators:
    if numerator % 2 == 0 and numerator != 10 or numerator == 1:
        time_signature = (numerator, 4)
    else:
        time_signature = (numerator, 8)

    if time_signature == (3, 8) or time_signature == (5, 8) or time_signature == (1, 4):
        new_time_signature = []
        for _ in time_signature:
            new_time_signature.append(_ * 2)
        time_signature = tuple(new_time_signature)

    b_time_signatures.append(time_signature)


def return_b_material_ts(measure_amount, index=0):
    ts_list = trinton.rotated_sequence(
        b_time_signatures, index % len(b_time_signatures)
    )
    out = ts_list[0:measure_amount]
    return out


# c material time signatures

c_material_numerators = abjad.sequence.flatten(
    [
        library.first_violin_root,
        library.second_violin_root,
        library.viola_root,
        library.cello_root,
    ]
)

c_material_numerators = trinton.get_intervals_from_numbers(
    numbers=c_material_numerators, ordered=False, interval_classes=True
)

retrograded_c_material_numerators = abjad.PitchClassSegment(
    c_material_numerators
).retrograde()

alpha_retrograded_c_material_numerators = evans.Sequence(
    retrograded_c_material_numerators
).alpha(category=1)

new_c_material_numerators = trinton.shuffle(
    lists=[c_material_numerators, alpha_retrograded_c_material_numerators]
)

final_c_material_numerators = []

for _ in new_c_material_numerators:
    if _ == 0:
        final_c_material_numerators.append(12)
    else:
        final_c_material_numerators.append(_)

c_time_signatures = []

for numerator in final_c_material_numerators:
    if numerator < 6:
        time_signature = (numerator, 4)
    else:
        time_signature = (numerator, 8)
    c_time_signatures.append(time_signature)


def return_c_material_ts(measure_amount, index=0):
    ts_list = trinton.rotated_sequence(
        c_time_signatures, index % len(c_time_signatures)
    )
    out = ts_list[0:measure_amount]
    return out


# d material time signatures

d_material_numerators = []

for v1, v2, va, vc in zip(
    library.first_violin_root,
    library.second_violin_root,
    library.viola_root,
    library.cello_root,
):
    d_material_numerators.append(v1)
    d_material_numerators.append(v2)
    d_material_numerators.append(va)
    d_material_numerators.append(vc)

retrograded_d_material_numerators = abjad.PitchClassSegment(
    d_material_numerators
).retrograde()

retrograde_inverted_d_material_numerators = abjad.PitchClassSegment(
    retrograded_d_material_numerators
).invert()

retrograde_inverted_d_material_numerators = [
    _.number for _ in retrograde_inverted_d_material_numerators
]

new_d_material_numerators = trinton.shuffle(
    [d_material_numerators, retrograde_inverted_d_material_numerators]
)

final_d_material_numerators = []

for _ in new_d_material_numerators:
    if _ == 0:
        final_d_material_numerators.append(12)
    else:
        final_d_material_numerators.append(_)

d_time_signatures = []

for numerator in final_d_material_numerators:
    if numerator < 8:
        time_signature = (numerator, 4)
    else:
        time_signature = (numerator, 8)
    d_time_signatures.append(time_signature)


def return_d_material_ts(measure_amount, index=0):
    ts_list = trinton.rotated_sequence(
        d_time_signatures, index % len(d_time_signatures)
    )
    out = ts_list[0:measure_amount]
    return out


# e material time signatures

numerators = sieve_structures.time_signature_move_list
e_time_signatures = [(_, 2) for _ in numerators]


def return_e_material_ts(measure_amount, index=0):
    ts_list = trinton.rotated_sequence(
        e_time_signatures, index % len(e_time_signatures)
    )
    out = ts_list[0:measure_amount]
    return out
