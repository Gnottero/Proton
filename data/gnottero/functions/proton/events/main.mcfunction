#> Main function of the "" folder. Handle all the main events
    #> Called by the "gnottero:proton/main" function

    #> Call the "gnottero:proton/events/block/main" function if the entity is an armor stand
        execute if entity @s[type=minecraft:armor_stand, nbt={NoGravity:1b, Invisible:1b, Small:1b, Tags:["gn.proton_crafting"]}] run function gnottero:proton/events/block/main

    #> Remove all the placeholders from the player inventory
        execute if entity @s[type=minecraft:player, tag=!global.ignore] run clear @s minecraft:black_stained_glass_pane{CustomModelData:1281000}

    #> Remove all the placeholder on the ground
        execute if entity @s[type=minecraft:item, nbt={Item:{id:"minecraft:black_stained_glass_pane", tag:{CustomModelData:1281000}}}] run kill @s