summon chest_minecart ~ ~ ~ {Tags: ["es.temp_cart"]}
$item replace entity @e[type=chest_minecart,tag=es.temp_cart] container.0 from block ~ ~ ~ container.$(slot) { "type": "minecraft:set_custom_data", "tag": { "es.should_launch": true } }
$item replace block ~ ~ ~ container.$(slot) with air
kill @e[type=chest_minecart]
execute at @s anchored eyes positioned ^ ^ ^ as @e[type=item, distance=..20] if items entity @s container.0 *[minecraft:custom_data~{es.should_launch: true}] run function effect_steal:alchemy_table/gui/drop_item/launch
