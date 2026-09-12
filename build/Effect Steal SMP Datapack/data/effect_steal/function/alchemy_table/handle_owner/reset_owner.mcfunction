scoreboard players set @s es.owner_id -1
execute align xyz run kill @e[type=interaction, tag=es.alchemy_table, tag=es.locked, dy=0]
tag @s remove es.has_owner
