import abjad
from abjadext import rmakers
import baca
import evans
import trinton
import itertools
from patterns import library


def rhythm_b(stage, instrument, index=0):
    def return_rhythm_b(time_signatures):
        durations = []

        container = abjad.Container()
        for time_signature in time_signatures:
            time_signature_duration = abjad.Duration(
                (time_signature.numerator, time_signature.denominator)
            )
            split_duration = time_signature_duration / 2
            durations.append(split_duration)
            durations.append(split_duration)

        if stage == 1:
            notes = rmakers.note(durations)
            for note in notes:
                container.extend(note)

        if stage > 1:
            _instrument_to_root = {
                "violin 1": library.first_violin_root,
                "violin 2": library.second_violin_root,
                "viola": library.viola_root,
                "cello": library.cello_root,
            }

            intervalic_root = _instrument_to_root[instrument]

            tuplet_amounts = trinton.get_intervals_from_numbers(
                numbers=intervalic_root, ordered=False, interval_classes=True
            )

            tuplets = []

            for amount in tuplet_amounts:
                tuplet = []

                if amount < 2:
                    amount = amount + 2

                for _ in range(0, amount):
                    tuplet.append(1)

                tuplet = tuple(tuplet)

                tuplets.append(tuplet)

            tuplets = trinton.rotated_sequence(tuplets, index % len(tuplets))

            rhythm_selections = rmakers.tuplet(durations, tuplets)

            container.extend(rhythm_selections)

            treat_tuplets = trinton.treat_tuplets()
            treat_tuplets(abjad.select.tuplets(container))
            trinton.respell_tuplets(
                abjad.select.tuplets(container), rewrite_brackets=False
            )

            if stage > 2:
                extended_index = index + 2
                extended_index = index % len(tuplet_amounts)
                tuplet_amounts = trinton.rotated_sequence(
                    tuplet_amounts, extended_index
                )

                for i, leaf in enumerate(abjad.select.leaves(container)):
                    if i % 3 == 0 or i % 5 == 0:
                        if i != 0:
                            nested_tuplet_index = index + 3
                            nested_tuplet = tuplets[nested_tuplet_index % len(tuplets)]
                            duration = abjad.get.duration(leaf, preprolated=True)
                            nested_tuplet = rmakers.tuplet([duration], [nested_tuplet])
                            abjad.mutate.replace(leaf, nested_tuplet)

                treat_tuplets = trinton.treat_tuplets()
                treat_tuplets(abjad.select.tuplets(container))
                trinton.respell_tuplets(
                    abjad.select.tuplets(container), rewrite_brackets=False
                )

        rhythm_selections = abjad.mutate.eject_contents(container)
        return rhythm_selections

    return return_rhythm_b


def rhythm_c(stage, instrument="violin 1", index=0):
    def return_rhythm_selections(time_signatures):
        container = abjad.Voice()

        if stage == 1:
            rhythm_selections = rmakers.note(time_signatures)
            for note in rhythm_selections:
                container.extend(note)

        if stage == 2:
            durations = []
            for time_signature in time_signatures:
                ts_numerator = time_signature.numerator
                ts_denominator = time_signature.denominator
                meter = abjad.Meter(time_signature)

                if (
                    trinton.is_power_of(a=ts_numerator, b=2) is True
                    or ts_numerator == 1
                    or ts_numerator == 3
                ):
                    for _ in range(0, ts_numerator):
                        durations.append(abjad.Duration((1, ts_denominator)))

                if meter.is_compound is True:
                    range_limit = int(ts_numerator / 3)
                    for _ in range(0, range_limit):
                        durations.append(abjad.Duration((3, ts_denominator)))

                if (
                    trinton.is_power_of(a=ts_numerator, b=2) is False
                    and ts_numerator != 1
                    and ts_numerator != 3
                    and meter.is_compound is False
                ):
                    durations.append(abjad.Duration((3, denominator)))

                    regions = []
                    for _ in range(0, numerator):
                        if sum(regions) == ts_numerator / ts_denominator:
                            pass
                        else:
                            regions.append(abjad.Duration((2, ts_denominator)))

                    for duration in regions:
                        durations.append(duration)

            rhythm_selections = rmakers.note(durations)
            for note in rhythm_selections:
                container.extend(note)

        if stage > 2:
            _instrument_to_talea_counts = {
                "violin 1": [-1, 9, 8, 3, 6, 1],
                "violin 2": [10, 8, 5, 7, 2, 5],
                "viola": [11, 7, 2, 5, 8],
                "cello": [1, 6, 3, -1, 4, 9, 10],
            }

            talea_counts = _instrument_to_talea_counts[instrument]
            talea_counts = trinton.rotated_sequence(
                talea_counts, index % len(talea_counts)
            )

            rhythm_selections = rmakers.talea(time_signatures, talea_counts, 16)
            container.extend(rhythm_selections)

            treat_tuplets = trinton.treat_tuplets()
            treat_tuplets(container)

            music = rmakers.wrap_in_time_signature_staff([container], time_signatures)
            rmakers.rewrite_meter(music)
            for leaf in abjad.select.leaves(container):
                abjad.detach(abjad.Tie, leaf)
                abjad.detach(abjad.StartBeam, leaf)
                abjad.detach(abjad.StopBeam, leaf)

        if stage == 4:
            for i, leaf in enumerate(abjad.select.leaves(container)):
                if i % 2 == 0:
                    rmakers.force_rest(leaf)
                else:
                    pass

        rhythm_selections = abjad.mutate.eject_contents(container)
        return rhythm_selections

    return return_rhythm_selections


