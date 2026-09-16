$loot replace block ~ ~ ~ container.9 loot {"pools":[{"rolls":1,"entries":[{"type":"minecraft:item","name":"$(output_id)","modifier":{"type":"set_components","components":$(output_components)}}]}]}
$item fill block ~ ~ ~ {"type": "minecraft:filtered","slot_source": "effect_steal:alchemy_table/potions","item_filter": {"items": "$(input_id)", "predicates": {"minecraft:potion_contents": {"potions": "$(input_potion)"}}}} from block ~ ~ ~ container.9
item replace block ~ ~ ~ container.9 with minecraft:air
