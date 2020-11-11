#> Execute the special took action on the item
    #> Called by the "" function

    #> Reduce the count of the items used in the recipe
        execute store result score #gn.remainder_damage gn.proton_check run data get storage gnottero:proton/block RecipeHandler.RecipeInputItems[{id:"minecraft:diamond_sword"}].tag.Damage
        
        execute store result block ~ ~ ~ Items[{id:"minecraft:diamond_sword"}].tag.Damage int 1 run scoreboard players add #gn.remainder_damage gn.proton_check 1
        
        execute if score #gn.remainder_damage gn.proton_check matches 1562.. run data remove block ~ ~ ~ Items[{id:"minecraft:diamond_sword"}]
    
        data remove storage gnottero:proton/block RecipeHandler.RecipeInputItems[{id:"minecraft:diamond_sword"}]
