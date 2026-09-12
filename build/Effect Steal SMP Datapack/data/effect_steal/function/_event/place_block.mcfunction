advancement revoke @s only effect_steal:_event/place_block
scoreboard players set @s es.use.cod_spawn_egg 0
tag @s add es.placed_block
execute at @s as @e[type=marker, tag=es.place.alchemy_table, distance=..30] at @s align xyz run function effect_steal:alchemy_table/place
tag @s remove es.placed_block
