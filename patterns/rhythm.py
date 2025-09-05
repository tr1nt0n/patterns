import abjad
from abjadext import rmakers
import baca
import evans
import trinton
import itertools


def rhythm_d(instrument, stage=1):
    def return_rhythm_selections(time_signatures):
        _instrument_to_base_rhythm = {
            "violin 1": [[1, 1, 1], [5], [1], [3], [1, 1, 1, 1, 1]],
            "violin 2": [[1, 1], [3], [1, 1], [5], [1, 1, 1]],
            "viola": [[1, 1, 1, 1], [5], [1, 1, 1], [1]],
            "cello": [[1, 1, 1, 1, 1], [3], [1, 1, 1], [4], [1, 1, 1, 1, 1], [1]],
        }

        base_rhythm = _instrument_to_base_rhythm[instrument]

        container = abjad.Container()

        index_counter = 0
        print("!!!BEGIN LOOP !!!")
        print("!!!BEGIN LOOP !!!")
        print("!!!BEGIN LOOP !!!")
        print("!!!BEGIN LOOP !!!")
        print("!!!BEGIN LOOP !!!")
        for i, time_signature in enumerate(time_signatures):
            print("")
            print("!!!START OF NEW ITERATION!!!")
            if i < 1:
                base_rhythm = base_rhythm
            else:
                (
                    base_rhythm[index_counter],
                    base_rhythm[index_counter + 1],
                    base_rhythm[index_counter - 1],
                    base_rhythm[index_counter - 2],
                ) = (
                    base_rhythm[index_counter + 1],
                    base_rhythm[index_counter],
                    base_rhythm[index_counter - 2],
                    base_rhythm[index_counter - 1],
                )
                index_counter += 1
                modifier = len(base_rhythm) - 1
                index_counter = index_counter % modifier

            long_durations = []

            # print("")
            for _ in base_rhythm.copy():
                if len(_) == 1:
                    # print(_)
                    long_durations.append(_)

            long_durations = abjad.sequence.flatten(long_durations)
            print("")
            print(f"long durations list {long_durations}")
            print("")

            total_long_duration = sum(long_durations)
            print("")
            print(f"long duration: {total_long_duration}")
            print("")
            time_signature_duration = abjad.Duration(
                (time_signature.numerator, time_signature.denominator)
            )
            subdivision_denominator = time_signature.denominator * 2
            print(f"original subdivision denominator: {subdivision_denominator}")

            if (
                abjad.Duration((total_long_duration, subdivision_denominator))
                >= time_signature_duration
            ):
                subdivision_denominator = subdivision_denominator * 2
                if (
                    abjad.Duration((total_long_duration, subdivision_denominator))
                    >= time_signature_duration
                ):
                    subdivision_denominator = subdivision_denominator * 2
                else:
                    subdivision_denominator = subdivision_denominator
            else:
                subdivision_denominator = subdivision_denominator
            print(f"new subdivision denominator: {subdivision_denominator}")
            print("")

            total_long_duration = abjad.Duration(
                (total_long_duration, subdivision_denominator)
            )
            print(f"total long duration: {total_long_duration}")
            print("")

            short_durations = []

            for _ in base_rhythm.copy():
                if len(_) > 1:
                    short_durations.append(_)

            gesture_pocket_amount = len(short_durations)
            print("")
            print(f"time signature: {time_signature}")
            print(f"gesture pockets: {gesture_pocket_amount}")

            gesture_space = time_signature_duration - total_long_duration

            print(f"long duration: {total_long_duration}")
            print(f"gesture space: {gesture_space}")
            print(
                f"long duration + gesture space: {total_long_duration + gesture_space}"
            )
            print("")
            print("")

            tuplet_durations = []
            if gesture_space < abjad.Duration((3, 8)):
                tuplet_durations.append(gesture_space)
                new_base_rhythm = []
                counter = 0
                for rhythm in base_rhythm:
                    if len(rhythm) > 1 and counter == 0:
                        new_base_rhythm.append(rhythm)
                        counter += 1
                    if len(rhythm) == 1:
                        new_base_rhythm.append(rhythm)

            else:
                new_base_rhythm = base_rhythm
                if gesture_pocket_amount == 2:
                    tuplet_durations.append(gesture_space / 2)
                    tuplet_durations.append(gesture_space / 2)
                if gesture_pocket_amount == 3:
                    split_gesture_space = gesture_space / 2
                    if (
                        trinton.is_power_of(a=split_gesture_space.denominator, b=2)
                        is True
                    ):
                        tuplet_durations.append(
                            abjad.Duration((2, gesture_space.denominator * 4))
                        )
                        tuplet_durations.append(
                            abjad.Duration((1, gesture_space.denominator * 4))
                        )
                        tuplet_durations.append(
                            abjad.Duration((1, gesture_space.denominator * 4))
                        )
                    else:
                        tuplet_durations.append(
                            abjad.Duration((3, gesture_space.denominator))
                        )
                        remainder = gesture_space - abjad.Duration(
                            (3, gesture_space.denominator)
                        )
                        print("")
                        print(
                            f"remainder equation: {gesture_space} - {abjad.Duration((3, gesture_space.denominator))}"
                        )
                        print(f"tuplet counting remainder:{remainder}")
                        print("")
                        comparator = remainder / 2
                        if trinton.is_power_of(a=comparator.denominator, b=2) is True:
                            tuplet_durations.append(comparator)
                            tuplet_durations.append(comparator)
                        else:
                            tuplet_durations.append(
                                abjad.Duration((3, gesture_space.denominator))
                            )
                            remainder = gesture_space - abjad.Duration(
                                (6, gesture_space.denominator)
                            )
                            tuplet_durations.append(remainder)

            print("")
            print(gesture_space)
            print("")
            print(tuplet_durations)
            print("")
            print(new_base_rhythm)
            print("")
            tuplet_counter = 0
            components = []
            for rhythm in new_base_rhythm:
                if len(rhythm) > 1:
                    tuplet = rmakers.tuplet(
                        [tuplet_durations[tuplet_counter]], [tuple(rhythm)]
                    )
                    container.extend(tuplet)
                    components.append(tuplet)
                    tuplet_counter += 1
                else:
                    note = rmakers.note(
                        [abjad.Duration(rhythm[0], subdivision_denominator)]
                    )
                    components.append(note)
                    container.extend(note[0])

            print("")
            print(f"components: {components}")
            print(f"time_signature: {time_signature}")
            print(f"duration of components: {abjad.get.duration(components)}")
            print("")
        # breakpoint()

        treat_tuplets = trinton.treat_tuplets()
        treat_tuplets(container)
        trinton.respell_tuplets(abjad.select.tuplets(container), rewrite_brackets=False)
        rhythm_selections = abjad.mutate.eject_contents(container)
        return rhythm_selections

    return return_rhythm_selections
