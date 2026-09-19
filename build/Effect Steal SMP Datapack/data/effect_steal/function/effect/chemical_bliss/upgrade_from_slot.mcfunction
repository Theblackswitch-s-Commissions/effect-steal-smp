summon minecraft:chest_minecart ~ ~ ~ {Tags: ["es.temp_cart"]}
$item replace entity @e[type=minecraft:chest_minecart,tag=es.temp_cart,limit=1] container.0 from $(source)
execute as @n[type=minecraft:chest_minecart, tag=es.temp_cart, limit=1] run function effect_steal:effect/chemical_bliss/upgrade
$item replace $(source) from entity @e[type=minecraft:chest_minecart,tag=es.temp_cart,limit=1] container.0
data remove entity @e[type=minecraft:chest_minecart, tag=es.temp_cart, limit=1] Items
kill @e[type=minecraft:chest_minecart, tag=es.temp_cart, limit=1]
