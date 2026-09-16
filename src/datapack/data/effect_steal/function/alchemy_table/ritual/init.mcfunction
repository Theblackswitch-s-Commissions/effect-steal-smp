say Ritual INIT!

scoreboard players operation #search es.table_id = @s es.table_id

# Sound effects
playsound minecraft:block.trial_spawner.open_shutter master @a ~ ~ ~ 1 2

# Close the UI by replacing the barrel
execute summon minecraft:chest_minecart:
    raw item fill entity @s container.* from block ~ ~ ~ container.*
    data remove block ~ ~ ~ Items
    setblock ~ ~ ~ minecraft:air strict
    setblock ~ ~ ~ minecraft:barrel strict
    raw item fill block ~ ~ ~ container.* from entity @s container.*
    kill @s

# Summon the item displays
execute positioned ^-1 ^0.75 ^ run function effect_steal:alchemy_table/ritual/ingredient_display/summon
execute positioned ^1 ^0.75 ^ run function effect_steal:alchemy_table/ritual/ingredient_display/summon

execute positioned ^-0.5 ^1.25 ^ run function effect_steal:alchemy_table/ritual/ingredient_display/summon
execute positioned ^0.5 ^1.25 ^ run function effect_steal:alchemy_table/ritual/ingredient_display/summon

execute positioned ^ ^1.25 ^ run function effect_steal:alchemy_table/ritual/ingredient_display/summon

# Summon the interaction
execute positioned ~-0.005 ~0.5 ~-0.005 summon minecraft:interaction:
    data merge entity @s {width: 1.01f, height: 0.5f,Tags:[es.ritual_interaction],response:1b}

    scoreboard players operation @s es.table_id = #search es.table_id

# Summon the arrow display
execute positioned ~ ~1.35 ~ summon minecraft:item_display:
    data merge entity @s {item:{id:"minecraft:poisonous_potato",components:{"minecraft:item_model":"effect_steal:item/arrow"}},Tags:[es.arrow_display], billboard:vertical}

    scoreboard players operation @s es.table_id = #search es.table_id

# Summon the player head display
execute positioned ~ ~2.15 ~ summon minecraft:item_display:
    data merge entity @s {item:{id:"minecraft:poisonous_potato",components:{"minecraft:item_model":"minecraft:player_head"}},Tags:[es.arrow_display]}
    data merge entity @s {transformation: {
        left_rotation: [0f, 0f, 0f, 1f],
        right_rotation: [0f, 0f, 0f, 1f],
        translation: [0f, 0f, 0f],
        scale: [0.5f, 0.5f, 0.5f]
    }}

    scoreboard players operation @s es.table_id = #search es.table_id

tag @s add es.has_ritual

scoreboard players set @s es.player_heads 0