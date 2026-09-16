scoreboard players set @s es.animation 1

# Remove the now unnecessary items
kill @e[type=item_display,tag=es.arrow_display,predicate=effect_steal:match_table_id]
kill @e[type=interaction,tag=es.ritual_interaction,predicate=effect_steal:match_table_id]
tag @e[type=item_display,tag=es.alchemy_table_ingredient,predicate=effect_steal:match_table_id] add es.ritual_animation

tag @s add es.ritual_animation