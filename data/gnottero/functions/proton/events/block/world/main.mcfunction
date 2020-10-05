#> Check if the block is placeable and execute the right function
    #> Called by the "" function

    #> Call the "gnottero:proton/events/block/world/remove_block" function if the block was placed in a non-air spot
        execute unless block ~ ~ ~ #gnottero:air run function gnottero:proton/events/block/world/remove_block

    #> Call the "gnottero:proton/events/block/world/place_block" function if the block can was placed in a valid spot
        execute if block ~ ~ ~ #gnottero:air run function gnottero:proton/events/block/world/place_block