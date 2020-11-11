#> Remove all the proton crafting tables when the datapack is disabled
    #> Called by the "gnottero:proton/uninstall" function

    #> Remove the barrel at the custom block position
        setblock ~ ~ ~ minecraft:air destroy

    #> Kill the barrel item
        kill @e[type=minecraft:item, limit=1, sort=nearest, distance=..1.2, nbt={Item:{id:"minecraft:barrel", Count:1b, tag:{display:{Name:'{"translate":"proton_offset.-16","with":[{"color":"white","text":""}]}'}}}}]

    #> If there is an hopper underneath the barrel, set the TransferCooldown to 0
        execute if block ~ ~-1 ~ minecraft:hopper run data modify block ~ ~-1 ~ TransferCooldown set value 0

    #> If the armor stand has the "gn.is_crafting" tag and there is a result nearby, kill it
        execute if entity @s[type=minecraft:armor_stand, tag=gn.is_crafting] run kill @e[type=minecraft:item, nbt={Age:0s, Item:{tag:{gn.proton_crafting_result:1b}}}, distance=..1.2]

    #> Remove all the placeholder on the ground
        kill @e[type=minecraft:item, nbt={Item:{id:"minecraft:black_stained_glass_pane", tag:{CustomModelData:1281000,ctc:{id:"proton_crafting",from:"gnottero:proton",traits:{"item":1b, "item/placeholder":1b}}}}}]

    #> Kill the executor
        kill @s
