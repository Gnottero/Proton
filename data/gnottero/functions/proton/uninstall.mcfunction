#> This is the uninstall function

    #> Remove all the scoreboards
        scoreboard objectives remove gn.proton_check

    #> Call the "gnottero:proton/events/block/world/remove_all" function as every armor stand with the "gn.proton_crafting" tag
        execute as @e[type=minecraft:armor_stand, tag=gn.proton_crafting] at @s run function gnottero:proton/events/block/world/remove_all

    #> Remove the Proton Crafting item from the player inventory
        clear @a minecraft:item_frame{ctc:{id:"proton_crafting", from:"gnottero:proton", traits:{"block":1b, "block/crafting_table":1b}}}

    #> Disable the datapack
        datapack disable "file/Proton"