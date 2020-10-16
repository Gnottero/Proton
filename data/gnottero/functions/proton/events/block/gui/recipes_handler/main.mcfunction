#> Check if the player is performing a recipe and handle the event
    #> Called by the "gnottero:proton/events/block/gui/main" function

    #> Remove the item in the result slot if it isn't a crafting result
        execute if predicate gnottero:proton/block/check_result_slot run function gnottero:proton/events/block/gui/check_slots/slot_list/slot_15

    #> Call the "gnottero:proton/events/block/gui/recipes_handler/check_recipes" function to check the recipes
        execute if predicate gnottero:proton/block/recipes/player_took_result run function gnottero:proton/events/block/gui/recipes_handler/recipe_list/take_recipe/check_recipes

    #> Call the "gnottero:proton/events/block/gui/recipes_handler/check_recipes" function to check the recipes
        execute if predicate gnottero:proton/block/recipes/recipe_handler run function gnottero:proton/events/block/gui/recipes_handler/recipe_list/set_recipe/check_recipes

    #> Call the "" function to remove both the tag and the result
        execute if predicate gnottero:proton/block/recipes/invalid_recipe run function gnottero:proton/events/block/gui/recipes_handler/recipe_list/remove_invalid_recipe

    #> Call the "gnottero:proton/events/block/gui/check_slots/return_item" to summon the item and give it back to the player
        execute if data storage gnottero:proton/block drop_items[] run function gnottero:proton/events/block/gui/check_slots/return_item