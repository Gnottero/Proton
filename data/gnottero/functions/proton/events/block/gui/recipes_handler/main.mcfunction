#> Check if the player is performing a recipe and handle the event
    #> Called by the "gnottero:proton/events/block/gui/main" function

    #> Call the "gnottero:proton/events/block/gui/recipes_handler/get_grid_items" function to get the items in the grid
        function gnottero:proton/events/block/gui/recipes_handler/get_grid_items

    #> Get the lenght of the "RecipeHandler" array
        execute store result score #gn.recipe_length gn.proton_check run data get storage gnottero:proton/block RecipeHandler.RecipeInputItems
        execute if score #gn.recipe_length gn.proton_check matches 0 if score #gn.found_recipe gn.proton_check matches 0 if data storage gnottero:proton/block GuiHandler[{Slot:15b}] run function gnottero:proton/events/block/gui/check_slots/invalid_result

    #> Call the "gnottero:proton/events/block/gui/recipes_handler/check_item_change" function to check if the items changed
        function gnottero:proton/events/block/gui/recipes_handler/check_item_change

    #> Call the "gnottero:proton/events/block/gui/recipes_handler/shaped_recipes" function to detect shaped recipes
        execute if score #gn.recipe_length gn.proton_check matches 1.. if score #gn.found_recipe gn.proton_check matches 0 run function gnottero:proton/events/block/gui/recipes_handler/recipe_checker

    #> Check if the player remove the recipe
        execute if score #gn.found_recipe gn.proton_check matches 1 if entity @s[tag=gn.is_crafting] run function gnottero:proton/events/block/gui/recipes_handler/player_took_item
        execute if score #gn.found_recipe gn.proton_check matches 0 if entity @s[tag=gn.is_crafting] if data storage gnottero:proton/block GuiHandler[{Slot:15b}] run function gnottero:proton/events/block/gui/recipes_handler/remove_invalid_recipe