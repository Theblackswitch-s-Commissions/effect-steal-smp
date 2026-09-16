execute if entity @s[distance=..0.05] run return fail
particle minecraft:dust{color: [1.0d, 0.2d, 0.8d], scale: 1} ~ ~ ~
execute positioned ^ ^ ^0.1 run function effect_steal:alchemy_table/ritual/animation/ray/loop
