#> This is the main function, that will run once per tick

    #> Call the "gnottero:proton/events/main" function to handle all the datapack events
        execute as @e[type=minecraft:armor_stand, tag=gn.proton_crafting] at @s run function gnottero:proton/events/block/main

    #> Remove all the placeholders from the player inventory
        clear @a minecraft:black_stained_glass_pane{CustomModelData:1281000,ctc:{id:"proton_crafting",from:"gnottero:proton",traits:{"item":1b, "item/placeholder":1b}}}

    #> Remove all the placeholder on the ground
        execute as @e[type=minecraft:item, tag=!gn.not_placeholder] run function gnottero:proton/events/block/world/check_ground_items