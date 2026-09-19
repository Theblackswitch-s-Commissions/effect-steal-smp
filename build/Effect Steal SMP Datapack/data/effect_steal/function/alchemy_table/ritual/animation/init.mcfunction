scoreboard players set @s es.animation 1
kill @e[type=item_display, tag=es.arrow_display, predicate=effect_steal:match_table_id]
kill @e[type=interaction, tag=es.ritual_interaction, predicate=effect_steal:match_table_id]
tag @e[type=item_display, tag=es.alchemy_table_ingredient, predicate=effect_steal:match_table_id] add es.ritual_animation
execute positioned ~ ~-0.5 ~ summon minecraft:interaction run function effect_steal:alchemy_table/ritual/animation/init/nested_execute_0
tag @s add es.ritual_animation
