#> Check which GUI element is missing and set it back
    #> Called by the "gnottero:proton/events/block/gui/main" function

    tellraw @p [{"text": "Reset Inv "},{"nbt":"GuiHandler[{Slot:0b}].id","storage":"gnottero:proton/block"}]

    #> Cambiare il sistema:
    # Si rimuovono i placeholder della gui dallo storage
    # Si evoca il l'item diverso
    # Si resetta l'inventario

    #> Remove the placeholders from the "" storage and run the function if there are still elements inside
        data remove storage gnottero:proton/block GuiItems[{tag:{ctc:{from: "gnottero:proton",traits:{"item/placeholder":1b}}}}]

    #> Call the "" to return the items that are still inside the storage
        execute if data storage gnottero:proton/block GuiItems[] run function gnottero:proton/events/block/gui/check_slots/return_item

    #> Set the "GuiItems" storage back to default
        data modify storage gnottero:proton/block GuiItems set value [{Slot: 0b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {ctc: {from: "gnottero:proton", traits: {item: 1b, "item/placeholder": 1b}, id: "proton_crafting"}, CustomModelData: 1281000, display: {Name: '{"text":""}'}}}, {Slot: 4b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {ctc: {from: "gnottero:proton", traits: {item: 1b, "item/placeholder": 1b}, id: "proton_crafting"}, CustomModelData: 1281000, display: {Name: '{"text":""}'}}}, {Slot: 5b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {ctc: {from: "gnottero:proton", traits: {item: 1b, "item/placeholder": 1b}, id: "proton_crafting"}, CustomModelData: 1281000, display: {Name: '{"text":""}'}}}, {Slot: 6b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {ctc: {from: "gnottero:proton", traits: {item: 1b, "item/placeholder": 1b}, id: "proton_crafting"}, CustomModelData: 1281000, display: {Name: '{"text":""}'}}}, {Slot: 7b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {ctc: {from: "gnottero:proton", traits: {item: 1b, "item/placeholder": 1b}, id: "proton_crafting"}, CustomModelData: 1281000, display: {Name: '{"text":""}'}}}, {Slot: 8b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {ctc: {from: "gnottero:proton", traits: {item: 1b, "item/placeholder": 1b}, id: "proton_crafting"}, CustomModelData: 1281000, display: {Name: '{"text":""}'}}}, {Slot: 9b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {ctc: {from: "gnottero:proton", traits: {item: 1b, "item/placeholder": 1b}, id: "proton_crafting"}, CustomModelData: 1281000, display: {Name: '{"text":""}'}}}, {Slot: 13b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {ctc: {from: "gnottero:proton", traits: {item: 1b, "item/placeholder": 1b}, id: "proton_crafting"}, CustomModelData: 1281000, display: {Name: '{"text":""}'}}}, {Slot: 14b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {ctc: {from: "gnottero:proton", traits: {item: 1b, "item/placeholder": 1b}, id: "proton_crafting"}, CustomModelData: 1281000, display: {Name: '{"text":""}'}}}, {Slot: 16b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {ctc: {from: "gnottero:proton", traits: {item: 1b, "item/placeholder": 1b}, id: "proton_crafting"}, CustomModelData: 1281000, display: {Name: '{"text":""}'}}}, {Slot: 17b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {ctc: {from: "gnottero:proton", traits: {item: 1b, "item/placeholder": 1b}, id: "proton_crafting"}, CustomModelData: 1281000, display: {Name: '{"text":""}'}}}, {Slot: 18b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {ctc: {from: "gnottero:proton", traits: {item: 1b, "item/placeholder": 1b}, id: "proton_crafting"}, CustomModelData: 1281000, display: {Name: '{"text":""}'}}}, {Slot: 22b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {ctc: {from: "gnottero:proton", traits: {item: 1b, "item/placeholder": 1b}, id: "proton_crafting"}, CustomModelData: 1281000, display: {Name: '{"text":""}'}}}, {Slot: 23b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {ctc: {from: "gnottero:proton", traits: {item: 1b, "item/placeholder": 1b}, id: "proton_crafting"}, CustomModelData: 1281000, display: {Name: '{"text":""}'}}}, {Slot: 24b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {ctc: {from: "gnottero:proton", traits: {item: 1b, "item/placeholder": 1b}, id: "proton_crafting"}, CustomModelData: 1281000, display: {Name: '{"text":""}'}}}, {Slot: 25b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {ctc: {from: "gnottero:proton", traits: {item: 1b, "item/placeholder": 1b}, id: "proton_crafting"}, CustomModelData: 1281000, display: {Name: '{"text":""}'}}}, {Slot: 26b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {ctc: {from: "gnottero:proton", traits: {item: 1b, "item/placeholder": 1b}, id: "proton_crafting"}, CustomModelData: 1281000, display: {Name: '{"text":""}'}}}]
    
    #> Modify the block gui from the "" storage
        data modify block ~ ~ ~ Items append from storage gnottero:proton/block GuiItems[]