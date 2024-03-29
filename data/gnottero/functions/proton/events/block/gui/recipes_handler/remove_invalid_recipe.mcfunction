#> Remove both the result from the result slot and the "gn.is_crafting" tag from the executor
    #> Called by the "gnottero:proton/events/block/gui/recipes_handler/main" function

    #> Check if the item in the result slot is the recipe output of the previous recipe
        execute store success score #gn.is_recipe_output gn.proton_check run data modify storage gnottero:proton/block RecipeHandler.RecipeOutputItem set from storage gnottero:proton/block GuiHander[{Slot:15b}]

    #> If the item was a crafting result, remove item
        execute if score #gn.is_recipe_output gn.proton_check matches 0 run item block ~ ~ ~ container.15 replace minecraft:air

    #> Remove the "gn.is_crafting" tag from the executor
        tag @s remove gn.is_crafting

    #> Reset the "#gn.special_recipe_id" scoreboard value
        scoreboard players reset #gn.special_recipe_id gn.proton_check