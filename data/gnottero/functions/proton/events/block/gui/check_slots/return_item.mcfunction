#> Summon the item in order to give it back to the player
    #> Called by the "gnottero:proton/events/block/gui/recipes_handler/main" function

    #> Summon a placeholder
        summon minecraft:item ~ ~1 ~ {Tags:["gn.proton_placeholder"], Item:{id:"minecraft:stone", Count:1b}}

    #> Store the item data inside the placeholder
        data modify entity @e[type=minecraft:item, distance=..1.2, limit=1, tag=gn.proton_placeholder, nbt={Item:{id:"minecraft:stone"}}] Item set from storage gnottero:proton/block drop_items[-1]

    #> Remove the last element from the "gnottero:proton/block" storage
        data remove storage gnottero:proton/block drop_items[-1]