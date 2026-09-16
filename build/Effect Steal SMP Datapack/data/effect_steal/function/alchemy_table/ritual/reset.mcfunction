scoreboard players operation #search es.table_id = @s es.table_id
summon minecraft:chest_minecart ~ ~ ~ {Tags: ["es.temp_cart"]}
execute as @e[type=item_display, tag=es.alchemy_table_ingredient, predicate=effect_steal:match_table_id] run function effect_steal:alchemy_table/ritual/reset/nested_execute_0
kill @n[type=minecraft:chest_minecart, tag=es.temp_cart, limit=1]
kill @e[type=interaction, tag=es.ritual_interaction, predicate=effect_steal:match_table_id]
kill @e[type=item_display, tag=es.arrow_display, predicate=effect_steal:match_table_id]
