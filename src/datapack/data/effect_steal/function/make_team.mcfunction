
execute store result storage effect_steal:temp player int 1 run scoreboard players get @s tbs.ID

with storage effect_steal:temp:
    $team add es.player.$(player)
    $team join es.player.$(player) @s

tag @s add es.has_team