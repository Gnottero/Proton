#> Loop through the "" storage and reduce the count by one
    #> Called by the "gnottero:proton/events/block/gui/recipes_handler/player_took_item" function

    #> Reduce the count of the first item of the array
        execute store result storage gnottero:proton/block RecipeHandler.RecipeInputItems[0].Count byte 0.984375 run data get storage gnottero:proton/block RecipeHandler.RecipeInputItems[0].Count
        data modify block ~ ~ ~ Items append from storage gnottero:proton/block RecipeHandler.RecipeInputItems[]
        data remove storage gnottero:proton/block RecipeHandler.RecipeInputItems[0]

    #> Call the function if there "" scoreboard value is bigger than 1
        execute if data storage gnottero:proton/block RecipeHandler.RecipeInputItems[] run function gnottero:proton/events/block/gui/recipes_handler/reduce_item_count
