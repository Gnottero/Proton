#> Store the item in the "gnottero:proton/block" storage and remove it from the result slot
    #> Called by the "gnottero:proton/events/block/gui/main" function

    #> Store the data and remove the item
        data modify storage gnottero:proton/block drop_items insert -1 from block ~ ~ ~ Items[{Slot: 15b}]
        replaceitem block ~ ~ ~ container.15 minecraft:air