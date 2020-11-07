#> Handle the recipe functions. Call the right function either to add the result or to reduce the item count
    #> Called by the "" function

    #> Set the result in the "RecipeHandler.RecipeOutputItem" storage
        data modify storage gnottero:proton/block RecipeHandler.RecipeOutputItem set value {Slot:15b, id:"minecraft:iron_chestplate", Count:1b, tag:{Damage:0, display:{Name:'{"text":"Thick Iron Chestplate", "color":"gray", "italic":false}'}}}

    #> Set the result
        execute if data storage gnottero:proton/block RecipeHandler.RecipeOutputItem.Count unless data storage gnottero:proton/block RecipeHandler.RecipeOutputItem{Slot:15b, id:"minecraft:iron_chestplate", Count:1b, tag:{Damage:0, display:{Name:'{"text":"Thick Iron Chestplate", "color":"gray", "italic":false}'}}} run function gnottero:proton/events/block/gui/check_slots/invalid_result
        data modify block ~ ~ ~ Items append from storage gnottero:proton/block RecipeHandler.RecipeOutputItem{}

    #> Set the "" scoreboard value to one
        scoreboard players set #gn.found_recipe gn.proton_check 1

    #> Add the "gn.is_crafting" tag
        tag @s add gn.is_crafting