say Ritual INIT!
scoreboard players operation #search es.table_id = @s es.table_id
playsound minecraft:block.trial_spawner.open_shutter master @a ~ ~ ~ 1 2
execute summon minecraft:chest_minecart run function effect_steal:alchemy_table/ritual/init/nested_execute_0
execute positioned ^-1 ^0.75 ^ run function effect_steal:alchemy_table/ritual/ingredient_display/summon
execute positioned ^1 ^0.75 ^ run function effect_steal:alchemy_table/ritual/ingredient_display/summon
execute positioned ^-0.5 ^1.25 ^ run function effect_steal:alchemy_table/ritual/ingredient_display/summon
execute positioned ^0.5 ^1.25 ^ run function effect_steal:alchemy_table/ritual/ingredient_display/summon
execute positioned ^ ^1.25 ^ run function effect_steal:alchemy_table/ritual/ingredient_display/summon
execute positioned ~-0.005 ~0.5 ~-0.005 summon minecraft:interaction run function effect_steal:alchemy_table/ritual/init/nested_execute_1
execute positioned ~ ~1.35 ~ summon minecraft:item_display run function effect_steal:alchemy_table/ritual/init/nested_execute_2
execute positioned ~ ~2.15 ~ summon minecraft:item_display run function effect_steal:alchemy_table/ritual/init/nested_execute_3
tag @s add es.has_ritual
scoreboard players set @s es.player_heads 0
