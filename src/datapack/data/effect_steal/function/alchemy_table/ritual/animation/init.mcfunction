scoreboard players set @s es.animation 1

# Remove the now unnecessary items
kill @e[type=item_display,tag=es.arrow_display,predicate=effect_steal:match_table_id]
kill @e[type=interaction,tag=es.ritual_interaction,predicate=effect_steal:match_table_id]
tag @e[type=item_display,tag=es.alchemy_table_ingredient,predicate=effect_steal:match_table_id] add es.ritual_animation

# Summon an interaction so the barrel can't be opened again
execute positioned ~ ~-0.5 ~ summon minecraft:interaction:
    data merge entity @s {width:1.01,height:1.01,response:1b,Tags:[es.ritual_blocking_interaction,es.locked]}

    scoreboard players operation @s es.table_id = #search es.table_id

tag @s add es.ritual_animation