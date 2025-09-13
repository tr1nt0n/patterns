import abjad
from abjadext import rmakers
import baca
import evans
import trinton
import itertools
import random
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


def pitch_d(
    instrument,
    string_range_pairs,
    stage=1,
    index=0,
    initial_seed=5,
    selector=trinton.logical_ties(pitched=True, grace=False),
):
    def do_pitching(argument):
        selections = selector(argument)
        _instrument_to_string_dict = {
            "violin": {
                "IV": [
                    "af",
                    "aqf",
                    "a",
                    "aqs",
                    "bf",
                    "bqf",
                    "b",
                    "bqs",
                    "c'",
                    "cqs'",
                    "cs'",
                    "dqs'",
                ],
                "III": [
                    "ef'",
                    "eqf'",
                    "e'",
                    "eqs'",
                    "f'",
                    "fqs'",
                    "fs'",
                    "gqf'",
                    "g'",
                    "gqs'",
                    "af'",
                    "aqf'",
                ],
                "II": [
                    "bf'",
                    "bqf'",
                    "b'",
                    "bqs'",
                    "c''",
                    "cqs''",
                    "cs''",
                    "dqf''",
                    "d''",
                    "dqs''",
                    "ef''",
                    "eqf''",
                ],
                "I": [
                    "f''",
                    "fqs''",
                    "fs''",
                    "gqf''",
                    "g''",
                    "gqs''",
                    "af''",
                    "aqf''",
                    "a''",
                    "aqs''",
                    "bf''",
                    "bqf''",
                ],
            },
            "viola": {
                "IV": [
                    "cs",
                    "cqs",
                    "d",
                    "dqs",
                    "ef",
                    "eqf",
                    "e",
                    "eqs",
                    "f",
                    "fqs",
                    "fs",
                    "gqf",
                ],
                "III": [
                    "af",
                    "aqf",
                    "a",
                    "aqs",
                    "bf",
                    "bqf",
                    "b",
                    "bqs",
                    "c'",
                    "cqs'",
                    "cs'",
                    "dqs'",
                ],
                "II": [
                    "ef'",
                    "eqf'",
                    "e'",
                    "eqs'",
                    "f'",
                    "fqs'",
                    "fs'",
                    "gqf'",
                    "g'",
                    "gqs'",
                    "af'",
                    "aqf'",
                ],
                "I": [
                    "bf'",
                    "bqf'",
                    "b'",
                    "bqs'",
                    "c''",
                    "cqs''",
                    "cs''",
                    "dqf''",
                    "d''",
                    "dqs''",
                    "ef''",
                    "eqf''",
                ],
            },
            "cello": {
                "IV": [
                    "cs,",
                    "cqs,",
                    "d,",
                    "dqs,",
                    "ef,",
                    "eqf,",
                    "e,",
                    "eqs,",
                    "f,",
                    "fqs,",
                    "fs,",
                    "gqf,",
                ],
                "III": [
                    "af,",
                    "aqf,",
                    "a,",
                    "aqs,",
                    "bf,",
                    "bqf,",
                    "b,",
                    "bqs,",
                    "c",
                    "cqs",
                    "cs",
                    "dqs",
                ],
                "II": [
                    "ef",
                    "eqf",
                    "e",
                    "eqs",
                    "f",
                    "fqs",
                    "fs",
                    "gqf",
                    "g",
                    "gqs",
                    "af",
                    "aqf",
                ],
                "I": [
                    "bf",
                    "bqf",
                    "b",
                    "bqs",
                    "c'",
                    "cqs'",
                    "cs'",
                    "dqf'",
                    "d'",
                    "dqs'",
                    "ef'",
                    "eqf'",
                ],
            },
        }

        seed = initial_seed
        for pair in string_range_pairs:
            random.seed(seed)
            selection_range = pair[-1]
            start_range = selection_range[0]
            stop_range = selection_range[-1] + 1
            relevant_selections = selections[start_range:stop_range]

            instrument_string_key = pair[0]
            chord = _instrument_to_string_dict[instrument][instrument_string_key]
            divisor = len(chord)
            distance = 1 / divisor
            threshholds = []
            threshhold_counter = 0
            for _ in range(0, divisor):
                threshholds.append(threshhold_counter)
                threshhold_counter += distance

            _threshhold_to_index = dict(zip(threshholds, list(range(0, divisor))))
            # print(f"dictionary: {_threshhold_to_index}")

            pitch_list = []
            pitch_list_range = len(relevant_selections) + 1
            for _ in range(0, pitch_list_range):
                random_float = random.random()
                muting_collection = []
                for threshhold in threshholds:
                    if random_float <= threshhold:
                        pitch_index = _threshhold_to_index[threshhold]
                        pitch = chord[pitch_index]

                        muting_collection.append(pitch)
                        if _ % 3 == 0:
                            process_range = 2
                        else:
                            process_range = 1

                        for _ in range(0, process_range):
                            if pitch_index >= len(chord) - 3:
                                lower_limit = 0
                                upper_limit = pitch_index - 2
                            else:
                                lower_limit = pitch_index + 2
                                upper_limit = len(chord) - 1
                            secondary_index = random.randint(lower_limit, upper_limit)
                            secondary_pitch = chord[secondary_index]
                            muting_collection.append(secondary_pitch)

                        pitch_list.append(muting_collection)

                        break

            seed += 1
            if stage < 3:
                pitch_list = [_[0] for _ in pitch_list]

            pitch_list = trinton.rotated_sequence(pitch_list, index % len(pitch_list))
            pitch_list = trinton.remove_adjacent(pitch_list)
            pitch_handler = evans.PitchHandler(pitch_list=pitch_list)
            pitch_handler(relevant_selections)

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
