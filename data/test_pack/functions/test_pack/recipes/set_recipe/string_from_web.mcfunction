#> Example recipe

    #> Set a special id that will be used for special action on the items
        scoreboard players set #gn.special_recipe_id gn.proton_check 1

    #> Set the result in the "RecipeHandler.RecipeOutputItem" storage
        data modify storage gnottero:proton/block RecipeHandler.RecipeOutputItem set value {Slot:15b, id:"minecraft:string", Count:4b}

    #> Set the result
        execute if data storage gnottero:proton/block RecipeHandler.RecipeOutputItem.Count unless data storage gnottero:proton/block RecipeHandler.RecipeOutputItem{Slot:15b, id:"minecraft:string", Count:4b} run function gnottero:proton/events/block/gui/check_slots/invalid_result
        data modify block ~ ~ ~ Items append from storage gnottero:proton/block RecipeHandler.RecipeOutputItem{}

    #> Add the "gn.is_crafting" tag
        tag @s add gn.is_crafting