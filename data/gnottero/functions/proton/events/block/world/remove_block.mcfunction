#> Summon the block item and kill the armor stand
    #> Called by the "gnottero:proton/events/block/world/main" function

    #> Summon the block item
        loot spawn ~ ~ ~ loot gnottero:proton/block/proton_crafting

    #> Kill the barrel item
        kill @e[type=minecraft:item, limit=1, sort=nearest, distance=..1.2, nbt={Item:{id:"minecraft:barrel", Count:1b, tag:{display:{Name:'{"translate":"proton_offset.-16","with":[{"color":"white","text":""}]}'}}}}]

    #> If there is an hopper underneath the barrel, set the TransferCooldown to 0
        execute if block ~ ~-1 ~ minecraft:hopper run data modify block ~ ~-1 ~ TransferCooldown set value 0

    #> If the armor stand has the "gn.is_crafting" tag and there is a result nearby, kill it
        execute if entity @s[tag=gn.is_crafting] run kill @e[type=minecraft:item, nbt={Age:0s, Item:{tag:{gn.proton_crafting_result:1b}}}, distance=..1.2]

    #> Kill the armor stand
        kill @s