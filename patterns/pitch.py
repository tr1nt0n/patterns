import abjad
from abjadext import rmakers
import baca
import evans
import trinton
import itertools
from patterns import library
from patterns import sieve_structures


def get_interval_list_from_sieve(vector_list):
    interval_counter = 1
    interval_list = []
    for i, vector in enumerate(vector_list[0:-2]):
        if vector_list[i + 1] == 0:
            interval_counter += 1
        else:
            interval_list.append(interval_counter)
            interval_counter = 1
    return interval_list


def pitch_b(instrument, selector=trinton.pleaves(), base_pitch=0, index=0):
    def do_pitching(argument):
        selections = selector(argument)
        _instrument_to_sieve = {
            "violin 1": sieve_structures.make_vector_list(
                sieve_structures.second_violin_final_sieve
            ),
            "violin 2": sieve_structures.make_vector_list(
                sieve_structures.viola_final_sieve
            ),
            "viola": sieve_structures.make_vector_list(
                sieve_structures.cello_final_sieve
            ),
            "cello": sieve_structures.make_vector_list(
                sieve_structures.first_violin_final_sieve
            ),
        }

        interval_list = get_interval_list_from_sieve(
            vector_list=_instrument_to_sieve[instrument]
        )
        interval_list = trinton.remove_adjacent(interval_list)

        pitch_list = [base_pitch]

        for i, interval in enumerate(interval_list):
            if i % 2 == 0:
                pitch = pitch_list[-1] + interval
            else:
                pitch = pitch_list[-1] - interval
            pitch = pitch % 12
            pitch_list.append(pitch)

        pitch_list = trinton.rotated_sequence(pitch_list, index % len(pitch_list))

        handler = evans.PitchHandler(pitch_list=pitch_list)

        handler(selections)

    return do_pitching


def pitch_e(instrument, selector=trinton.pleaves(), index=0):
    def do_pitching(argument):
        selections = selector(argument)
        _instrument_to_pitch_information = {
            "violin 1": (
                library.first_violin_root,
                sieve_structures.make_vector_list(sieve_structures.cello_final_sieve),
            ),
            "violin 2": (
                library.second_violin_root,
                sieve_structures.make_vector_list(
                    sieve_structures.first_violin_final_sieve
                ),
            ),
            "viola": (
                library.viola_root,
                sieve_structures.make_vector_list(
                    sieve_structures.second_violin_final_sieve
                ),
            ),
            "cello": (
                library.cello_root,
                sieve_structures.make_vector_list(sieve_structures.viola_final_sieve),
            ),
        }

        relevant_pair = _instrument_to_pitch_information[instrument]
        relevant_root = relevant_pair[0]
        relevant_sieve = relevant_pair[-1]

        interval_list = get_interval_list_from_sieve(vector_list=relevant_sieve)

        partitioned_interval_list = abjad.select.partition_by_counts(
            interval_list, [len(relevant_root)], cyclic=True, overhang=True
        )

        pitch_list = []

        for partitioned_intervals in partitioned_interval_list:
            for pitch, interval in zip(partitioned_intervals, relevant_root.copy()):
                if pitch % 2 == 0:
                    new_pitch = pitch - interval
                else:
                    new_pitch = pitch + interval

                new_pitch = new_pitch % 12
                pitch_list.append(new_pitch)

        pitch_list = trinton.rotated_sequence(pitch_list, index % len(pitch_list))

        handler = evans.PitchHandler(pitch_list=pitch_list)

        handler(selections)

    return do_pitching