def process_d_base_rhythm(base_rhythm, partition):
    helianthated_base_rhythm = baca.sequence.helianthate(base_rhythm, n=1, m=1)

    final_base_rhythm = []
    for base_iteration in helianthated_base_rhythm:
        for _ in base_iteration:
            final_base_rhythm.append(_)

    final_base_rhythm = abjad.select.partition_by_counts(
        final_base_rhythm, [partition], cyclic=True, overhang=True
    )

    return final_base_rhythm


def rhythm_d(instrument, stage=1, index=0):
    def return_rhythm_selections(time_signatures):
        _instrument_to_base_rhythm_and_partition = {
            "violin 1": ([[[1, 1, 1], [5], [1]], [[3], [1, 1, 1, 1, 1]]], 5),
            "violin 2": ([[[1, 1], [3]], [[1, 1], [5], [1, 1, 1]]], 5),
            "viola": ([[[1, 1, 1, 1]], [[5], [1, 1, 1], [1]]], 4),
            "cello": (
                [[[1, 1, 1, 1, 1], [3], [1, 1, 1], [4]], [[1, 1, 1, 1, 1], [1]]],
                6,
            ),
        }

        base_rhythm_list = process_d_base_rhythm(
            base_rhythm=_instrument_to_base_rhythm_and_partition[instrument][0],
            partition=_instrument_to_base_rhythm_and_partition[instrument][-1],
        )

        base_rhythm_list = trinton.rotated_sequence(
            base_rhythm_list, index % len(base_rhythm_list)
        )

        container = abjad.Container()

        index_counter = 0
        # print("!!!BEGIN LOOP !!!")
        # print("!!!BEGIN LOOP !!!")
        # print("!!!BEGIN LOOP !!!")
        # print("!!!BEGIN LOOP !!!")
        # print("!!!BEGIN LOOP !!!")
        for time_signature, base_rhythm in zip(
            time_signatures, itertools.cycle(base_rhythm_list)
        ):
            # print("")
            # print("!!!START OF NEW ITERATION!!!")

            long_durations = []

            # print("")
            for _ in base_rhythm.copy():
                if len(_) == 1:
                    # print(_)
                    long_durations.append(_)

            long_durations = abjad.sequence.flatten(long_durations)
            # print("")
            # print(f"long durations list {long_durations}")
            # print("")

            total_long_duration = sum(long_durations)
            # print("")
            # print(f"long duration: {total_long_duration}")
            # print("")
            time_signature_duration = abjad.Duration(
                (time_signature.numerator, time_signature.denominator)
            )
            subdivision_denominator = time_signature.denominator * 2
            # print(f"original subdivision denominator: {subdivision_denominator}")

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
            # print(f"new subdivision denominator: {subdivision_denominator}")
            # print("")

            total_long_duration = abjad.Duration(
                (total_long_duration, subdivision_denominator)
            )
            # print(f"total long duration: {total_long_duration}")
            # print("")

            short_durations = []

            for _ in base_rhythm.copy():
                if len(_) > 1:
                    short_durations.append(_)

            gesture_pocket_amount = len(short_durations)
            # print("")
            # print(f"time signature: {time_signature}")
            # print(f"gesture pockets: {gesture_pocket_amount}")

            gesture_space = time_signature_duration - total_long_duration

            # print(f"long duration: {total_long_duration}")
            # print(f"gesture space: {gesture_space}")
            # print(
            #     f"long duration + gesture space: {total_long_duration + gesture_space}"
            # )
            # print("")
            # print("")

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
                    if gesture_space.numerator == 1:
                        tuplet_durations.append(
                            abjad.Duration(1, gesture_space.denominator * 2)
                        )
                        tuplet_durations.append(
                            abjad.Duration(1, gesture_space.denominator * 4)
                        )
                        tuplet_durations.append(
                            abjad.Duration(1, gesture_space.denominator * 4)
                        )
                    if gesture_space.numerator % 3 == 0:
                        tuplet_duration = gesture_space / 3
                        for _ in range(0, 3):
                            tuplet_durations.append(tuplet_duration)
                    if (
                        gesture_space.numerator != 1
                        and gesture_space.numerator % 3 != 0
                    ):
                        tuplet_durations.append(
                            abjad.Duration((3, gesture_space.denominator))
                        )
                        remainder = gesture_space - abjad.Duration(
                            (3, gesture_space.denominator)
                        )
                        # print("")
                        # print(
                        #     f"remainder equation: {gesture_space} - {abjad.Duration((3, gesture_space.denominator))}"
                        # )
                        # print(f"tuplet counting remainder:{remainder}")
                        # print("")
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

            # print("")
            # print(f"gesture space: {gesture_space}")
            # print(f"tuplet durations: {tuplet_durations}")
            # print(f"new base rhythm: {new_base_rhythm}")
            # print("")
            tuplet_counter = 0
            # components = []
            for rhythm in new_base_rhythm:
                if len(rhythm) > 1:
                    tuplet = rmakers.tuplet(
                        [tuplet_durations[tuplet_counter]], [tuple(rhythm)]
                    )
                    container.extend(tuplet)
                    # components.append(tuplet)
                    tuplet_counter += 1
                else:
                    note = rmakers.note(
                        [abjad.Duration(rhythm[0], subdivision_denominator)]
                    )
                    # components.append(note)
                    container.extend(note[0])

            # print("")
            # print(f"components: {components}")
            # print(f"time_signature: {(time_signature.numerator, time_signature.denominator)}")
            # print(f"duration of components: {abjad.get.duration(components)}")
            # print("")
        # breakpoint()

        if stage == 4:
            for component in container:
                if isinstance(component, abjad.Tuplet):
                    tuplet_leaves = abjad.select.leaves(component)
                    tuplet_length = len(tuplet_leaves)
                    if tuplet_length == 2:
                        abjad.mutate.fuse(tuplet_leaves)
                    if tuplet_length == 3 or tuplet_length == 4:
                        abjad.mutate.fuse(tuplet_leaves[1:3])
                    if tuplet_length == 5:
                        abjad.mutate.fuse(tuplet_leaves[1:4])

        if stage > 1:
            for i, component in enumerate(container):
                if i == len(container) - 1:
                    pass
                else:
                    if isinstance(component, abjad.Tuplet):
                        abjad.attach(abjad.Tie(), abjad.select.leaf(component, -1))

        if stage > 2:
            for i, component in enumerate(container):
                if i == len(container) - 1:
                    pass
                else:
                    if isinstance(container[i + 1], abjad.Tuplet):
                        abjad.attach(abjad.Tie(), abjad.select.leaf(component, -1))

        treat_tuplets = trinton.treat_tuplets()
        treat_tuplets(abjad.select.tuplets(container))
        trinton.respell_tuplets(abjad.select.tuplets(container), rewrite_brackets=False)
        rhythm_selections = abjad.mutate.eject_contents(container)
        return rhythm_selections

    return return_rhythm_selections
