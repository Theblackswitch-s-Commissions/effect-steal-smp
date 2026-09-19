execute if entity @s[distance=20..] run return fail

execute if block ~ ~ ~ minecraft:brewing_stand align xyz run return run function effect_steal:brewing_stand/open

execute positioned ^ ^ ^0.1 run function effect_steal:brewing_stand/raycast

