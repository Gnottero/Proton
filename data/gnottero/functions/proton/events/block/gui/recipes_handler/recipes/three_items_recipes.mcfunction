#> Check all the recipes that use 3 items to craft
    #> Called by the "" function

    #> Check the items and call the right function
        execute if score #gn.found_recipe gn.proton_check matches 0 if data storage gnottero:proton/block RecipeHandler.RecipeInputItems[{id:"minecraft:diamond_sword"}] if data storage gnottero:proton/block RecipeHandler.RecipeInputItems[{id:"minecraft:cobweb"}] run function test_pack:test_pack/recipes/recipe_handlers/diamond_from_sword_handler