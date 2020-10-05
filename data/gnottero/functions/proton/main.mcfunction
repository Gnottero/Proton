#> This is the main function, that will run once per tick

    #> Call the "gnottero:proton/events/main" function to handle all the datapack events
        execute as @e[predicate=gnottero:proton/check_entity] at @s run function gnottero:proton/events/main

