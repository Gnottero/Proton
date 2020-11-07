#> Find the recipe resul item and remove it
    #> Called by the "" function

    #> Store the item data inside a temporary storage
        data modify storage gnottero:proton/block FindResult.ItemToTest set from entity @s Item
        data modify storage gnottero:proton/block FindResult.ResultItem set from storage gnottero:proton/block RecipeHandler.RecipeOutputItem
        data remove storage gnottero:proton/block FindResult.ResultItem.Slot

    #> Try to copy the "RecipeHandler.RecipeOutputItem" storage inside the "FindResult" one
        execute store success score #gn.is_crafting_result gn.proton_check run data modify storage gnottero:proton/block FindResult.ItemToTest set from storage gnottero:proton/block FindResult.ResultItem

    #> If the item was a crafing result, then kill it
        execute if score #gn.is_crafting_result gn.proton_check matches 0 run kill @s