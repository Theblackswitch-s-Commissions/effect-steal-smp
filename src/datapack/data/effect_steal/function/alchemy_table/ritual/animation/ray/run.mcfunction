
scoreboard players operation #search es.table_id = @s es.table_id

execute at @s positioned ~ ~-0.12 ~ as @e[type=item_display,tag=es.alchemy_table,predicate=effect_steal:match_table_id,limit=1] facing entity @s eyes run function effect_steal:alchemy_table/ritual/animation/ray/loop