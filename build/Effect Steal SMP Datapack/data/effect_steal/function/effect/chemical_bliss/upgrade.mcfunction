item modify entity @s container.0 {type: "minecraft:set_custom_data", tag: {es.test: true}}
execute if score #bliss_level temp matches 1 run function effect_steal:effect/chemical_bliss/upgrade/nested_execute_0
execute if score #bliss_level temp matches 2 run function effect_steal:effect/chemical_bliss/upgrade/nested_execute_1
execute if score #bliss_level temp matches 3 run function effect_steal:effect/chemical_bliss/upgrade/nested_execute_2
