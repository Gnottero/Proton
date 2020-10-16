#> Store the item in the "gnottero:proton/block" storage and set the placeholder in its place
    #> Called by the "gnottero:proton/events/block/gui/check_slots/check_storage" function

    #> Store the data and draw the item
        execute if data storage gnottero:proton/block ProtonGui[{Slot: 14b}].Count run data modify storage gnottero:proton/block drop_items insert -1 from storage gnottero:proton/block ProtonGui[{Slot: 14b}]
        loot replace block ~ ~ ~ container.14 loot gnottero:proton/block/placeholder
        