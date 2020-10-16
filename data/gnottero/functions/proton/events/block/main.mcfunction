#> Main function of the "gnottero:proton/events/block/" folder. Handle all the events related to the Proton Crafting Table
    #> Called by the "gnottero:proton/main" function

    #> Prevent hoppers from taking items from the Proton Crafting Table
        execute positioned ~ ~-1 ~ if predicate gnottero:proton/block/check_hoppers run function gnottero:proton/events/block/world/lock_hoppers

    #> Call the "gnottero:proton/events/block/gui/check_slots/main" function to handle the GUI related events
        execute if block ~ ~ ~ minecraft:barrel[open=true, facing=up] run function gnottero:proton/events/block/gui/main

    #> Reset the "Fire" tag if the armor stand isn't on fire
        data modify entity @s[predicate=gnottero:proton/block/check_fire_state] Fire set value 32767s

    #> Call the "gnottero:proton/events/block/world/remove_block" function to handle the block breaking events
        execute unless block ~ ~ ~ minecraft:barrel[facing=up] run function gnottero:proton/events/block/world/remove_block