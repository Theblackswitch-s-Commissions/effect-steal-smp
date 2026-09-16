
scoreboard players operation #search es.table_id = @s es.table_id


# Drop the ingredients
summon minecraft:chest_minecart ~ ~ ~ {Tags:[es.temp_cart]}

execute as @e[type=item_display,tag=es.alchemy_table_ingredient,predicate=effect_steal:match_table_id]:
    raw item replace entity @n[type=minecraft:chest_minecart,tag=es.temp_cart,limit=1] effect_steal:first_empty_slot from entity @s container.0
    kill @s

kill @n[type=minecraft:chest_minecart,tag=es.temp_cart,limit=1]

# remove the item displays
kill @e[type=interaction,tag=es.ritual_interaction,predicate=effect_steal:match_table_id]
kill @e[type=item_display,tag=es.arrow_display,predicate=effect_steal:match_table_id]