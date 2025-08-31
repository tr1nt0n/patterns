import abjad
import baca
import evans
import trinton


first_violin_root = [0, 9, 4, 3, 6, 1]
second_violin_root = [10, 8, 5, 7, 2, 5]
viola_root = [11, 7, 2, 5, 8]
cello_root = [1, 6, 3, 0, 4, 9, 10]


def pitch_class_segment_to_sieve(pitch_class_segment):
    denominator = sum(pitch_class_segment) + 1
    interval_list = []

    for i, _ in enumerate(pitch_class_segment):
        if i == 0:
            interval_list.append(_)
        else:
            new_integer = _ + sum(pitch_class_segment[0:i])
            interval_list.append(new_integer)

    pattern = abjad.index(interval_list, denominator)
    return pattern


def make_vector_list(sieve):
    if isinstance(sieve, list):
        vectors = []
        for subsieve in sieve:
            subvectors = subsieve.get_boolean_vector(total_length=len(subsieve))
            for vector in subvectors:
                vectors.append(vector)
    else:
        vectors = sieve.get_boolean_vector(total_length=len(sieve))

    vector_list = []

    for vector in vectors:
        vector_list.append(vector)

    return vector_list


v1_sieve = pitch_class_segment_to_sieve(first_violin_root)
v2_sieve = pitch_class_segment_to_sieve(second_violin_root)
va_sieve = pitch_class_segment_to_sieve(viola_root)
vc_sieve = pitch_class_segment_to_sieve(cello_root)

# first violin's traversal

first_violin_sieve_a = v1_sieve | vc_sieve
first_violin_sieve_b = va_sieve & v2_sieve
first_violin_final_sieve = first_violin_sieve_a ^ first_violin_sieve_b
first_violin_final_sieve = ~first_violin_final_sieve

partitioned_violin_1_sieve = abjad.select.partition_by_counts(
    make_vector_list(first_violin_final_sieve), [5], cyclic=True, overhang=True
)

first_violin_move_list = []

for subgroup in partitioned_violin_1_sieve:
    new_integer = sum(subgroup)
    first_violin_move_list.append(new_integer)

# first_violin_string = "\n"
#
# first_violin_counter = 1
#
# for _ in first_violin_move_list:
#     first_violin_string += f"{first_violin_counter}. {_}"
#     first_violin_string += "\n"
#     first_violin_counter += 1
#
# print("first violin:")
# print(first_violin_string)

# second violin's traversal

second_violin_sieve_a = v2_sieve | va_sieve
second_violin_sieve_b = v1_sieve & vc_sieve
second_violin_final_sieve = second_violin_sieve_a ^ second_violin_sieve_b
# second_violin_final_sieve = ~ second_violin_final_sieve

partitioned_violin_2_sieve = abjad.select.partition_by_counts(
    make_vector_list(second_violin_final_sieve), [5], cyclic=True, overhang=True
)

second_violin_move_list = []

for subgroup in partitioned_violin_2_sieve:
    new_integer = sum(subgroup)
    second_violin_move_list.append(new_integer)

# second_violin_string = "\n"
#
# second_violin_counter = 1
#
# for _ in second_violin_move_list:
#     second_violin_string += f"{second_violin_counter}. {_}"
#     second_violin_string += "\n"
#     second_violin_counter += 1
#
# print("second violin:")
# print(second_violin_string)

# viola's traversal

viola_sieve_a = v2_sieve | va_sieve
viola_sieve_b = v1_sieve & vc_sieve
viola_final_sieve = viola_sieve_a ^ viola_sieve_b
viola_final_sieve = ~viola_final_sieve

partitioned_viola_sieve = abjad.select.partition_by_counts(
    make_vector_list(viola_final_sieve), [5], cyclic=True, overhang=True
)

viola_move_list = []

for subgroup in partitioned_viola_sieve:
    new_integer = sum(subgroup)
    viola_move_list.append(new_integer)

# viola_string = "\n"
#
# viola_counter = 1
#
# for _ in viola_move_list:
#     viola_string += f"{viola_counter}. {_}"
#     viola_string += "\n"
#     viola_counter += 1
#
# print("viola:")
# print(viola_string)

# cello's traversal

cello_sieve_a = v1_sieve | vc_sieve
cello_sieve_b = va_sieve & v2_sieve
cello_final_sieve = cello_sieve_a ^ cello_sieve_b
# cello_final_sieve = ~ cello_final_sieve

partitioned_cello_sieve = abjad.select.partition_by_counts(
    make_vector_list(cello_final_sieve), [5], cyclic=True, overhang=True
)

cello_move_list = []

for subgroup in partitioned_cello_sieve:
    new_integer = sum(subgroup)
    cello_move_list.append(new_integer)

# cello_string = "\n"
#
# cello_counter = 1
#
# for _ in cello_move_list:
#     cello_string += f"{cello_counter}. {_}"
#     cello_string += "\n"
#     cello_counter += 1
#
# print("cello:")
# print(cello_string)

# time signature system traversal

time_signature_sieve_a = v1_sieve | vc_sieve
time_signature_sieve_b = va_sieve & v2_sieve
time_signature_final_sieve = time_signature_sieve_a ^ time_signature_sieve_b
time_signature_final_sieve = ~time_signature_final_sieve

partitioned_time_signature_sieve = abjad.select.partition_by_counts(
    make_vector_list(time_signature_final_sieve), [4], cyclic=True, overhang=True
)

time_signature_move_list = []

for subgroup in partitioned_time_signature_sieve:
    new_integer = sum(subgroup)
    time_signature_move_list.append(new_integer)

# time_signature_string = "\n"
#
# time_signature_counter = 1
#
# for _ in time_signature_move_list:
#     time_signature_string += f"{time_signature_counter}. {_}"
#     time_signature_string += "\n"
#     time_signature_counter += 1
#
# print("time signature system:")
# print(time_signature_string)

# tempo traversal

tempo_sieve_a = v2_sieve | va_sieve
tempo_sieve_b = v1_sieve & vc_sieve
tempo_final_sieve = tempo_sieve_a ^ tempo_sieve_b
tempo_final_sieve = ~tempo_final_sieve

partitioned_tempo_sieve = abjad.select.partition_by_counts(
    make_vector_list(tempo_final_sieve), [4], cyclic=True, overhang=True
)

tempo_move_list = []

for subgroup in partitioned_tempo_sieve:
    new_integer = sum(subgroup)
    tempo_move_list.append(new_integer)

# tempo_string = "\n"
#
# tempo_counter = 1
#
# for _ in tempo_move_list:
#     tempo_string += f"{tempo_counter}. {_}"
#     tempo_string += "\n"
#     tempo_counter += 1
#
# print("tempo system:")
# print(tempo_string)
