#> Get all the items in the crafting grid from the GuiHandler storage
    #> Called by the "gnottero:proton/events/block/gui/recipes_handler/main" function

    #> Modify the "RecipeHandler" storage to create a list of all the items in the crafting grid
        data modify storage gnottero:proton/block RecipeHandler.RecipeInputItems set value []

    #> Store the items
        data modify storage gnottero:proton/block RecipeHandler.RecipeInputItems append from storage gnottero:proton/block GuiHandler[{Slot:1b}]
        data modify storage gnottero:proton/block RecipeHandler.RecipeInputItems append from storage gnottero:proton/block GuiHandler[{Slot:2b}]
        data modify storage gnottero:proton/block RecipeHandler.RecipeInputItems append from storage gnottero:proton/block GuiHandler[{Slot:3b}]
        data modify storage gnottero:proton/block RecipeHandler.RecipeInputItems append from storage gnottero:proton/block GuiHandler[{Slot:10b}]
        data modify storage gnottero:proton/block RecipeHandler.RecipeInputItems append from storage gnottero:proton/block GuiHandler[{Slot:11b}]
        data modify storage gnottero:proton/block RecipeHandler.RecipeInputItems append from storage gnottero:proton/block GuiHandler[{Slot:12b}]
        data modify storage gnottero:proton/block RecipeHandler.RecipeInputItems append from storage gnottero:proton/block GuiHandler[{Slot:19b}]
        data modify storage gnottero:proton/block RecipeHandler.RecipeInputItems append from storage gnottero:proton/block GuiHandler[{Slot:20b}]
        data modify storage gnottero:proton/block RecipeHandler.RecipeInputItems append from storage gnottero:proton/block GuiHandler[{Slot:21b}]