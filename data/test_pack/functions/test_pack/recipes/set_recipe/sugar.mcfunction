#> Example recipe

    #> Set the result
        execute if data storage gnottero:proton/block RecipeHandler[{Slot:15b}].Count unless data storage gnottero:proton/block RecipeHandler[{Slot:15b, id:"minecraft:sugar"}] run function gnottero:proton/events/block/gui/check_slots/invalid_result
        execute unless data storage gnottero:proton/block RecipeHandler[{Slot:15b}] run loot replace block ~ ~ ~ container.15 loot gnottero_recipe_pack:proton/recipes/sugar

    #> Set the "" scoreboard value to one
        scoreboard players set #gn.found_recipe gn.proton_check 1

    #> Add the "gn.is_crafting" tag
        tag @s add gn.is_crafting