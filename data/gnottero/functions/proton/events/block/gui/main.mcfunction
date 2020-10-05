#> Main function of the "" folder. Handle the events of the block when the barrel is open
    #> Called by the "" function

    #> Call the "" function if a GUI element was replaced or is missing
        execute unless predicate gnottero:proton/block/matches_barrel run function gnottero:proton/events/block/gui/check_slots/main

    #> Call the "gnottero:proton/events/block/gui/recipes_handler/main" function to check if the player is performing a recipe
        function gnottero:proton/events/block/gui/recipes_handler/main