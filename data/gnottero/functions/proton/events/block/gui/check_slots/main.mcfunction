#> Check which GUI element is missing and set it back
    #> Called by the "" function

    say ciao

    #> Store the Items of the barrel inside the "gnottero:proton/block" storage
        data modify storage gnottero:proton/block ProtonGui set from block ~ ~ ~ Items

    #> Remove the crafting and result slots from the "gnottero:proton/block" storage

        #> First Row
            data remove storage gnottero:proton/block ProtonGui[{Slot:1b}]
            data remove storage gnottero:proton/block ProtonGui[{Slot:2b}]
            data remove storage gnottero:proton/block ProtonGui[{Slot:3b}]

        #> Second Row
            data remove storage gnottero:proton/block ProtonGui[{Slot:10b}]
            data remove storage gnottero:proton/block ProtonGui[{Slot:11b}]
            data remove storage gnottero:proton/block ProtonGui[{Slot:12b}]

        #> Third Row
            data remove storage gnottero:proton/block ProtonGui[{Slot:19b}]
            data remove storage gnottero:proton/block ProtonGui[{Slot:20b}]
            data remove storage gnottero:proton/block ProtonGui[{Slot:21b}]

    #> Call the "gnottero:proton/events/block/gui/check_slots/check_storage" function to fix the Gui of the block
        function gnottero:proton/events/block/gui/check_slots/check_storage
    