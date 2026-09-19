
execute store result storage effect_steal:temp player int 1 run scoreboard players get @s tbs.ID

execute if score @s es.effect.unluck.level matches 1 as @e[type=#effect_steal:master_of_the_evil_lvl_1,distance=..30]:
    with storage effect_steal:temp:
        $team join es.player.$(player) @s

execute if score @s es.effect.unluck.level matches 2 as @e[type=#effect_steal:master_of_the_evil_lvl_2,distance=..30]:
    with storage effect_steal:temp:
        $team join es.player.$(player) @s

execute if score @s es.effect.unluck.level matches 3 as @e[type=#effect_steal:master_of_the_evil_lvl_3,distance=..30]:
    with storage effect_steal:temp:
        $team join es.player.$(player) @s