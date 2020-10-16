#> Check which recipe is being used by the player and run the right function
    #> Called by the "gnottero:proton/events/block/gui/recipes_handler/main" function

    #> Check which recipe is being used by the player and run the right function
        execute if predicate gnottero_recipe_pack:proton/recipes/first_nbt_recipe run function gnottero_recipe_pack:gnottero_recipe_pack/proton/recipes/take_recipe/first_nbt_hoe
        execute if predicate gnottero_recipe_pack:proton/recipes/glass_to_ender_chest run function gnottero_recipe_pack:gnottero_recipe_pack/proton/recipes/take_recipe/glass_to_ender_chest