#> Main function of this folder. Check the "#gn.special_recipe_id" scoreboard value and call the right function
    #> Called by the "" function

    #> Check the "#gn.special_recipe_id" scoreboard and call the right function (colpevole)
        execute if score #gn.special_recipe_id gn.proton_check matches 1 run function test_pack:test_pack/recipes/take_recipe/string_from_web

    #>
        scoreboard players reset #gn.special_recipe_id gn.proton_check