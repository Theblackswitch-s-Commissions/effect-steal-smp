execute if entity @s[distance=..0.25] run return fail
particle minecraft:end_rod
particle minecraft:sonic_boom
execute positioned ^ ^ ^0.5 run function effect_steal:alchemy_table/ritual/animation/player_ray
