#> Add a tag to all the items of the ground that aren't placeholder, in order to exclude them from the kill
    #> Called by the "gnottero:proton/main" function

    #> Tag all the items on the ground that aren't placeholders
        tag @s[type=minecraft:item, nbt=!{Item:{id:"minecraft:black_stained_glass_pane", tag:{CustomModelData:1281000,ctc:{id:"proton_crafting",from:"gnottero:proton",traits:{"item":1b, "item/placeholder":1b}}}}}] add gn.not_placeholder

    #> Kill all the items without the "gn.not_placeholder" tag
        kill @s[tag=!gn.not_placeholder]
        