execute unless items entity @s container.0 * run return fail
execute if entity @s[tag=es.ritual_animation] run return fail
execute unless score @s es.animation matches 0.. run scoreboard players set @s es.animation 0
execute if score @s es.animation matches 0 run function effect_steal:alchemy_table/ritual/ingredient_display/animation/nested_execute_0
execute if score @s es.animation matches 80 run function effect_steal:alchemy_table/ritual/ingredient_display/animation/nested_execute_1
scoreboard players add @s es.animation 1
execute if score @s es.animation matches 161 run scoreboard players set @s es.animation 0
