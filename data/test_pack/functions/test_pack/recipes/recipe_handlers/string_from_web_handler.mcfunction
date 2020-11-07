#> Handle the recipe functions. Call the right function either to add the result or to reduce the item count
    #> Called by the "" function

    #> Check if the shapeless recipe is the right one
        execute store result score #gn.first_ingredient gn.proton_check if data storage gnottero:proton/block RecipeHandler.RecipeInputItems[{id:"minecraft:cobweb"}]
        execute store result score #gn.second_ingredient gn.proton_check if data storage gnottero:proton/block RecipeHandler.RecipeInputItems[{id:"minecraft:diamond_sword"}]

        execute if score #gn.first_ingredient gn.proton_check matches 1 if score #gn.second_ingredient gn.proton_check matches 1 run scoreboard players set #gn.found_recipe gn.proton_check 1

    #> Check the item should be added
        execute if score #gn.found_recipe gn.proton_check matches 1 run function test_pack:test_pack/recipes/set_recipe/string_from_web