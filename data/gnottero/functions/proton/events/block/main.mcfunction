#> Main function of the "" folder. Handle all the events related to the Proton Crafting Table
    #> Called by the "" function

    #> Prevent hoppers from taking items from the Proton Crafting Table
        execute positioned ~ ~-1 ~ if predicate gnottero:proton/block/check_hoppers run function gnottero:proton/events/block/world/lock_hoppers

    #> Call the "gnottero:proton/events/block/gui/check_slots/main" function to handle the GUI related events
        execute if block ~ ~ ~ minecraft:barrel[open=true, facing=up] run function gnottero:proton/events/block/gui/main

    #> Call the "gnottero:proton/events/block/world/remove_block" function to handle the block breaking events
        execute unless block ~ ~ ~ minecraft:barrel[facing=up] run function gnottero:proton/events/block/world/remove_block