#> Remove the item(s) in the 15th slot, if it isn't a crafting result
    #> Called by the "gnottero:proton/events/block/gui/recipes_handler/main" function

    #> Summon a placeholder
        summon minecraft:item ~ ~1 ~ {Tags:["gn.proton_placeholder"], Item:{id:"minecraft:stone", Count:1b}}

    #> Store the item data inside the placeholder
        data modify entity @e[type=minecraft:item, distance=..1.2, limit=1, tag=gn.proton_placeholder, nbt={Item:{id:"minecraft:stone"}}] Item set from storage gnottero:proton/block GuiHandler[{Slot:15b}]

    #> Remove the item from the 15th slot
        replaceitem block ~ ~ ~ container.15 minecraft:air
