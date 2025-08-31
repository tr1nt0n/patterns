import abjad
import baca
import evans
import trinton
from patterns import sieve_structures

# number of measures in section

section_measures = []

for _ in sieve_structures.time_signature_move_list:
    if sum(section_measures) >= 300:
        pass
    else:
        measure_number = _ * 4
        section_measures.append(measure_number)


violin_1_material_amounts = []
violin_2_material_amounts = []
viola_material_amounts = []
cello_material_amounts = []

partitioned_tempo_list = abjad.select.partition_by_counts(
    sieve_structures.tempo_move_list, [4], cyclic=True, overhang=True
)

rotation_counter = 0

for group in partitioned_tempo_list:
    if len(cello_material_amounts) == len(section_measures):
        pass
    else:
        group = trinton.rotated_sequence(group, rotation_counter % 4)
        violin_1_material_amounts.append(group[0])
        violin_2_material_amounts.append(group[1])
        viola_material_amounts.append(group[2])
        cello_material_amounts.append(group[3])

        rotation_counter += 1

section_number_counter = 1

for (
    measure_amount,
    violin_1_material_amount,
    violin_2_material_amount,
    viola_material_amount,
    cello_material_amount,
) in zip(
    section_measures,
    violin_1_material_amounts,
    violin_2_material_amounts,
    viola_material_amounts,
    cello_material_amounts,
):
    print(f"Section {section_number_counter}.")
    print("\n")
    print(f"Amount of measures in section: {measure_amount}")
    print("\n")
    print(f"Amount of materials in first violin: {violin_1_material_amount}")
    print("\n")
    print(f"Amount of materials in second violin: {violin_2_material_amount}")
    print("\n")
    print(f"Amount of materials in viola: {viola_material_amount}")
    print("\n")
    print(f"Amount of materials in cello: {cello_material_amount}")
    print("\n")
    print("\n")

    section_number_counter += 1
