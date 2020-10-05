#> If the player placed the armor stand, run the "" function and revoke the "gnottero:utils/has_placed_crafting" advancement
    #> Called by the "gnottero:utils/has_placed_crafting" advancement

    #> Call the "" function as the armor stand
        execute as @e[type=minecraft:armor_stand,nbt={NoGravity:1b, Small:1b, Invisible:1b, Tags:["gn.proton_crafting", "gn.place_proton_crafting", "global.ignore.pos", "global.ignore", "global.ignore.kill"]}] at @s run function gnottero:proton/events/block/world/main

    #> Revoke the "gnottero:utils/has_placed_crafting" advancement
        advancement revoke @s only gnottero:utils/has_placed_crafting