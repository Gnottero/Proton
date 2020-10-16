#> Check in which slot of the hopper there is a placeholder and remove it
    #> Called by the "gnottero:proton/events/block/world/lock_hoppers" function

    #> Perform all the check and remove the item
        execute if data block ~ ~ ~ Items[{Slot:0b, id:"minecraft:black_stained_glass_pane"}].tag{CustomModelData:1281000} run replaceitem block ~ ~ ~ container.0 minecraft:air
        execute if data block ~ ~ ~ Items[{Slot:1b, id:"minecraft:black_stained_glass_pane"}].tag{CustomModelData:1281000} run replaceitem block ~ ~ ~ container.1 minecraft:air
        execute if data block ~ ~ ~ Items[{Slot:2b, id:"minecraft:black_stained_glass_pane"}].tag{CustomModelData:1281000} run replaceitem block ~ ~ ~ container.2 minecraft:air
        execute if data block ~ ~ ~ Items[{Slot:3b, id:"minecraft:black_stained_glass_pane"}].tag{CustomModelData:1281000} run replaceitem block ~ ~ ~ container.3 minecraft:air
        execute if data block ~ ~ ~ Items[{Slot:4b, id:"minecraft:black_stained_glass_pane"}].tag{CustomModelData:1281000} run replaceitem block ~ ~ ~ container.4 minecraft:air