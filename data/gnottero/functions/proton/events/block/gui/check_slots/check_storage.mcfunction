#> Check which item isn't a placeholder and call the right function
    #> Called by the "" function

    say test

    #> First Row
        execute unless data storage gnottero:proton/block ProtonGui[{Slot:0b, Count:1b}].tag.ctc.traits{"item/placeholder":1b} run function gnottero:proton/events/block/gui/check_slots/slot_list/slot_0
        execute unless data storage gnottero:proton/block ProtonGui[{Slot:4b, Count:1b}].tag.ctc.traits{"item/placeholder":1b} run function gnottero:proton/events/block/gui/check_slots/slot_list/slot_4
        execute unless data storage gnottero:proton/block ProtonGui[{Slot:5b, Count:1b}].tag.ctc.traits{"item/placeholder":1b} run function gnottero:proton/events/block/gui/check_slots/slot_list/slot_5
        execute unless data storage gnottero:proton/block ProtonGui[{Slot:6b, Count:1b}].tag.ctc.traits{"item/placeholder":1b} run function gnottero:proton/events/block/gui/check_slots/slot_list/slot_6
        execute unless data storage gnottero:proton/block ProtonGui[{Slot:7b, Count:1b}].tag.ctc.traits{"item/placeholder":1b} run function gnottero:proton/events/block/gui/check_slots/slot_list/slot_7
        execute unless data storage gnottero:proton/block ProtonGui[{Slot:8b, Count:1b}].tag.ctc.traits{"item/placeholder":1b} run function gnottero:proton/events/block/gui/check_slots/slot_list/slot_8

    #> Second Row
        execute unless data storage gnottero:proton/block ProtonGui[{Slot:9b, Count:1b}].tag.ctc.traits{"item/placeholder":1b} run function gnottero:proton/events/block/gui/check_slots/slot_list/slot_9
        execute unless data storage gnottero:proton/block ProtonGui[{Slot:13b, Count:1b}].tag.ctc.traits{"item/placeholder":1b} run function gnottero:proton/events/block/gui/check_slots/slot_list/slot_13
        execute unless data storage gnottero:proton/block ProtonGui[{Slot:14b, Count:1b}].tag.ctc.traits{"item/placeholder":1b} run function gnottero:proton/events/block/gui/check_slots/slot_list/slot_14
        execute unless data storage gnottero:proton/block ProtonGui[{Slot:16b, Count:1b}].tag.ctc.traits{"item/placeholder":1b} run function gnottero:proton/events/block/gui/check_slots/slot_list/slot_16
        execute unless data storage gnottero:proton/block ProtonGui[{Slot:17b, Count:1b}].tag.ctc.traits{"item/placeholder":1b} run function gnottero:proton/events/block/gui/check_slots/slot_list/slot_17

    #> Third Row
        execute unless data storage gnottero:proton/block ProtonGui[{Slot:18b, Count:1b}].tag.ctc.traits{"item/placeholder":1b} run function gnottero:proton/events/block/gui/check_slots/slot_list/slot_18
        execute unless data storage gnottero:proton/block ProtonGui[{Slot:22b, Count:1b}].tag.ctc.traits{"item/placeholder":1b} run function gnottero:proton/events/block/gui/check_slots/slot_list/slot_22
        execute unless data storage gnottero:proton/block ProtonGui[{Slot:23b, Count:1b}].tag.ctc.traits{"item/placeholder":1b} run function gnottero:proton/events/block/gui/check_slots/slot_list/slot_23
        execute unless data storage gnottero:proton/block ProtonGui[{Slot:24b, Count:1b}].tag.ctc.traits{"item/placeholder":1b} run function gnottero:proton/events/block/gui/check_slots/slot_list/slot_24
        execute unless data storage gnottero:proton/block ProtonGui[{Slot:25b, Count:1b}].tag.ctc.traits{"item/placeholder":1b} run function gnottero:proton/events/block/gui/check_slots/slot_list/slot_25
        execute unless data storage gnottero:proton/block ProtonGui[{Slot:26b, Count:1b}].tag.ctc.traits{"item/placeholder":1b} run function gnottero:proton/events/block/gui/check_slots/slot_list/slot_26















# execute store success storage storage storage[{Slot:x}].sbagliato byte 1 run data modify storage storage[{Slot:x}] set from block Items[{Slot:x}]
# summon placeolder
# data modify entity placeolder item set from storage storage[{sbagliato:1}]
# data modify storage storage[{sbagliato:1}].sbagliato set value false

