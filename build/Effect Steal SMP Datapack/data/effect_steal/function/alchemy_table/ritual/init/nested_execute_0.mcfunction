item fill entity @s container.* from block ~ ~ ~ container.*
data remove block ~ ~ ~ Items
setblock ~ ~ ~ minecraft:air strict
setblock ~ ~ ~ minecraft:barrel strict
item fill block ~ ~ ~ container.* from entity @s container.*
kill @s
