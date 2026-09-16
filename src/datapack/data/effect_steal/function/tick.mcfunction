


execute as @a at @s run function effect_steal:player
execute as @e[type=item_display,tag=es.alchemy_table] at @s positioned ~ ~-0.55 ~ run function effect_steal:alchemy_table/tick
execute as @e[type=item_display,tag=es.alchemy_table_ingredient] at @s run function effect_steal:alchemy_table/ritual/ingredient_display/animation
execute as @e[type=item_display, tag= es.arrow_display] at @s run rotate @s ~5 ~