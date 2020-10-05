#> This is the uninstall function

    #> Call the "gnottero:proton/events/block/world/remove_all" function as every armor stand with the "gn.proton_crafting" tag
        execute as @e[type=minecraft:armor_stand, tag=gn.proton_crafting] at @s run function gnottero:proton/events/block/world/remove_all

    #> Disable the datapack
        datapack disable "file/Proton"
