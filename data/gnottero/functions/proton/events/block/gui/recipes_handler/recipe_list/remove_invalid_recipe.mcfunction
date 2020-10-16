#> Remove both the result from the result slot and the "gn.is_crafting" tag from the executor
    #> Called by the "gnottero:proton/events/block/gui/recipes_handler/main" function

    #> Remove the result from the result slot
        replaceitem block ~ ~ ~ container.15 minecraft:air

    #> Remove the "gn.is_crafting" tag from the executor
        tag @s remove gn.is_crafting
