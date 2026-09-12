execute as @a at @s run function effect_steal:player
execute as @e[type=item_display, tag=es.alchemy_table] at @s positioned ~ ~-0.55 ~ run function effect_steal:alchemy_table/tick
