#> Remove both the result from the result slot and the "gn.is_crafting" tag from the executor
    #> Called by the "" function+

    #> Remove the result from the result slot
        replaceitem block ~ ~ ~ container.15 minecraft:air

    #> Remove the "gn.is_crafting" tag from the executor
        tag @s remove gn.is_crafting
