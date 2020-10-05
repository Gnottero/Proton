#> Add the "" tag to the executor and put the result item in the result slot
    #> Called by the "" function

    #> Reduce the count of the items used in the recipe
        execute store result block ~ ~ ~ Items[{Slot:2b}].Count byte 0.984375 run data get block ~ ~ ~ Items[{Slot:2b}].Count
        
        execute store result block ~ ~ ~ Items[{Slot:11b}].Count byte 0.984375 run data get block ~ ~ ~ Items[{Slot:11b}].Count

        execute store result block ~ ~ ~ Items[{Slot:20b}].Count byte 0.984375 run data get block ~ ~ ~ Items[{Slot:20b}].Count

    #> Add the "gn.is_crafting" tag to the executor
        tag @s remove gn.is_crafting
