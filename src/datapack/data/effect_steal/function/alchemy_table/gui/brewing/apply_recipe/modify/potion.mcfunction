

# Insert the ouput item temporarly in a dummy slot
$loot replace block ~ ~ ~ container.9 loot {"pools":[{"rolls":1,"entries":[{"type":"minecraft:item","name":"$(output_id)","modifier":{"type":"set_components","components":$(output_components)}}]}]}

# Try upgrading for chemical bliss
execute if score #bliss_level temp matches 1..3 run function effect_steal:effect/chemical_bliss/upgrade_from_slot {source:"block ~ ~ ~ container.9"}

# Copy the ouput item to the right slots
$item fill block ~ ~ ~ {"type": "minecraft:filtered","slot_source": "effect_steal:alchemy_table/potions","item_filter": {"items": "$(input_id)", "predicates": {"minecraft:potion_contents": {"potions": "$(input_potion)"}}}} from block ~ ~ ~ container.9
item replace block ~ ~ ~ container.9 with minecraft:air