execute if score @s es.animation matches 30 run function effect_steal:alchemy_table/ritual/animation/tick/nested_execute_0
execute if score @s es.animation matches 60 run function effect_steal:alchemy_table/ritual/animation/tick/nested_execute_1
execute if score @s es.animation matches 80 run function effect_steal:alchemy_table/ritual/animation/tick/nested_execute_2
execute if score @s es.animation matches 100 run function effect_steal:alchemy_table/ritual/animation/tick/nested_execute_3
execute if score @s es.animation matches 120 run function effect_steal:alchemy_table/ritual/animation/tick/nested_execute_4
execute if score @s es.animation matches 140 run function effect_steal:alchemy_table/ritual/animation/tick/nested_execute_5
execute if score @s es.animation matches 60..150 as @e[type=item_display, tag=es.alchemy_table_ingredient, tag=es.selected, predicate=effect_steal:match_table_id] run function effect_steal:alchemy_table/ritual/animation/ray/run
execute if score @s es.animation matches 150 run function effect_steal:alchemy_table/ritual/animation/tick/nested_execute_6
execute if score @s es.animation matches 150..250 if score #5 tbs.slow_tick matches 2 run function effect_steal:alchemy_table/ritual/animation/tick/nested_execute_7
execute if score @s es.animation matches 180..200 run particle minecraft:portal ~ ~ ~ 0 0 0 0.8 10
execute if score @s es.animation matches 190..200 if score #10 tbs.slow_tick matches 1 run playsound minecraft:block.respawn_anchor.ambient block @a ~ ~ ~ 1 1
execute if score @s es.animation matches 220..260 run particle minecraft:portal ~ ~ ~ 0 0 0 0.9 20
execute if score @s es.animation matches 200 run playsound minecraft:entity.warden.sonic_charge block @a ~ ~ ~ 0.8 0
execute if score @s es.animation matches 200..220 at @e[type=item_display, tag=es.alchemy_table_ingredient, tag=es.selected, predicate=effect_steal:match_table_id] run particle minecraft:end_rod ~ ~ ~ 0.1 0.1 0.1 0.05 2
execute if score @s es.animation matches 270 positioned ^ ^ ^0.55 run function effect_steal:alchemy_table/ritual/animation/tick/nested_execute_8
scoreboard players add @s es.animation 1
