kill @n[type=item, nbt={Item: {id: "minecraft:barrel"}, Age: 0s}]
execute if score @s es.owner_id matches 0.. run function effect_steal:alchemy_table/handle_owner/reset_owner
loot spawn ~ ~ ~ loot effect_steal:block/alchemy_table
kill @s
