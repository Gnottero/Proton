#> Check if there is a recipe pattern in the "" storage and run the corresponding function
    #> Called by the "gnottero:proton/events/block/gui/recipes_handler/main" function

    #> Check if there is a recipe pattern
        execute if score #gn.found_recipe gn.proton_check matches 0 if score #gn.recipe_length gn.proton_check matches 9 run function gnottero:proton/events/block/gui/recipes_handler/recipes/nine_items_recipes
        execute if score #gn.found_recipe gn.proton_check matches 0 if score #gn.recipe_length gn.proton_check matches 8 run function gnottero:proton/events/block/gui/recipes_handler/recipes/eight_items_recipes
        execute if score #gn.found_recipe gn.proton_check matches 0 if score #gn.recipe_length gn.proton_check matches 7 run function gnottero:proton/events/block/gui/recipes_handler/recipes/seven_items_recipes
        execute if score #gn.found_recipe gn.proton_check matches 0 if score #gn.recipe_length gn.proton_check matches 6 run function gnottero:proton/events/block/gui/recipes_handler/recipes/six_items_recipes
        execute if score #gn.found_recipe gn.proton_check matches 0 if score #gn.recipe_length gn.proton_check matches 5 run function gnottero:proton/events/block/gui/recipes_handler/recipes/five_items_recipes
        execute if score #gn.found_recipe gn.proton_check matches 0 if score #gn.recipe_length gn.proton_check matches 4 run function gnottero:proton/events/block/gui/recipes_handler/recipes/four_items_recipes
        execute if score #gn.found_recipe gn.proton_check matches 0 if score #gn.recipe_length gn.proton_check matches 3 run function gnottero:proton/events/block/gui/recipes_handler/recipes/three_items_recipes
        execute if score #gn.found_recipe gn.proton_check matches 0 if score #gn.recipe_length gn.proton_check matches 2 run function gnottero:proton/events/block/gui/recipes_handler/recipes/two_items_recipes
        execute if score #gn.found_recipe gn.proton_check matches 0 if score #gn.recipe_length gn.proton_check matches 1 run function gnottero:proton/events/block/gui/recipes_handler/recipes/one_item_recipes