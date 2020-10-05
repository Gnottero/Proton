#> Check which recipe is being used by the player and run the right function
    #> Called by the "" function

    #> Check which recipe is being used by the player and run the right function
        execute if predicate gnottero:proton/block/recipes/glass_to_ender_chest run function gnottero:proton/events/block/gui/recipes_handler/recipe_list/take_recipe/glass_to_ender_chest
        execute if predicate gnottero:proton/block/recipes/first_nbt_recipe run function gnottero:proton/events/block/gui/recipes_handler/recipe_list/take_recipe/first_nbt_hoe