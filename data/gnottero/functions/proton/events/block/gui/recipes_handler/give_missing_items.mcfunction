#> Give back to the player all the items that he didn't take
    #> Called by the "" function

    #> Remove the items in the result slot
        data remove block ~ ~ ~ Items[{Slot:15b}]

    #> Summon a placeholder
        summon minecraft:item ~ ~1 ~ {Tags:["gn.proton_placeholder"], Item:{id:"minecraft:stone", Count:1b}}

    #> Store the item data inside the placeholder
        data modify entity @e[type=minecraft:item, distance=..1.2, limit=1, tag=gn.proton_placeholder, nbt={Item:{id:"minecraft:stone"}}] Item set from storage gnottero:proton/block TempStorage

    #> Remove the last element from the "gnottero:proton/block" storage
        data remove storage gnottero:proton/block TempStorage

    #> Call the "" function
        function gnottero:proton/events/block/gui/recipes_handler/reduce_item_count