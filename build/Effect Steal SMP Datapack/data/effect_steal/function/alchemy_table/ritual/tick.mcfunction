execute as @e[type=minecraft:interaction, tag=es.ritual_interaction, predicate=effect_steal:match_table_id, limit=1] run function effect_steal:alchemy_table/ritual/interaction
execute if score @s[tag=!es.ritual_animation] es.player_heads matches 5.. run function effect_steal:alchemy_table/ritual/animation/init
execute if score @s es.animation matches 1.. run function effect_steal:alchemy_table/ritual/animation/tick
