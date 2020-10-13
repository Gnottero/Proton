#> Store the item in the "gnottero:proton/block" storage and set the placeholder in its place
    #> Called by the "gnottero:proton/events/block/gui/main" function

    #> Store the data and draw the item
        execute if data storage gnottero:proton/block ProtonGui[{Slot: 0b}].Count run data modify storage gnottero:proton/block drop_items insert -1 from storage gnottero:proton/block ProtonGui[{Slot: 0b}]
        loot replace block ~ ~ ~ container.0 loot gnottero:proton/block/placeholder
        