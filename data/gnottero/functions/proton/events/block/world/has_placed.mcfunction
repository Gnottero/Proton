#> If the player placed the item frame, run the "gnottero:proton/events/block/world/main" function and revoke the "gnottero:utils/has_placed_crafting" advancement
    #> Called by the "gnottero:utils/has_placed_crafting" advancement

    #> Call the "gnottero:proton/events/block/world/main" function as the item frame
        execute as @e[type=minecraft:item_frame,nbt={Fixed:1b, Invisible:1b, Tags:["gn.proton_crafting", "gn.place_proton_crafting"]}] at @s run function gnottero:proton/events/block/world/main

    #> Revoke the "gnottero:utils/has_placed_crafting" advancement
        advancement revoke @s only gnottero:utils/has_placed_crafting