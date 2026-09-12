
execute as @e[type=item_display,tag=es.alchemy_table,tag=!es.has_owner,sort=nearest] at @s positioned ~ ~-0.55 ~ if block ~ ~ ~ minecraft:barrel[open=true]:
    execute if entity @s[tag=es.has_owner] run return fail
    tag @s add es.has_owner
    function effect_steal:alchemy_table/handle_owner/init_owner