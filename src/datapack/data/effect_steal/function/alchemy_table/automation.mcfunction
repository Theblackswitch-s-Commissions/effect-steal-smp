
# Move potions from the table to the hopper
raw execute store result score #count temp run item replace block ~ ~-1 ~ effect_steal:first_empty_slot from block ~ ~ ~ {"type": "minecraft:limit_slots","slot_source": "effect_steal:alchemy_table/potions","limit": 1}
raw execute if score #count temp matches 1.. run item replace block ~ ~ ~ {"type": "minecraft:limit_slots","slot_source": "effect_steal:alchemy_table/potions","limit": 1} with air