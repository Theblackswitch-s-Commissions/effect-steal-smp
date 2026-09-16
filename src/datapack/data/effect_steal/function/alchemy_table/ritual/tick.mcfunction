
# Store ingredients in the displays
execute as @e[type=minecraft:interaction,tag=es.ritual_interaction,predicate=effect_steal:match_table_id,limit=1] run function effect_steal:alchemy_table/ritual/interaction

# Check ingredients
execute if score @s[tag=!es.ritual_animation] es.player_heads matches 5.. run function effect_steal:alchemy_table/ritual/animation/init

# Run animation
execute if score @s es.animation matches 1.. run function effect_steal:alchemy_table/ritual/animation/tick