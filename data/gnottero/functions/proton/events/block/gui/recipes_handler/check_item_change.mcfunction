#> Check if the items changed since the last check and perform all the operations
    #> Called by the "" function

    #> Copy the "" storage inside the "" one
        execute store success score #gn.compare_invs gn.proton_check run data modify storage gnottero:proton/block CompareItems set from storage gnottero:proton/block RecipeHandler.RecipeInputItems

    #> If the items changed, reset the "#gn.found_recipe" scoreboard
        execute if score #gn.compare_invs gn.proton_check matches 1 run scoreboard players set #gn.found_recipe gn.proton_check 0