#> Check all the recipes that use 1 item to craft
    #> Called by the "" function

    #> Check the item and call the right function
        execute if score #gn.found_recipe gn.proton_check matches 0 if data storage gnottero:proton/block RecipeHandler.RecipeInputItems[{id:"minecraft:sugar_cane"}] run function test_pack:test_pack/recipes/recipe_handlers/sugar