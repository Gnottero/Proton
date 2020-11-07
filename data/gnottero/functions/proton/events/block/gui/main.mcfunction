#> Main function of the "" folder. Handle the events of the block when the barrel is open
    #> Called by the "gnottero:proton/events/block/main" function

    #> Store the barrel content inside the "gnottero:proton/block" storage
        data modify storage gnottero:proton/block GuiHandler set from block ~ ~ ~ Items

    #> Call the "gnottero:proton/events/block/gui/recipes_handler/main" function to check if the player is performing a recipe
        function gnottero:proton/events/block/gui/recipes_handler/main

    #> Remove the items in the grid
        function gnottero:proton/events/block/gui/remove_grid_items

    #> Compare "GuiItems" with "GuiHandler" and check if there are differences
        execute store success score #gn.check_difference gn.proton_check run data modify storage gnottero:proton/block GuiItems set from storage gnottero:proton/block GuiHandler

    #> Call the "" function if the two storages are different
        execute if score #gn.check_difference gn.proton_check matches 1.. run function gnottero:proton/events/block/gui/check_slots/main
