execute if entity @s[distance=..0.05] run return fail
particle minecraft:electric_spark ~ ~ ~
execute positioned ^ ^ ^0.1 run function effect_steal:alchemy_table/ritual/animation/ray/loop
