tag @s remove INIT
scoreboard players add #curr es.table_id 1
scoreboard players operation @s es.table_id = #curr es.table_id
execute facing entity @a[tag=es.placed_block, limit=1] eyes run rotate @s ~ 0
execute if entity @s[y_rotation=-180..-135] run return run rotate @s 180 0
execute if entity @s[y_rotation=135..180] run return run rotate @s 180 0
execute if entity @s[y_rotation=45..135] run return run rotate @s 90 0
execute if entity @s[y_rotation=-45..45] run return run rotate @s 0 0
execute if entity @s[y_rotation=-135..-45] run return run rotate @s -90 0
