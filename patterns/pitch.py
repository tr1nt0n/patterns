import abjad
from abjadext import rmakers
import baca
import evans
import trinton
import itertools
from patterns import library
from patterns import sieve_structures


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

        handler = evans.PitchHandler(pitch_list=pitch_list)

        handler(selections)

    return do_pitching
