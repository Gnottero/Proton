#> Modify the TransferCooldown value to lock the hopper and call the "gnottero:proton/events/block/world/remove_placeholders" function if there is a placeholder in the hopper
    #> Called by the "gnottero:proton/events/block/main" function

    #> Modify the TransferCooldown value to lock the hopper
        data modify block ~ ~ ~ TransferCooldown set value 2147483647

    #> Call the "gnottero:proton/events/block/world/remove_placeholders" function if there is a placeholder in the hopper
        execute if data block ~ ~ ~ Items[{id:"minecraft:black_stained_glass_pane"}].tag{CustomModelData:1281000} run function gnottero:proton/events/block/world/remove_placeholders
