#> Check which recipe was used by the player and call the right function
    # Called by the "gnottero:proton/events/block/gui/recipes_handler/main" function

    #> Clear the "TempStorage" storage
        data remove storage gnottero:proton/block TempStorage

    #> Try to store the item in the result slot
        execute store success score #gn.found_item gn.proton_check run data modify storage gnottero:proton/block TempStorage set from block ~ ~ ~ Items[{Slot:15b}]

    #> If there wasn't an item reduce the count of the ingredients
        execute if score #gn.found_item gn.proton_check matches 0 if score #gn.special_recipe_id gn.proton_check matches -2147483648..2147483647 run function gnottero:proton/events/block/gui/recipes_handler/recipe_took_functions/main

        execute if score #gn.found_item gn.proton_check matches 0 run function gnottero:proton/events/block/gui/recipes_handler/reduce_item_count

    #> Check if the items is different
        execute if score #gn.found_item gn.proton_check matches 1 store success score #gn.is_result_valid gn.proton_check run data modify block ~ ~ ~ Items[{Slot:15b}] set from storage gnottero:proton/block RecipeHandler.RecipeOutputItem

        execute if score #gn.is_result_valid gn.proton_check matches 1 if score #gn.special_recipe_id gn.proton_check matches -2147483648..2147483647 run function gnottero:proton/events/block/gui/recipes_handler/recipe_took_functions/main

    #> Check the recipe
        execute if score #gn.is_result_valid gn.proton_check matches 1 run function gnottero:proton/events/block/gui/recipes_handler/give_missing_items