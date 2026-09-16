advancement revoke @s only effect_steal:_event/open_barrel
tag @s add es.opened_barrel
execute as @e[type=item_display, tag=es.alchemy_table, tag=!es.has_owner, sort=nearest] at @s positioned ~ ~-0.55 ~ if block ~ ~ ~ minecraft:barrel[open=true] run function effect_steal:alchemy_table/on_open
tag @s remove es.opened_barrel
